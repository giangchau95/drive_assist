package com.geely.modehelper;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/** UNINSTALL_ALL: silently removes Drive Assist, the setup installer (if still present)
 * and finally this helper itself. Needs DELETE_PACKAGES (platform-signed, uid system). */
public class UninstallReceiver extends BroadcastReceiver {
    static final String TAG = "ModeHelper";
    public static final String UNINSTALL_ALL = "com.geely.modehelper.UNINSTALL_ALL";

    @Override public void onReceive(final Context ctx, Intent i) {
        if (!UNINSTALL_ALL.equals(i.getAction())) return;
        final Context app = ctx.getApplicationContext();
        final PendingResult pr = goAsync();
        new Thread(new Runnable() {
            @Override public void run() {
                try {
                    Log.i(TAG, "uninstall-all: removing drivemem");
                    Installer.uninstall(app, "com.geely.drivemem");
                    Thread.sleep(4000);
                    Installer.uninstall(app, "com.geely.installer");
                    Thread.sleep(2000);
                    Log.i(TAG, "uninstall-all: removing modehelper (self)");
                    Installer.uninstall(app, app.getPackageName());
                } catch (Throwable t) {
                    Log.w(TAG, "uninstall-all failed: " + t);
                } finally {
                    pr.finish();
                }
            }
        }, "uninstall-all").start();
    }
}
