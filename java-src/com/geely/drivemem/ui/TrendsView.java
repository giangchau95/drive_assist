package com.geely.drivemem.ui;

import android.app.DatePickerDialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.DatePicker;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.geely.drivemem.sensors.DailyStatsProvider;
import com.geely.drivemem.util.FullCharge;
import com.geely.drivemem.util.Style;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

/** Trends: electricity used, distance and charging cost per day / week / month, plus the 100% charge status. */
public class TrendsView extends LinearLayout {
    private static final int P_DAY = 0, P_WEEK = 1, P_MONTH = 2;
    private int period = P_MONTH;
    private final Handler ui = new Handler(Looper.getMainLooper());
    private volatile int token;

    private final LinearLayout periodRow;
    private final BarsView energyBars, distBars, costBars;
    private final TextView energyHead, energySub, distHead, distSub, costHead, costSub;
    private final TextView note;
    private final TextView fullHead, fullSub;
    private final LinearLayout fullBtns;

    private static final SimpleDateFormat DAY = new SimpleDateFormat("yyyy-MM-dd", Locale.US);

    public TrendsView(Context c, AttributeSet a) {
        super(c, a);
        setOrientation(VERTICAL);

        TextView title = text(c, "TRENDS", 17f, Style.TEXT_DIM, true);
        title.setLetterSpacing(0.04f);
        addView(title);
        periodRow = new LinearLayout(c);
        periodRow.setOrientation(HORIZONTAL);
        periodRow.setGravity(Gravity.CENTER_VERTICAL);
        LayoutParams plp = new LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        plp.topMargin = Style.dp(c, 14);
        plp.bottomMargin = Style.dp(c, 16);
        addView(periodRow, plp);

        LinearLayout charts = new LinearLayout(c);
        charts.setOrientation(HORIZONTAL);
        LayoutParams clp = new LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        addView(charts, clp);

        energyHead = text(c, "—", 34f, Style.TEXT, true);
        energySub = text(c, "", 16f, Style.TEXT_DIM, false);
        energyBars = new BarsView(c, new BarsView.Formatter() {
            @Override public String format(double v) { return v >= 100 ? String.format(Locale.US, "%.0f", v) : String.format(Locale.US, "%.1f", v); }
        }, "No data yet");
        charts.addView(chartCard(c, "Electricity used", energyHead, energySub, energyBars, true));

        distHead = text(c, "—", 34f, Style.TEXT, true);
        distSub = text(c, "", 16f, Style.TEXT_DIM, false);
        distBars = new BarsView(c, new BarsView.Formatter() {
            @Override public String format(double v) { return String.format(Locale.US, "%.0f", v); }
        }, "No data yet");
        charts.addView(chartCard(c, "Distance driven", distHead, distSub, distBars, true));

        costHead = text(c, "—", 34f, Style.TEXT, true);
        costSub = text(c, "", 16f, Style.TEXT_DIM, false);
        costBars = new BarsView(c, new BarsView.Formatter() {
            @Override public String format(double v) { return compactVnd(v); }
        }, "No costs entered yet");
        charts.addView(chartCard(c, "Charging cost", costHead, costSub, costBars, false));

        note = text(c, "", 15f, Style.TEXT_DIM, false);
        note.setPadding(Style.dp(c, 4), Style.dp(c, 10), 0, Style.dp(c, 4));
        addView(note);

        // ---- 100% charge card ----
        LinearLayout full = new LinearLayout(c);
        full.setOrientation(VERTICAL);
        int pad = Style.dp(c, 18);
        full.setPadding(pad, pad, pad, pad);
        full.setBackground(Style.card(Style.cardFillColor(), c));
        LayoutParams flp = new LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        flp.topMargin = Style.dp(c, 12);
        full.setLayoutParams(flp);
        full.addView(text(c, "Full charge (LFP battery)", 15.5f, Style.TEXT_DIM, true));
        fullHead = text(c, "…", 28f, Style.TEXT, true);
        fullHead.setPadding(0, Style.dp(c, 6), 0, 0);
        full.addView(fullHead);
        fullSub = text(c, "", 17f, Style.TEXT_DIM, false);
        fullSub.setPadding(0, Style.dp(c, 4), 0, Style.dp(c, 12));
        full.addView(fullSub);
        fullBtns = new LinearLayout(c);
        fullBtns.setOrientation(HORIZONTAL);
        full.addView(fullBtns);
        addView(full);

        buildPeriodRow();
    }

    private static TextView text(Context c, String s, float sp, int color, boolean bold) {
        TextView t = new TextView(c);
        t.setText(s);
        t.setTextSize(sp);
        t.setTextColor(color);
        if (bold) t.setTypeface(Typeface.DEFAULT_BOLD);
        return t;
    }

