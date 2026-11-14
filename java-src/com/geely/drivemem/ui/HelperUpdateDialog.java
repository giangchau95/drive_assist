package com.geely.drivemem.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Typeface;
import android.view.Gravity;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.geely.drivemem.net.OtaUpdater;
import com.geely.drivemem.util.Style;

/** Asks before updating ModeHelper, the system service that installs updates and apps. */
public final class HelperUpdateDialog {
    private HelperUpdateDialog() {}

    private static boolean showing;

    private static SharedPreferences prefs(Context c) { return c.getSharedPreferences("helper_prefs", Context.MODE_PRIVATE); }

    public static boolean snoozed(Context c) {
        return System.currentTimeMillis() < prefs(c).getLong("snooze_until", 0L);
    }

    /** @return true when the dialog is now on screen. */
    public static boolean show(final Activity a, final OtaUpdater.Info info) {
        if (showing || a.isFinishing() || snoozed(a)) return false;
        showing = true;
        LinearLayout card = new LinearLayout(a);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setBackground(Style.card(Style.CARD, a));
        int pad = Style.dp(a, 28);
        card.setPadding(pad, pad, pad, pad);
        card.setLayoutParams(new ViewGroup.LayoutParams(Style.dp(a, 640), ViewGroup.LayoutParams.WRAP_CONTENT));
        TextView t = new TextView(a);
        t.setText("ModeHelper update available");
        t.setTextColor(Style.TEXT);
        t.setTextSize(30f);
        t.setTypeface(Typeface.DEFAULT_BOLD);
        card.addView(t);
        final TextView m = new TextView(a);
        m.setText("A newer ModeHelper is available. It is the background service that installs Drive Assist updates and apps from the Apps tab.\n\n"
            + "Update it now? This takes a few seconds and nothing else on the car is touched. "
            + "You can only update while the car is parked and not charging.");
        m.setTextColor(Style.TEXT_DIM);
        m.setTextSize(22f);
        m.setPadding(0, Style.dp(a, 12), 0, Style.dp(a, 8));
        card.addView(m);
        LinearLayout row = new LinearLayout(a);
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
        row.addView(Style.cardButton(a, "Later", false, new Runnable() {
            @Override public void run() {
                prefs(a).edit().putLong("snooze_until", System.currentTimeMillis() + 24L * 3600 * 1000).apply();
                d.dismiss();
            }
        }));
        Style.gap(row, a, 12);
        row.addView(Style.cardButton(a, "Update ModeHelper", true, new Runnable() {
            @Override public void run() {
                String r = OtaUpdater.updateHelper(a, info);
                if (r != null) {
                    m.setText(r);
                    m.setTextColor(Style.HEAT);
                } else {
                    d.dismiss();
                    android.widget.Toast.makeText(a, "Updating ModeHelper… it restarts itself in a few seconds.",
                        android.widget.Toast.LENGTH_LONG).show();
                }
            }
        }));
        card.addView(row);
        d.show();
        return true;
    }
}
