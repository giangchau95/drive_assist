package com.geely.drivemem.ui;

import com.geely.drivemem.R;
import com.geely.drivemem.car.CarActor;
import com.geely.drivemem.car.CarAccess;
import com.geely.drivemem.net.OtaUpdater;
import com.geely.drivemem.state.CarState;
import com.geely.drivemem.util.BootReceiver;
import com.geely.drivemem.util.Style;

import android.app.Activity;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.geely.drivemem.util.FullCharge;
import android.widget.LinearLayout;

/** Slim build: only Daily Statistics (+ altimetry) and Charging history / energy balance. */
public class ComfortActivity extends Activity {
    private static final int MODE_DAILY = 1;
    private static final int MODE_CHARGE = 2;
    private static final int MODE_TRENDS = 3;
    private static final int MODE_APPS = 4;
    private int mode = 0;

    private DailyStatsView dailyStatsView;
    private ChargeStatsView chargeStatsView;
    private FrameLayout statsContainer, chargeStatsContainer;
    private ImageView statsDockIcon, chargeDockIcon, trendsDockIcon, appsDockIcon;
    private AppsView appsView;
    private FrameLayout appsContainer;
    private TrendsView trendsView;
    private FrameLayout trendsContainer;
    private ImageView updateBtn;
    private boolean updateAvailable;
    private static long lastAutoCheckMs = 0;
    private static final long AUTO_CHECK_GAP_MS = 6L * 3600 * 1000;
    private String themeId;
    private boolean themeLight;

