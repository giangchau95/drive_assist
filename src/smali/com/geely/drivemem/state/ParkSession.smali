.class public final Lcom/geely/drivemem/state/ParkSession;
.super Ljava/lang/Object;
.source "ParkSession.java"


# static fields
.field static final TAG:Ljava/lang/String; = "DriveMem"

.field private static startMs:J = 0x0L

.field private static startSampleId:J = -0x1L

.field private static volatile subscribed:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized ensureSubscribed(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/geely/drivemem/state/ParkSession;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-boolean v1, Lcom/geely/drivemem/state/ParkSession;->subscribed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 25
    :try_start_1
    sput-boolean v1, Lcom/geely/drivemem/state/ParkSession;->subscribed:Z

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 27
    new-instance v1, Lcom/geely/drivemem/state/ParkSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/geely/drivemem/state/ParkSession$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/geely/drivemem/state/CarState;->addListener(Lcom/geely/drivemem/state/CarState$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static synthetic lambda$ensureSubscribed$0(Landroid/content/Context;Z)V
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcom/geely/drivemem/state/ParkSession;->onParkedChange(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic lambda$onParkedChange$1(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2

    .line 51
    :try_start_0
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "park_session"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "parksession: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DriveMem"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static onParkedChange(Landroid/content/Context;Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/geely/drivemem/state/ParkSession;->startMs:J

    .line 38
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarDb;->latestSampleId()J

    move-result-wide p0

    sput-wide p0, Lcom/geely/drivemem/state/ParkSession;->startSampleId:J

    goto :goto_0

    .line 42
    :cond_0
    sget-wide v0, Lcom/geely/drivemem/state/ParkSession;->startSampleId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 44
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geely/drivemem/car/CarDb;->latestSampleId()J

    move-result-wide v2

    .line 45
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 46
    sget-wide v4, Lcom/geely/drivemem/state/ParkSession;->startMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "start_ms"

    invoke-virtual {p1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 47
    const-string v4, "end_ms"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 48
    sget-wide v0, Lcom/geely/drivemem/state/ParkSession;->startSampleId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "start_sample_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 49
    const-string v0, "end_sample_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object v0

    new-instance v1, Lcom/geely/drivemem/state/ParkSession$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/geely/drivemem/state/ParkSession$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Landroid/content/ContentValues;)V

    invoke-virtual {v0, v1}, Lcom/geely/drivemem/car/CarDb;->write(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
