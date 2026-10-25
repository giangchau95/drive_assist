package com.geely.drivemem.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.graphics.Typeface;
import android.view.Gravity;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.geely.drivemem.state.CarState;
import com.geely.drivemem.util.FullCharge;
import com.geely.drivemem.util.Style;

/** Shown when the app opens, only while parked, when the battery is overdue for a 100% charge. */
public final class FullChargeReminder {
    private FullChargeReminder() {}

    private static boolean showing;

    /** Cheap to call on every resume: does the database work off the UI thread and shows at most one card. */
    public static void check(final Activity a) {
        if (showing || !CarState.isParked()) return;
        if (System.currentTimeMillis() < FullCharge.snoozeUntil(a)) return;
        new Thread(new Runnable() {
            @Override public void run() {
                final long last = FullCharge.lastFullMs(a);
                if (!FullCharge.isDue(a, last)) return;
                a.runOnUiThread(new Runnable() {
                    @Override public void run() {
                        if (a.isFinishing() || showing || !CarState.isParked()) return;
                        show(a, last);
                    }
                });
            }
        }, "full-charge-check").start();
    }

    private static void show(final Activity a, long last) {
        showing = true;
        int days = FullCharge.daysSince(FullCharge.baseMs(a, last));
        LinearLayout card = new LinearLayout(a);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setBackground(Style.card(Style.CARD, a));
        int pad = Style.dp(a, 28);
        card.setPadding(pad, pad, pad, pad);
        card.setLayoutParams(new ViewGroup.LayoutParams(Style.dp(a, 680), ViewGroup.LayoutParams.WRAP_CONTENT));
        TextView t = new TextView(a);
        t.setText("Time for a full charge");
        t.setTextColor(Style.TEXT);
        t.setTextSize(30f);
        t.setTypeface(Typeface.DEFAULT_BOLD);
        card.addView(t);
        TextView m = new TextView(a);
        String since = last > 0
            ? days + " days since the last 100% charge (" + FullCharge.dateText(last) + ")."
            : "No 100% charge recorded in the last " + days + " days.";
        m.setText(since + "\n\nAn LFP battery should be charged to 100% at least once or twice a month. "
            + "It lets the battery system recalibrate, so the percentage and range stay accurate. "
            + "Charge to 100% the next time you plug in.");
        m.setTextColor(Style.TEXT_DIM);
        m.setTextSize(22f);
        m.setPadding(0, Style.dp(a, 12), 0, Style.dp(a, 8));
        card.addView(m);
        LinearLayout row = new LinearLayout(a);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.END | Gravity.CENTER_VERTICAL);
        LinearLayout.LayoutParams rlp = new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        rlp.topMargin = Style.dp(a, 20);
        row.setLayoutParams(rlp);
        final AlertDialog d = new AlertDialog.Builder(a).setView(card).create();
        if (d.getWindow() != null) d.getWindow().setBackgroundDrawableResource(android.R.color.transparent);
        d.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {
            @Override public void onDismiss(android.content.DialogInterface x) { showing = false; }
        });
        row.addView(Style.cardButton(a, "Remind me tomorrow", false, new Runnable() {
            @Override public void run() { FullCharge.snooze(a, FullCharge.DAY_MS); d.dismiss(); }
        }));
        Style.gap(row, a, 12);
        row.addView(Style.cardButton(a, "OK", true, new Runnable() {
            @Override public void run() { FullCharge.snooze(a, 12L * 3600 * 1000); d.dismiss(); }
        }));
        card.addView(row);
        d.show();
    }
}