    @Override protected void onCreate(Bundle b) {
        super.onCreate(b);
        Style.load(this);
        themeId = Style.current().id;
        themeLight = Style.LIGHT;
        Style.edgeToEdge(this);

        FrameLayout screen = new FrameLayout(this);
        screen.setBackground(Style.screenBg());

        int sidebarW = Style.dp(this, 84), edge = Style.dp(this, 8), gap = Style.dp(this, 24);
        int sidebarClearance = edge + sidebarW + gap;
        int padH = Style.dp(this, 36), padV = Style.dp(this, 32), padTop = Style.dp(this, 12);

        statsContainer = new FrameLayout(this);
        statsContainer.setPadding(sidebarClearance, padTop + Style.statusBarHeight(this), padH, padV);
        android.widget.ScrollView s1 = new android.widget.ScrollView(this);
        s1.setVerticalScrollBarEnabled(false);
        s1.setOverScrollMode(View.OVER_SCROLL_NEVER);
        dailyStatsView = new DailyStatsView(this, null);
        s1.addView(dailyStatsView);
        LinearLayout col_s1 = new LinearLayout(this);
        col_s1.setOrientation(LinearLayout.VERTICAL);
        col_s1.addView(new ChargingBanner(this));
        col_s1.addView(s1, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        statsContainer.addView(col_s1, new FrameLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        screen.addView(statsContainer, new FrameLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        chargeStatsContainer = new FrameLayout(this);
        chargeStatsContainer.setPadding(sidebarClearance, padTop + Style.statusBarHeight(this), padH, padV);
        android.widget.ScrollView s2 = new android.widget.ScrollView(this);
        s2.setVerticalScrollBarEnabled(false);
        s2.setOverScrollMode(View.OVER_SCROLL_NEVER);
        chargeStatsView = new ChargeStatsView(this, null);
        s2.addView(chargeStatsView);
        LinearLayout col_s2 = new LinearLayout(this);
        col_s2.setOrientation(LinearLayout.VERTICAL);
        col_s2.addView(new ChargingBanner(this));
        col_s2.addView(s2, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        chargeStatsContainer.addView(col_s2, new FrameLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        chargeStatsContainer.setVisibility(View.GONE);
        screen.addView(chargeStatsContainer, new FrameLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        trendsContainer = new FrameLayout(this);
        trendsContainer.setPadding(sidebarClearance, padTop + Style.statusBarHeight(this), padH, padV);
        android.widget.ScrollView s3 = new android.widget.ScrollView(this);
        s3.setVerticalScrollBarEnabled(false);
        s3.setOverScrollMode(View.OVER_SCROLL_NEVER);
        trendsView = new TrendsView(this, null);
        s3.addView(trendsView);
        LinearLayout col_s3 = new LinearLayout(this);
        col_s3.setOrientation(LinearLayout.VERTICAL);
        col_s3.addView(new ChargingBanner(this));
        col_s3.addView(s3, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        trendsContainer.addView(col_s3, new FrameLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        trendsContainer.setVisibility(View.GONE);
        screen.addView(trendsContainer, new FrameLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        appsContainer = new FrameLayout(this);
        appsContainer.setPadding(sidebarClearance, padTop + Style.statusBarHeight(this), padH, padV);
        android.widget.ScrollView s4 = new android.widget.ScrollView(this);
        s4.setVerticalScrollBarEnabled(false);
        s4.setOverScrollMode(View.OVER_SCROLL_NEVER);
        appsView = new AppsView(this, null);
        s4.addView(appsView);
        appsContainer.addView(s4, new FrameLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        appsContainer.setVisibility(View.GONE);
        screen.addView(appsContainer, new FrameLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        LinearLayout bar = new LinearLayout(this);
        bar.setOrientation(LinearLayout.VERTICAL);
        bar.setGravity(Gravity.CENTER);
        bar.setBackground(Style.card(Style.cardFillColor(), this));
        statsDockIcon = dockButton(R.drawable.ic_chart_bar, new View.OnClickListener() {
            @Override public void onClick(View v) { setMode(MODE_DAILY); }
        });
        chargeDockIcon = dockButton(0, new View.OnClickListener() {
            @Override public void onClick(View v) { setMode(MODE_CHARGE); }
        });
        trendsDockIcon = dockButton(0, new View.OnClickListener() {
            @Override public void onClick(View v) { setMode(MODE_TRENDS); }
        });
        trendsDockIcon.setImageBitmap(trendsIcon());
        chargeDockIcon.setImageBitmap(chargeIcon());
        appsDockIcon = dockButton(0, new View.OnClickListener() {
            @Override public void onClick(View v) { setMode(MODE_APPS); }
        });
        appsDockIcon.setImageBitmap(appsIcon());
        styleDock(statsDockIcon, mode == MODE_DAILY);
        styleDock(chargeDockIcon, mode == MODE_CHARGE);
        styleDock(trendsDockIcon, mode == MODE_TRENDS);
        styleDock(appsDockIcon, mode == MODE_APPS);
        bar.addView(new View(this), new LinearLayout.LayoutParams(0, 0, 1f));
        bar.addView(statsDockIcon);
        Style.gap(bar, this, 14);
        bar.addView(chargeDockIcon);
        Style.gap(bar, this, 14);
        bar.addView(trendsDockIcon);
        Style.gap(bar, this, 14);
        bar.addView(appsDockIcon);
        bar.addView(new View(this), new LinearLayout.LayoutParams(0, 0, 1f));
        ImageView appearBtn = appearanceButton();
        appearBtn.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { cycleAppearance(); }
        });
        bar.addView(appearBtn);
        Style.gap(bar, this, 14);
        updateBtn = updateButton();
        updateBtn.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { openOtaDialog(null); }
        });
        bar.addView(updateBtn);
        Style.gap(bar, this, 14);
        FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(
            sidebarW, ViewGroup.LayoutParams.MATCH_PARENT, Gravity.START);
        lp.leftMargin = edge;
        lp.topMargin = padTop + Style.statusBarHeight(this);
        lp.bottomMargin = padV;
        screen.addView(bar, lp);

        setContentView(screen);
        FullCharge.touch(this);
        setMode(MODE_DAILY);
    }

    private android.graphics.Bitmap appsIcon() {
        int px = Style.dp(this, 38);
        android.graphics.Bitmap bmp = android.graphics.Bitmap.createBitmap(px, px, android.graphics.Bitmap.Config.ARGB_8888);
        android.graphics.Canvas c = new android.graphics.Canvas(bmp);
        android.graphics.Paint p = new android.graphics.Paint(android.graphics.Paint.ANTI_ALIAS_FLAG);
        p.setColor(0xFFFFFFFF);
        float g = px * 0.08f, s = (px - 3 * g - 2 * px * 0.08f) / 2f, o = px * 0.08f;
        float r = px * 0.09f;
        for (int i = 0; i < 2; i++) for (int j = 0; j < 2; j++) {
            float x = o + g * 0.5f + i * (s + g), y = o + g * 0.5f + j * (s + g);
            c.drawRoundRect(new android.graphics.RectF(x, y, x + s, y + s), r, r, p);
        }
        return bmp;
    }

    /** EV charging post: rounded body, lightning bolt, base line. */
    private android.graphics.Bitmap chargeIcon() {
        int px = Style.dp(this, 38);
        android.graphics.Bitmap bmp = android.graphics.Bitmap.createBitmap(px, px, android.graphics.Bitmap.Config.ARGB_8888);
        android.graphics.Canvas c = new android.graphics.Canvas(bmp);
        android.graphics.Paint p = new android.graphics.Paint(android.graphics.Paint.ANTI_ALIAS_FLAG);
        p.setColor(0xFFFFFFFF);
        p.setStyle(android.graphics.Paint.Style.STROKE);
        p.setStrokeWidth(px * 0.085f);
        p.setStrokeCap(android.graphics.Paint.Cap.ROUND);
        p.setStrokeJoin(android.graphics.Paint.Join.ROUND);
        c.drawRoundRect(new android.graphics.RectF(px * 0.23f, px * 0.08f, px * 0.77f, px * 0.82f), px * 0.10f, px * 0.10f, p);
        c.drawLine(px * 0.12f, px * 0.92f, px * 0.88f, px * 0.92f, p);
        android.graphics.Path bolt = new android.graphics.Path();
        bolt.moveTo(px * 0.54f, px * 0.20f);
        bolt.lineTo(px * 0.38f, px * 0.47f);
        bolt.lineTo(px * 0.50f, px * 0.47f);
        bolt.lineTo(px * 0.44f, px * 0.70f);
        bolt.lineTo(px * 0.62f, px * 0.40f);
        bolt.lineTo(px * 0.50f, px * 0.40f);
        bolt.lineTo(px * 0.58f, px * 0.20f);
        bolt.close();
        p.setStyle(android.graphics.Paint.Style.FILL);
        c.drawPath(bolt, p);
        return bmp;
    }
    private android.graphics.Bitmap trendsIcon() {
        int px = Style.dp(this, 38);
        android.graphics.Bitmap bmp = android.graphics.Bitmap.createBitmap(px, px, android.graphics.Bitmap.Config.ARGB_8888);
        android.graphics.Canvas c = new android.graphics.Canvas(bmp);
        android.graphics.Paint p = new android.graphics.Paint(android.graphics.Paint.ANTI_ALIAS_FLAG);
        p.setColor(0xFFFFFFFF);
        p.setStyle(android.graphics.Paint.Style.STROKE);
        p.setStrokeWidth(px * 0.085f);
        p.setStrokeCap(android.graphics.Paint.Cap.ROUND);
        p.setStrokeJoin(android.graphics.Paint.Join.ROUND);
        android.graphics.Path path = new android.graphics.Path();
        path.moveTo(px * 0.10f, px * 0.72f);
        path.lineTo(px * 0.36f, px * 0.44f);
        path.lineTo(px * 0.56f, px * 0.62f);
        path.lineTo(px * 0.90f, px * 0.20f);
        c.drawPath(path, p);
        path.reset();
        path.moveTo(px * 0.70f, px * 0.20f);
        path.lineTo(px * 0.90f, px * 0.20f);
        path.lineTo(px * 0.90f, px * 0.40f);
        c.drawPath(path, p);
        return bmp;
    }

    /** Sun = light, moon = dark, half-filled circle = follow the system. */
    private ImageView appearanceButton() {
        String cur = Style.appearance(this);
        int px = Style.dp(this, 40);
        android.graphics.Bitmap bmp = android.graphics.Bitmap.createBitmap(px, px, android.graphics.Bitmap.Config.ARGB_8888);
        android.graphics.Canvas cv = new android.graphics.Canvas(bmp);
        android.graphics.Paint p = new android.graphics.Paint(android.graphics.Paint.ANTI_ALIAS_FLAG);
        p.setColor(Style.TEXT_DIM);
        p.setStyle(android.graphics.Paint.Style.STROKE);
        p.setStrokeWidth(px * 0.08f);
        p.setStrokeCap(android.graphics.Paint.Cap.ROUND);
        float c = px / 2f;
        if ("light".equals(cur)) {
            cv.drawCircle(c, c, px * 0.17f, p);
            for (int i = 0; i < 8; i++) {
                double ang = Math.PI / 4 * i;
                cv.drawLine(c + (float) Math.cos(ang) * px * 0.28f, c + (float) Math.sin(ang) * px * 0.28f,
                    c + (float) Math.cos(ang) * px * 0.40f, c + (float) Math.sin(ang) * px * 0.40f, p);
            }
        } else if ("auto".equals(cur)) {
            float r = px * 0.34f;
            cv.drawCircle(c, c, r, p);
            p.setStyle(android.graphics.Paint.Style.FILL);
            android.graphics.RectF rf = new android.graphics.RectF(c - r, c - r, c + r, c + r);
            cv.drawArc(rf, 90, 180, true, p);
        } else {
            android.graphics.Path moon = new android.graphics.Path();
            moon.addCircle(c, c, px * 0.32f, android.graphics.Path.Direction.CW);
            android.graphics.Path cut = new android.graphics.Path();
            cut.addCircle(c + px * 0.17f, c - px * 0.12f, px * 0.28f, android.graphics.Path.Direction.CW);
            moon.op(cut, android.graphics.Path.Op.DIFFERENCE);
            p.setStyle(android.graphics.Paint.Style.FILL);
            cv.drawPath(moon, p);
        }
        ImageView v = new ImageView(this);
        v.setImageBitmap(bmp);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(Style.dp(this, 62), Style.dp(this, 62));
        lp.gravity = Gravity.CENTER_HORIZONTAL;
        v.setLayoutParams(lp);
        int pad = Style.dp(this, 11);
        v.setPadding(pad, pad, pad, pad);
        return v;
    }

    private void cycleAppearance() {
        String cur = Style.appearance(this);
        String next = "auto".equals(cur) ? "light" : "light".equals(cur) ? "dark" : "auto";
        Style.setAppearance(this, next);
        android.widget.Toast.makeText(this, "auto".equals(next) ? "Appearance: follow system"
            : "light".equals(next) ? "Appearance: light" : "Appearance: dark", android.widget.Toast.LENGTH_SHORT).show();
        recreate();
    }

    private ImageView updateButton() {
        int px = Style.dp(this, 40);
        android.graphics.Bitmap bmp = android.graphics.Bitmap.createBitmap(px, px, android.graphics.Bitmap.Config.ARGB_8888);
        android.graphics.Canvas cv = new android.graphics.Canvas(bmp);
        android.graphics.Paint p = new android.graphics.Paint(android.graphics.Paint.ANTI_ALIAS_FLAG);
        p.setColor(updateAvailable ? 0xFF30D158 : Style.TEXT_DIM);
        p.setStyle(android.graphics.Paint.Style.STROKE);
        p.setStrokeWidth(px * 0.09f);
        p.setStrokeCap(android.graphics.Paint.Cap.ROUND);
        p.setStrokeJoin(android.graphics.Paint.Join.ROUND);
        float c = px / 2f;
        cv.drawLine(c, px * 0.15f, c, px * 0.62f, p);
        cv.drawLine(c - px * 0.2f, px * 0.42f, c, px * 0.62f, p);
        cv.drawLine(c + px * 0.2f, px * 0.42f, c, px * 0.62f, p);
        cv.drawLine(px * 0.2f, px * 0.84f, px * 0.8f, px * 0.84f, p);
        ImageView v = new ImageView(this);
        v.setImageBitmap(bmp);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(Style.dp(this, 62), Style.dp(this, 62));
        lp.gravity = Gravity.CENTER_HORIZONTAL;
        v.setLayoutParams(lp);
        int pad = Style.dp(this, 11);
        v.setPadding(pad, pad, pad, pad);
        return v;
    }

    private void refreshUpdateButton() {
        if (updateBtn == null) return;
        ImageView fresh = updateButton();
        updateBtn.setImageDrawable(fresh.getDrawable());
    }

    private void openOtaDialog(OtaUpdater.Info pre) {
        OtaDialog.show(this, pre, new OtaDialog.Listener() {
            @Override public void onUpdateAvailable(boolean available) {
                updateAvailable = available;
                refreshUpdateButton();
            }
        });
    }

    private void autoCheck() {
        long now = System.currentTimeMillis();
        if (now - lastAutoCheckMs < AUTO_CHECK_GAP_MS || !CarState.isParked()) return;
        lastAutoCheckMs = now;
        OtaUpdater.check(this, new OtaUpdater.Callback() {
            @Override public void onResult(OtaUpdater.Info info, boolean newer, String error) {
                if (isFinishing()) return;
                boolean helperDue = CarState.isParked() && OtaUpdater.helperOutdated(ComfortActivity.this, info);
                if (newer) {
                    updateAvailable = true;
                    refreshUpdateButton();
                }
                if (helperDue && HelperUpdateDialog.show(ComfortActivity.this, info)) return;
                if (newer && CarState.isParked()) openOtaDialog(info);
            }
        });
    }

    private ImageView dockButton(int res, View.OnClickListener l) {
        ImageView v = new ImageView(this);
        if (res != 0) v.setImageResource(res);
        v.setScaleType(ImageView.ScaleType.FIT_CENTER);
        int pad = Style.dp(this, 12);
        v.setPadding(pad, pad, pad, pad);
        int size = Style.dp(this, 62);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(size, size);
        lp.gravity = Gravity.CENTER_HORIZONTAL;
        v.setLayoutParams(lp);
        v.setOnClickListener(l);
        return v;
    }

    private void refreshCurrent() {
        if (mode == MODE_DAILY) dailyStatsView.refresh();
        else if (mode == MODE_TRENDS) trendsView.refresh();
        else if (mode == MODE_APPS) appsView.refresh();
        else chargeStatsView.refresh();
    }

    private void setMode(int m) {
        if (mode == m) return;
        mode = m;
        statsContainer.setVisibility(m == MODE_DAILY ? View.VISIBLE : View.GONE);
        chargeStatsContainer.setVisibility(m == MODE_CHARGE ? View.VISIBLE : View.GONE);
        trendsContainer.setVisibility(m == MODE_TRENDS ? View.VISIBLE : View.GONE);
        appsContainer.setVisibility(m == MODE_APPS ? View.VISIBLE : View.GONE);
        refreshCurrent();
        styleDock(appsDockIcon, m == MODE_APPS);
        styleDock(trendsDockIcon, m == MODE_TRENDS);
        styleDock(statsDockIcon, m == MODE_DAILY);
        styleDock(chargeDockIcon, m == MODE_CHARGE);
    }

    /** Selected tab: accent-tinted rounded pill with an accent icon; the others are plain and dim. */
    private void styleDock(ImageView v, boolean on) {
        android.graphics.drawable.GradientDrawable g = new android.graphics.drawable.GradientDrawable();
        g.setCornerRadius(Style.dp(this, 20));
        g.setColor(on ? ((Style.ACCENT & 0x00FFFFFF) | 0x33000000) : 0x00000000);
        v.setBackground(g);
        v.setColorFilter(on ? Style.ACCENT : Style.TEXT_DIM);
    }

    @Override protected void onResume() {
        super.onResume();
        Style.load(this);
        if (!Style.current().id.equals(themeId) || Style.LIGHT != themeLight) { recreate(); return; }
        try {
            BootReceiver.scheduleWatchdog(this);
            BootReceiver.ensureAll(this);
        } catch (Throwable t) { android.util.Log.w(CarAccess.TAG, "resume ensure: " + t); }
        new Thread(new Runnable() {
            @Override public void run() {
                com.geely.drivemem.util.AutoCost.run(ComfortActivity.this, false);
                runOnUiThread(new Runnable() { @Override public void run() { refreshCurrent(); } });
            }
        }, "autocost").start();
        autoCheck();
        MonthlySummary.check(this, new Runnable() {
            @Override public void run() { FullChargeReminder.check(ComfortActivity.this); }
        });
    }
}
