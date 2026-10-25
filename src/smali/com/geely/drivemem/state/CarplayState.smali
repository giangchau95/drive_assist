.class public final Lcom/geely/drivemem/state/CarplayState;
.super Ljava/lang/Object;
.source "CarplayState.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.njda.carplay.broadcast"

.field private static final RECONNECT_AFTER_ENABLE_MS:J = 0x9c4L

.field private static final REENABLE_DELAY_MS:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "DriveMem"

.field private static volatile connected:Z = false

.field private static volatile subscribed:Z = false


# direct methods
.method static bridge synthetic -$$Nest$sfputconnected(Z)V
    .locals 0

    sput-boolean p0, Lcom/geely/drivemem/state/CarplayState;->connected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smreenableBluetoothIfOff(Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0}, Lcom/geely/drivemem/state/CarplayState;->reenableBluetoothIfOff(Landroid/os/Handler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connected()Z
    .locals 1

    .line 37
    sget-boolean v0, Lcom/geely/drivemem/state/CarplayState;->connected:Z

    return v0
.end method

.method public static declared-synchronized ensureSubscribed(Landroid/content/Context;)V
    .locals 5

    const-string v0, "carplay: register: "

    const-class v1, Lcom/geely/drivemem/state/CarplayState;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-boolean v2, Lcom/geely/drivemem/state/CarplayState;->subscribed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 42
    :try_start_1
    sput-boolean v2, Lcom/geely/drivemem/state/CarplayState;->subscribed:Z

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 44
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    :try_start_2
    new-instance v3, Lcom/geely/drivemem/state/CarplayState$1;

    invoke-direct {v3, v2}, Lcom/geely/drivemem/state/CarplayState$1;-><init>(Landroid/os/Handler;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "com.njda.carplay.broadcast"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 59
    :try_start_3
    const-string v2, "DriveMem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    :goto_0
    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method private static reenableBluetoothIfOff(Landroid/os/Handler;)V
    .locals 4

    .line 64
    const-string v0, "DriveMem"

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    const-string v2, "carplay: still connected, bluetooth still off -- turning it back on"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 69
    new-instance v1, Lcom/geely/drivemem/state/CarplayState$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/geely/drivemem/state/CarplayState$$ExternalSyntheticLambda0;-><init>()V

    const-wide/16 v2, 0x9c4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "carplay: re-enable bluetooth: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
