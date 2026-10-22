package com.geely.drivemem.net;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;

import com.geely.drivemem.state.CarState;
import com.geely.drivemem.state.ChargeSession;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.JSONObject;

/** OTA for the slim build. Reads update/version.json from the GitHub repo and hands the
 * apk URL to the privileged ModeHelper-lite, which downloads, verifies and installs it
 * silently (replacing this app). */
public final class OtaUpdater {
    static final String TAG = "DriveMemOta";
    public static final String REPO_RAW =
        "https://raw.githubusercontent.com/giangchau95/drive_assist/main/update/";
    public static final String VERSION_URL = REPO_RAW + "version.json";
    public static final String HELPER_PKG = "com.geely.modehelper";
    static final String HELPER_INSTALL = "com.geely.modehelper.INSTALL_APK";

    /** First ModeHelper-lite build that understands UNINSTALL_ALL. */
    static final int MIN_HELPER_VC_UNINSTALL = 29877584;

    private OtaUpdater() {}

    public static final class Info {
        public int versionCode;
        public String versionName;
        public String apkUrl;
        public String changelog;
    }

    public interface Callback {
        /** info is null on error; newer says whether info.versionCode > installed. */
        void onResult(Info info, boolean newer, String error);
    }

    public static int installedVersionCode(Context c) {
        try {
            PackageInfo p = c.getPackageManager().getPackageInfo(c.getPackageName(), 0);
            return p.versionCode;
        } catch (Throwable t) { return 0; }
    }

    public static String installedVersionName(Context c) {
        try {
            PackageInfo p = c.getPackageManager().getPackageInfo(c.getPackageName(), 0);
            return p.versionName == null ? "?" : p.versionName;
        } catch (Throwable t) { return "?"; }
    }

    public static boolean helperInstalled(Context c) {
        try { c.getPackageManager().getPackageInfo(HELPER_PKG, 0); return true; }
        catch (Throwable t) { return false; }
    }

    /** null = safe to install now; otherwise the reason it is blocked. */
    public static String blockedReason() {
        if (!CarState.isParked()) return "Blocked: vehicle is not in Park.";
        if (ChargeSession.isCharging() || ChargeSession.isSessionActive()
                || ChargeSession.isChargeGraceScheduled() || ChargeSession.activeRowId() > 0) {
            return "Blocked: the vehicle is charging. Update after the charge finishes.";
        }
        return null;
    }

    public static void check(final Context ctx, final Callback cb) {
        final Context app = ctx.getApplicationContext();
        final Handler main = new Handler(Looper.getMainLooper());
        new Thread(new Runnable() {
            @Override public void run() {
                Info info = null;
                String err = null;
                try {
                    String u = VERSION_URL + "?t=" + System.currentTimeMillis();
                    HttpURLConnection c = (HttpURLConnection) new URL(u).openConnection();
                    c.setConnectTimeout(15000);
                    c.setReadTimeout(20000);
                    c.setUseCaches(false);
                    c.setRequestProperty("User-Agent", "DriveAssist");
                    int code = c.getResponseCode();
                    if (code != 200) {
                        err = "HTTP " + code;
                    } else {
                        InputStream in = c.getInputStream();
                        ByteArrayOutputStream bo = new ByteArrayOutputStream();
                        byte[] buf = new byte[4096];
                        int n;
                        while ((n = in.read(buf)) > 0) bo.write(buf, 0, n);
                        in.close();
                        JSONObject j = new JSONObject(new String(bo.toByteArray(), "UTF-8"));
                        info = new Info();
                        info.versionCode = j.getInt("versionCode");
                        info.versionName = j.optString("versionName", "build " + info.versionCode);
                        info.apkUrl = j.optString("apkUrl", REPO_RAW + "drive_assist.apk");
                        info.changelog = j.optString("changelog", "");
                    }
                } catch (Throwable t) {
                    Log.w(TAG, "check failed: " + t);
                    err = String.valueOf(t.getMessage() != null ? t.getMessage() : t);
                    info = null;
                }
                final Info fi = info;
                final String fe = err;
                final boolean newer = fi != null && fi.versionCode > installedVersionCode(app);
                main.post(new Runnable() {
                    @Override public void run() { cb.onResult(fi, newer, fe); }
                });
            }
        }, "ota-check").start();
    }

    /** Asks ModeHelper to uninstall Drive Assist, the installer and itself. @return null on success. */
    public static String uninstallAll(Context ctx) {
        if (!CarState.isParked()) return "Blocked: vehicle is not in Park.";
        if (!helperInstalled(ctx))
            return "ModeHelper is not installed. Remove the app from Settings > Apps instead.";
        try {
            int hv = ctx.getPackageManager().getPackageInfo(HELPER_PKG, 0).versionCode;
            if (hv < MIN_HELPER_VC_UNINSTALL)
                return "ModeHelper is outdated. Run the Drive Assist installer once, or remove the apps in Settings > Apps.";
        } catch (Throwable ignored) {}
        try {
            Intent i = new Intent("com.geely.modehelper.UNINSTALL_ALL").setPackage(HELPER_PKG);
            i.addFlags(Intent.FLAG_INCLUDE_STOPPED_PACKAGES);
            ctx.sendBroadcast(i);
            return null;
        } catch (Throwable t) {
            return "Could not start uninstall: " + t;
        }
    }

    /** Hands the download to ModeHelper. @return null on success, otherwise an error message. */
    public static String install(Context ctx, Info info) {
        String blocked = blockedReason();
        if (blocked != null) return blocked;
        if (info == null || info.apkUrl == null || !info.apkUrl.startsWith("https://"))
            return "Invalid update URL.";
        if (!helperInstalled(ctx))
            return "ModeHelper is not installed. Run the Drive Assist installer once.";
        try {
            String u = info.apkUrl + (info.apkUrl.indexOf('?') < 0 ? "?v=" : "&v=") + info.versionCode;
            Intent i = new Intent(HELPER_INSTALL).setPackage(HELPER_PKG);
            i.addFlags(Intent.FLAG_INCLUDE_STOPPED_PACKAGES);
            i.putExtra("url", u);
            ctx.sendBroadcast(i);
            return null;
        } catch (Throwable t) {
            return "Could not start update: " + t;
        }
    }
}
