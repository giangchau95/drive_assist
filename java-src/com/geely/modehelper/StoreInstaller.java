package com.geely.modehelper;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.os.StatFs;
import android.util.Log;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.concurrent.atomic.AtomicBoolean;

/**
 * Downloads, verifies and silently installs an app listed in the Drive Assist catalog.
 * The caller only names a package; URL, size, hash and certificate pin come from the catalog this class fetches itself.
 */
final class StoreInstaller {
    private StoreInstaller() {}

    static final String TAG = "ModeHelper";
    static final String CATALOG_URL = "https://raw.githubusercontent.com/giangchau95/drive_assist/main/apps/catalog.json";
    static final String STATUS_ACTION = "com.geely.modehelper.STORE_STATUS";
    static final String CLIENT_PKG = "com.geely.drivemem";
    private static final long HARD_MAX_BYTES = 600L * 1024 * 1024;
    private static final String[] HOSTS = {
        "github.com", "objects.githubusercontent.com", "release-assets.githubusercontent.com",
        "github-releases.githubusercontent.com", "raw.githubusercontent.com"
    };
    private static final AtomicBoolean busy = new AtomicBoolean(false);
    private static volatile long busySince;

    static void finish() { busy.set(false); }

    static void report(Context c, String pkg, String state, int pct, String msg) {
        try {
            Intent i = new Intent(STATUS_ACTION).setPackage(CLIENT_PKG);
            i.addFlags(Intent.FLAG_INCLUDE_STOPPED_PACKAGES);
            i.putExtra("pkg", pkg);
            i.putExtra("state", state);
            i.putExtra("percent", pct);
            i.putExtra("msg", msg);
            c.sendBroadcast(i);
        } catch (Throwable t) { Log.w(TAG, "store: report failed " + t); }
    }

    static void start(final Context ctx, final String pkg) {
        if (busy.get() && System.currentTimeMillis() - busySince > 15 * 60000L) busy.set(false);
        if (!busy.compareAndSet(false, true)) {
            Log.w(TAG, "store: already running, ignoring " + pkg);
            report(ctx, pkg, "error", 0, "Another install is already running");
            return;
        }
        busySince = System.currentTimeMillis();
        new Thread(new Runnable() {
            @Override public void run() {
                File apk = null;
                boolean handedOver = false;
                try {
                    apk = doInstall(ctx, pkg);
                    handedOver = true;
                } catch (Throwable t) {
                    Log.w(TAG, "store: failed: " + t);
                    report(ctx, pkg, "error", 0, t.getMessage() == null ? t.toString() : t.getMessage());
                } finally {
                    if (apk != null && apk.exists()) apk.delete();
                    if (!handedOver) busy.set(false);
                }
            }
        }, "store-install").start();
    }

    /** Uninstalls an app, but only one that is listed in the catalog. */
    static void startUninstall(final Context ctx, final String pkg) {
        new Thread(new Runnable() {
            @Override public void run() {
                try {
                    findEntry(pkg);  // throws if the package is not in the catalog
                    report(ctx, pkg, "install", 100, "Uninstalling");
                    PackageInstaller pi = ctx.getPackageManager().getPackageInstaller();
                    Intent ri = new Intent(ctx, StoreResultReceiver.class).putExtra("pkg", pkg).putExtra("op", "uninstall");
                    PendingIntent pend = PendingIntent.getBroadcast(ctx, pkg.hashCode(), ri, PendingIntent.FLAG_UPDATE_CURRENT);
                    pi.uninstall(pkg, pend.getIntentSender());
                } catch (Throwable t) {
                    Log.w(TAG, "store: uninstall failed: " + t);
                    report(ctx, pkg, "error", 0, "Uninstall failed: " + (t.getMessage() == null ? t.toString() : t.getMessage()));
                }
            }
        }, "store-uninstall").start();
    }

    private static boolean hostAllowed(String host) {
        if (host == null) return false;
        host = host.toLowerCase(Locale.US);
        for (String h : HOSTS) if (host.equals(h)) return true;
        return false;
    }

    private static HttpURLConnection open(String url) throws Exception {
        if (!url.startsWith("https://")) throw new Exception("Refused: URL is not https");
        if (!hostAllowed(new URL(url).getHost())) throw new Exception("Refused: host not allowed");
        HttpURLConnection c = (HttpURLConnection) new URL(url).openConnection();
        c.setConnectTimeout(15000);
        c.setReadTimeout(30000);
        c.setRequestProperty("User-Agent", "ModeHelper");
        c.setInstanceFollowRedirects(true);
        int code = c.getResponseCode();
        if (code != 200) { c.disconnect(); throw new Exception("HTTP " + code); }
        if (!hostAllowed(c.getURL().getHost())) { c.disconnect(); throw new Exception("Refused: redirected to a host that is not allowed"); }
        return c;
    }

