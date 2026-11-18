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
import com.geely.drivemem.util.AutoCost;
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
    private final BarsView distBars, costBars;
    private final TextView distHead, distSub, costHead, costSub;
    private final TextView note;
    private final TextView fullHead, fullSub;
    private final LinearLayout fullBtns;
    private final TextView priceHead;

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

        distHead = text(c, "—", 40f, Style.TEXT, true);
        distSub = text(c, "", 16f, Style.TEXT_DIM, false);
        distBars = new BarsView(c, new BarsView.Formatter() {
            @Override public String format(double v) { return String.format(Locale.US, "%.0f", v); }
        }, "No data yet");
        charts.addView(chartCard(c, "Distance driven", distHead, distSub, distBars, true));

        costHead = text(c, "—", 40f, Style.TEXT, true);
        costSub = text(c, "", 16f, Style.TEXT_DIM, false);
        costBars = new BarsView(c, new BarsView.Formatter() {
            @Override public String format(double v) { return compactVnd(v); }
        }, "No costs entered yet");
        costBars.setBarColor(Style.HEAT);
        charts.addView(chartCard(c, "Charging cost", costHead, costSub, costBars, false));

        note = text(c, "", 15f, Style.TEXT_DIM, false);
        note.setPadding(Style.dp(c, 4), Style.dp(c, 10), 0, Style.dp(c, 4));
        addView(note);

        LinearLayout infoRow = new LinearLayout(c);
        infoRow.setOrientation(HORIZONTAL);
        LayoutParams irp = new LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        irp.topMargin = Style.dp(c, 16);
        addView(infoRow, irp);

        // ---- 100% charge card ----
        LinearLayout full = new LinearLayout(c);
        full.setOrientation(VERTICAL);
        int pad = Style.dp(c, 22);
        full.setPadding(pad, pad, pad, pad);
        full.setBackground(Style.card(Style.cardFillColor(), c));
        LayoutParams flp = new LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        flp.rightMargin = Style.dp(c, 16);
        full.setLayoutParams(flp);
        full.addView(text(c, "Full charge (LFP battery)", 16f, Style.TEXT_DIM, true));
        fullHead = text(c, "…", 30f, Style.TEXT, true);
        fullHead.setPadding(0, Style.dp(c, 6), 0, 0);
        full.addView(fullHead);
        fullSub = text(c, "", 17f, Style.TEXT_DIM, false);
        fullSub.setPadding(0, Style.dp(c, 4), 0, Style.dp(c, 12));
        full.addView(fullSub);
        fullBtns = new LinearLayout(c);
        fullBtns.setOrientation(VERTICAL);
        full.addView(fullBtns);
        infoRow.addView(full);

        // ---- charging price card ----
        LinearLayout price = new LinearLayout(c);
        price.setOrientation(VERTICAL);
        price.setPadding(pad, pad, pad, pad);
        price.setBackground(Style.card(Style.cardFillColor(), c));
        LayoutParams plp2 = new LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        price.setLayoutParams(plp2);
        price.addView(text(c, "Charging price", 16f, Style.TEXT_DIM, true));
        priceHead = text(c, "", 30f, Style.TEXT, true);
        priceHead.setPadding(0, Style.dp(c, 6), 0, 0);
        price.addView(priceHead);
        TextView psub = text(c, "AC sessions are costed automatically. For DC fast charging the price depends on the "
            + "provider: open Charging history and enter the price per kWh (or the total) for each DC session.", 17f, Style.TEXT_DIM, false);
        psub.setPadding(0, Style.dp(c, 4), 0, Style.dp(c, 12));
        price.addView(psub);
        LinearLayout pb = new LinearLayout(c);
        pb.setOrientation(VERTICAL);
        pb.addView(Style.cardButton(c, "Change AC price", false, new Runnable() {
            @Override public void run() { editAcPrice(); }
        }));
        pb.addView(Style.cardButton(c, "Recalculate AC sessions", false, new Runnable() {
            @Override public void run() { confirmRecalc(); }
        }));
        spaceChildren(pb, c);
        price.addView(pb);
        infoRow.addView(price);
        showPrice();

        buildPeriodRow();
    }

    /** Stacks the buttons of a card full width with a gap between them. */
    private static void spaceChildren(LinearLayout l, Context c) {
        for (int i = 0; i < l.getChildCount(); i++) {
            LayoutParams lp = new LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            if (i > 0) lp.topMargin = Style.dp(c, 10);
            l.getChildAt(i).setLayoutParams(lp);
        }
    }

    private void showPrice() {
        priceHead.setText("AC: " + fullVnd(AutoCost.acPrice(getContext())).replace(" \u0111", " \u0111/kWh"));
    }

    private void editAcPrice() {
        final Context c = getContext();
        final android.widget.EditText in = new android.widget.EditText(c);
        in.setInputType(android.text.InputType.TYPE_CLASS_NUMBER);
        in.setText(String.valueOf(AutoCost.acPrice(c)));
        in.setSelectAllOnFocus(true);
        new android.app.AlertDialog.Builder(c)
            .setTitle("AC price (VND per kWh)")
            .setView(in)
            .setNegativeButton(android.R.string.cancel, null)
            .setPositiveButton(android.R.string.ok, new android.content.DialogInterface.OnClickListener() {
                @Override public void onClick(android.content.DialogInterface d, int w) {
                    long v = 0;
                    try { v = Long.parseLong(in.getText().toString().trim()); } catch (Throwable ignored) {}
                    if (v <= 0) return;
                    AutoCost.setAcPrice(c, v);
                    showPrice();
                    refresh();
                }
            }).show();
    }

    private void confirmRecalc() {
        final Context c = getContext();
        new android.app.AlertDialog.Builder(c)
            .setTitle("Recalculate AC sessions?")
            .setMessage("The cost of every finished AC session will be replaced by kWh \u00D7 "
                + fullVnd(AutoCost.acPrice(c)).replace(" \u0111", " \u0111") + ". Costs you typed by hand for AC sessions will be overwritten. DC sessions are not touched.")
            .setNegativeButton(android.R.string.cancel, null)
            .setPositiveButton("Recalculate", new android.content.DialogInterface.OnClickListener() {
                @Override public void onClick(android.content.DialogInterface d, int w) {
                    new Thread(new Runnable() {
                        @Override public void run() {
                            AutoCost.run(c, true);
                            ui.post(new Runnable() { @Override public void run() { refresh(); } });
                        }
                    }, "autocost").start();
                }
            }).show();
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
        int pad = Style.dp(c, 22);
        card.setPadding(pad, pad, pad, pad);
        card.setBackground(Style.card(Style.cardFillColor(), c));
        LayoutParams lp = new LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        if (margin) lp.rightMargin = Style.dp(c, 16);
        card.setLayoutParams(lp);
        card.addView(text(c, title, 16f, Style.TEXT_DIM, true));
        head.setPadding(0, Style.dp(c, 6), 0, 0);
        card.addView(head);
        sub.setPadding(0, Style.dp(c, 2), 0, Style.dp(c, 8));
        card.addView(sub);
        card.addView(bars, new LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, Style.dp(c, 270)));
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
        if (c instanceof android.app.Activity) {
            final android.app.Activity act = (android.app.Activity) c;
            Style.gap(periodRow, c, 24);
            periodRow.addView(Style.cardButton(c, "Last month summary", false, new Runnable() {
                @Override public void run() { MonthlySummary.showLastMonth(act); }
            }));
        }
    }

    // ---------- data ----------
    private static final class Series {
        final List<String> labels = new ArrayList<String>();
        final List<Double> dist = new ArrayList<Double>(), cost = new ArrayList<Double>();
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
        s.dist.add(o.distanceKm);
        s.cost.add(o.chargeCost);
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
        distHead.setText("…");
        costHead.setText("…");
        new Thread(new Runnable() {
            @Override public void run() {
                Series s = null;
                try { AutoCost.run(ctx, false); } catch (Throwable ignored) {}
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
        double[] d = arr(s.dist), k = arr(s.cost);
        String[] lb = s.labels.toArray(new String[0]);
        distBars.setData(d, lb);
        costBars.setData(k, lb);
        int n = d.length;
        String cur = per == P_DAY ? "today" : "this " + unitName(per);
        distHead.setText(String.format(Locale.US, "%.0f km", d[n - 1]));
        costHead.setText(k[n - 1] > 0 ? fullVnd(k[n - 1]) : "—");
        distSub.setText(delta(d, "%.0f km", per, false));
        String perKm = (k[n - 1] > 0 && d[n - 1] >= 1) ? String.format(Locale.US, "%,.0f \u0111/km", k[n - 1] / d[n - 1]) : "";
        String cd = delta(k, null, per, true);
        costSub.setText(k[n - 1] > 0 || anyPositive(k)
            ? (cd.isEmpty() ? perKm : perKm.isEmpty() ? cd : cd + "  \u00B7  " + perKm)
            : "No charging costs yet");
        note.setText("The last bar is the current " + unitName(per) + ", still in progress.");
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
        fullBtns.addView(Style.cardButton(c, "I charged to 100% on…", false, new Runnable() {
            @Override public void run() { pickDate(last); }
        }));
        spaceChildren(fullBtns, c);
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
