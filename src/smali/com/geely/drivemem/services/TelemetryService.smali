.class public Lcom/geely/drivemem/services/TelemetryService;
.super Landroid/app/Service;
.source "TelemetryService.java"

.field final static TAG:Ljava/lang/String; = "DriveMem"

.field private gpsListener:Landroid/location/LocationListener;

.field private h:Landroid/os/Handler;

.field private volatile running:Z

.field private thread:Landroid/os/HandlerThread;

.field private final tick:Ljava/lang/Runnable;

.method public constructor <init>()V
  .registers 2
  .prologue
  .line 16
    invoke-direct { p0 }, Landroid/app/Service;-><init>()V
  .line 20
    const/4 v0, 0
    iput-boolean v0, p0, Lcom/geely/drivemem/services/TelemetryService;->running:Z
  .line 22
    new-instance v0, Lcom/geely/drivemem/services/TelemetryService$1;
    invoke-direct { v0, p0 }, Lcom/geely/drivemem/services/TelemetryService$1;-><init>(Lcom/geely/drivemem/services/TelemetryService;)V
    iput-object v0, p0, Lcom/geely/drivemem/services/TelemetryService;->tick:Ljava/lang/Runnable;
    return-void
.end method

.method static synthetic access$000(Lcom/geely/drivemem/services/TelemetryService;)Z
  .registers 2
  .prologue
  .line 16
    iget-boolean v0, p0, Lcom/geely/drivemem/services/TelemetryService;->running:Z
    return v0
.end method

.method static synthetic access$100(Lcom/geely/drivemem/services/TelemetryService;)Landroid/os/Handler;
  .registers 2
  .prologue
  .line 16
    iget-object v0, p0, Lcom/geely/drivemem/services/TelemetryService;->h:Landroid/os/Handler;
    return-object v0
.end method

.method private registerGps()V
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L3
  .catch Ljava/lang/Throwable; { :L1 .. :L2 } :L4
  .registers 8
  :L0
  .prologue
  .line 43
    const-string v0, "location"
  .line 44
    invoke-virtual { p0, v0 }, Lcom/geely/drivemem/services/TelemetryService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/location/LocationManager;
  .line 45
    new-instance v1, Lcom/geely/drivemem/services/TelemetryService$2;
    invoke-direct { v1, p0 }, Lcom/geely/drivemem/services/TelemetryService$2;-><init>(Lcom/geely/drivemem/services/TelemetryService;)V
    iput-object v1, p0, Lcom/geely/drivemem/services/TelemetryService;->gpsListener:Landroid/location/LocationListener;
  .line 51
    const-string v1, "gps"
    const-wide/16 v2, 2000
    const/4 v4, 0
    iget-object v5, p0, Lcom/geely/drivemem/services/TelemetryService;->gpsListener:Landroid/location/LocationListener;
    iget-object v6, p0, Lcom/geely/drivemem/services/TelemetryService;->thread:Landroid/os/HandlerThread;
  .line 52
    invoke-virtual { v6 }, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
    move-result-object v6
  .line 51
    invoke-virtual/range { v0 .. v6 }, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
  :L1
  .line 54
    const-string v1, "network"
    const-wide/16 v2, 5000
    const/4 v4, 0
    iget-object v5, p0, Lcom/geely/drivemem/services/TelemetryService;->gpsListener:Landroid/location/LocationListener;
    iget-object v6, p0, Lcom/geely/drivemem/services/TelemetryService;->thread:Landroid/os/HandlerThread;
  .line 55
    invoke-virtual { v6 }, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
    move-result-object v6
  .line 54
    invoke-virtual/range { v0 .. v6 }, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
  :L2
  .line 58
    return-void
  :L3
  .line 57
    move-exception v0
    const-string v1, "DriveMem"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "GPS register error: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    goto :L2
  :L4
  .line 56
    move-exception v0
    goto :L2
.end method