    private LinearLayout chartCard(Context c, String title, TextView head, TextView sub, BarsView bars, boolean margin) {
        LinearLayout card = new LinearLayout(c);
        card.setOrientation(VERTICAL);
        int pad = Style.dp(c, 18);
        card.setPadding(pad, pad, pad, pad);
        card.setBackground(Style.card(Style.cardFillColor(), c));
        LayoutParams lp = new LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        if (margin) lp.rightMargin = Style.dp(c, 12);
        card.setLayoutParams(lp);
        card.addView(text(c, title, 15.5f, Style.TEXT_DIM, true));
        head.setPadding(0, Style.dp(c, 6), 0, 0);
        card.addView(head);
        sub.setPadding(0, Style.dp(c, 2), 0, Style.dp(c, 8));
        card.addView(sub);
        card.addView(bars, new LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, Style.dp(c, 230)));
        return card;
    }

    private static String compactVnd(double v) {
        if (v >= 1000000) return String.format(Locale.US, "%.1fM", v / 1000000.0);
        if (v >= 1000) return String.format(Locale.US, "%.0fk", v / 1000.0);
        return String.format(Locale.US, "%.0f", v);
    }

    private static String fullVnd(double v) {
        return String.format(Locale.US, "%,.0f đ", v);
    }

    private void buildPeriodRow() {
        final Context c = getContext();
        periodRow.removeAllViews();
        String[] names = {"Day", "Week", "Month"};
        for (int i = 0; i < 3; i++) {
            final int idx = i;
            TextView b = Style.cardButton(c, names[i], period == i, new Runnable() {
                @Override public void run() {
                    if (period == idx) return;
                    period = idx;
                    buildPeriodRow();
                    refresh();
                }
            });
            periodRow.addView(b);
            Style.gap(periodRow, c, 10);
        }
        TextView hint = text(c, period == P_DAY ? "last 14 days" : period == P_WEEK ? "last 8 weeks" : "last 6 months", 17f, Style.TEXT_DIM, false);
        periodRow.addView(hint);
    }

    // ---------- data ----------
    private static final class Series {
        final List<String> labels = new ArrayList<String>();
        final List<Double> energy = new ArrayList<Double>(), dist = new ArrayList<Double>(), cost = new ArrayList<Double>(), eff = new ArrayList<Double>();
        boolean estimated;
    }

    private static String label(String dateIso, int period) {
        try {
            String[] p = dateIso.split("-");
            int m = Integer.parseInt(p[1]), d = Integer.parseInt(p[2]);
            if (period == P_MONTH) return m + "/" + p[0].substring(2);
            return d + "/" + m;
        } catch (Throwable t) { return dateIso; }
    }

    private Series load(Context ctx, int per) {
        Series s = new Series();
        String today = DailyStatsProvider.todayDateStr();
        if (per == P_DAY) {
            Calendar cal = Calendar.getInstance();
            for (int i = 13; i >= 0; i--) {
                Calendar c2 = (Calendar) cal.clone();
                c2.add(Calendar.DAY_OF_MONTH, -i);
                String d = DAY.format(c2.getTime());
                DailyStatsProvider.DayOverview o = DailyStatsProvider.getDayOverview(ctx, d);
                add(s, label(d, per), o);
            }
        } else {
            List<DailyStatsProvider.PeriodOverview> ps = per == P_WEEK
                ? DailyStatsProvider.recentWeeks(ctx, today, 8)
                : DailyStatsProvider.recentMonths(ctx, today, 6);
            for (DailyStatsProvider.PeriodOverview p : ps) {
                String first = p.days.isEmpty() ? today : p.days.get(0).date;
                add(s, label(first, per), p.totals);
            }
        }
        return s;
    }

    private static void add(Series s, String label, DailyStatsProvider.DayOverview o) {
        s.labels.add(label);
        s.energy.add(Math.max(0, o.netKwh));
        s.dist.add(o.distanceKm);
        s.cost.add(o.chargeCost);
        s.eff.add(o.efficiencyKwh100km);
        if (o.netKwh != 0 && o.energySource != null && o.energySource != com.geely.drivemem.sensors.EnergySource.MEASURED) s.estimated = true;
    }

    private static double[] arr(List<Double> l) {
        double[] a = new double[l.size()];
        for (int i = 0; i < a.length; i++) a[i] = l.get(i);
        return a;
    }

    public void refresh() {
        final Context ctx = getContext();
        final int my = ++token;
        final int per = period;
        energyHead.setText("…");
        distHead.setText("…");
        costHead.setText("…");
        new Thread(new Runnable() {
            @Override public void run() {
                Series s = null;
                try { s = load(ctx, per); } catch (Throwable ignored) {}
                final Series fs = s;
                final long last = FullCharge.lastFullMs(ctx);
                ui.post(new Runnable() {
                    @Override public void run() {
                        if (my != token) return;
                        if (fs != null) show(fs, per);
                        showFull(last);
                    }
                });
            }
        }, "trends-load").start();
    }

    private static String unitName(int per) { return per == P_DAY ? "day" : per == P_WEEK ? "week" : "month"; }

    private void show(Series s, int per) {
        double[] e = arr(s.energy), d = arr(s.dist), k = arr(s.cost);
        String[] lb = s.labels.toArray(new String[0]);
        energyBars.setData(e, lb);
        distBars.setData(d, lb);
        costBars.setData(k, lb);
        int n = e.length;
        String cur = per == P_DAY ? "today" : "this " + unitName(per);
        energyHead.setText(String.format(Locale.US, "%.1f kWh", e[n - 1]));
        distHead.setText(String.format(Locale.US, "%.0f km", d[n - 1]));
        costHead.setText(k[n - 1] > 0 ? fullVnd(k[n - 1]) : "—");
        double eff = s.eff.get(n - 1);
        energySub.setText(delta(e, "%.1f kWh", per, true) + (eff > 0 ? "  ·  " + String.format(Locale.US, "%.1f kWh/100 km", eff) : ""));
        energySub.setTextColor(Style.TEXT_DIM);
        distSub.setText(delta(d, "%.0f km", per, false));
        costSub.setText(k[n - 1] > 0 || anyPositive(k) ? delta(k, null, per, true) : "Enter costs in Charging history");
        note.setText((s.estimated ? "Electricity is estimated from the battery percentage (~). " : "")
            + "The last bar is the current " + unitName(per) + ", still in progress.");
    }

    private static boolean anyPositive(double[] a) { for (double v : a) if (v > 0) return true; return false; }

    private static String delta(double[] v, String fmt, int per, boolean unused) {
        int n = v.length;
        if (n < 2) return "";
        double prev = v[n - 2], cur = v[n - 1];
        String vs = per == P_DAY ? "yesterday" : "last " + unitName(per);
        if (prev <= 0) return cur > 0 ? "no data " + vs : "";
        double pct = (cur - prev) / prev * 100.0;
        String arrow = pct > 0.5 ? "▲ " : pct < -0.5 ? "▼ " : "";
        return String.format(Locale.US, "%s%.0f%% vs %s", arrow, Math.abs(pct), vs);
    }

    // ---------- 100% charge ----------
    private void showFull(final long last) {
        final Context c = getContext();
        int interval = FullCharge.intervalDays(c);
        long base = FullCharge.baseMs(c, last);
        int days = FullCharge.daysSince(base);
        boolean due = days >= interval;
        if (last > 0) {
            fullHead.setText(days == 0 ? "Charged to 100% today" : days + " days since the last 100% charge");
            fullSub.setText("Last full charge: " + FullCharge.dateText(last) + ". Goal: at least every " + interval + " days.");
        } else {
            fullHead.setText("No 100% charge recorded yet");
            fullSub.setText("Counting from the first run (" + days + " days ago). Goal: at least every " + interval + " days. "
                + "If you charged to 100% before, set the date below.");
        }
        fullHead.setTextColor(due ? Color.parseColor("#FF9F0A") : Color.parseColor("#30D158"));
        fullBtns.removeAllViews();
        fullBtns.addView(Style.cardButton(c, "Goal: every " + interval + " days  →  " + (interval == 30 ? "15" : "30"), false, new Runnable() {
            @Override public void run() {
                FullCharge.setIntervalDays(c, FullCharge.intervalDays(c) == 30 ? 15 : 30);
                showFull(last);
            }
        }));
        Style.gap(fullBtns, c, 12);
        fullBtns.addView(Style.cardButton(c, "I charged to 100% on…", false, new Runnable() {
            @Override public void run() { pickDate(last); }
        }));
    }

    private void pickDate(final long last) {
        final Context c = getContext();
        Calendar cal = Calendar.getInstance();
        DatePickerDialog dlg = new DatePickerDialog(c, new DatePickerDialog.OnDateSetListener() {
            @Override public void onDateSet(DatePicker v, int y, int m, int d) {
                Calendar sel = Calendar.getInstance();
                sel.set(y, m, d, 12, 0, 0);
                long ms = Math.min(sel.getTimeInMillis(), System.currentTimeMillis());
                FullCharge.setManualMs(c, ms);
                FullCharge.snooze(c, 0);
                refresh();
            }
        }, cal.get(Calendar.YEAR), cal.get(Calendar.MONTH), cal.get(Calendar.DAY_OF_MONTH));
        dlg.getDatePicker().setMaxDate(System.currentTimeMillis());
        dlg.show();
    }
}
