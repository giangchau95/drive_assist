package com.geely.drivemem.services;

import com.geely.drivemem.R;
import com.geely.drivemem.sensors.GpsReader;
import com.geely.drivemem.util.Beat;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.util.Log;

/** Slim build: no MQTT. Keeps the process alive as a foreground service and feeds
 * GPS fixes (altitude) to GpsReader for the altimetry data. */
public class TelemetryService extends Service {
    static final String TAG = "DriveMem";
    private HandlerThread thread;
    private Handler h;
    private volatile boolean running = false;
    private android.location.LocationListener gpsListener;
    private final Runnable tick = new Runnable() {
        @Override public void run() {
            if (!running) return;
            Beat.mark(TelemetryService.this, Beat.TELE);
            h.postDelayed(this, 30000);
        }
    };

    @Override public int onStartCommand(Intent i, int flags, int startId) {
        startAsForeground();
        if (running) return START_STICKY;
        running = true;
        thread = new HandlerThread("tele"); thread.start();
        h = new Handler(thread.getLooper());
        registerGps();
        h.post(tick);
        return START_STICKY;
    }

    private void registerGps() {
        try {
            android.location.LocationManager lm =
                (android.location.LocationManager) getSystemService(LOCATION_SERVICE);
            gpsListener = new android.location.LocationListener() {
                @Override public void onLocationChanged(android.location.Location loc) { GpsReader.live = loc; }
                @Override public void onStatusChanged(String prov, int st, android.os.Bundle ex) {}
                @Override public void onProviderEnabled(String prov) {}
                @Override public void onProviderDisabled(String prov) {}
            };
            lm.requestLocationUpdates(android.location.LocationManager.GPS_PROVIDER,
                2000L, 0f, gpsListener, thread.getLooper());
            try {
                lm.requestLocationUpdates(android.location.LocationManager.NETWORK_PROVIDER,
                    5000L, 0f, gpsListener, thread.getLooper());
            } catch (Throwable ignored) {}
        } catch (Throwable t) { Log.w(TAG, "GPS register error: " + t); }
    }

    private void startAsForeground() {
        try {
            String ch = "drivemem_tele";
            android.app.NotificationManager nm =
                (android.app.NotificationManager) getSystemService(NOTIFICATION_SERVICE);
            android.app.NotificationChannel c = new android.app.NotificationChannel(
                ch, "Drive Assist", android.app.NotificationManager.IMPORTANCE_MIN);
            nm.createNotificationChannel(c);
            android.app.Notification n = new android.app.Notification.Builder(this, ch)
                .setContentTitle("Drive Assist")
                .setContentText("Recording statistics")
                .setSmallIcon(android.R.drawable.stat_notify_sync)
                .build();
            startForeground(42, n);
        } catch (Throwable t) { Log.e(TAG, "startForeground FAILED: " + t, t); }
    }

    @Override public IBinder onBind(Intent i) { return null; }

    @Override public void onDestroy() {
        running = false;
        Beat.clear(this, Beat.TELE);
        if (gpsListener != null) {
            try { ((android.location.LocationManager) getSystemService(LOCATION_SERVICE)).removeUpdates(gpsListener); }
            catch (Throwable ignored) {}
            gpsListener = null;
        }
        if (thread != null) thread.quitSafely();
        super.onDestroy();
    }
}
