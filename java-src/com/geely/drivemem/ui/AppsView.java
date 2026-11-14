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
        "https://raw.githubusercontent.com/giangchau95/drive_assist/main/apps/catalog.json";
    static final String INSTALL_APP = "com.geely.modehelper.INSTALL_APP";
    static final String STATUS_ACTION = "com.geely.modehelper.STORE_STATUS";
    /** First ModeHelper-lite build that understands INSTALL_APP. */
    static final int MIN_HELPER_VC_STORE = 29911176;

    private static final class App {
        String pkg, name, desc, versionName, icon;
        long versionCode, size;
        boolean hasApk;
    }

    private final Handler ui = new Handler(Looper.getMainLooper());
    private final LinearLayout list;
    private final TextView hint;
    private final ImageView refreshBtn;
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
        LinearLayout header = new LinearLayout(c);
        header.setOrientation(HORIZONTAL);
        header.setGravity(Gravity.CENTER_VERTICAL);
        LinearLayout tcol = new LinearLayout(c);
        tcol.setOrientation(VERTICAL);
        TextView title = new TextView(c);
        title.setText("Apps");
        title.setTextSize(28f);
        title.setTextColor(Style.TEXT);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        tcol.addView(title);
        hint = new TextView(c);
        hint.setTextSize(16f);
        hint.setTextColor(Style.TEXT_DIM);
        tcol.addView(hint);
        header.addView(tcol, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        refreshBtn = new ImageView(c);
        refreshBtn.setImageBitmap(glyph(c, 0));
        refreshBtn.setScaleType(ImageView.ScaleType.FIT_CENTER);
        refreshBtn.setBackground(Style.card(Style.CARD_HI, c, 14));
        int rp = Style.dp(c, 11);
        refreshBtn.setPadding(rp, rp, rp, rp);
        refreshBtn.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { refresh(); }
        });
        header.addView(refreshBtn, new LinearLayout.LayoutParams(Style.dp(c, 48), Style.dp(c, 48)));
        LinearLayout.LayoutParams hlp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        hlp.bottomMargin = Style.dp(c, 18);
        addView(header, hlp);
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
                        a.icon = o.optString("icon");
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
    private static final Map<String, android.graphics.Bitmap> ICONS = new HashMap<String, android.graphics.Bitmap>();

    /** 0 = refresh arrow, 1 = trash can. */
    private static android.graphics.Bitmap glyph(Context c, int kind) {
        int px = Style.dp(c, 30);
        android.graphics.Bitmap bmp = android.graphics.Bitmap.createBitmap(px, px, android.graphics.Bitmap.Config.ARGB_8888);
        android.graphics.Canvas cv = new android.graphics.Canvas(bmp);
        android.graphics.Paint p = new android.graphics.Paint(android.graphics.Paint.ANTI_ALIAS_FLAG);
        p.setStyle(android.graphics.Paint.Style.STROKE);
        p.setStrokeWidth(px * 0.09f);
        p.setStrokeCap(android.graphics.Paint.Cap.ROUND);
        p.setStrokeJoin(android.graphics.Paint.Join.ROUND);
        if (kind == 0) {
            p.setColor(Style.TEXT);
            float cx = px / 2f, cy = px / 2f, r = px * 0.32f;
            android.graphics.RectF rect = new android.graphics.RectF(cx - r, cy - r, cx + r, cy + r);
            float a0 = 35f, sweep = 285f;
            cv.drawArc(rect, a0, sweep, false, p);
            double a1 = Math.toRadians(a0 + sweep);
            float ex = cx + (float) (r * Math.cos(a1)), ey = cy + (float) (r * Math.sin(a1));
            float tx = (float) -Math.sin(a1), ty = (float) Math.cos(a1);
            float nx = (float) Math.cos(a1), ny = (float) Math.sin(a1);
            float h = px * 0.20f, w = px * 0.14f;
            android.graphics.Path head = new android.graphics.Path();
            head.moveTo(ex + tx * h, ey + ty * h);
            head.lineTo(ex + nx * w, ey + ny * w);
            head.lineTo(ex - nx * w, ey - ny * w);
            head.close();
            android.graphics.Paint f = new android.graphics.Paint(android.graphics.Paint.ANTI_ALIAS_FLAG);
            f.setColor(Style.TEXT);
            f.setStyle(android.graphics.Paint.Style.FILL);
            cv.drawPath(head, f);
        } else {
            p.setColor(0xFFFF6B6B);
            cv.drawLine(px * 0.18f, px * 0.26f, px * 0.82f, px * 0.26f, p);
            cv.drawLine(px * 0.38f, px * 0.26f, px * 0.38f, px * 0.14f, p);
            cv.drawLine(px * 0.38f, px * 0.14f, px * 0.62f, px * 0.14f, p);
            cv.drawLine(px * 0.62f, px * 0.14f, px * 0.62f, px * 0.26f, p);
            android.graphics.Path b = new android.graphics.Path();
            b.moveTo(px * 0.26f, px * 0.26f);
            b.lineTo(px * 0.30f, px * 0.84f);
            b.lineTo(px * 0.70f, px * 0.84f);
            b.lineTo(px * 0.74f, px * 0.26f);
            cv.drawPath(b, p);
            cv.drawLine(px * 0.43f, px * 0.42f, px * 0.43f, px * 0.70f, p);
            cv.drawLine(px * 0.57f, px * 0.42f, px * 0.57f, px * 0.70f, p);
        }
        return bmp;
    }

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

    private int columns() {
        android.util.DisplayMetrics dm = getResources().getDisplayMetrics();
        float availDp = dm.widthPixels / dm.density - 220f;
        int n = (int) (availDp / 300f);
        return Math.max(1, Math.min(4, n));
    }

    private void render() {
        final Context c = getContext();
        list.removeAllViews();
        if (loading && apps.isEmpty()) hint.setText("Loading the app list\u2026");
        else if (loadError != null && apps.isEmpty()) hint.setText("Could not load the app list: " + loadError);
        else hint.setText("Install and update apps for your car. Only while parked and not charging.");
        int cols = columns();
        int gap = Style.dp(c, 14);
        LinearLayout row = null;
        for (int i = 0; i < apps.size(); i++) {
            if (i % cols == 0) {
                row = new LinearLayout(c);
                row.setOrientation(HORIZONTAL);
                LinearLayout.LayoutParams rlp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
                rlp.bottomMargin = gap;
                list.addView(row, rlp);
            }
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
            if (i % cols != cols - 1) lp.rightMargin = gap;
            row.addView(card(c, apps.get(i)), lp);
        }
        // keep the last row's cards at the same width as the others
        if (row != null) {
            int missing = cols - row.getChildCount();
            for (int m = 0; m < missing; m++) {
                View sp = new View(c);
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, 1, 1f);
                if (m != missing - 1) lp.rightMargin = gap;
                lp.leftMargin = 0;
                row.addView(sp, lp);
            }
        }
    }

    private TextView btn(Context c, String text, boolean primary, final Runnable r) {
        TextView t = new TextView(c);
        t.setText(text);
        t.setTextSize(17f);
        t.setTypeface(Typeface.DEFAULT_BOLD);
        t.setGravity(Gravity.CENTER);
        t.setSingleLine(true);
        t.setIncludeFontPadding(false);
        t.setPadding(Style.dp(c, 8), 0, Style.dp(c, 8), 0);
        int fill = primary ? Style.CARD_ON : Style.CARD_HI;
        t.setTextColor(Style.onFill(fill));
        t.setBackground(Style.card(fill, c, 12));
        t.setOnClickListener(new View.OnClickListener() { @Override public void onClick(View v) { r.run(); } });
        return t;
    }

    private TextView pill(Context c, String text, int color) {
        TextView t = new TextView(c);
        t.setText(text);
        t.setTextSize(13f);
        t.setTypeface(Typeface.DEFAULT_BOLD);
        t.setTextColor(color);
        t.setSingleLine(true);
        int ph = Style.dp(c, 10), pv = Style.dp(c, 3);
        t.setPadding(ph, pv, ph, pv);
        android.graphics.drawable.GradientDrawable g = new android.graphics.drawable.GradientDrawable();
        g.setCornerRadius(Style.dp(c, 12));
        g.setColor((color & 0x00FFFFFF) | 0x26000000);
        t.setBackground(g);
        return t;
    }

    private void loadIcon(final App a, final ImageView iv) {
        final Context c = getContext();
        try {
            Drawable d = c.getPackageManager().getApplicationIcon(a.pkg);
            if (installedVc(a.pkg) >= 0 && d != null) { iv.setImageDrawable(d); return; }
        } catch (Throwable ignored) {}
        android.graphics.Bitmap b = ICONS.get(a.pkg);
        if (b == null) {
            java.io.File f = new java.io.File(c.getCacheDir(), "storeicon-" + a.pkg + ".png");
            if (f.exists()) {
                b = android.graphics.BitmapFactory.decodeFile(f.getAbsolutePath());
                if (b != null) ICONS.put(a.pkg, b);
            }
        }
        if (b != null) { iv.setImageBitmap(b); return; }
        iv.setBackground(Style.card(Style.CARD_HI, c, 14));
        if (a.icon == null || !a.icon.startsWith("https://")) return;
        new Thread(new Runnable() {
            @Override public void run() {
                try {
                    HttpURLConnection h = (HttpURLConnection) new URL(a.icon).openConnection();
                    h.setConnectTimeout(8000);
                    h.setReadTimeout(10000);
                    if (h.getResponseCode() != 200) return;
                    InputStream in = h.getInputStream();
                    ByteArrayOutputStream bo = new ByteArrayOutputStream();
                    byte[] buf = new byte[8192];
                    int n;
                    while ((n = in.read(buf)) > 0) {
                        bo.write(buf, 0, n);
                        if (bo.size() > 1024 * 1024) return;
                    }
                    h.disconnect();
                    byte[] data = bo.toByteArray();
                    final android.graphics.Bitmap bm = android.graphics.BitmapFactory.decodeByteArray(data, 0, data.length);
                    if (bm == null) return;
                    java.io.FileOutputStream fo = new java.io.FileOutputStream(new java.io.File(c.getCacheDir(), "storeicon-" + a.pkg + ".png"));
                    fo.write(data);
                    fo.close();
                    ui.post(new Runnable() {
                        @Override public void run() { ICONS.put(a.pkg, bm); iv.setBackground(null); iv.setImageBitmap(bm); }
                    });
                } catch (Throwable ignored) {}
            }
        }, "apps-icon").start();
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
        boolean installed = iv >= 0;
        boolean update = installed && a.hasApk && iv < a.versionCode;

        LinearLayout card = new LinearLayout(c);
        card.setOrientation(VERTICAL);
        int pad = Style.dp(c, 16);
        card.setPadding(pad, pad, pad, pad);
        card.setBackground(Style.card(Style.cardFillColor(), c));
        card.setMinimumHeight(Style.dp(c, 210));

        // badge row
        LinearLayout top = new LinearLayout(c);
        top.setOrientation(HORIZONTAL);
        top.setGravity(Gravity.CENTER_VERTICAL);
        ImageView icon = new ImageView(c);
        icon.setScaleType(ImageView.ScaleType.FIT_CENTER);
        loadIcon(a, icon);
        final int rad = Style.dp(c, 14);
        icon.setOutlineProvider(new android.view.ViewOutlineProvider() {
            @Override public void getOutline(View v, android.graphics.Outline o) { o.setRoundRect(0, 0, v.getWidth(), v.getHeight(), rad); }
        });
        icon.setClipToOutline(true);
        int is = Style.dp(c, 56);
        LinearLayout.LayoutParams ilp = new LinearLayout.LayoutParams(is, is);
        ilp.rightMargin = Style.dp(c, 12);
        top.addView(icon, ilp);
        LinearLayout nc = new LinearLayout(c);
        nc.setOrientation(VERTICAL);
        TextView name = new TextView(c);
        name.setText(a.name);
        name.setTextSize(19f);
        name.setTextColor(Style.TEXT);
        name.setTypeface(Typeface.DEFAULT_BOLD);
        name.setMaxLines(2);
        name.setEllipsize(android.text.TextUtils.TruncateAt.END);
        nc.addView(name);
        StringBuilder ver = new StringBuilder();
        if (installed) ver.append("v").append(installedName(a.pkg));
        if (update) ver.append("  \u2192  v").append(a.versionName);
        else if (!installed && a.hasApk) ver.append("v").append(a.versionName);
        if (a.hasApk && a.size > 0) ver.append(ver.length() > 0 ? "  \u00B7  " : "").append(String.format(Locale.US, "%.0f MB", a.size / 1048576.0));
        TextView vv = new TextView(c);
        vv.setText(ver.toString());
        vv.setTextSize(14f);
        vv.setTextColor(Style.TEXT_DIM);
        vv.setSingleLine(true);
        vv.setEllipsize(android.text.TextUtils.TruncateAt.END);
        nc.addView(vv);
        top.addView(nc, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView badge = update ? pill(c, "Update", Color.parseColor("#FF9F0A"))
            : installed ? pill(c, "Installed", Color.parseColor("#30D158"))
            : pill(c, a.hasApk ? "Not installed" : "Not available", Style.TEXT_DIM);
        LinearLayout badgeRow = new LinearLayout(c);
        badgeRow.setGravity(Gravity.END);
        badgeRow.addView(badge);
        LinearLayout.LayoutParams brl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        brl.bottomMargin = Style.dp(c, 8);
        card.addView(badgeRow, brl);
        card.addView(top);

        TextView desc = new TextView(c);
        desc.setText(a.desc);
        desc.setTextSize(15f);
        desc.setTextColor(Style.TEXT_DIM);
        desc.setMaxLines(2);
        desc.setEllipsize(android.text.TextUtils.TruncateAt.END);
        desc.setPadding(0, Style.dp(c, 12), 0, 0);
        card.addView(desc);

        card.addView(new View(c), new LinearLayout.LayoutParams(1, 0, 1f));

        // status / progress
        if (busy) {
            String m = msg.get(a.pkg);
            TextView lv = new TextView(c);
            lv.setText(label(st) + (pct.get(a.pkg) != null && "download".equals(st) ? " " + pct.get(a.pkg) + "%" : "")
                + (m != null && m.length() > 0 ? "  \u00B7  " + m : ""));
            lv.setTextSize(14f);
            lv.setTextColor(Style.ACCENT);
            lv.setSingleLine(true);
            lv.setEllipsize(android.text.TextUtils.TruncateAt.END);
            lv.setPadding(0, Style.dp(c, 10), 0, Style.dp(c, 4));
            card.addView(lv);
            android.widget.ProgressBar pb = new android.widget.ProgressBar(c, null, android.R.attr.progressBarStyleHorizontal);
            pb.setMax(100);
            Integer pv = pct.get(a.pkg);
            if ("download".equals(st) && pv != null) pb.setProgress(pv); else pb.setIndeterminate(true);
            card.addView(pb, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, Style.dp(c, 8)));
        } else if ("error".equals(st) || (!a.hasApk && !installed)) {
            TextView lv = new TextView(c);
            lv.setText("error".equals(st) ? msg.get(a.pkg) : "The APK has not been added to the catalog yet.");
            lv.setTextSize(14f);
            lv.setTextColor("error".equals(st) ? Color.parseColor("#FF9F0A") : Style.TEXT_DIM);
            lv.setMaxLines(3);
            lv.setEllipsize(android.text.TextUtils.TruncateAt.END);
            lv.setPadding(0, Style.dp(c, 10), 0, 0);
            card.addView(lv);
        }

        // buttons
        LinearLayout btns = new LinearLayout(c);
        btns.setOrientation(HORIZONTAL);
        btns.setGravity(Gravity.CENTER_VERTICAL);
        LinearLayout.LayoutParams bl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        bl.topMargin = Style.dp(c, 14);
        card.addView(btns, bl);
        int bh = Style.dp(c, 46);
        if (busy) {
            TextView b = btn(c, "Working\u2026", false, new Runnable() { @Override public void run() {} });
            b.setAlpha(0.6f);
            btns.addView(b, new LinearLayout.LayoutParams(0, bh, 1f));
        } else if (installed) {
            if (update) {
                TextView b = btn(c, "Update", true, new Runnable() { @Override public void run() { install(a); } });
                    LinearLayout.LayoutParams l = new LinearLayout.LayoutParams(0, bh, 1f);
                l.rightMargin = Style.dp(c, 8);
                btns.addView(b, l);
            }
            TextView o = btn(c, "Open", !update, new Runnable() { @Override public void run() { open(a.pkg); } });
            LinearLayout.LayoutParams ol = new LinearLayout.LayoutParams(0, bh, 1f);
            ol.rightMargin = Style.dp(c, 8);
            btns.addView(o, ol);
            ImageView del = new ImageView(c);
            del.setImageBitmap(glyph(c, 1));
            del.setBackground(Style.card(Style.CARD_HI, c, 12));
            int dp = Style.dp(c, 9);
            del.setPadding(dp, dp, dp, dp);
            del.setOnClickListener(new View.OnClickListener() { @Override public void onClick(View v) { confirmUninstall(a); } });
            btns.addView(del, new LinearLayout.LayoutParams(bh, bh));
        } else if (a.hasApk) {
            TextView b = btn(c, "Install", true, new Runnable() { @Override public void run() { install(a); } });
            btns.addView(b, new LinearLayout.LayoutParams(0, bh, 1f));
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

    /** Returns null when ModeHelper can take the request, otherwise the reason it cannot. */
    private String helperProblem() {
        Context c = getContext();
        String blocked = OtaUpdater.blockedReason();
        if (blocked != null) return blocked;
        if (!OtaUpdater.helperInstalled(c)) return "ModeHelper is not installed. Run the Drive Assist installer once.";
        try {
            int hv = c.getPackageManager().getPackageInfo(OtaUpdater.HELPER_PKG, 0).versionCode;
            if (hv < MIN_HELPER_VC_STORE) {
                updateHelper();
                return "ModeHelper is being updated. Try again in about a minute.";
            }
        } catch (Throwable ignored) {}
        return null;
    }

    /** Downloads the newest ModeHelper through the old one. */
    private void updateHelper() {
        final Context c = getContext();
        OtaUpdater.check(c, new OtaUpdater.Callback() {
            @Override public void onResult(OtaUpdater.Info info, boolean newer, String error) {
                if (info == null) return;
                String r = OtaUpdater.updateHelper(c, info);
                if (r != null) android.widget.Toast.makeText(c, r, android.widget.Toast.LENGTH_LONG).show();
            }
        });
    }

    private void send(final App a, String action, String firstMsg) {
        Context c = getContext();
        try {
            Intent i = new Intent(action).setPackage(OtaUpdater.HELPER_PKG);
            i.addFlags(Intent.FLAG_INCLUDE_STOPPED_PACKAGES);
            i.putExtra("pkg", a.pkg);
            c.sendBroadcast(i);
            state.put(a.pkg, "start");
            msg.put(a.pkg, firstMsg);
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

    private void install(App a) {
        String problem = helperProblem();
        if (problem != null) { fail(a.pkg, problem); return; }
        send(a, INSTALL_APP, "");
    }

    private void confirmUninstall(final App a) {
        String problem = helperProblem();
        if (problem != null) { fail(a.pkg, problem); return; }
        new android.app.AlertDialog.Builder(getContext())
            .setTitle("Uninstall " + a.name + "?")
            .setMessage("The app and its data will be removed from the car.")
            .setNegativeButton(android.R.string.cancel, null)
            .setPositiveButton("Uninstall", new android.content.DialogInterface.OnClickListener() {
                @Override public void onClick(android.content.DialogInterface d, int w) {
                    send(a, "com.geely.modehelper.UNINSTALL_APP", "");
                }
            }).show();
    }
}
