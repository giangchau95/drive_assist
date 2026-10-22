package com.geely.drivemem.util;

import com.geely.drivemem.car.CarAccess;
import com.geely.drivemem.services.TelemetryService;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/** Slim build: boot / app-replaced / watchdog only. Keeps the data service alive. */
public class BootReceiver extends BroadcastReceiver {

    @Override public void onReceive(Context ctx, Intent intent) {
        String a = intent.getAction();
        if (a == null) return;
        if ("com.geely.drivemem.WATCHDOG".equals(a)
                || Intent.ACTION_MY_PACKAGE_REPLACED.equals(a)
                || Intent.ACTION_BOOT_COMPLETED.equals(a)
                || Intent.ACTION_LOCKED_BOOT_COMPLETED.equals(a)) {
            scheduleWatchdog(ctx);
            try { ensureAll(ctx); } catch (Throwable t) { Log.w(CarAccess.TAG, "ensure: " + t); }
        }
    }

    static final long WATCHDOG_MS = 10 * 60 * 1000L;
    static final long STALE_TELE_MS = 5 * 60 * 1000L;

    public static void scheduleWatchdog(Context ctx) {
        try {
            android.app.AlarmManager am =
                (android.app.AlarmManager) ctx.getSystemService(Context.ALARM_SERVICE);
            Intent i = new Intent(ctx, BootReceiver.class).setAction("com.geely.drivemem.WATCHDOG");
            android.app.PendingIntent pi = android.app.PendingIntent.getBroadcast(
                ctx, 1001, i, android.app.PendingIntent.FLAG_UPDATE_CURRENT);
            long next = android.os.SystemClock.elapsedRealtime() + WATCHDOG_MS;
            am.setExactAndAllowWhileIdle(android.app.AlarmManager.ELAPSED_REALTIME_WAKEUP, next, pi);
        } catch (Throwable t) { Log.w(CarAccess.TAG, "watchdog schedule: " + t); }
    }

    public static void ensureAll(Context ctx) {
        try {
            Intent s = new Intent(ctx, TelemetryService.class);
            if (Beat.isStale(ctx, Beat.TELE, STALE_TELE_MS) && Beat.mayRestart(ctx, Beat.TELE)) {
                try { ctx.stopService(s); } catch (Throwable ignored) {}
                Beat.clear(ctx, Beat.TELE);
            }
            ctx.startForegroundService(s);
        } catch (Throwable t) { Log.w(CarAccess.TAG, "ensure tele: " + t); }
    }
}
