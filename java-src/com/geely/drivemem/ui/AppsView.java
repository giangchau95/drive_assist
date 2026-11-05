package com.geely.drivemem.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.geely.drivemem.net.OtaUpdater;
import com.geely.drivemem.util.Style;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/** App store tab: lists the apps in the Drive Assist catalog and installs / updates them through ModeHelper. */
public class AppsView extends LinearLayout {
    public static final String CATALOG_URL =
        "https://raw.githubusercontent.com/giangchau95/drive_assist/store-test/apps/catalog.json";
    static final String INSTALL_APP = "com.geely.modehelper.INSTALL_APP";
    static final String STATUS_ACTION = "com.geely.modehelper.STORE_STATUS";
    /** First ModeHelper-lite build that understands INSTALL_APP. */
    static final int MIN_HELPER_VC_STORE = 29897994;

    private static final class App {
        String pkg, name, desc, versionName;
        long versionCode, size;
        boolean hasApk;
    }

    private final Handler ui = new Handler(Looper.getMainLooper());
    private final LinearLayout list;
    private final TextView hint;
    private List<App> apps = new ArrayList<App>();
    private String loadError;
    private boolean loading;
    private final Map<String, String> state = new HashMap<String, String>();
    private final Map<String, String> msg = new HashMap<String, String>();
    private final Map<String, Integer> pct = new HashMap<String, Integer>();
    private final Map<String, Long> started = new HashMap<String, Long>();
    private boolean registered;

    private final BroadcastReceiver receiver = new BroadcastReceiver() {
        @Override public void onReceive(Context c, Intent i) {
            String pkg = i.getStringExtra("pkg");
            if (pkg == null) return;
            String st = i.getStringExtra("state");
            state.put(pkg, st == null ? "" : st);
            msg.put(pkg, i.getStringExtra("msg"));
            pct.put(pkg, i.getIntExtra("percent", 0));
            render();
        }
    };

    public AppsView(Context c, AttributeSet a) {
        super(c, a);
        setOrientation(VERTICAL);
        TextView title = new TextView(c);
        title.setText("APPS");
        title.setTextSize(17f);
        title.setTextColor(Style.TEXT_DIM);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        title.setLetterSpacing(0.04f);
        addView(title);
        hint = new TextView(c);
        hint.setTextSize(17f);
        hint.setTextColor(Style.TEXT_DIM);
        hint.setPadding(0, Style.dp(c, 8), 0, Style.dp(c, 14));
        addView(hint);
        list = new LinearLayout(c);
        list.setOrientation(VERTICAL);
        addView(list);
    }

