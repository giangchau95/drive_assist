package com.geely.drivemem.util;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.TextView;

import java.util.WeakHashMap;

/** Onest font (bundled in assets/fonts) applied to every TextView of the app, including dialogs. */
public final class Fonts {
    private static Typeface reg, med, semi, bold;
    private static final WeakHashMap<View, Boolean> WATCHED = new WeakHashMap<View, Boolean>();

    private Fonts() {}

    public static synchronized void init(Context c) {
        if (reg != null) return;
        try {
            android.content.res.AssetManager am = c.getApplicationContext().getAssets();
            Typeface r = Typeface.createFromAsset(am, "fonts/onest_regular.ttf");
            Typeface m = Typeface.createFromAsset(am, "fonts/onest_medium.ttf");
            Typeface s = Typeface.createFromAsset(am, "fonts/onest_semibold.ttf");
            Typeface b = Typeface.createFromAsset(am, "fonts/onest_bold.ttf");
            med = m; semi = s; bold = b; reg = r;
        } catch (Throwable t) {
            reg = null;
        }
    }

    /** Font for canvas painting; null when the fonts could not be loaded. */
    public static Typeface get(boolean isBold) {
        return isBold ? bold : reg;
    }

    public static View with(View v) { watch(v); return v; }

    public static Typeface b(Typeface fallback) { return bold != null ? bold : fallback; }

    public static Typeface r(Typeface fallback) { return reg != null ? reg : fallback; }

    public static void install(Application app) {
        init(app);
        if (reg == null) return;
        app.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() {
            @Override public void onActivityCreated(Activity a, Bundle b) {}
            @Override public void onActivityStarted(Activity a) {}
            @Override public void onActivityResumed(Activity a) { watch(a.getWindow().getDecorView()); }
            @Override public void onActivityPaused(Activity a) {}
            @Override public void onActivityStopped(Activity a) {}
            @Override public void onActivitySaveInstanceState(Activity a, Bundle b) {}
            @Override public void onActivityDestroyed(Activity a) {}
        });
    }

    /** Apply now and re-apply whenever the view tree is laid out again (content is rebuilt often). */
    public static void watch(final View root) {
        if (reg == null || root == null) return;
        synchronized (WATCHED) {
            if (WATCHED.containsKey(root)) return;
            WATCHED.put(root, Boolean.TRUE);
        }
        apply(root);
        root.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
            @Override public void onGlobalLayout() { apply(root); }
        });
    }

    public static void apply(View v) {
        if (reg == null) return;
        if (v instanceof TextView) {
            TextView tv = (TextView) v;
            Typeface cur = tv.getTypeface();
            if (cur != reg && cur != med && cur != semi && cur != bold && cur != Typeface.MONOSPACE) {
                boolean b = cur != null && cur.isBold();
                tv.setTypeface(b ? bold : reg);
            }
        }
        if (v instanceof ViewGroup) {
            ViewGroup g = (ViewGroup) v;
            for (int i = 0, n = g.getChildCount(); i < n; i++) apply(g.getChildAt(i));
        }
    }
}
