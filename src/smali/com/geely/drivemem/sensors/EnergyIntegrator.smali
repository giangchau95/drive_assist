.class public final Lcom/geely/drivemem/sensors/EnergyIntegrator;
.super Ljava/lang/Object;
.source "EnergyIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;,
        Lcom/geely/drivemem/sensors/EnergyIntegrator$TripSnapshot;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field public static final MAX_GAP_MS:J = 0x2710L

.field static final TAG:Ljava/lang/String; = "DriveMem"

.field private static lastPowerKw:Ljava/lang/Double; = null

.field private static lastSampleMonoMs:J = 0x0L

.field private static volatile subscribed:Z = false

.field private static tripActive:Z = false

.field private static tripNetKwh:D

.field private static tripRegenKwh:D

.field private static tripSampleCount:I

.field private static tripSpentKwh:D

.field private static windowDurationMs:J

.field private static windowNetKwh:D

.field private static windowRegenKwh:D

.field private static windowSampleCount:I

.field private static windowSpentKwh:D

.field private static windowStartMonoMs:J


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOCK()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputlastPowerKw(Ljava/lang/Double;)V
    .locals 0

    sput-object p0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->lastPowerKw:Ljava/lang/Double;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputlastSampleMonoMs(J)V
    .locals 0

    sput-wide p0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->lastSampleMonoMs:J

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentTrip()Lcom/geely/drivemem/sensors/EnergyIntegrator$TripSnapshot;
    .locals 10

    .line 337
    sget-object v0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_0
    new-instance v9, Lcom/geely/drivemem/sensors/EnergyIntegrator$TripSnapshot;

    sget-wide v2, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripSpentKwh:D

    sget-wide v4, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripRegenKwh:D

    sget-wide v6, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripNetKwh:D

    sget v8, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripSampleCount:I

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/geely/drivemem/sensors/EnergyIntegrator$TripSnapshot;-><init>(DDDI)V

    monitor-exit v0

    return-object v9

    :catchall_0
    move-exception v1

    .line 339
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static drainWindow(JLjava/lang/Float;)Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;
    .locals 26

    .line 215
    sget-object v1, Lcom/geely/drivemem/sensors/EnergyIntegrator;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_0
    sget-wide v2, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowStartMonoMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const-wide/16 v6, 0x7530

    if-lez v0, :cond_0

    sub-long v2, p0, v2

    goto :goto_0

    :cond_0
    move-wide v2, v6

    :goto_0
    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v6, v2

    .line 219
    :goto_1
    sget-object v0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->lastPowerKw:Ljava/lang/Double;

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 221
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_2
    move-object v9, v0

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    if-eqz v9, :cond_3

    .line 224
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object v10, v8

    goto :goto_2

    :cond_3
    move-object v10, v0

    :goto_2
    if-eqz v9, :cond_4

    .line 225
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    neg-double v11, v11

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_4
    move-object v11, v0

    .line 227
    sget-wide v12, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowSpentKwh:D

    .line 228
    sget-wide v14, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowRegenKwh:D

    .line 229
    sget-wide v16, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowNetKwh:D

    .line 230
    sget v0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowSampleCount:I

    const-wide v18, 0x414b774000000000L    # 3600000.0

    if-nez v0, :cond_6

    .line 249
    sget-object v8, Lcom/geely/drivemem/sensors/EnergyIntegrator;->lastPowerKw:Ljava/lang/Double;

    if-eqz v8, :cond_6

    sget-wide v20, Lcom/geely/drivemem/sensors/EnergyIntegrator;->lastSampleMonoMs:J

    cmp-long v22, p0, v20

    if-ltz v22, :cond_6

    sub-long v20, p0, v20

    const-wide/16 v22, 0x2710

    cmp-long v20, v20, v22

    if-gtz v20, :cond_6

    long-to-double v12, v6

    div-double v12, v12, v18

    .line 252
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    cmpl-double v0, v14, v2

    if-ltz v0, :cond_5

    mul-double/2addr v14, v12

    move-wide v12, v2

    goto :goto_3

    :cond_5
    neg-double v14, v14

    mul-double/2addr v14, v12

    move-wide v12, v14

    move-wide v14, v2

    :goto_3
    sub-double v16, v14, v12

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    if-nez v0, :cond_8

    if-eqz p2, :cond_8

    const-wide/32 v20, 0x9c40

    cmp-long v8, v6, v20

    if-gtz v8, :cond_8

    long-to-double v12, v6

    div-double v12, v12, v18

    .line 272
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v14, v8

    cmpl-double v8, v14, v2

    if-ltz v8, :cond_7

    mul-double/2addr v14, v12

    move-wide v12, v2

    goto :goto_4

    :cond_7
    neg-double v14, v14

    mul-double/2addr v14, v12

    move-wide v12, v14

    move-wide v14, v2

    :goto_4
    sub-double v16, v14, v12

    :goto_5
    move-wide/from16 v24, v12

    move-wide v12, v14

    move-wide/from16 v14, v24

    :cond_8
    long-to-double v6, v6

    div-double v6, v6, v18

    cmpl-double v8, v6, v2

    if-lez v8, :cond_9

    div-double v6, v16, v6

    :goto_6
    move-wide/from16 v19, v6

    goto :goto_7

    :cond_9
    if-eqz v9, :cond_a

    .line 284
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto :goto_6

    :cond_a
    move-wide/from16 v19, v2

    .line 286
    :goto_7
    new-instance v6, Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;

    move-object v8, v6

    move/from16 v18, v0

    invoke-direct/range {v8 .. v20}, Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;DDDID)V

    .line 292
    sput-wide v2, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowSpentKwh:D

    .line 293
    sput-wide v2, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowRegenKwh:D

    .line 294
    sput-wide v2, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowNetKwh:D

    .line 295
    sput-wide v4, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowDurationMs:J

    const/4 v0, 0x0

    .line 296
    sput v0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowSampleCount:I

    .line 297
    sput-wide p0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowStartMonoMs:J

    .line 299
    monitor-exit v1

    return-object v6

    :catchall_0
    move-exception v0

    .line 300
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static drainWindow(Ljava/lang/Float;)Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;
    .locals 2

    .line 210
    invoke-static {}, Lcom/geely/drivemem/sensors/EnergyIntegrator;->nowMono()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/geely/drivemem/sensors/EnergyIntegrator;->drainWindow(JLjava/lang/Float;)Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public static endTrip()Lcom/geely/drivemem/sensors/EnergyIntegrator$TripSnapshot;
    .locals 10

    .line 329
    sget-object v0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 330
    :try_start_0
    sput-boolean v1, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripActive:Z

    .line 331
    new-instance v1, Lcom/geely/drivemem/sensors/EnergyIntegrator$TripSnapshot;

    sget-wide v3, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripSpentKwh:D

    sget-wide v5, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripRegenKwh:D

    sget-wide v7, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripNetKwh:D

    sget v9, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripSampleCount:I

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/geely/drivemem/sensors/EnergyIntegrator$TripSnapshot;-><init>(DDDI)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 332
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static ensureSubscribed(Landroid/content/Context;)V
    .locals 2

    .line 93
    sget-boolean p0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->subscribed:Z

    if-eqz p0, :cond_0

    return-void

    .line 94
    :cond_0
    sget-object p0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->LOCK:Ljava/lang/Object;

    monitor-enter p0

    .line 95
    :try_start_0
    sget-boolean v0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->subscribed:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 96
    sput-boolean v0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->subscribed:Z

    .line 97
    invoke-static {}, Lcom/geely/drivemem/sensors/EnergyIntegrator;->nowMono()J

    move-result-wide v0

    sput-wide v0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowStartMonoMs:J

    .line 98
    new-instance v0, Lcom/geely/drivemem/sensors/EnergyIntegrator$1;

    invoke-direct {v0}, Lcom/geely/drivemem/sensors/EnergyIntegrator$1;-><init>()V

    invoke-static {v0}, Lcom/geely/drivemem/sensors/Obd2Reader;->subscribe(Lcom/geely/drivemem/sensors/Obd2Reader$Listener;)V

    .line 114
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static nowMono()J
    .locals 2

    .line 200
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 202
    :catchall_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static onPowerReading(JD)V
    .locals 20

    move-wide/from16 v0, p2

    .line 120
    sget-object v2, Lcom/geely/drivemem/sensors/EnergyIntegrator;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 127
    :try_start_0
    invoke-static {}, Lcom/geely/drivemem/state/CarState;->isParked()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_0

    .line 128
    invoke-static {}, Lcom/geely/drivemem/state/ChargeSession;->isCharging()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    sput-wide v4, Lcom/geely/drivemem/sensors/EnergyIntegrator;->lastSampleMonoMs:J

    const/4 v0, 0x0

    .line 130
    sput-object v0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->lastPowerKw:Ljava/lang/Double;

    .line 131
    monitor-exit v2

    return-void

    .line 134
    :cond_0
    sget-wide v6, Lcom/geely/drivemem/sensors/EnergyIntegrator;->lastSampleMonoMs:J

    cmp-long v3, v6, v4

    if-lez v3, :cond_5

    sget-object v3, Lcom/geely/drivemem/sensors/EnergyIntegrator;->lastPowerKw:Ljava/lang/Double;

    if-eqz v3, :cond_5

    sub-long v6, p0, v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_5

    const-wide/16 v4, 0x2710

    cmp-long v4, v6, v4

    if-gtz v4, :cond_5

    long-to-double v4, v6

    const-wide v8, 0x414b774000000000L    # 3600000.0

    div-double/2addr v4, v8

    .line 138
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v3, v8, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    if-ltz v3, :cond_1

    cmpl-double v14, v0, v10

    if-ltz v14, :cond_1

    add-double/2addr v8, v0

    div-double/2addr v8, v12

    mul-double/2addr v8, v4

    move-wide v3, v10

    move-wide v10, v8

    goto :goto_0

    :cond_1
    cmpg-double v14, v8, v10

    if-gtz v14, :cond_2

    cmpg-double v14, v0, v10

    if-gtz v14, :cond_2

    neg-double v8, v8

    sub-double/2addr v8, v0

    div-double/2addr v8, v12

    mul-double/2addr v8, v4

    move-wide v3, v8

    goto :goto_0

    :cond_2
    sub-double v14, v0, v8

    .line 151
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpl-double v16, v14, v10

    if-lez v16, :cond_4

    .line 153
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    div-double/2addr v10, v14

    mul-double v14, v4, v10

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v10

    mul-double v4, v4, v16

    if-lez v3, :cond_3

    div-double/2addr v8, v12

    mul-double v10, v8, v14

    neg-double v8, v0

    div-double/2addr v8, v12

    mul-double v3, v8, v4

    goto :goto_0

    :cond_3
    neg-double v8, v8

    div-double/2addr v8, v12

    mul-double v10, v8, v14

    div-double v8, v0, v12

    mul-double v3, v8, v4

    move-wide/from16 v18, v3

    move-wide v3, v10

    move-wide/from16 v10, v18

    goto :goto_0

    :cond_4
    move-wide v3, v10

    :goto_0
    sub-double v8, v10, v3

    .line 168
    sget-wide v12, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowSpentKwh:D

    add-double/2addr v12, v10

    sput-wide v12, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowSpentKwh:D

    .line 169
    sget-wide v12, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowRegenKwh:D

    add-double/2addr v12, v3

    sput-wide v12, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowRegenKwh:D

    .line 170
    sget-wide v12, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowNetKwh:D

    add-double/2addr v12, v8

    sput-wide v12, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowNetKwh:D

    .line 171
    sget-wide v12, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowDurationMs:J

    add-long/2addr v12, v6

    sput-wide v12, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowDurationMs:J

    .line 172
    sget v5, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowSampleCount:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowSampleCount:I

    .line 184
    sget-boolean v5, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripActive:Z

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/geely/drivemem/state/CarState;->isParked()Z

    move-result v5

    if-nez v5, :cond_5

    .line 185
    sget-wide v5, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripSpentKwh:D

    add-double/2addr v5, v10

    sput-wide v5, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripSpentKwh:D

    .line 186
    sget-wide v5, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripRegenKwh:D

    add-double/2addr v5, v3

    sput-wide v5, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripRegenKwh:D

    .line 187
    sget-wide v3, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripNetKwh:D

    add-double/2addr v3, v8

    sput-wide v3, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripNetKwh:D

    .line 188
    sget v3, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripSampleCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripSampleCount:I

    .line 193
    :cond_5
    sput-wide p0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->lastSampleMonoMs:J

    .line 194
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->lastPowerKw:Ljava/lang/Double;

    .line 195
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static resetForTesting()V
    .locals 6

    .line 344
    sget-object v0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    .line 345
    :try_start_0
    sput-wide v1, Lcom/geely/drivemem/sensors/EnergyIntegrator;->lastSampleMonoMs:J

    const/4 v3, 0x0

    .line 346
    sput-object v3, Lcom/geely/drivemem/sensors/EnergyIntegrator;->lastPowerKw:Ljava/lang/Double;

    const-wide/16 v3, 0x0

    .line 347
    sput-wide v3, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowSpentKwh:D

    .line 348
    sput-wide v3, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowRegenKwh:D

    .line 349
    sput-wide v3, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowNetKwh:D

    .line 350
    sput-wide v1, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowDurationMs:J

    const/4 v5, 0x0

    .line 351
    sput v5, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowSampleCount:I

    .line 352
    sput-wide v1, Lcom/geely/drivemem/sensors/EnergyIntegrator;->windowStartMonoMs:J

    .line 353
    sput-boolean v5, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripActive:Z

    .line 354
    sput-wide v3, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripSpentKwh:D

    .line 355
    sput-wide v3, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripRegenKwh:D

    .line 356
    sput-wide v3, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripNetKwh:D

    .line 357
    sput v5, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripSampleCount:I

    .line 358
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static seedTrip(DDD)V
    .locals 3

    .line 320
    sget-object v0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_0
    sget-wide v1, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripSpentKwh:D

    add-double/2addr v1, p0

    sput-wide v1, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripSpentKwh:D

    .line 322
    sget-wide p0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripRegenKwh:D

    add-double/2addr p0, p2

    sput-wide p0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripRegenKwh:D

    .line 323
    sget-wide p0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripNetKwh:D

    add-double/2addr p0, p4

    sput-wide p0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripNetKwh:D

    .line 324
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static startTrip()V
    .locals 3

    .line 305
    sget-object v0, Lcom/geely/drivemem/sensors/EnergyIntegrator;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 306
    :try_start_0
    sput-boolean v1, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripActive:Z

    const-wide/16 v1, 0x0

    .line 307
    sput-wide v1, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripSpentKwh:D

    .line 308
    sput-wide v1, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripRegenKwh:D

    .line 309
    sput-wide v1, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripNetKwh:D

    const/4 v1, 0x0

    .line 310
    sput v1, Lcom/geely/drivemem/sensors/EnergyIntegrator;->tripSampleCount:I

    .line 311
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