    private static String hex(byte[] b) {
        StringBuilder sb = new StringBuilder();
        for (byte x : b) sb.append(String.format(Locale.US, "%02x", x & 0xff));
        return sb.toString();
    }

    private static JSONObject findEntry(String pkg) throws Exception {
        HttpURLConnection c = open(CATALOG_URL + "?t=" + System.currentTimeMillis());
        try {
            InputStream in = c.getInputStream();
            ByteArrayOutputStream bo = new ByteArrayOutputStream();
            byte[] buf = new byte[8192];
            int n;
            while ((n = in.read(buf)) > 0) {
                bo.write(buf, 0, n);
                if (bo.size() > 512 * 1024) throw new Exception("Catalog is too big");
            }
            JSONArray apps = new JSONObject(bo.toString("UTF-8")).getJSONArray("apps");
            for (int i = 0; i < apps.length(); i++) {
                JSONObject o = apps.getJSONObject(i);
                if (pkg.equals(o.optString("package"))) return o;
            }
        } finally { c.disconnect(); }
        throw new Exception(pkg + " is not in the catalog");
    }

    private static File doInstall(Context ctx, String pkg) throws Exception {
        report(ctx, pkg, "catalog", 0, "Reading catalog");
        JSONObject e = findEntry(pkg);
        String url = e.optString("apk");
        String sha = e.optString("sha256").toLowerCase(Locale.US);
        String pin = e.optString("certSha256").toLowerCase(Locale.US).replace(":", "");
        long size = e.optLong("size", 0);
        long vc = e.optLong("versionCode", 0);
        if (url.length() == 0 || sha.length() != 64 || size <= 0 || vc <= 0)
            throw new Exception("This app has no APK in the catalog yet");
        if (size > HARD_MAX_BYTES) throw new Exception("File is too big");

        PackageManager pm = ctx.getPackageManager();
        long installedVc = -1;
        Signature[] installedSigs = null;
        try {
            PackageInfo pi = pm.getPackageInfo(pkg, PackageManager.GET_SIGNATURES);
            installedVc = pi.getLongVersionCode();
            installedSigs = pi.signatures;
        } catch (PackageManager.NameNotFoundException ignored) {}
        if (installedVc >= vc) {
            report(ctx, pkg, "done", 100, "Already up to date");
            busy.set(false);
            return null;
        }
        if (installedVc < 0 && pin.length() != 64) throw new Exception("No certificate pin in the catalog for a new install");

        File dir = ctx.getCacheDir();
        StatFs fs = new StatFs(dir.getPath());
        long need = size * 23 / 10;
        if (fs.getAvailableBytes() < need)
            throw new Exception("Not enough free space (need about " + (need / 1048576) + " MB)");

        File apk = new File(dir, "store-" + pkg + ".pkg");
        if (apk.exists()) apk.delete();
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        HttpURLConnection c = open(url);
        try {
            long total = c.getContentLengthLong() > 0 ? c.getContentLengthLong() : size;
            InputStream in = c.getInputStream();
            OutputStream out = new FileOutputStream(apk);
            try {
                byte[] buf = new byte[64 * 1024];
                long got = 0, lastReport = 0;
                int n;
                while ((n = in.read(buf)) > 0) {
                    out.write(buf, 0, n);
                    md.update(buf, 0, n);
                    got += n;
                    if (got > size + 1048576) throw new Exception("File is larger than the catalog says");
                    long now = System.currentTimeMillis();
                    if (now - lastReport > 700) {
                        lastReport = now;
                        report(ctx, pkg, "download", (int) (got * 100 / Math.max(1, total)),
                            String.format(Locale.US, "%d / %d MB", got >> 20, total >> 20));
                    }
                }
            } finally { out.close(); in.close(); }
        } finally { c.disconnect(); }

        report(ctx, pkg, "verify", 100, "Verifying");
        if (!hex(md.digest()).equals(sha)) throw new Exception("Checksum does not match the catalog");

        boolean xapk = "xapk".equals(e.optString("format")) || url.toLowerCase(Locale.US).endsWith(".xapk");
        if (!xapk) {
            verifyBase(pm, pkg, apk, vc, pin, installedSigs);
            List<Part> one = new ArrayList<Part>();
            one.add(new Part("base.apk", apk, null, null, apk.length()));
            commit(ctx, pm, pkg, one);
            apk.delete();
            return apk;
        }

        // XAPK: a zip with the base APK plus split APKs (CPU, screen density, language).
        File base = new File(dir, "store-" + pkg + "-base.apk");
        ZipFile zf = new ZipFile(apk);
        try {
            List<Part> parts = selectParts(zf, pkg, vc);
            Part b = parts.get(0);
            InputStream in = zf.getInputStream(b.entry);
            OutputStream out = new FileOutputStream(base);
            try {
                byte[] buf = new byte[64 * 1024];
                int n;
                while ((n = in.read(buf)) > 0) out.write(buf, 0, n);
            } finally { out.close(); in.close(); }
            try {
                verifyBase(pm, pkg, base, vc, pin, installedSigs);
            } finally { base.delete(); }
            commit(ctx, pm, pkg, parts);
        } finally {
            zf.close();
            apk.delete();
        }
        return apk;
    }

