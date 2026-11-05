package com.geely.drivemem.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.graphics.Typeface;
import android.view.Gravity;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.geely.drivemem.car.CarDb;
import com.geely.drivemem.sensors.DailyStatsProvider;
import com.geely.drivemem.state.CarState;
import com.geely.drivemem.util.Style;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

/** One-card recap of the previous month. Shown once at the start of each month, or on demand from Trends. */
public final class MonthlySummary {
    private MonthlySummary() {}

    private static boolean showing;
    private static final SimpleDateFormat DAY = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
    private static final SimpleDateFormat KEY = new SimpleDateFormat("yyyy-MM", Locale.US);
    private static final SimpleDateFormat NAME = new SimpleDateFormat("MMMM yyyy", Locale.US);

    private static final class Data {
        String name, key;
        double km, kwhUsed, kwhCharged, cost, prevKm, prevCost;
        int charges, fullCharges;
        boolean hasData, hasPrev;
    }

    private static SharedPreferences prefs(Context c) { return c.getSharedPreferences("trends_prefs", Context.MODE_PRIVATE); }

    /** Called on resume. Shows the recap if a new month began since it was last shown; always calls {@code next} afterwards. */
    public static void check(final Activity a, final Runnable next) {
        if (showing || !CarState.isParked()) { if (next != null && !showing) next.run(); return; }
        final Calendar prev = Calendar.getInstance();
        prev.set(Calendar.DAY_OF_MONTH, 1);
        prev.add(Calendar.MONTH, -1);
        final String key = KEY.format(prev.getTime());
        if (key.equals(prefs(a).getString("summary_shown", ""))) { if (next != null) next.run(); return; }
        if (!prefs(a).contains("first_seen")) { if (next != null) next.run(); return; }
        new Thread(new Runnable() {
            @Override public void run() {
                final Data d = load(a, prev);
                a.runOnUiThread(new Runnable() {
                    @Override public void run() {
                        if (a.isFinishing() || showing) return;
                        if (d != null && d.hasData) {
                            prefs(a).edit().putString("summary_shown", d.key).apply();
                            show(a, d, next);
                        } else {
                            prefs(a).edit().putString("summary_shown", key).apply();
                            if (next != null) next.run();
                        }
                    }
                });
            }
        }, "month-summary").start();
    }

    /** Shows last month's recap on demand. */
    public static void showLastMonth(final Activity a) {
        if (showing) return;
        final Calendar prev = Calendar.getInstance();
        prev.set(Calendar.DAY_OF_MONTH, 1);
        prev.add(Calendar.MONTH, -1);
        new Thread(new Runnable() {
            @Override public void run() {
                final Data d = load(a, prev);
                a.runOnUiThread(new Runnable() {
                    @Override public void run() {
                        if (a.isFinishing() || showing) return;
                        if (d != null && d.hasData) show(a, d, null);
                        else android.widget.Toast.makeText(a, "No data for last month yet", android.widget.Toast.LENGTH_SHORT).show();
                    }
                });
            }
        }, "month-summary").start();
    }

    private static Data load(Context ctx, Calendar monthStart) {
        try {
            Data d = new Data();
            d.name = NAME.format(monthStart.getTime());
            d.key = KEY.format(monthStart.getTime());
            List<DailyStatsProvider.PeriodOverview> ps = DailyStatsProvider.recentMonths(ctx, DAY.format(monthStart.getTime()), 2);
            if (ps == null || ps.isEmpty()) return d;
            DailyStatsProvider.DayOverview t = ps.get(ps.size() - 1).totals;
            d.km = t.distanceKm;
            d.kwhUsed = Math.max(0, t.netKwh);
            d.kwhCharged = t.chargeKwh;
            d.cost = t.chargeCost;
            d.charges = t.chargeCount;
            if (ps.size() >= 2) {
                DailyStatsProvider.DayOverview p = ps.get(ps.size() - 2).totals;
                d.prevKm = p.distanceKm;
                d.prevCost = p.chargeCost;
                d.hasPrev = p.distanceKm > 0 || p.chargeCost > 0;
            }
            Calendar end = (Calendar) monthStart.clone();
            end.add(Calendar.MONTH, 1);
            Cursor c = CarDb.get(ctx).getReadableDatabase().rawQuery(
                "SELECT COUNT(*) FROM charge_session WHERE soc_end >= 100 AND start_ms >= ? AND start_ms < ?",
                new String[]{String.valueOf(startOfDay(monthStart)), String.valueOf(startOfDay(end))});
            try { if (c.moveToFirst()) d.fullCharges = c.getInt(0); } finally { c.close(); }
            d.hasData = d.km > 0 || d.charges > 0 || d.cost > 0;
            return d;
        } catch (Throwable t) {
            return null;
        }
    }