    @Override protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!registered) {
            getContext().registerReceiver(receiver, new IntentFilter(STATUS_ACTION));
            registered = true;
        }
    }

    @Override protected void onDetachedFromWindow() {
        if (registered) {
            try { getContext().unregisterReceiver(receiver); } catch (Throwable ignored) {}
            registered = false;
        }
        super.onDetachedFromWindow();
    }

    // ---------- catalog ----------
    public void refresh() {
        if (loading) return;
        loading = true;
        loadError = null;
        render();
        new Thread(new Runnable() {
            @Override public void run() {
                List<App> out = new ArrayList<App>();
                String err = null;
                try {
                    HttpURLConnection c = (HttpURLConnection) new URL(CATALOG_URL + "?t=" + System.currentTimeMillis()).openConnection();
                    c.setConnectTimeout(10000);
                    c.setReadTimeout(15000);
                    if (c.getResponseCode() != 200) throw new Exception("HTTP " + c.getResponseCode());
                    InputStream in = c.getInputStream();
                    ByteArrayOutputStream bo = new ByteArrayOutputStream();
                    byte[] buf = new byte[8192];
                    int n;
                    while ((n = in.read(buf)) > 0) bo.write(buf, 0, n);
                    c.disconnect();
                    JSONArray arr = new JSONObject(bo.toString("UTF-8")).getJSONArray("apps");
                    for (int i = 0; i < arr.length(); i++) {
                        JSONObject o = arr.getJSONObject(i);
                        App a = new App();
                        a.pkg = o.optString("package");
                        a.name = o.optString("name", a.pkg);
                        a.desc = o.optString("description");
                        a.versionName = o.optString("versionName");
                        a.versionCode = o.optLong("versionCode", 0);
                        a.size = o.optLong("size", 0);
                        a.hasApk = o.optString("apk").startsWith("https://") && o.optString("sha256").length() == 64 && a.versionCode > 0;
                        if (a.pkg.length() > 0) out.add(a);
                    }
                } catch (Throwable t) {
                    err = t.getMessage() == null ? t.toString() : t.getMessage();
                }
                final List<App> fo = out;
                final String fe = err;
                ui.post(new Runnable() {
                    @Override public void run() {
                        loading = false;
                        if (fe == null) { apps = fo; loadError = null; } else loadError = fe;
                        render();
                    }
                });
            }
        }, "apps-catalog").start();
    }

    // ---------- UI ----------
    private long installedVc(String pkg) {
        try {
            PackageInfo p = getContext().getPackageManager().getPackageInfo(pkg, 0);
            return p.versionCode;
        } catch (Throwable t) { return -1; }
    }

    private String installedName(String pkg) {
        try {
            PackageInfo p = getContext().getPackageManager().getPackageInfo(pkg, 0);
            return p.versionName == null ? "?" : p.versionName;
        } catch (Throwable t) { return "?"; }
    }

    private static boolean working(String st) {
        return st != null && st.length() > 0 && !"done".equals(st) && !"error".equals(st);
    }

    private void render() {
        final Context c = getContext();
        list.removeAllViews();
        if (loading && apps.isEmpty()) hint.setText("Loading the app list…");
        else if (loadError != null && apps.isEmpty()) hint.setText("Could not load the app list: " + loadError);
        else hint.setText("Install and update apps over the internet. Only while parked and not charging.");
        for (final App a : apps) list.addView(card(c, a));
        LinearLayout row = new LinearLayout(c);
        row.setPadding(0, Style.dp(c, 6), 0, 0);
        row.addView(Style.cardButton(c, loading ? "Refreshing…" : "Refresh list", false, new Runnable() {
            @Override public void run() { refresh(); }
        }));
        list.addView(row);
    }

    private View card(final Context c, final App a) {
        long iv = installedVc(a.pkg);
        String st = state.get(a.pkg);
        boolean busy = working(st);
        if (busy && started.containsKey(a.pkg) && "start".equals(st)
            && System.currentTimeMillis() - started.get(a.pkg) > 20000) {
            state.put(a.pkg, "error");
            msg.put(a.pkg, "No response from ModeHelper. Run the Drive Assist installer once to update it.");
            st = "error";
            busy = false;
        }
        LinearLayout card = new LinearLayout(c);
        card.setOrientation(HORIZONTAL);
        card.setGravity(Gravity.CENTER_VERTICAL);
        int pad = Style.dp(c, 18);
        card.setPadding(pad, pad, pad, pad);
        card.setBackground(Style.card(Style.cardFillColor(), c));
        LinearLayout.LayoutParams clp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        clp.bottomMargin = Style.dp(c, 12);
        card.setLayoutParams(clp);

        ImageView icon = new ImageView(c);
        Drawable d = null;
        try { d = c.getPackageManager().getApplicationIcon(a.pkg); } catch (Throwable ignored) {}
        if (d != null) icon.setImageDrawable(d);
        else {
            icon.setBackground(Style.card(Style.CARD_HI, c, 14));
        }
        int is = Style.dp(c, 64);
        LinearLayout.LayoutParams ilp = new LinearLayout.LayoutParams(is, is);
        ilp.rightMargin = Style.dp(c, 18);
        card.addView(icon, ilp);

        LinearLayout mid = new LinearLayout(c);
        mid.setOrientation(VERTICAL);
        card.addView(mid, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView name = new TextView(c);
        name.setText(a.name);
        name.setTextSize(21f);
        name.setTextColor(Style.TEXT);
        name.setTypeface(Typeface.DEFAULT_BOLD);
        mid.addView(name);
        StringBuilder sub = new StringBuilder();
        if (iv >= 0) sub.append("Installed ").append(installedName(a.pkg)); else sub.append("Not installed");
        if (a.hasApk) {
            sub.append("   ·   Latest ").append(a.versionName);
            if (a.size > 0) sub.append(String.format(Locale.US, "   ·   %.0f MB", a.size / 1048576.0));
        }
        TextView sv = new TextView(c);
        sv.setText(sub.toString());
        sv.setTextSize(17f);
        sv.setTextColor(Style.TEXT_DIM);
        sv.setPadding(0, Style.dp(c, 2), 0, 0);
        mid.addView(sv);
        String line = null;
        int color = Style.TEXT_DIM;
        if (busy) {
            String m = msg.get(a.pkg);
            line = label(st) + (pct.get(a.pkg) != null && "download".equals(st) ? " " + pct.get(a.pkg) + "%" : "")
                + (m != null && m.length() > 0 ? "  ·  " + m : "");
            color = Style.ACCENT;
        } else if ("error".equals(st)) {
            line = msg.get(a.pkg);
            color = Color.parseColor("#FF9F0A");
        } else if (!a.hasApk) {
            line = "The APK has not been uploaded to the catalog yet.";
        } else if (iv >= 0 && iv < a.versionCode) {
            line = "Update available";
            color = Color.parseColor("#FF9F0A");
        } else if (iv >= 0) {
            line = "Up to date";
            color = Color.parseColor("#30D158");
        }
        if (line != null) {
            TextView lv = new TextView(c);
            lv.setText(line);
            lv.setTextSize(17f);
            lv.setTextColor(color);
            lv.setPadding(0, Style.dp(c, 4), 0, 0);
            mid.addView(lv);
        }

        LinearLayout btns = new LinearLayout(c);
        btns.setOrientation(HORIZONTAL);
        card.addView(btns);
        if (busy) {
            TextView b = Style.cardButton(c, "Working…", false, new Runnable() { @Override public void run() {} });
            b.setAlpha(0.6f);
            btns.addView(b);
        } else {
            if (iv >= 0) {
                btns.addView(Style.cardButton(c, "Open", !(a.hasApk && iv < a.versionCode), new Runnable() {
                    @Override public void run() { open(a.pkg); }
                }));
                if (a.hasApk && iv < a.versionCode) {
                    Style.gap(btns, c, 10);
                    btns.addView(Style.cardButton(c, "Update", true, new Runnable() {
                        @Override public void run() { install(a); }
                    }));
                }
            } else if (a.hasApk) {
                btns.addView(Style.cardButton(c, "Install", true, new Runnable() {
                    @Override public void run() { install(a); }
                }));
            }
        }
        return card;
    }

    private static String label(String st) {
        if ("catalog".equals(st)) return "Checking";
        if ("download".equals(st)) return "Downloading";
        if ("verify".equals(st)) return "Verifying";
        if ("install".equals(st)) return "Installing";
        return "Starting";
    }

    private void open(String pkg) {
        try {
            Intent i = getContext().getPackageManager().getLaunchIntentForPackage(pkg);
            if (i != null) getContext().startActivity(i);
            else android.widget.Toast.makeText(getContext(), "This app has no launcher screen", android.widget.Toast.LENGTH_SHORT).show();
        } catch (Throwable t) {
            android.widget.Toast.makeText(getContext(), "Could not open: " + t, android.widget.Toast.LENGTH_SHORT).show();
        }
    }

    private void fail(String pkg, String m) {
        state.put(pkg, "error");
        msg.put(pkg, m);
        render();
    }

    private void install(App a) {
        Context c = getContext();
        String blocked = OtaUpdater.blockedReason();
        if (blocked != null) { fail(a.pkg, blocked); return; }
        if (!OtaUpdater.helperInstalled(c)) { fail(a.pkg, "ModeHelper is not installed. Run the Drive Assist installer once."); return; }
        try {
            int hv = c.getPackageManager().getPackageInfo(OtaUpdater.HELPER_PKG, 0).versionCode;
            if (hv < MIN_HELPER_VC_STORE) { fail(a.pkg, "ModeHelper is outdated. Run the Drive Assist installer once to update it."); return; }
        } catch (Throwable ignored) {}
        try {
            Intent i = new Intent(INSTALL_APP).setPackage(OtaUpdater.HELPER_PKG);
            i.addFlags(Intent.FLAG_INCLUDE_STOPPED_PACKAGES);
            i.putExtra("pkg", a.pkg);
            c.sendBroadcast(i);
            state.put(a.pkg, "start");
            msg.put(a.pkg, "");
            pct.put(a.pkg, 0);
            started.put(a.pkg, System.currentTimeMillis());
            render();
            final String pkg = a.pkg;
            ui.postDelayed(new Runnable() {
                @Override public void run() { if ("start".equals(state.get(pkg))) render(); }
            }, 21000);
        } catch (Throwable t) {
            fail(a.pkg, "Could not start: " + t);
        }
    }
}
