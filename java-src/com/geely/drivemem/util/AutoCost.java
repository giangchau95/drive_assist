package com.geely.drivemem.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import com.geely.drivemem.car.CarDb;
import com.geely.drivemem.state.ChargeSession;

import java.util.ArrayList;
import java.util.List;

/** Fills in the cost of AC charging sessions from a fixed price per kWh. DC sessions stay manual. */
public final class AutoCost {
    private AutoCost() {}

    public static final long DEFAULT_AC_PRICE = 5500L;
    private static final String P = "pricing_prefs";
    private static final String DAY_SQL =
        "UPDATE daily_stat SET charge_kwh = (SELECT COALESCE(SUM(kwh), 0) FROM charge_session "
        + "WHERE date(start_ms/1000,'unixepoch','localtime') = daily_stat.date), "
        + "charge_cost = (SELECT COALESCE(SUM(cost), 0) FROM charge_session "
        + "WHERE date(start_ms/1000,'unixepoch','localtime') = daily_stat.date) "
        + "WHERE date = (SELECT date(start_ms/1000,'unixepoch','localtime') FROM charge_session WHERE id = ?)";

    private static SharedPreferences prefs(Context c) { return c.getSharedPreferences(P, Context.MODE_PRIVATE); }

    public static long acPrice(Context c) { return prefs(c).getLong("ac_price", DEFAULT_AC_PRICE); }
    public static void setAcPrice(Context c, long v) { prefs(c).edit().putLong("ac_price", Math.max(0, v)).apply(); }

    /** Last per-kWh price typed for a DC session (0 = none). */
    public static long lastDcPrice(Context c) { return prefs(c).getLong("dc_last_price", 0L); }
    public static void setLastDcPrice(Context c, long v) { prefs(c).edit().putLong("dc_last_price", Math.max(0, v)).apply(); }

    /**
     * Costs finished AC sessions. With overwrite=false only sessions without a cost are touched;
     * with overwrite=true every finished AC session is recalculated. Returns the number of sessions updated.
     * Must be called off the UI thread.
     */
    public static int run(Context ctx, boolean overwrite) {
        long price = acPrice(ctx);
        if (price <= 0) return 0;
        try {
            SQLiteDatabase db = CarDb.get(ctx).db();
            long active = ChargeSession.isSessionActive() ? ChargeSession.activeRowId() : -1L;
            String where = "kwh > 0 AND end_ms > 0 AND dismissed = 0 AND max_charge_v IS NOT NULL AND max_charge_v < 250"
                + (overwrite ? "" : " AND (cost IS NULL OR cost = 0)");
            List<long[]> rows = new ArrayList<long[]>();
            Cursor c = db.rawQuery("SELECT id, kwh FROM charge_session WHERE " + where, null);
            try {
                while (c.moveToNext()) {
                    long id = c.getLong(0);
                    if (id == active) continue;
                    rows.add(new long[]{id, Math.round(c.getDouble(1) * price)});
                }
            } finally { c.close(); }
            if (rows.isEmpty()) return 0;
            db.beginTransaction();
            try {
                for (long[] r : rows) {
                    db.execSQL("UPDATE charge_session SET cost = ? WHERE id = ?", new Object[]{Double.valueOf(r[1]), Long.valueOf(r[0])});
                    db.execSQL(DAY_SQL, new Object[]{Long.valueOf(r[0])});
                }
                db.setTransactionSuccessful();
            } finally { db.endTransaction(); }
            return rows.size();
        } catch (Throwable t) {
            android.util.Log.w("DriveAssist", "autocost: " + t);
            return 0;
        }
    }
}
