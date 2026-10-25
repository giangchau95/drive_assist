.class public final Lcom/geely/drivemem/net/OtaUpdater;
.super Ljava/lang/Object;
.source "OtaUpdater.java"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/geely/drivemem/net/OtaUpdater$Callback;,
    Lcom/geely/drivemem/net/OtaUpdater$Info;
  }
.end annotation

.field final static HELPER_INSTALL:Ljava/lang/String; = "com.geely.modehelper.INSTALL_APK"

.field public final static HELPER_PKG:Ljava/lang/String; = "com.geely.modehelper"

.field final static MIN_HELPER_VC_UNINSTALL:I = 29877584

.field public final static REPO_RAW:Ljava/lang/String; = "https://raw.githubusercontent.com/giangchau95/drive_assist/main/update/"

.field final static TAG:Ljava/lang/String; = "DriveMemOta"

.field public final static VERSION_URL:Ljava/lang/String; = "https://raw.githubusercontent.com/giangchau95/drive_assist/main/update/version.json"

.method private constructor <init>()V
  .registers 1
  .prologue
  .line 34
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static blockedReason()Ljava/lang/String;
  .registers 4
  .prologue
  .line 69
    invoke-static { }, Lcom/geely/drivemem/state/CarState;->isParked()Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "Blocked: vehicle is not in Park."
  :L0
  .line 74
    return-object v0
  :L1
  .line 70
    invoke-static { }, Lcom/geely/drivemem/state/ChargeSession;->isCharging()Z
    move-result v0
    if-nez v0, :L2
    invoke-static { }, Lcom/geely/drivemem/state/ChargeSession;->isSessionActive()Z
    move-result v0
    if-nez v0, :L2
  .line 71
    invoke-static { }, Lcom/geely/drivemem/state/ChargeSession;->isChargeGraceScheduled()Z
    move-result v0
    if-nez v0, :L2
    invoke-static { }, Lcom/geely/drivemem/state/ChargeSession;->activeRowId()J
    move-result-wide v0
    const-wide/16 v2, 0
    cmp-long v0, v0, v2
    if-lez v0, :L3
  :L2
  .line 72
    const-string v0, "Blocked: the vehicle is charging. Update after the charge finishes."
    goto :L0
  :L3
  .line 74
    const/4 v0, 0
    goto :L0
.end method

