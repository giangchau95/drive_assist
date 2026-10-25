.class public Lcom/geely/drivemem/util/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"

.field final static STALE_TELE_MS:J = 300000L

.field final static WATCHDOG_MS:J = 600000L

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 12
    invoke-direct { p0 }, Landroid/content/BroadcastReceiver;-><init>()V
    return-void
.end method

.method public static ensureAll(Landroid/content/Context;)V
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L6
  .catch Ljava/lang/Throwable; { :L2 .. :L3 } :L7
  .catch Ljava/lang/Throwable; { :L3 .. :L5 } :L6
  .registers 5
  :L0
  .prologue
  .line 43
    new-instance v0, Landroid/content/Intent;
    const-class v1, Lcom/geely/drivemem/services/TelemetryService;
    invoke-direct { v0, p0, v1 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
  .line 44
    const-string v1, "tele"
    const-wide/32 v2, 300000
    invoke-static { p0, v1, v2, v3 }, Lcom/geely/drivemem/util/Beat;->isStale(Landroid/content/Context;Ljava/lang/String;J)Z
    move-result v1
    if-eqz v1, :L4
    const-string v1, "tele"
    invoke-static { p0, v1 }, Lcom/geely/drivemem/util/Beat;->mayRestart(Landroid/content/Context;Ljava/lang/String;)Z
  :L1
    move-result v1
    if-eqz v1, :L4
  :L2
  .line 45
    invoke-virtual { p0, v0 }, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
  :L3
  .line 46
    const-string v1, "tele"
    invoke-static { p0, v1 }, Lcom/geely/drivemem/util/Beat;->clear(Landroid/content/Context;Ljava/lang/String;)V
  :L4
  .line 48
    invoke-virtual { p0, v0 }, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
  :L5
  .line 50
    return-void
  :L6
  .line 49
    move-exception v0
    const-string v1, "DriveMem"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "ensure tele: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    goto :L5
  :L7
  .line 45
    move-exception v1
    goto :L3
.end method

.method public static scheduleWatchdog(Landroid/content/Context;)V
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L2
  .registers 7
  :L0
  .prologue
  .line 31
    const-string v0, "alarm"
  .line 32
    invoke-virtual { p0, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/app/AlarmManager;
  .line 33
    new-instance v1, Landroid/content/Intent;
    const-class v2, Lcom/geely/drivemem/util/BootReceiver;
    invoke-direct { v1, p0, v2 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    const-string v2, "com.geely.drivemem.WATCHDOG"
    invoke-virtual { v1, v2 }, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    move-result-object v1
  .line 34
    const/16 v2, 1001
    const/high16 v3, 0x8000000
    invoke-static { p0, v2, v1, v3 }, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    move-result-object v1
  .line 36
    invoke-static { }, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v2
    const-wide/32 v4, 600000
    add-long/2addr v2, v4
  .line 37
    const/4 v4, 2
    invoke-virtual { v0, v4, v2, v3, v1 }, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
  :L1
  .line 39
    return-void
  :L2
  .line 38
    move-exception v0
    const-string v1, "DriveMem"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "watchdog schedule: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    goto :L1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
  .catch Ljava/lang/Throwable; { :L3 .. :L4 } :L5
  .registers 7
  .prologue
  .line 15
    invoke-virtual { p2 }, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object v0
  .line 16
    if-nez v0, :L1
  :L0
  .line 24
    return-void
  :L1
  .line 17
    const-string v1, "com.geely.drivemem.WATCHDOG"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L2
    const-string v1, "android.intent.action.MY_PACKAGE_REPLACED"
  .line 18
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L2
    const-string v1, "android.intent.action.BOOT_COMPLETED"
  .line 19
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L2
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"
  .line 20
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  :L2
  .line 21
    invoke-static { p1 }, Lcom/geely/drivemem/util/BootReceiver;->scheduleWatchdog(Landroid/content/Context;)V
  :L3
  .line 22
    invoke-static { p1 }, Lcom/geely/drivemem/util/BootReceiver;->ensureAll(Landroid/content/Context;)V
  :L4
    goto :L0
  :L5
    move-exception v0
    const-string v1, "DriveMem"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "ensure: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    goto :L0
.end method
