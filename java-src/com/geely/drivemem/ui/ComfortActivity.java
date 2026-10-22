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
import android.widget.LinearLayout;

/** Slim build: only Daily Statistics (+ altimetry) and Charging history / energy balance. */
public class ComfortActivity extends Activity {
    private static final int MODE_DAILY = 1;
    private static final int MODE_CHARGE = 2;
    private int mode = 0;

    private DailyStatsView dailyStatsView;
    private ChargeStatsView chargeStatsView;
    private FrameLayout statsContainer, chargeStatsContainer;
    private ImageView statsDockIcon, chargeDockIcon;
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
        statsContainer.addView(s1, new FrameLayout.LayoutParams(
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
        chargeStatsContainer.addView(s2, new FrameLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        chargeStatsContainer.setVisibility(View.GONE);
        screen.addView(chargeStatsContainer, new FrameLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        LinearLayout bar = new LinearLayout(this);
        bar.setOrientation(LinearLayout.VERTICAL);
        bar.setGravity(Gravity.CENTER);
        bar.setBackground(Style.card(Style.cardFillColor(), this));
        statsDockIcon = dockButton(R.drawable.ic_chart_bar, new View.OnClickListener() {
            @Override public void onClick(View v) { setMode(MODE_DAILY); }
        });
        chargeDockIcon = dockButton(R.drawable.ic_ev_station, new View.OnClickListener() {
            @Override public void onClick(View v) { setMode(MODE_CHARGE); }
        });
        bar.addView(new View(this), new LinearLayout.LayoutParams(0, 0, 1f));
        bar.addView(statsDockIcon);
        Style.gap(bar, this, 14);
        bar.addView(chargeDockIcon);
        bar.addView(new View(this), new LinearLayout.LayoutParams(0, 0, 1f));
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
        setMode(MODE_DAILY);
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
                if (!newer || isFinishing()) return;
                updateAvailable = true;
                refreshUpdateButton();
                if (CarState.isParked()) openOtaDialog(info);
            }
        });
    }

    private ImageView dockButton(int res, View.OnClickListener l) {
        ImageView v = new ImageView(this);
        v.setImageResource(res);
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

    private void setMode(int m) {
        if (mode == m) return;
        mode = m;
        statsContainer.setVisibility(m == MODE_DAILY ? View.VISIBLE : View.GONE);
        chargeStatsContainer.setVisibility(m == MODE_CHARGE ? View.VISIBLE : View.GONE);
        if (m == MODE_DAILY) dailyStatsView.refresh(); else chargeStatsView.refresh();
        statsDockIcon.setBackground(Style.card(m == MODE_DAILY ? Style.CARD_ON : 0x00000000, this, 18));
        statsDockIcon.setColorFilter(m == MODE_DAILY ? Style.onFill(Style.CARD_ON) : Style.TEXT_DIM);
        chargeDockIcon.setBackground(Style.card(m == MODE_CHARGE ? Style.CARD_ON : 0x00000000, this, 18));
        chargeDockIcon.setColorFilter(m == MODE_CHARGE ? Style.onFill(Style.CARD_ON) : Style.TEXT_DIM);
    }

    @Override protected void onResume() {
        super.onResume();
        Style.load(this);
        if (!Style.current().id.equals(themeId) || Style.LIGHT != themeLight) { recreate(); return; }
        try {
            BootReceiver.scheduleWatchdog(this);
            BootReceiver.ensureAll(this);
        } catch (Throwable t) { android.util.Log.w(CarAccess.TAG, "resume ensure: " + t); }
        if (mode == MODE_DAILY) dailyStatsView.refresh(); else chargeStatsView.refresh();
        autoCheck();
    }
}