.method private startAsForeground()V
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L2
  .registers 6
  :L0
  .prologue
  .line 62
    const-string v1, "drivemem_tele"
  .line 63
    const-string v0, "notification"
  .line 64
    invoke-virtual { p0, v0 }, Lcom/geely/drivemem/services/TelemetryService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/app/NotificationManager;
  .line 65
    new-instance v2, Landroid/app/NotificationChannel;
    const-string v3, "Drive Assist"
    const/4 v4, 1
    invoke-direct { v2, v1, v3, v4 }, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
  .line 67
    invoke-virtual { v0, v2 }, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
  .line 68
    new-instance v0, Landroid/app/Notification$Builder;
    invoke-direct { v0, p0, v1 }, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    const-string v1, "Drive Assist"
  .line 69
    invoke-virtual { v0, v1 }, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    move-result-object v0
    const-string v1, "Recording statistics"
  .line 70
    invoke-virtual { v0, v1 }, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    move-result-object v0
    const v1, 17301628
  .line 71
    invoke-virtual { v0, v1 }, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;
    move-result-object v0
  .line 72
    invoke-virtual { v0 }, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
    move-result-object v0
  .line 73
    const/16 v1, 42
    invoke-virtual { p0, v1, v0 }, Lcom/geely/drivemem/services/TelemetryService;->startForeground(ILandroid/app/Notification;)V
  :L1
  .line 75
    return-void
  :L2
  .line 74
    move-exception v0
    const-string v1, "DriveMem"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "startForeground FAILED: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v1, v2, v0 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    goto :L1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
  .registers 3
  .prologue
  .line 77
    const/4 v0, 0
    return-object v0
.end method

.method public onDestroy()V
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L4
  .registers 3
  .prologue
  .line 80
    const/4 v0, 0
    iput-boolean v0, p0, Lcom/geely/drivemem/services/TelemetryService;->running:Z
  .line 81
    const-string v0, "tele"
    invoke-static { p0, v0 }, Lcom/geely/drivemem/util/Beat;->clear(Landroid/content/Context;Ljava/lang/String;)V
  .line 82
    iget-object v0, p0, Lcom/geely/drivemem/services/TelemetryService;->gpsListener:Landroid/location/LocationListener;
    if-eqz v0, :L2
  :L0
  .line 83
    const-string v0, "location"
    invoke-virtual { p0, v0 }, Lcom/geely/drivemem/services/TelemetryService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/location/LocationManager;
    iget-object v1, p0, Lcom/geely/drivemem/services/TelemetryService;->gpsListener:Landroid/location/LocationListener;
    invoke-virtual { v0, v1 }, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
  :L1
  .line 85
    const/4 v0, 0
    iput-object v0, p0, Lcom/geely/drivemem/services/TelemetryService;->gpsListener:Landroid/location/LocationListener;
  :L2
  .line 87
    iget-object v0, p0, Lcom/geely/drivemem/services/TelemetryService;->thread:Landroid/os/HandlerThread;
    if-eqz v0, :L3
    iget-object v0, p0, Lcom/geely/drivemem/services/TelemetryService;->thread:Landroid/os/HandlerThread;
    invoke-virtual { v0 }, Landroid/os/HandlerThread;->quitSafely()Z
  :L3
  .line 88
    invoke-super { p0 }, Landroid/app/Service;->onDestroy()V
  .line 89
    return-void
  :L4
  .line 84
    move-exception v0
    goto :L1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
  .registers 7
  .prologue
    const/4 v2, 1
  .line 31
    invoke-direct { p0 }, Lcom/geely/drivemem/services/TelemetryService;->startAsForeground()V
  .line 32
    iget-boolean v0, p0, Lcom/geely/drivemem/services/TelemetryService;->running:Z
    if-eqz v0, :L1
  :L0
  .line 38
    return v2
  :L1
  .line 33
    iput-boolean v2, p0, Lcom/geely/drivemem/services/TelemetryService;->running:Z
  .line 34
    new-instance v0, Landroid/os/HandlerThread;
    const-string v1, "tele"
    invoke-direct { v0, v1 }, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
    iput-object v0, p0, Lcom/geely/drivemem/services/TelemetryService;->thread:Landroid/os/HandlerThread;
    iget-object v0, p0, Lcom/geely/drivemem/services/TelemetryService;->thread:Landroid/os/HandlerThread;
    invoke-virtual { v0 }, Landroid/os/HandlerThread;->start()V
  .line 35
    new-instance v0, Landroid/os/Handler;
    iget-object v1, p0, Lcom/geely/drivemem/services/TelemetryService;->thread:Landroid/os/HandlerThread;
    invoke-virtual { v1 }, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    iput-object v0, p0, Lcom/geely/drivemem/services/TelemetryService;->h:Landroid/os/Handler;
  .line 36
    invoke-direct { p0 }, Lcom/geely/drivemem/services/TelemetryService;->registerGps()V
  .line 37
    iget-object v0, p0, Lcom/geely/drivemem/services/TelemetryService;->h:Landroid/os/Handler;
    iget-object v1, p0, Lcom/geely/drivemem/services/TelemetryService;->tick:Ljava/lang/Runnable;
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    goto :L0
.end method