    private static final class Part {
        final String name; final File file; final ZipFile zip; final ZipEntry entry; final long size;
        Part(String n, File f, ZipFile z, ZipEntry e, long s) { name = n; file = f; zip = z; entry = e; size = s; }
    }

    private static void verifyBase(PackageManager pm, String pkg, File apk, long vc, String pin, Signature[] installedSigs) throws Exception {
        PackageInfo ai = pm.getPackageArchiveInfo(apk.getAbsolutePath(),
            PackageManager.GET_SIGNATURES | PackageManager.GET_SIGNING_CERTIFICATES);
        if (ai == null) throw new Exception("Not a readable APK");
        if (!pkg.equals(ai.packageName)) throw new Exception("APK is for " + ai.packageName);
        if (ai.getLongVersionCode() != vc) throw new Exception("APK version does not match the catalog");
        Signature[] sigs = ai.signatures;
        if (sigs == null || sigs.length == 0) throw new Exception("APK has no readable signature");
        if (pin.length() == 64) {
            boolean ok = false;
            for (Signature s : sigs)
                if (hex(MessageDigest.getInstance("SHA-256").digest(s.toByteArray())).equals(pin)) ok = true;
            if (!ok) throw new Exception("Signature does not match the pinned publisher certificate");
        }
        if (installedSigs != null && installedSigs.length > 0) {
            boolean same = false;
            for (Signature a : sigs) for (Signature b : installedSigs) if (a.equals(b)) same = true;
            if (!same) throw new Exception("Signature differs from the installed copy. Uninstall it first.");
        }
    }

    private static final String[] ABI_TOKENS = {"arm64_v8a", "armeabi_v7a", "armeabi", "x86_64", "x86", "mips64", "mips"};

    private static String abiToken(String id) {
        for (String t : ABI_TOKENS) if (id.equals(t)) return t;
        return null;
    }

    private static int densityOf(String id) {
        if (id.equals("ldpi")) return 120;
        if (id.equals("mdpi")) return 160;
        if (id.equals("tvdpi")) return 213;
        if (id.equals("hdpi")) return 240;
        if (id.equals("xhdpi")) return 320;
        if (id.equals("xxhdpi")) return 480;
        if (id.equals("xxxhdpi")) return 640;
        return -1;
    }

