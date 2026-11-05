package com.geely.modehelper;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInstaller;
import android.util.Log;

/** Receives the PackageInstaller result of a store install and reports it back to Drive Assist. */
public class StoreResultReceiver extends BroadcastReceiver {
    @Override public void onReceive(Context c, Intent i) {
        String pkg = i.getStringExtra("pkg");
        int status = i.getIntExtra(PackageInstaller.EXTRA_STATUS, PackageInstaller.STATUS_FAILURE);
        String msg = i.getStringExtra(PackageInstaller.EXTRA_STATUS_MESSAGE);
        Log.i("ModeHelper", "store: result " + pkg + " status=" + status + " " + msg);
        if (status == PackageInstaller.STATUS_SUCCESS) {
            StoreInstaller.report(c, pkg, "done", 100, "Installed");
        } else if (status == PackageInstaller.STATUS_PENDING_USER_ACTION) {
            Intent confirm = (Intent) i.getParcelableExtra(Intent.EXTRA_INTENT);
            StoreInstaller.report(c, pkg, "install", 100, "Waiting for confirmation on screen");
            if (confirm != null) {
                try {
                    confirm.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    c.startActivity(confirm);
                } catch (Throwable t) { Log.w("ModeHelper", "store: confirm failed " + t); }
            }
        } else {
            String m = msg == null ? "" : msg;
            if (m.contains("INCOMPATIBLE") || status == PackageInstaller.STATUS_FAILURE_CONFLICT)
                m = "The installed copy was signed by a different publisher. Uninstall it first. " + m;
            StoreInstaller.report(c, pkg, "error", 0, "Install failed: " + m);
            StoreInstaller.finish();
        }
        if (status == PackageInstaller.STATUS_SUCCESS) StoreInstaller.finish();
    }
}
