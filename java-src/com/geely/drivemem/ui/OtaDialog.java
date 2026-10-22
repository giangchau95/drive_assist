package com.geely.drivemem.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Handler;
import android.view.ViewGroup;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import com.geely.drivemem.net.OtaUpdater;
import com.geely.drivemem.sensors.Obd2Reader;
import com.geely.drivemem.util.Style;

/** "Software update" dialog: Check for updates / Update now. */
public final class OtaDialog {
    private OtaDialog() {}

    public interface Listener { void onUpdateAvailable(boolean available); }

    private static void confirmUninstall(final Activity a, final TextView status) {
        LinearLayout card = new LinearLayout(a);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setBackground(Style.card(Style.CARD, a));
        int pad = Style.dp(a, 28);
        card.setPadding(pad, pad, pad, pad);
        card.setLayoutParams(new ViewGroup.LayoutParams(Style.dp(a, 640), ViewGroup.LayoutParams.WRAP_CONTENT));
        TextView t = new TextView(a);
        t.setText("Uninstall everything?");
        t.setTextColor(Style.TEXT);
        t.setTextSize(28f);
        t.setTypeface(Typeface.DEFAULT_BOLD);
        card.addView(t);
        TextView m = new TextView(a);
        m.setText("This removes Drive Assist and ModeHelper from the car and deletes all recorded statistics. This cannot be undone.");
        m.setTextColor(Style.TEXT_DIM);
        m.setTextSize(22f);
        m.setPadding(0, Style.dp(a, 12), 0, Style.dp(a, 8));
        card.addView(m);
        LinearLayout row = new LinearLayout(a);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(android.view.Gravity.END | android.view.Gravity.CENTER_VERTICAL);
        LinearLayout.LayoutParams rlp = new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        rlp.topMargin = Style.dp(a, 20);
        row.setLayoutParams(rlp);
        final AlertDialog d = new AlertDialog.Builder(a).setView(card).create();
        if (d.getWindow() != null) d.getWindow().setBackgroundDrawableResource(android.R.color.transparent);
        row.addView(Style.cardButton(a, "Cancel", false, new Runnable() {
            @Override public void run() { d.dismiss(); }
        }));
        Style.gap(row, a, 12);
        TextView go = Style.cardButton(a, "Uninstall all", true, new Runnable() {
            @Override public void run() {
                d.dismiss();
                String err = OtaUpdater.uninstallAll(a);
                if (err != null) {
                    status.setTextColor(Color.parseColor("#FF453A"));
                    status.setText(err);
                } else {
                    status.setTextColor(Style.TEXT);
                    status.setText("Uninstalling\u2026 the app will close.");
                }
            }
        });
        go.setTextColor(Color.parseColor("#FF453A"));
        row.addView(go);
        card.addView(row);
        d.show();
    }

    public static AlertDialog show(final Activity a, OtaUpdater.Info preInfo, final Listener l) {
        final AlertDialog.Builder builder = new AlertDialog.Builder(a);
        LinearLayout card = new LinearLayout(a);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setBackground(Style.card(Style.CARD, a));
        int pad = Style.dp(a, 28);
        card.setPadding(pad, pad, pad, pad);
        card.setLayoutParams(new ViewGroup.LayoutParams(Style.dp(a, 760), ViewGroup.LayoutParams.WRAP_CONTENT));

        TextView title = new TextView(a);
        title.setText("Settings & update");
        title.setTextColor(Style.TEXT);
        title.setTextSize(30f);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        card.addView(title);

        TextView installed = new TextView(a);
        installed.setText("Installed: " + OtaUpdater.installedVersionName(a)
            + "  (build " + OtaUpdater.installedVersionCode(a) + ")");
        installed.setTextColor(Style.TEXT_DIM);
        installed.setTextSize(22f);
        installed.setPadding(0, Style.dp(a, 8), 0, Style.dp(a, 12));
        card.addView(installed);

        // ---- OBD2 (optional, default off) ----
        TextView obdTitle = new TextView(a);
        obdTitle.setText("OBD2 dongle (optional)");
        obdTitle.setTextColor(Style.TEXT);
        obdTitle.setTextSize(24f);
        obdTitle.setTypeface(Typeface.DEFAULT_BOLD);
        card.addView(obdTitle);
        TextView obdInfo = new TextView(a);
        obdInfo.setText("Read-only: reads battery SoC, voltage, current and temperature from the BMS "
            + "through an ELM327 dongle. Gives measured energy and the consumption-by-speed chart. "
            + "Pair the dongle first in the car's Bluetooth settings (BLE dongles need no pairing).");
        obdInfo.setTextColor(Style.TEXT_DIM);
        obdInfo.setTextSize(19f);
        obdInfo.setPadding(0, Style.dp(a, 4), 0, Style.dp(a, 8));
        card.addView(obdInfo);
        LinearLayout obdRow = new LinearLayout(a);
        obdRow.setOrientation(LinearLayout.HORIZONTAL);
        obdRow.setGravity(android.view.Gravity.CENTER_VERTICAL);
        final TextView obdStatus = new TextView(a);
        obdStatus.setTextSize(22f);
        obdStatus.setTextColor(Style.TEXT);
        obdRow.addView(obdStatus, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        final TextView[] obdBtn = new TextView[1];
        final Runnable refreshObd = new Runnable() {
            @Override public void run() {
                boolean on = com.geely.drivemem.util.Prefs.getObd2Enabled(a);
                obdStatus.setText(!on ? "OBD2: Off"
                    : Obd2Reader.isConnected() ? "OBD2: On \u2014 connected" : "OBD2: On \u2014 searching for dongle\u2026");
                if (obdBtn[0] != null) obdBtn[0].setText(on ? "Turn off" : "Turn on");
            }
        };
        obdBtn[0] = Style.cardButton(a, "Turn on", false, new Runnable() {
            @Override public void run() {
                Obd2Reader.setEnabled(a, !com.geely.drivemem.util.Prefs.getObd2Enabled(a));
                new Handler().postDelayed(refreshObd, 300);
                refreshObd.run();
            }
        });
        obdRow.addView(obdBtn[0]);
        card.addView(obdRow);
        final Obd2Reader.Listener obdListener = new Obd2Reader.Listener() {
            @Override public void onObd2ConnectedChanged(boolean connected) {
                a.runOnUiThread(refreshObd);
            }
        };
        Obd2Reader.subscribe(obdListener);
        refreshObd.run();
        View divider = new View(a);
        divider.setBackgroundColor(0x33FFFFFF);
        LinearLayout.LayoutParams dlp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 1);
        dlp.topMargin = Style.dp(a, 14); dlp.bottomMargin = Style.dp(a, 14);
        card.addView(divider, dlp);

        final TextView status = new TextView(a);
        status.setTextColor(Style.TEXT);
        status.setTextSize(24f);
        status.setTypeface(Typeface.DEFAULT_BOLD);
        card.addView(status);

        final TextView notes = new TextView(a);
        notes.setTextColor(Style.TEXT_DIM);
        notes.setTextSize(21f);
        notes.setPadding(0, Style.dp(a, 10), 0, 0);
        ScrollView sv = new ScrollView(a);
        sv.addView(notes);
        card.addView(sv, new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, Style.dp(a, 220)));

