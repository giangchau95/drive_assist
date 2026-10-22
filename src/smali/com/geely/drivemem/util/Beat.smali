.class public final Lcom/geely/drivemem/util/Beat;
.super Ljava/lang/Object;
.source "Beat.java"


# static fields
.field private static final MIN_RESTART_GAP_MS:J = 0x1b7740L

.field public static final MQTT:Ljava/lang/String; = "mqtt"

.field public static final OUTTEMP:Ljava/lang/String; = "outtemp"

.field public static final SOCICON:Ljava/lang/String; = "socicon"

.field public static final TELE:Ljava/lang/String; = "tele"

.field public static final WIFIICON:Ljava/lang/String; = "wifiicon"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 64
    :try_start_0
    invoke-static {p0, p1}, Lcom/geely/drivemem/util/Prefs;->removeBeat(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method static isStale(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 38
    :try_start_0
    invoke-static {p0, p1, v0, v1}, Lcom/geely/drivemem/util/Prefs;->getBeat(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    return v2

    .line 40
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v5, v3, v0

    if-lez v5, :cond_1

    .line 42
    invoke-static {p0, p1, v0, v1}, Lcom/geely/drivemem/util/Prefs;->setBeat(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :cond_1
    sub-long/2addr v0, v3

    cmp-long p0, v0, p2

    if-lez p0, :cond_2

    const/4 v2, 0x1

    :catchall_0
    :cond_2
    return v2
.end method

.method static log(Ljava/lang/String;)V
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "beat: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DriveMem"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static mark(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 29
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/geely/drivemem/util/Prefs;->setBeat(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method static mayRestart(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 52
    :try_start_0
    invoke-static {p0, p1, v0, v1}, Lcom/geely/drivemem/util/Prefs;->getRestart(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    .line 54
    invoke-static {p0, p1, v3, v4}, Lcom/geely/drivemem/util/Prefs;->setRestart(Landroid/content/Context;Ljava/lang/String;J)V

    return v2

    :cond_0
    sub-long v0, v3, v0

    const-wide/32 v5, 0x1b7740

    cmp-long v0, v0, v5

    if-gez v0, :cond_1

    return v2

    .line 56
    :cond_1
    invoke-static {p0, p1, v3, v4}, Lcom/geely/drivemem/util/Prefs;->setRestart(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    return v2
.end method
