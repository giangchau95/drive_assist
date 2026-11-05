package com.geely.modehelper;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/** INSTALL_APP {pkg}: installs or updates one app from the Drive Assist app catalog. The catalog is fetched here, not trusted from the caller. */
public class StoreReceiver extends BroadcastReceiver {
    public static final String INSTALL_APP = "com.geely.modehelper.INSTALL_APP";

    @Override public void onReceive(Context c, Intent i) {
        if (i == null || !INSTALL_APP.equals(i.getAction())) return;
        String pkg = i.getStringExtra("pkg");
        Log.i("ModeHelper", "store: asked for " + pkg);
        if (pkg == null || pkg.length() == 0) return;
        StoreInstaller.start(c.getApplicationContext(), pkg);
    }
}
