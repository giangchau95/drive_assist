package com.geely.drivemem.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import com.geely.drivemem.car.CarDb;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * "Charge to 100%" bookkeeping for LFP batteries. The last full charge comes from the
 * recorded charge sessions (ended at 100%), the daily statistics (a day that reached 100%),
 * today's raw samples, and an optional date the driver typed in.
 */
public final class FullCharge {
    private FullCharge() {}

    private static final String PREFS = "trends_prefs";
    public static final long DAY_MS = 24L * 3600 * 1000;

    private static SharedPreferences p(Context c) { return c.getSharedPreferences(PREFS, Context.MODE_PRIVATE); }

    /** Call once per app start: remembers when the feature first ran, so "never charged" has a baseline. */
    public static void touch(Context c) {
        SharedPreferences sp = p(c);
        if (!sp.contains("first_seen")) sp.edit().putLong("first_seen", System.currentTimeMillis()).apply();
    }

    public static int intervalDays(Context c) { return p(c).getInt("interval_days", 30); }
    public static void setIntervalDays(Context c, int d) { p(c).edit().putInt("interval_days", d).apply(); }

    public static long manualMs(Context c) { return p(c).getLong("manual_full_ms", 0L); }
    public static void setManualMs(Context c, long ms) { p(c).edit().putLong("manual_full_ms", ms).apply(); }

    public static long snoozeUntil(Context c) { return p(c).getLong("snooze_until", 0L); }
    public static void snooze(Context c, long ms) { p(c).edit().putLong("snooze_until", System.currentTimeMillis() + ms).apply(); }

    /** Time of the most recent 100% charge, or 0 when none is known. Touches the database: call off the UI thread. */
    public static long lastFullMs(Context c) {
        long best = manualMs(c);
        try {
            SQLiteDatabase db = CarDb.get(c).getReadableDatabase();
            best = Math.max(best, queryLong(db, "SELECT MAX(end_ms) FROM charge_session WHERE soc_end >= 100", null));
            String d = queryString(db, "SELECT MAX(date) FROM daily_stat WHERE max_battery_pct >= 100");
            if (d != null) {
                try {
                    Date day = new SimpleDateFormat("yyyy-MM-dd", Locale.US).parse(d);
                    best = Math.max(best, day.getTime() + 12L * 3600 * 1000);
                } catch (Throwable ignored) {}
            }
            long since = System.currentTimeMillis() - 3 * DAY_MS;
            best = Math.max(best, queryLong(db, "SELECT MAX(ts_ms) FROM telemetry_sample WHERE ts_ms > ? AND battery_pct >= 100",
                new String[]{String.valueOf(since)}));
        } catch (Throwable ignored) {}
        return Math.min(best, System.currentTimeMillis());
    }

    private static long queryLong(SQLiteDatabase db, String sql, String[] args) {
        Cursor c = null;
        try {
            c = db.rawQuery(sql, args);
            if (c.moveToFirst() && !c.isNull(0)) return c.getLong(0);
        } catch (Throwable ignored) {
        } finally { if (c != null) c.close(); }
        return 0L;
    }

    private static String queryString(SQLiteDatabase db, String sql) {
        Cursor c = null;
        try {
            c = db.rawQuery(sql, null);
            if (c.moveToFirst() && !c.isNull(0)) return c.getString(0);
        } catch (Throwable ignored) {
        } finally { if (c != null) c.close(); }
        return null;
    }

    /** The moment the overdue clock counts from: the last 100% charge, or the first run if none is known. */
    public static long baseMs(Context c, long lastFull) {
        if (lastFull > 0) return lastFull;
        long fs = p(c).getLong("first_seen", System.currentTimeMillis());
        return fs;
    }

    public static int daysSince(long ms) { return (int) Math.max(0, (System.currentTimeMillis() - ms) / DAY_MS); }

    public static boolean isDue(Context c, long lastFull) {
        return daysSince(baseMs(c, lastFull)) >= intervalDays(c);
    }

    public static String dateText(long ms) {
        return new SimpleDateFormat("d MMM yyyy", Locale.US).format(new Date(ms));
    }
}