    /** Picks the base APK and the splits that fit this device. The base is always first. */
    private static List<Part> selectParts(ZipFile zf, String pkg, long vc) throws Exception {
        // names of the APKs inside the zip, with their split ids
        List<String[]> found = new ArrayList<String[]>();  // {entryName, id}
        ZipEntry m = zf.getEntry("manifest.json");
        if (m != null) {
            InputStream in = zf.getInputStream(m);
            ByteArrayOutputStream bo = new ByteArrayOutputStream();
            byte[] buf = new byte[8192];
            int n;
            while ((n = in.read(buf)) > 0) bo.write(buf, 0, n);
            in.close();
            JSONObject man = new JSONObject(bo.toString("UTF-8"));
            JSONArray ex = man.optJSONArray("expansions");
            if (ex != null && ex.length() > 0) throw new Exception("Expansion (OBB) files are not supported");
            if (man.has("package_name") && !pkg.equals(man.optString("package_name")))
                throw new Exception("XAPK is for " + man.optString("package_name"));
            JSONArray sa = man.optJSONArray("split_apks");
            if (sa != null) for (int i = 0; i < sa.length(); i++) {
                JSONObject o = sa.getJSONObject(i);
                found.add(new String[]{o.optString("file"), o.optString("id")});
            }
        }
        if (found.isEmpty()) {
            java.util.Enumeration<? extends ZipEntry> en = zf.entries();
            while (en.hasMoreElements()) {
                ZipEntry z = en.nextElement();
                String nm = z.getName();
                if (nm.toLowerCase(Locale.US).endsWith(".apk") && nm.indexOf('/') < 0)
                    found.add(new String[]{nm, nm.substring(0, nm.length() - 4)});
            }
        }
        if (found.isEmpty()) throw new Exception("No APK files in the XAPK");

        String baseName = null;
        List<String[]> abis = new ArrayList<String[]>(), dens = new ArrayList<String[]>(), rest = new ArrayList<String[]>();
        boolean haveAbi = false;
        for (String[] f : found) {
            String id = f[1].toLowerCase(Locale.US);
            if (id.equals("base") || id.equals(pkg.toLowerCase(Locale.US)) || id.equals("base-master")) { baseName = f[0]; continue; }
            String tok = id.startsWith("config.") ? id.substring(7) : (id.startsWith("base-") ? id.substring(5) : id);
            tok = tok.replace('-', '_');
            if (abiToken(tok) != null) { abis.add(new String[]{f[0], tok}); haveAbi = true; }
            else if (densityOf(tok) > 0) dens.add(new String[]{f[0], tok});
            else rest.add(new String[]{f[0], tok});
        }
        if (baseName == null) {
            // no obvious base: take the biggest APK
            long best = -1;
            for (String[] f : found) { ZipEntry z = zf.getEntry(f[0]); if (z != null && z.getSize() > best) { best = z.getSize(); baseName = f[0]; } }
            java.util.Iterator<String[]> it = rest.iterator();
            while (it.hasNext()) if (it.next()[0].equals(baseName)) it.remove();
        }

        List<Part> parts = new ArrayList<Part>();
        ZipEntry be = zf.getEntry(baseName);
        if (be == null) throw new Exception("Base APK missing from the XAPK");
        parts.add(new Part("base.apk", null, zf, be, be.getSize()));

        if (haveAbi) {
            String chosen = null;
            for (String abi : Build.SUPPORTED_ABIS) {
                String t = abi.replace('-', '_');
                for (String[] a : abis) if (a[1].equals(t)) { chosen = a[0]; break; }
                if (chosen != null) break;
            }
            if (chosen == null) throw new Exception("This app has no build for this device's CPU (" + Build.SUPPORTED_ABIS[0] + ")");
            ZipEntry z = zf.getEntry(chosen);
            parts.add(new Part("split_abi.apk", null, zf, z, z.getSize()));
        }
        if (!dens.isEmpty()) {
            int dpi = android.content.res.Resources.getSystem().getDisplayMetrics().densityDpi;
            String[] bestD = null;
            int bestDiff = Integer.MAX_VALUE;
            for (String[] d : dens) {
                int v = densityOf(d[1]);
                int diff = Math.abs(v - dpi) * 2 + (v < dpi ? 1 : 0);  // slightly prefer the larger one
                if (diff < bestDiff) { bestDiff = diff; bestD = d; }
            }
            ZipEntry z = zf.getEntry(bestD[0]);
            parts.add(new Part("split_density.apk", null, zf, z, z.getSize()));
        }
        int k = 0;
        for (String[] r : rest) {
            ZipEntry z = zf.getEntry(r[0]);
            if (z == null) continue;
            parts.add(new Part("split_" + (k++) + "_" + r[1].replaceAll("[^A-Za-z0-9_]", "") + ".apk", null, zf, z, z.getSize()));
        }
        return parts;
    }

    private static void commit(Context ctx, PackageManager pm, String pkg, List<Part> parts) throws Exception {
        report(ctx, pkg, "install", 100, parts.size() > 1 ? "Installing (" + parts.size() + " parts)" : "Installing");
        PackageInstaller pi = pm.getPackageInstaller();
        PackageInstaller.SessionParams sp = new PackageInstaller.SessionParams(PackageInstaller.SessionParams.MODE_FULL_INSTALL);
        sp.setAppPackageName(pkg);
        int id = pi.createSession(sp);
        PackageInstaller.Session s = pi.openSession(id);
        try {
            for (Part p : parts) {
                InputStream in = p.zip != null ? p.zip.getInputStream(p.entry) : new FileInputStream(p.file);
                OutputStream out = s.openWrite(p.name, 0, p.size);
                try {
                    byte[] buf = new byte[64 * 1024];
                    int n;
                    while ((n = in.read(buf)) > 0) out.write(buf, 0, n);
                    s.fsync(out);
                } finally { out.close(); in.close(); }
            }
            Intent ri = new Intent(ctx, StoreResultReceiver.class).putExtra("pkg", pkg);
            PendingIntent pend = PendingIntent.getBroadcast(ctx, id, ri, PendingIntent.FLAG_UPDATE_CURRENT);
            s.commit(pend.getIntentSender());
        } catch (Throwable t) {
            try { s.abandon(); } catch (Throwable ignored) {}
            throw new Exception("Could not install: " + t);
        } finally { s.close(); }
    }
}