    private static long startOfDay(Calendar c) {
        Calendar x = (Calendar) c.clone();
        x.set(Calendar.HOUR_OF_DAY, 0); x.set(Calendar.MINUTE, 0); x.set(Calendar.SECOND, 0); x.set(Calendar.MILLISECOND, 0);
        return x.getTimeInMillis();
    }

    private static String change(double cur, double prev) {
        if (prev <= 0) return "";
        double pct = (cur - prev) / prev * 100.0;
        if (Math.abs(pct) < 0.5) return "  (same as the month before)";
        return String.format(Locale.US, "  (%s%.0f%% vs the month before)", pct > 0 ? "▲ " : "▼ ", Math.abs(pct));
    }

    private static void row(LinearLayout card, Context c, String label, String value, String sub) {
        TextView l = new TextView(c);
        l.setText(label);
        l.setTextColor(Style.TEXT_DIM);
        l.setTextSize(17f);
        l.setPadding(0, Style.dp(c, 12), 0, 0);
        card.addView(l);
        TextView v = new TextView(c);
        v.setText(value);
        v.setTextColor(Style.TEXT);
        v.setTextSize(26f);
        v.setTypeface(Typeface.DEFAULT_BOLD);
        card.addView(v);
        if (sub != null && sub.length() > 0) {
            TextView s = new TextView(c);
            s.setText(sub.trim());
            s.setTextColor(Style.TEXT_DIM);
            s.setTextSize(16f);
            card.addView(s);
        }
    }

    private static void show(final Activity a, Data d, final Runnable next) {
        showing = true;
        LinearLayout card = new LinearLayout(a);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setBackground(Style.card(Style.CARD, a));
        int pad = Style.dp(a, 28);
        card.setPadding(pad, pad, pad, pad);
        card.setLayoutParams(new ViewGroup.LayoutParams(Style.dp(a, 640), ViewGroup.LayoutParams.WRAP_CONTENT));
        TextView t = new TextView(a);
        t.setText("Monthly summary");
        t.setTextColor(Style.TEXT);
        t.setTextSize(30f);
        t.setTypeface(Typeface.DEFAULT_BOLD);
        card.addView(t);
        TextView m = new TextView(a);
        m.setText(d.name);
        m.setTextColor(Style.ACCENT);
        m.setTextSize(20f);
        card.addView(m);

        row(card, a, "Distance driven", String.format(Locale.US, "%,.0f km", d.km), d.hasPrev ? change(d.km, d.prevKm) : "");
        row(card, a, "Electricity used (~)", String.format(Locale.US, "%.0f kWh", d.kwhUsed),
            d.km >= 1 && d.kwhUsed > 0 ? String.format(Locale.US, "%.1f kWh/100 km, estimated from battery %%", d.kwhUsed / d.km * 100) : "");
        String costSub = (d.cost > 0 && d.km >= 1 ? String.format(Locale.US, "%,.0f đ/km", d.cost / d.km) : "")
            + (d.hasPrev ? change(d.cost, d.prevCost) : "");
        row(card, a, "Charging cost", d.cost > 0 ? String.format(Locale.US, "%,.0f đ", d.cost) : "—",
            d.cost > 0 ? costSub : "Enter DC prices in Charging history to complete this");
        row(card, a, "Charging sessions", String.format(Locale.US, "%d  ·  %.0f kWh", d.charges, d.kwhCharged),
            d.fullCharges > 0 ? d.fullCharges + (d.fullCharges == 1 ? " full charge to 100%" : " full charges to 100%") : "No charge to 100% this month");

        LinearLayout row = new LinearLayout(a);
        row.setGravity(Gravity.END | Gravity.CENTER_VERTICAL);
        LinearLayout.LayoutParams rlp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        rlp.topMargin = Style.dp(a, 22);
        row.setLayoutParams(rlp);
        final AlertDialog dlg = new AlertDialog.Builder(a).setView(card).create();
        if (dlg.getWindow() != null) dlg.getWindow().setBackgroundDrawableResource(android.R.color.transparent);
        dlg.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {
            @Override public void onDismiss(android.content.DialogInterface x) {
                showing = false;
                if (next != null) next.run();
            }
        });
        row.addView(Style.cardButton(a, "Close", true, new Runnable() {
            @Override public void run() { dlg.dismiss(); }
        }));
        card.addView(row);
        dlg.show();
    }
}
