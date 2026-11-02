package com.geely.drivemem.ui;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.geely.drivemem.car.CarDb;
import com.geely.drivemem.state.ChargeSession;
import com.geely.drivemem.util.Style;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/** Live "charging now" card with the estimated time to 80% and 100%. Hidden when not charging. */
public class ChargingBanner extends LinearLayout {
    private static final double PACK_KWH = 39.6;
    private final Handler ui = new Handler(Looper.getMainLooper());
    private final TextView line1, line2;
    private boolean running;
    private final Runnable tick = new Runnable() {
        @Override public void run() {
            if (!running) return;
            if (isShown() || getVisibility() == GONE) poll();
            ui.postDelayed(this, 8000);
        }
    };

    public ChargingBanner(Context c) {
        super(c);
        setOrientation(VERTICAL);
        int pad = Style.dp(c, 16);
        setPadding(pad + Style.dp(c, 4), pad, pad, pad);
        setBackground(Style.card(Style.cardFillColor(), c));
        line1 = new TextView(c);
        line1.setTextSize(19f);
        line1.setTextColor(Style.TEXT);
        line1.setTypeface(Typeface.DEFAULT_BOLD);
        addView(line1);
        line2 = new TextView(c);
        line2.setTextSize(17f);
        line2.setTextColor(Style.TEXT_DIM);
        line2.setPadding(0, Style.dp(c, 4), 0, 0);
        addView(line2);
        LayoutParams lp = new LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.bottomMargin = Style.dp(c, 12);
        setLayoutParams(lp);
        setVisibility(GONE);
    }

    @Override protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        running = true;
        ui.removeCallbacks(tick);
        ui.post(tick);
    }

    @Override protected void onDetachedFromWindow() {
        running = false;
        ui.removeCallbacks(tick);
        super.onDetachedFromWindow();
    }

    private void poll() {
        final Context ctx = getContext();
        boolean charging;
        try { charging = ChargeSession.isCharging() && ChargeSession.isSessionActive(); } catch (Throwable t) { charging = false; }
        if (!charging) { setVisibility(GONE); return; }
        final int soc = ChargeSession.currentSocEnd();
        final double kwh = ChargeSession.currentKwh();
        final long startMs = ChargeSession.currentStartWallMs();
        new Thread(new Runnable() {
            @Override public void run() {
                final double rate = ratePctPerHour(ctx, soc, kwh, startMs);
                ui.post(new Runnable() { @Override public void run() { show(soc, kwh, rate); } });
            }
        }, "charge-eta").start();
    }

    /** % of battery gained per hour: recent samples first, then the whole session, then average power. */
    static double ratePctPerHour(Context ctx, int soc, double kwh, long startMs) {
        long now = System.currentTimeMillis();
        try {
            android.database.Cursor c = CarDb.get(ctx).getReadableDatabase().rawQuery(
                "SELECT ts_ms, battery_pct FROM telemetry_sample WHERE ts_ms > ? AND battery_pct IS NOT NULL ORDER BY ts_ms",
                new String[]{String.valueOf(Math.max(startMs, now - 20L * 60000))});
            try {
                long t0 = 0; double p0 = 0, p1 = 0; long t1 = 0; boolean first = true;
                while (c.moveToNext()) {
                    if (first) { t0 = c.getLong(0); p0 = c.getDouble(1); first = false; }
                    t1 = c.getLong(0); p1 = c.getDouble(1);
                }
                double hours = (t1 - t0) / 3600000.0;
                if (!first && hours >= 0.05 && p1 - p0 >= 1.0) return (p1 - p0) / hours;
            } finally { c.close(); }
        } catch (Throwable ignored) {}
        double hours = (now - startMs) / 3600000.0;
        if (hours > 0.05 && kwh > 0.3) return (kwh / hours) / PACK_KWH * 100.0;
        return 0;
    }

    private static String dur(double hours) {
        long m = Math.round(hours * 60);
        if (m < 1) return "<1 min";
        if (m < 60) return m + " min";
        return (m / 60) + " h " + (m % 60) + " min";
    }

    private void show(int soc, double kwh, double rate) {
        setVisibility(VISIBLE);
        line1.setText(String.format(Locale.US, "Charging  %d%%  ·  +%.1f kWh", soc, kwh));
        if (rate <= 0 || soc < 0) { line2.setText("Estimating time left…"); return; }
        SimpleDateFormat f = new SimpleDateFormat("HH:mm", Locale.US);
        StringBuilder sb = new StringBuilder();
        long now = System.currentTimeMillis();
        if (soc < 80) {
            double h = (80 - soc) / rate;
            sb.append("To 80%: ~").append(dur(h)).append(" (").append(f.format(new Date(now + (long) (h * 3600000)))).append(")   ");
        }
        if (soc < 100) {
            double h = (100 - soc) / rate;
            sb.append("To 100%: ~").append(dur(h)).append(" (").append(f.format(new Date(now + (long) (h * 3600000)))).append(")");
        } else {
            sb.append("Fully charged");
        }
        line2.setText(sb.toString());
    }
}
