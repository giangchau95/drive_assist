package com.geely.modehelper;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/** INSTALL_APP {pkg}: installs or updates one app from the Drive Assist app catalog. The catalog is fetched here, not trusted from the caller. */
public class StoreReceiver extends BroadcastReceiver {
    public static final String INSTALL_APP = "com.geely.modehelper.INSTALL_APP";

    public static final String UNINSTALL_APP = "com.geely.modehelper.UNINSTALL_APP";

    @Override public void onReceive(Context c, Intent i) {
        if (i == null) return;
        String act = i.getAction();
        String pkg = i.getStringExtra("pkg");
        if (pkg == null || pkg.length() == 0) return;
        if (INSTALL_APP.equals(act)) {
            Log.i("ModeHelper", "store: install asked for " + pkg);
            StoreInstaller.start(c.getApplicationContext(), pkg);
        } else if (UNINSTALL_APP.equals(act)) {
            Log.i("ModeHelper", "store: uninstall asked for " + pkg);
            StoreInstaller.startUninstall(c.getApplicationContext(), pkg);
        }
    }
}