.method public static check(Landroid/content/Context;Lcom/geely/drivemem/net/OtaUpdater$Callback;)V
  .registers 6
  .prologue
  .line 78
    invoke-virtual { p0 }, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
  .line 79
    new-instance v1, Landroid/os/Handler;
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v2
    invoke-direct { v1, v2 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
  .line 80
    new-instance v2, Ljava/lang/Thread;
    new-instance v3, Lcom/geely/drivemem/net/OtaUpdater$1;
    invoke-direct { v3, v0, v1, p1 }, Lcom/geely/drivemem/net/OtaUpdater$1;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/geely/drivemem/net/OtaUpdater$Callback;)V
    const-string v0, "ota-check"
    invoke-direct { v2, v3, v0 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 120
    invoke-virtual { v2 }, Ljava/lang/Thread;->start()V
  .line 121
    return-void
.end method

.method public static helperInstalled(Landroid/content/Context;)Z
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L3
  .registers 5
  .prologue
    const/4 v0, 0
  :L0
  .line 63
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v1
    const-string v2, "com.geely.modehelper"
    const/4 v3, 0
    invoke-virtual { v1, v2, v3 }, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
  :L1
    const/4 v0, 1
  :L2
  .line 64
    return v0
  :L3
    move-exception v1
    goto :L2
.end method

.method public static install(Landroid/content/Context;Lcom/geely/drivemem/net/OtaUpdater$Info;)Ljava/lang/String;
  .catch Ljava/lang/Throwable; { :L4 .. :L7 } :L8
  .registers 5
  .prologue
  .line 145
    invoke-static { }, Lcom/geely/drivemem/net/OtaUpdater;->blockedReason()Ljava/lang/String;
    move-result-object v0
  .line 146
    if-eqz v0, :L1
  :L0
  .line 159
    return-object v0
  :L1
  .line 147
    if-eqz p1, :L2
    iget-object v0, p1, Lcom/geely/drivemem/net/OtaUpdater$Info;->apkUrl:Ljava/lang/String;
    if-eqz v0, :L2
    iget-object v0, p1, Lcom/geely/drivemem/net/OtaUpdater$Info;->apkUrl:Ljava/lang/String;
    const-string v1, "https://"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L3
  :L2
  .line 148
    const-string v0, "Invalid update URL."
    goto :L0
  :L3
  .line 149
    invoke-static { p0 }, Lcom/geely/drivemem/net/OtaUpdater;->helperInstalled(Landroid/content/Context;)Z
    move-result v0
    if-nez v0, :L4
  .line 150
    const-string v0, "ModeHelper is not installed. Run the Drive Assist installer once."
    goto :L0
  :L4
  .line 152
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v1, p1, Lcom/geely/drivemem/net/OtaUpdater$Info;->apkUrl:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget-object v0, p1, Lcom/geely/drivemem/net/OtaUpdater$Info;->apkUrl:Ljava/lang/String;
    const/16 v2, 63
    invoke-virtual { v0, v2 }, Ljava/lang/String;->indexOf(I)I
    move-result v0
    if-gez v0, :L6
    const-string v0, "?v="
  :L5
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p1, Lcom/geely/drivemem/net/OtaUpdater$Info;->versionCode:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 153
    new-instance v1, Landroid/content/Intent;
    const-string v2, "com.geely.modehelper.INSTALL_APK"
    invoke-direct { v1, v2 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    const-string v2, "com.geely.modehelper"
    invoke-virtual { v1, v2 }, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    move-result-object v1
  .line 154
    const/16 v2, 32
    invoke-virtual { v1, v2 }, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
  .line 155
    const-string v2, "url"
    invoke-virtual { v1, v2, v0 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
  .line 156
    invoke-virtual { p0, v1 }, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
  .line 157
    const/4 v0, 0
    goto :L0
  :L6
  .line 152
    const-string v0, "&v="
  :L7
    goto :L5
  :L8
  .line 158
    move-exception v0
  .line 159
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Could not start update: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    goto :L0
.end method

.method public static installedVersionCode(Landroid/content/Context;)I
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L2
  .registers 5
  .prologue
    const/4 v0, 0
  :L0
  .line 50
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v1
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v2
    const/4 v3, 0
    invoke-virtual { v1, v2, v3 }, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    move-result-object v1
  .line 51
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
  :L1
  .line 52
    return v0
  :L2
    move-exception v1
    goto :L1
.end method

.method public static installedVersionName(Landroid/content/Context;)Ljava/lang/String;
  .catch Ljava/lang/Throwable; { :L0 .. :L3 } :L4
  .registers 4
  :L0
  .prologue
  .line 57
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v1
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    move-result-object v0
  .line 58
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    if-nez v1, :L2
    const-string v0, "?"
  :L1
  .line 59
    return-object v0
  :L2
  .line 58
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
  :L3
    goto :L1
  :L4
  .line 59
    move-exception v0
    const-string v0, "?"
    goto :L1
.end method

.method public static uninstallAll(Landroid/content/Context;)Ljava/lang/String;
  .catch Ljava/lang/Throwable; { :L2 .. :L3 } :L4
  .catch Ljava/lang/Throwable; { :L5 .. :L6 } :L7
  .registers 4
  .prologue
  .line 125
    invoke-static { }, Lcom/geely/drivemem/state/CarState;->isParked()Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "Blocked: vehicle is not in Park."
  :L0
  .line 139
    return-object v0
  :L1
  .line 126
    invoke-static { p0 }, Lcom/geely/drivemem/net/OtaUpdater;->helperInstalled(Landroid/content/Context;)Z
    move-result v0
    if-nez v0, :L2
  .line 127
    const-string v0, "ModeHelper is not installed. Remove the app from Settings > Apps instead."
    goto :L0
  :L2
  .line 129
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0
    const-string v1, "com.geely.modehelper"
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    move-result-object v0
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
  .line 130
    const v1, 29877584
    if-ge v0, v1, :L5
  .line 131
    const-string v0, "ModeHelper is outdated. Run the Drive Assist installer once, or remove the apps in Settings > Apps."
  :L3
    goto :L0
  :L4
  .line 132
    move-exception v0
  :L5
  .line 134
    new-instance v0, Landroid/content/Intent;
    const-string v1, "com.geely.modehelper.UNINSTALL_ALL"
    invoke-direct { v0, v1 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    const-string v1, "com.geely.modehelper"
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    move-result-object v0
  .line 135
    const/16 v1, 32
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
  .line 136
    invoke-virtual { p0, v0 }, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
  :L6
  .line 137
    const/4 v0, 0
    goto :L0
  :L7
  .line 138
    move-exception v0
  .line 139
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Could not start uninstall: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    goto :L0
.end method