        LinearLayout row = new LinearLayout(a);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(android.view.Gravity.END | android.view.Gravity.CENTER_VERTICAL);
        LinearLayout.LayoutParams rlp = new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        rlp.topMargin = Style.dp(a, 20);
        row.setLayoutParams(rlp);

        final AlertDialog dialog = builder.setView(card).create();
        if (dialog.getWindow() != null)
            dialog.getWindow().setBackgroundDrawableResource(android.R.color.transparent);

        final OtaUpdater.Info[] latest = new OtaUpdater.Info[1];
        final TextView[] updateBtn = new TextView[1];
        final TextView[] checkBtn = new TextView[1];
        final boolean[] busy = new boolean[1];

        final Runnable doCheck = new Runnable() {
            @Override public void run() {
                if (busy[0]) return;
                busy[0] = true;
                status.setTextColor(Style.TEXT);
                status.setText("Checking for updates…");
                notes.setText("");
                updateBtn[0].setVisibility(View.GONE);
                OtaUpdater.check(a, new OtaUpdater.Callback() {
                    @Override public void onResult(OtaUpdater.Info info, boolean newer, String error) {
                        busy[0] = false;
                        if (!dialog.isShowing()) return;
                        if (info == null) {
                            status.setTextColor(Color.parseColor("#FF453A"));
                            status.setText("Could not check: " + error);
                            return;
                        }
                        latest[0] = info;
                        if (newer) {
                            status.setTextColor(Color.parseColor("#30D158"));
                            status.setText("New version available: " + info.versionName);
                            notes.setText(info.changelog);
                            updateBtn[0].setVisibility(View.VISIBLE);
                        } else {
                            status.setTextColor(Style.TEXT);
                            status.setText("You are on the latest version.");
                            notes.setText(info.changelog);
                        }
                        if (l != null) l.onUpdateAvailable(newer);
                    }
                });
            }
        };

        TextView uninstall = Style.cardButton(a, "Uninstall all", false, new Runnable() {
            @Override public void run() { confirmUninstall(a, status); }
        });
        uninstall.setTextColor(Color.parseColor("#FF453A"));
        row.addView(uninstall);
        row.addView(new View(a), new LinearLayout.LayoutParams(0, 0, 1f));
        TextView close = Style.cardButton(a, "Close", false, new Runnable() {
            @Override public void run() { dialog.dismiss(); }
        });
        row.addView(close);
        Style.gap(row, a, 12);
        checkBtn[0] = Style.cardButton(a, "Check for updates", false, doCheck);
        row.addView(checkBtn[0]);
        Style.gap(row, a, 12);
        updateBtn[0] = Style.cardButton(a, "Update now", true, new Runnable() {
            @Override public void run() {
                String err = OtaUpdater.install(a, latest[0]);
                if (err != null) {
                    status.setTextColor(Color.parseColor("#FF453A"));
                    status.setText(err);
                    return;
                }
                updateBtn[0].setVisibility(View.GONE);
                checkBtn[0].setVisibility(View.GONE);
                status.setTextColor(Style.TEXT);
                status.setText("Downloading and installing… Drive Assist will restart by itself.");
                new Handler().postDelayed(new Runnable() {
                    @Override public void run() {
                        if (!dialog.isShowing()) return;
                        status.setTextColor(Color.parseColor("#FF9F0A"));
                        status.setText("Still not updated. The install may have failed — close and try again.");
                        checkBtn[0].setVisibility(View.VISIBLE);
                    }
                }, 90000);
            }
        });
        updateBtn[0].setVisibility(View.GONE);
        row.addView(updateBtn[0]);
        card.addView(row);

        dialog.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {
            @Override public void onDismiss(android.content.DialogInterface d) { Obd2Reader.unsubscribe(obdListener); }
        });
        dialog.show();
        if (preInfo != null) {
            latest[0] = preInfo;
            status.setTextColor(Color.parseColor("#30D158"));
            status.setText("New version available: " + preInfo.versionName);
            notes.setText(preInfo.changelog);
            updateBtn[0].setVisibility(View.VISIBLE);
        } else {
            doCheck.run();
        }
        return dialog;
    }
}
