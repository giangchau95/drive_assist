.class public final Lcom/geely/drivemem/state/TripSession;
.super Ljava/lang/Object;
.source "TripSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/drivemem/state/TripSession$WeekSummary;
    }
.end annotation


# static fields
.field static final ALTITUDE_NOISE_M:D = 3.0

.field public static final MIN_TRIP_DISTANCE_KM:D = 0.1

.field public static final MIN_TRIP_DRIVE_DURATION_MS:J = 0xafc8L

.field public static final PARK_GRACE_PERIOD_MS:J = 0x124f8L

.field private static final PREFS:Ljava/lang/String; = "drivemem"

.field private static final PREF_OPEN_START_MS:Ljava/lang/String; = "trip_open_start_ms"

.field private static final PREF_OPEN_START_ODO_KM:Ljava/lang/String; = "trip_open_start_odo_km"

.field private static final PREF_OPEN_START_SAMPLE_ID:Ljava/lang/String; = "trip_open_start_sample_id"

.field private static final PREF_OPEN_START_SOC:Ljava/lang/String; = "trip_open_start_soc"

.field static final TAG:Ljava/lang/String; = "DriveMem"

.field private static volatile ascentM:D = 0.0

.field private static volatile currentDriveSegmentStartMs:J = 0x0L

.field private static volatile currentSocRaw:D = NaN

.field private static volatile descentM:D = 0.0

.field private static volatile drivingDurationMs:J = 0x0L

.field private static volatile lastAltitude:Ljava/lang/Double; = null

.field private static parkGraceRunnable:Ljava/lang/Runnable; = null

.field private static volatile startMs:J = 0x0L

.field private static volatile startOdoKm:D = -1.0

.field private static volatile startSampleId:J = -0x1L

.field private static volatile startSoc:I = -0x1

.field private static volatile startSocRaw:D = NaN

.field private static volatile subscribed:Z = false

.field private static testCurrentOdoKm:Ljava/lang/Double; = null

.field private static volatile tripActive:Z = false

.field private static wasParked:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static classifyTripEnergySource(Landroid/content/Context;JJLcom/geely/drivemem/sensors/EnergyIntegrator$TripSnapshot;)Lcom/geely/drivemem/sensors/EnergySource;
    .locals 2

    .line 480
    :try_start_0
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "SELECT SUM(CASE WHEN (energy_measured = 1 OR battery_temp_c IS NOT NULL) THEN 1 ELSE 0 END),        SUM(CASE WHEN ((energy_measured = 0 AND battery_temp_c IS NULL) AND (IFNULL(energy_spent_kwh,0) != 0 OR IFNULL(energy_regen_kwh,0) != 0)) THEN 1 ELSE 0 END) FROM telemetry_sample WHERE ts_ms BETWEEN ? AND ? AND (CASE WHEN gear IS NOT NULL THEN gear <> 4      ELSE (is_charging IS NULL OR is_charging = 0) END)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 490
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    .line 480
    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 492
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 493
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-interface {p0, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Lcom/geely/drivemem/sensors/EnergySource;->resolve(JJ)Lcom/geely/drivemem/sensors/EnergySource;

    move-result-object p1

    .line 494
    sget-object p2, Lcom/geely/drivemem/sensors/EnergySource;->NO_DATA:Lcom/geely/drivemem/sensors/EnergySource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, p2, :cond_0

    .line 496
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    .line 498
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "trip energy classification: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DriveMem"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :goto_0
    iget p0, p5, Lcom/geely/drivemem/sensors/EnergyIntegrator$TripSnapshot;->sampleCount:I

    if-lez p0, :cond_1

    sget-object p0, Lcom/geely/drivemem/sensors/EnergySource;->MEASURED:Lcom/geely/drivemem/sensors/EnergySource;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/geely/drivemem/sensors/EnergySource;->ESTIMATED:Lcom/geely/drivemem/sensors/EnergySource;

    :goto_1
    return-object p0
.end method

.method private static clearOpenTrip(Landroid/content/Context;)V
    .locals 2

    .line 336
    const-string v0, "drivemem"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "trip_open_start_ms"

    .line 337
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "trip_open_start_sample_id"

    .line 338
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "trip_open_start_odo_km"

    .line 339
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "trip_open_start_soc"

    .line 340
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 341
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static currentSocEstimatedNetKwh()D
    .locals 4

    .line 231
    sget-boolean v0, Lcom/geely/drivemem/state/TripSession;->tripActive:Z

    if-eqz v0, :cond_1

    sget-wide v0, Lcom/geely/drivemem/state/TripSession;->startSocRaw:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-wide v0, Lcom/geely/drivemem/state/TripSession;->currentSocRaw:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    sget-wide v0, Lcom/geely/drivemem/state/TripSession;->startSocRaw:D

    sget-wide v2, Lcom/geely/drivemem/state/TripSession;->currentSocRaw:D

    sub-double/2addr v0, v2

    const-wide v2, 0x4043cccccccccccdL    # 39.6

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public static declared-synchronized ensureSubscribed(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/geely/drivemem/state/TripSession;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-boolean v1, Lcom/geely/drivemem/state/TripSession;->subscribed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 56
    :try_start_1
    sput-boolean v1, Lcom/geely/drivemem/state/TripSession;->subscribed:Z

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 58
    invoke-static {p0}, Lcom/geely/drivemem/sensors/EnergyIntegrator;->ensureSubscribed(Landroid/content/Context;)V

    .line 59
    invoke-static {p0}, Lcom/geely/drivemem/state/TripSession;->recoverOpenTrip(Landroid/content/Context;)V

    .line 60
    const-string v1, "car.gear"

    new-instance v2, Lcom/geely/drivemem/state/TripSession$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/geely/drivemem/state/TripSession$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/geely/drivemem/car/EntityBus;->subscribe(Ljava/lang/String;Lcom/geely/drivemem/car/EntityBus$Listener;)V

    .line 65
    const-string v1, "telemetry.tick"

    new-instance v2, Lcom/geely/drivemem/state/TripSession$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/geely/drivemem/state/TripSession$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/geely/drivemem/car/EntityBus;->subscribe(Ljava/lang/String;Lcom/geely/drivemem/car/EntityBus$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
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

.method public static finalizeTrip(Landroid/content/Context;)Z
    .locals 2

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/geely/drivemem/state/TripSession;->finalizeTrip(Landroid/content/Context;J)Z

    move-result p0

    return p0
.end method

.method public static finalizeTrip(Landroid/content/Context;J)Z
    .locals 15

    move-object v7, p0

    .line 240
    invoke-static {}, Lcom/geely/drivemem/car/CarActor;->assertCarThread()V

    .line 241
    sget-object v0, Lcom/geely/drivemem/state/TripSession;->parkGraceRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v7, :cond_0

    .line 243
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object v0

    sget-object v2, Lcom/geely/drivemem/state/TripSession;->parkGraceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/geely/drivemem/car/CarActor;->cancelOnCarThread(Ljava/lang/Runnable;)V

    .line 245
    :cond_0
    sput-object v1, Lcom/geely/drivemem/state/TripSession;->parkGraceRunnable:Ljava/lang/Runnable;

    .line 248
    :cond_1
    sget-boolean v0, Lcom/geely/drivemem/state/TripSession;->tripActive:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    return v2

    .line 250
    :cond_2
    sget-boolean v0, Lcom/geely/drivemem/state/TripSession;->wasParked:Z

    const-wide/16 v3, 0x0

    if-nez v0, :cond_3

    sget-wide v5, Lcom/geely/drivemem/state/TripSession;->currentDriveSegmentStartMs:J

    cmp-long v0, v5, v3

    if-lez v0, :cond_3

    .line 251
    sget-wide v5, Lcom/geely/drivemem/state/TripSession;->drivingDurationMs:J

    sget-wide v8, Lcom/geely/drivemem/state/TripSession;->currentDriveSegmentStartMs:J

    sub-long v8, p1, v8

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long/2addr v5, v8

    sput-wide v5, Lcom/geely/drivemem/state/TripSession;->drivingDurationMs:J

    .line 252
    sput-wide v3, Lcom/geely/drivemem/state/TripSession;->currentDriveSegmentStartMs:J

    .line 255
    :cond_3
    invoke-static {}, Lcom/geely/drivemem/sensors/EnergyIntegrator;->endTrip()Lcom/geely/drivemem/sensors/EnergyIntegrator$TripSnapshot;

    move-result-object v8

    .line 256
    invoke-static {}, Lcom/geely/drivemem/state/TripSession;->currentSocEstimatedNetKwh()D

    move-result-wide v9

    .line 259
    sget-object v0, Lcom/geely/drivemem/state/TripSession;->testCurrentOdoKm:Ljava/lang/Double;

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_4

    .line 260
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_1

    :cond_4
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    if-eqz v7, :cond_7

    .line 262
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object v0

    const-string v13, "telemetry.odometer"

    invoke-virtual {v0, v13}, Lcom/geely/drivemem/car/CarActor;->get(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 263
    iget-object v13, v0, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v14, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne v13, v14, :cond_5

    iget-object v13, v0, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    instance-of v13, v13, Ljava/lang/Number;

    if-eqz v13, :cond_5

    .line 264
    iget-object v0, v0, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    :cond_5
    cmpg-double v0, v11, v5

    if-gez v0, :cond_7

    .line 268
    :try_start_0
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v13, "SELECT odo_km FROM telemetry_sample WHERE odo_km > 0 ORDER BY id DESC LIMIT 1"

    invoke-virtual {v0, v13, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 271
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :cond_6
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 274
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_7
    :goto_0
    move-wide v0, v11

    .line 281
    :goto_1
    sget-wide v11, Lcom/geely/drivemem/state/TripSession;->startOdoKm:D

    cmpl-double v2, v0, v11

    if-ltz v2, :cond_8

    sget-wide v11, Lcom/geely/drivemem/state/TripSession;->startOdoKm:D

    cmpl-double v2, v11, v5

    if-ltz v2, :cond_8

    sget-wide v5, Lcom/geely/drivemem/state/TripSession;->startOdoKm:D

    sub-double v5, v0, v5

    .line 282
    :cond_8
    sget-wide v0, Lcom/geely/drivemem/state/TripSession;->drivingDurationMs:J

    invoke-static {v5, v6, v0, v1}, Lcom/geely/drivemem/state/TripSession;->isQualified(DJ)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 285
    sget-wide v1, Lcom/geely/drivemem/state/TripSession;->startSampleId:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_d

    if-eqz v7, :cond_d

    .line 287
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geely/drivemem/car/CarDb;->latestSampleId()J

    move-result-wide v11

    .line 288
    sget-wide v2, Lcom/geely/drivemem/state/TripSession;->startMs:J

    move-object v1, p0

    move-wide/from16 v4, p1

    move-object v6, v8

    invoke-static/range {v1 .. v6}, Lcom/geely/drivemem/state/TripSession;->classifyTripEnergySource(Landroid/content/Context;JJLcom/geely/drivemem/sensors/EnergyIntegrator$TripSnapshot;)Lcom/geely/drivemem/sensors/EnergySource;

    move-result-object v1

    .line 289
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 290
    sget-wide v3, Lcom/geely/drivemem/state/TripSession;->startMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "start_ms"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 291
    const-string v3, "end_ms"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 292
    sget-wide v3, Lcom/geely/drivemem/state/TripSession;->startSampleId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "start_sample_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 293
    const-string v3, "end_sample_id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 294
    sget-wide v3, Lcom/geely/drivemem/state/TripSession;->ascentM:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "ascent_m"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 295
    sget-wide v3, Lcom/geely/drivemem/state/TripSession;->descentM:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "descent_m"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 296
    iget-wide v3, v8, Lcom/geely/drivemem/sensors/EnergyIntegrator$TripSnapshot;->spentKwh:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "spent_kwh"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 297
    iget-wide v3, v8, Lcom/geely/drivemem/sensors/EnergyIntegrator$TripSnapshot;->regenKwh:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "regen_kwh"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 298
    iget-wide v3, v8, Lcom/geely/drivemem/sensors/EnergyIntegrator$TripSnapshot;->netKwh:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "net_kwh"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 299
    sget-object v3, Lcom/geely/drivemem/sensors/EnergySource;->ESTIMATED:Lcom/geely/drivemem/sensors/EnergySource;

    if-ne v1, v3, :cond_9

    const-string v3, "SOC_ESTIMATED"

    goto :goto_2

    .line 300
    :cond_9
    sget-object v3, Lcom/geely/drivemem/sensors/EnergySource;->MIXED:Lcom/geely/drivemem/sensors/EnergySource;

    if-ne v1, v3, :cond_a

    const-string v3, "MIXED"

    goto :goto_2

    :cond_a
    const-string v3, "OBD_MEASURED"

    .line 299
    :goto_2
    const-string v4, "energy_source"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-object v3, Lcom/geely/drivemem/sensors/EnergySource;->ESTIMATED:Lcom/geely/drivemem/sensors/EnergySource;

    if-ne v1, v3, :cond_b

    invoke-static {v9, v10}, Ljava/lang/Double;->isFinite(D)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 302
    const-string v1, "estimated_net_kwh"

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 304
    :cond_b
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object v1

    new-instance v3, Lcom/geely/drivemem/state/TripSession$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v2}, Lcom/geely/drivemem/state/TripSession$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Landroid/content/ContentValues;)V

    invoke-virtual {v1, v3}, Lcom/geely/drivemem/car/CarDb;->write(Ljava/lang/Runnable;)V

    .line 311
    const-string v1, "trip.completed"

    invoke-static {v2}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geely/drivemem/car/EntityBus;->publish(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V

    goto :goto_3

    .line 314
    :cond_c
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 316
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    sget-wide v3, Lcom/geely/drivemem/state/TripSession;->drivingDurationMs:J

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 314
    const-string v3, "Trip discarded (below 100m / 45s threshold): dist=%.3f km, driving=%.1fs"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DriveMem"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_3
    if-eqz v7, :cond_e

    .line 319
    invoke-static {p0}, Lcom/geely/drivemem/state/TripSession;->clearOpenTrip(Landroid/content/Context;)V

    .line 320
    :cond_e
    invoke-static {}, Lcom/geely/drivemem/state/TripSession;->resetTripState()V

    return v0
.end method

.method public static getActiveTripAscentM()D
    .locals 2

    .line 545
    sget-wide v0, Lcom/geely/drivemem/state/TripSession;->ascentM:D

    return-wide v0
.end method

.method public static getActiveTripDescentM()D
    .locals 2

    .line 546
    sget-wide v0, Lcom/geely/drivemem/state/TripSession;->descentM:D

    return-wide v0
.end method

.method public static getActiveTripStartMs()J
    .locals 2

    .line 543
    sget-wide v0, Lcom/geely/drivemem/state/TripSession;->startMs:J

    return-wide v0
.end method

.method public static getActiveTripStartOdoKm()D
    .locals 2

    .line 547
    sget-wide v0, Lcom/geely/drivemem/state/TripSession;->startOdoKm:D

    return-wide v0
.end method

.method public static getActiveTripStartSampleId()J
    .locals 2

    .line 544
    sget-wide v0, Lcom/geely/drivemem/state/TripSession;->startSampleId:J

    return-wide v0
.end method

.method public static getActiveTripStartSoc()I
    .locals 1

    .line 548
    sget v0, Lcom/geely/drivemem/state/TripSession;->startSoc:I

    return v0
.end method

.method public static getDrivingDurationMs()J
    .locals 8

    .line 551
    sget-wide v0, Lcom/geely/drivemem/state/TripSession;->drivingDurationMs:J

    .line 552
    sget-boolean v2, Lcom/geely/drivemem/state/TripSession;->wasParked:Z

    if-nez v2, :cond_0

    sget-wide v2, Lcom/geely/drivemem/state/TripSession;->currentDriveSegmentStartMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v6, Lcom/geely/drivemem/state/TripSession;->currentDriveSegmentStartMs:J

    sub-long/2addr v2, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public static getDrivingDurationMs(J)J
    .locals 6

    .line 559
    sget-wide v0, Lcom/geely/drivemem/state/TripSession;->drivingDurationMs:J

    .line 560
    sget-boolean v2, Lcom/geely/drivemem/state/TripSession;->wasParked:Z

    if-nez v2, :cond_0

    sget-wide v2, Lcom/geely/drivemem/state/TripSession;->currentDriveSegmentStartMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 561
    sget-wide v2, Lcom/geely/drivemem/state/TripSession;->currentDriveSegmentStartMs:J

    sub-long/2addr p0, v2

    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    add-long/2addr v0, p0

    :cond_0
    return-wide v0
.end method

.method public static isParkGraceScheduled()Z
    .locals 1

    .line 566
    sget-object v0, Lcom/geely/drivemem/state/TripSession;->parkGraceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isQualified(DJ)Z
    .locals 2

    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpl-double p0, p0, v0

    if-gez p0, :cond_1

    const-wide/32 p0, 0xafc8

    cmp-long p0, p2, p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isTripActive()Z
    .locals 1

    .line 542
    sget-boolean v0, Lcom/geely/drivemem/state/TripSession;->tripActive:Z

    return v0
.end method

.method static synthetic lambda$ensureSubscribed$0(Landroid/content/Context;Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V
    .locals 1

    .line 61
    iget-object p1, p2, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v0, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne p1, v0, :cond_0

    iget-object p1, p2, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p2, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/geely/drivemem/state/TripSession;->onGear(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$ensureSubscribed$1(Landroid/content/Context;Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V
    .locals 1

    .line 66
    iget-object p1, p2, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v0, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne p1, v0, :cond_0

    .line 68
    iget-object p1, p2, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    .line 69
    invoke-static {p0, p1}, Lcom/geely/drivemem/state/TripSession;->onTelemetryTick(Landroid/content/Context;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$finalizeTrip$3(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2

    .line 306
    :try_start_0
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "trip"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "triplog: "

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

.method static synthetic lambda$onGear$2(Landroid/content/Context;)V
    .locals 0

    .line 139
    invoke-static {p0}, Lcom/geely/drivemem/state/TripSession;->finalizeTrip(Landroid/content/Context;)Z

    return-void
.end method

.method public static onGear(Landroid/content/Context;I)V
    .locals 2

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/geely/drivemem/state/TripSession;->onGear(Landroid/content/Context;IJ)V

    return-void
.end method

.method public static onGear(Landroid/content/Context;IJ)V
    .locals 4

    .line 101
    invoke-static {}, Lcom/geely/drivemem/car/CarActor;->assertCarThread()V

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 103
    :goto_0
    sget-boolean v0, Lcom/geely/drivemem/state/TripSession;->wasParked:Z

    if-ne p1, v0, :cond_1

    return-void

    .line 113
    :cond_1
    sput-boolean p1, Lcom/geely/drivemem/state/TripSession;->wasParked:Z

    if-nez p1, :cond_5

    .line 116
    invoke-static {v2}, Lcom/geely/drivemem/state/CarState;->reportParked(Z)V

    .line 118
    sget-object p1, Lcom/geely/drivemem/state/TripSession;->parkGraceRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    if-eqz p0, :cond_2

    .line 120
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object p1

    sget-object v0, Lcom/geely/drivemem/state/TripSession;->parkGraceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/geely/drivemem/car/CarActor;->cancelOnCarThread(Ljava/lang/Runnable;)V

    :cond_2
    const/4 p1, 0x0

    .line 122
    sput-object p1, Lcom/geely/drivemem/state/TripSession;->parkGraceRunnable:Ljava/lang/Runnable;

    .line 125
    :cond_3
    sget-boolean p1, Lcom/geely/drivemem/state/TripSession;->tripActive:Z

    if-eqz p1, :cond_4

    .line 126
    sput-wide p2, Lcom/geely/drivemem/state/TripSession;->currentDriveSegmentStartMs:J

    goto :goto_1

    .line 128
    :cond_4
    invoke-static {p0, p2, p3}, Lcom/geely/drivemem/state/TripSession;->startNewTrip(Landroid/content/Context;J)V

    goto :goto_1

    .line 131
    :cond_5
    invoke-static {v1}, Lcom/geely/drivemem/state/CarState;->reportParked(Z)V

    .line 133
    sget-boolean p1, Lcom/geely/drivemem/state/TripSession;->tripActive:Z

    if-eqz p1, :cond_7

    .line 134
    sget-wide v0, Lcom/geely/drivemem/state/TripSession;->drivingDurationMs:J

    sget-wide v2, Lcom/geely/drivemem/state/TripSession;->currentDriveSegmentStartMs:J

    sub-long/2addr p2, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    add-long/2addr v0, p1

    sput-wide v0, Lcom/geely/drivemem/state/TripSession;->drivingDurationMs:J

    .line 135
    sput-wide v2, Lcom/geely/drivemem/state/TripSession;->currentDriveSegmentStartMs:J

    .line 136
    sget-object p1, Lcom/geely/drivemem/state/TripSession;->parkGraceRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_6

    if-eqz p0, :cond_6

    .line 137
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object p1

    sget-object p2, Lcom/geely/drivemem/state/TripSession;->parkGraceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/geely/drivemem/car/CarActor;->cancelOnCarThread(Ljava/lang/Runnable;)V

    .line 139
    :cond_6
    new-instance p1, Lcom/geely/drivemem/state/TripSession$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/geely/drivemem/state/TripSession$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/geely/drivemem/state/TripSession;->parkGraceRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_7

    .line 141
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object p0

    sget-object p1, Lcom/geely/drivemem/state/TripSession;->parkGraceRunnable:Ljava/lang/Runnable;

    const-wide/32 p2, 0x124f8

    invoke-virtual {p0, p1, p2, p3}, Lcom/geely/drivemem/car/CarActor;->runOnCarThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_7
    :goto_1
    return-void
.end method

.method private static onTelemetryTick(Landroid/content/Context;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 194
    invoke-static {}, Lcom/geely/drivemem/car/CarActor;->assertCarThread()V

    .line 195
    sget-boolean v0, Lcom/geely/drivemem/state/TripSession;->tripActive:Z

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    sget-wide v0, Lcom/geely/drivemem/state/TripSession;->startOdoKm:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    const-string v0, "odometer"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 198
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 199
    instance-of v3, v0, Ljava/lang/Number;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    sput-wide v3, Lcom/geely/drivemem/state/TripSession;->startOdoKm:D

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 201
    :goto_0
    sget v3, Lcom/geely/drivemem/state/TripSession;->startSoc:I

    if-gez v3, :cond_2

    const-string v3, "battery"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 202
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 203
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/geely/drivemem/state/TripSession;->startSoc:I

    move v0, v2

    .line 205
    :cond_2
    const-string v3, "battery_raw_pct"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 206
    const-string v4, "is_charging"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_3

    move v1, v2

    .line 207
    :cond_3
    sget-boolean p1, Lcom/geely/drivemem/state/TripSession;->wasParked:Z

    if-nez p1, :cond_4

    if-nez v1, :cond_4

    instance-of p1, v3, Ljava/lang/Number;

    if-eqz p1, :cond_4

    .line 208
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    sput-wide v1, Lcom/geely/drivemem/state/TripSession;->currentSocRaw:D

    .line 209
    sget-wide v1, Lcom/geely/drivemem/state/TripSession;->startSocRaw:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isFinite(D)Z

    move-result p1

    if-nez p1, :cond_4

    sget-wide v1, Lcom/geely/drivemem/state/TripSession;->currentSocRaw:D

    sput-wide v1, Lcom/geely/drivemem/state/TripSession;->startSocRaw:D

    :cond_4
    if-eqz v0, :cond_5

    if-eqz p0, :cond_5

    .line 214
    invoke-static {p0}, Lcom/geely/drivemem/state/TripSession;->persistOpenTrip(Landroid/content/Context;)V

    .line 215
    :cond_5
    sget-boolean p1, Lcom/geely/drivemem/state/TripSession;->wasParked:Z

    if-eqz p1, :cond_6

    return-void

    .line 216
    :cond_6
    invoke-static {p0}, Lcom/geely/drivemem/sensors/GpsReader;->read(Landroid/content/Context;)[D

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    const/4 p1, 0x2

    .line 218
    aget-wide p0, p0, p1

    .line 219
    sget-object v0, Lcom/geely/drivemem/state/TripSession;->lastAltitude:Ljava/lang/Double;

    if-eqz v0, :cond_a

    .line 220
    sget-object v0, Lcom/geely/drivemem/state/TripSession;->lastAltitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sub-double v0, p0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_8

    .line 221
    sget-wide v2, Lcom/geely/drivemem/state/TripSession;->ascentM:D

    add-double/2addr v2, v0

    sput-wide v2, Lcom/geely/drivemem/state/TripSession;->ascentM:D

    goto :goto_1

    :cond_8
    const-wide/high16 v2, -0x3ff8000000000000L    # -3.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_9

    .line 222
    sget-wide v2, Lcom/geely/drivemem/state/TripSession;->descentM:D

    neg-double v0, v0

    add-double/2addr v2, v0

    sput-wide v2, Lcom/geely/drivemem/state/TripSession;->descentM:D

    goto :goto_1

    :cond_9
    return-void

    .line 225
    :cond_a
    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    sput-object p0, Lcom/geely/drivemem/state/TripSession;->lastAltitude:Ljava/lang/Double;

    return-void
.end method

.method private static persistOpenTrip(Landroid/content/Context;)V
    .locals 3

    .line 327
    const-string v0, "drivemem"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "trip_open_start_ms"

    sget-wide v1, Lcom/geely/drivemem/state/TripSession;->startMs:J

    .line 328
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "trip_open_start_sample_id"

    sget-wide v1, Lcom/geely/drivemem/state/TripSession;->startSampleId:J

    .line 329
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-wide v0, Lcom/geely/drivemem/state/TripSession;->startOdoKm:D

    double-to-float v0, v0

    .line 330
    const-string v1, "trip_open_start_odo_km"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "trip_open_start_soc"

    sget v1, Lcom/geely/drivemem/state/TripSession;->startSoc:I

    .line 331
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 332
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static readGearAndAltitude(Landroid/content/Context;JJ)[[Ljava/lang/Object;
    .locals 3

    .line 412
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 414
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    .line 412
    const-string p1, "SELECT gear, altitude_m FROM telemetry_sample WHERE id BETWEEN ? AND ? ORDER BY id"

    invoke-virtual {p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 416
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    new-array p4, v0, [I

    aput v0, p4, p3

    aput p1, p4, p2

    const-class p1, Ljava/lang/Object;

    invoke-static {p1, p4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/Object;

    move p4, p2

    .line 418
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    aget-object v0, p1, p4

    invoke-interface {p0, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_1

    :cond_0
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    aput-object v1, v0, p2

    .line 420
    aget-object v0, p1, p4

    invoke-interface {p0, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_2
    aput-object v2, v0, p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 424
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method private static recoverOpenTrip(Landroid/content/Context;)V
    .locals 2

    .line 360
    :try_start_0
    invoke-static {p0}, Lcom/geely/drivemem/state/TripSession;->recoverOpenTripUnsafe(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trip recovery: failed, continuing without it: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DriveMem"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static recoverOpenTripUnsafe(Landroid/content/Context;)V
    .locals 13

    .line 367
    const-string v0, "drivemem"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 368
    const-string v2, "trip_open_start_ms"

    const-wide/16 v3, -0x1

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-gez v2, :cond_0

    return-void

    .line 371
    :cond_0
    const-string v2, "trip_open_start_sample_id"

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 372
    const-string v4, "trip_open_start_odo_km"

    const/high16 v9, -0x40800000    # -1.0f

    invoke-interface {v0, v4, v9}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    float-to-double v9, v4

    .line 373
    const-string v4, "trip_open_start_soc"

    const/4 v11, -0x1

    invoke-interface {v0, v4, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    .line 375
    sput-boolean v4, Lcom/geely/drivemem/state/TripSession;->tripActive:Z

    .line 383
    sput-boolean v1, Lcom/geely/drivemem/state/TripSession;->wasParked:Z

    .line 384
    invoke-static {v1}, Lcom/geely/drivemem/state/CarState;->reportParked(Z)V

    .line 385
    sput-wide v5, Lcom/geely/drivemem/state/TripSession;->startMs:J

    .line 386
    sput-wide v2, Lcom/geely/drivemem/state/TripSession;->startSampleId:J

    .line 387
    sput-wide v9, Lcom/geely/drivemem/state/TripSession;->startOdoKm:D

    .line 388
    sput v0, Lcom/geely/drivemem/state/TripSession;->startSoc:I

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sput-wide v9, Lcom/geely/drivemem/state/TripSession;->currentDriveSegmentStartMs:J

    .line 390
    sput-wide v7, Lcom/geely/drivemem/state/TripSession;->drivingDurationMs:J

    const/4 v0, 0x0

    .line 391
    sput-object v0, Lcom/geely/drivemem/state/TripSession;->lastAltitude:Ljava/lang/Double;

    const-wide/16 v9, 0x0

    .line 392
    sput-wide v9, Lcom/geely/drivemem/state/TripSession;->ascentM:D

    .line 393
    sput-wide v9, Lcom/geely/drivemem/state/TripSession;->descentM:D

    .line 395
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/drivemem/car/CarDb;->latestSampleId()J

    move-result-wide v9

    cmp-long v0, v2, v7

    if-ltz v0, :cond_1

    cmp-long v0, v9, v2

    if-ltz v0, :cond_1

    .line 397
    invoke-static {p0, v2, v3, v9, v10}, Lcom/geely/drivemem/state/TripSession;->readGearAndAltitude(Landroid/content/Context;JJ)[[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/drivemem/state/TripSession;->replayAscentDescent([[Ljava/lang/Object;)[D

    move-result-object v0

    .line 398
    aget-wide v2, v0, v1

    sput-wide v2, Lcom/geely/drivemem/state/TripSession;->ascentM:D

    .line 399
    aget-wide v2, v0, v4

    sput-wide v2, Lcom/geely/drivemem/state/TripSession;->descentM:D

    .line 402
    :cond_1
    invoke-static {}, Lcom/geely/drivemem/sensors/EnergyIntegrator;->startTrip()V

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v5, v6, v2, v3}, Lcom/geely/drivemem/state/TripSession;->sumEnergySince(Landroid/content/Context;JJ)[D

    move-result-object p0

    .line 404
    aget-wide v7, p0, v1

    aget-wide v9, p0, v4

    const/4 v0, 0x2

    aget-wide v11, p0, v0

    invoke-static/range {v7 .. v12}, Lcom/geely/drivemem/sensors/EnergyIntegrator;->seedTrip(DDD)V

    .line 406
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 408
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-wide v1, Lcom/geely/drivemem/state/TripSession;->ascentM:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    sget-wide v2, Lcom/geely/drivemem/state/TripSession;->descentM:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 406
    const-string v1, "trip recovery: restored open trip from %d (ascent=%.1fm descent=%.1fm)"

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DriveMem"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static replayAscentDescent([[Ljava/lang/Object;)[D
    .locals 13

    .line 434
    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-wide v5, v1

    move v7, v4

    :goto_0
    const/4 v8, 0x1

    if-ge v7, v0, :cond_5

    aget-object v9, p0, v7

    .line 435
    aget-object v10, v9, v4

    check-cast v10, Ljava/lang/Integer;

    .line 436
    aget-object v8, v9, v8

    check-cast v8, Ljava/lang/Double;

    if-eqz v10, :cond_4

    .line 437
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    goto :goto_2

    :cond_0
    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_3

    .line 440
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    sub-double/2addr v9, v11

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    cmpl-double v11, v9, v11

    if-lez v11, :cond_2

    add-double/2addr v1, v9

    goto :goto_1

    :cond_2
    const-wide/high16 v11, -0x3ff8000000000000L    # -3.0

    cmpg-double v11, v9, v11

    if-gez v11, :cond_4

    neg-double v9, v9

    add-double/2addr v5, v9

    :cond_3
    :goto_1
    move-object v3, v8

    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x2

    .line 447
    new-array p0, p0, [D

    aput-wide v1, p0, v4

    aput-wide v5, p0, v8

    return-object p0
.end method

.method public static resetForTesting()V
    .locals 1

    .line 589
    invoke-static {}, Lcom/geely/drivemem/state/TripSession;->resetTripState()V

    const/4 v0, 0x1

    .line 590
    sput-boolean v0, Lcom/geely/drivemem/state/TripSession;->wasParked:Z

    .line 591
    invoke-static {v0}, Lcom/geely/drivemem/state/CarState;->setParkedForTesting(Z)V

    const/4 v0, 0x0

    .line 592
    sput-object v0, Lcom/geely/drivemem/state/TripSession;->testCurrentOdoKm:Ljava/lang/Double;

    .line 593
    invoke-static {}, Lcom/geely/drivemem/sensors/EnergyIntegrator;->resetForTesting()V

    return-void
.end method

.method private static resetTripState()V
    .locals 5

    const/4 v0, 0x0

    .line 510
    sput-boolean v0, Lcom/geely/drivemem/state/TripSession;->tripActive:Z

    const/4 v0, 0x0

    .line 511
    sput-object v0, Lcom/geely/drivemem/state/TripSession;->parkGraceRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    .line 512
    sput-wide v1, Lcom/geely/drivemem/state/TripSession;->startMs:J

    const-wide/16 v3, -0x1

    .line 513
    sput-wide v3, Lcom/geely/drivemem/state/TripSession;->startSampleId:J

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 514
    sput-wide v3, Lcom/geely/drivemem/state/TripSession;->startOdoKm:D

    const/4 v3, -0x1

    .line 515
    sput v3, Lcom/geely/drivemem/state/TripSession;->startSoc:I

    .line 516
    sput-wide v1, Lcom/geely/drivemem/state/TripSession;->currentDriveSegmentStartMs:J

    .line 517
    sput-wide v1, Lcom/geely/drivemem/state/TripSession;->drivingDurationMs:J

    .line 518
    sput-object v0, Lcom/geely/drivemem/state/TripSession;->lastAltitude:Ljava/lang/Double;

    const-wide/16 v0, 0x0

    .line 519
    sput-wide v0, Lcom/geely/drivemem/state/TripSession;->ascentM:D

    .line 520
    sput-wide v0, Lcom/geely/drivemem/state/TripSession;->descentM:D

    return-void
.end method

.method public static setSocEstimateForTesting(DD)V
    .locals 1

    const/4 v0, 0x1

    .line 583
    sput-boolean v0, Lcom/geely/drivemem/state/TripSession;->tripActive:Z

    .line 584
    sput-wide p0, Lcom/geely/drivemem/state/TripSession;->startSocRaw:D

    .line 585
    sput-wide p2, Lcom/geely/drivemem/state/TripSession;->currentSocRaw:D

    return-void
.end method

.method public static setTestCurrentOdoKm(Ljava/lang/Double;)V
    .locals 0

    .line 578
    sput-object p0, Lcom/geely/drivemem/state/TripSession;->testCurrentOdoKm:Ljava/lang/Double;

    return-void
.end method

.method public static setTripStateForTesting(ZJDJJ)V
    .locals 0

    .line 570
    sput-boolean p0, Lcom/geely/drivemem/state/TripSession;->tripActive:Z

    .line 571
    sput-wide p1, Lcom/geely/drivemem/state/TripSession;->startMs:J

    .line 572
    sput-wide p3, Lcom/geely/drivemem/state/TripSession;->startOdoKm:D

    .line 573
    sput-wide p5, Lcom/geely/drivemem/state/TripSession;->drivingDurationMs:J

    .line 574
    sput-wide p7, Lcom/geely/drivemem/state/TripSession;->startSampleId:J

    return-void
.end method

.method public static declared-synchronized splitTrip(Landroid/content/Context;J)Z
    .locals 3

    const-class v0, Lcom/geely/drivemem/state/TripSession;

    monitor-enter v0

    .line 185
    :try_start_0
    invoke-static {}, Lcom/geely/drivemem/car/CarActor;->assertCarThread()V

    .line 186
    sget-boolean v1, Lcom/geely/drivemem/state/TripSession;->tripActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 187
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/geely/drivemem/state/TripSession;->wasParked:Z

    .line 188
    invoke-static {p0, p1, p2}, Lcom/geely/drivemem/state/TripSession;->finalizeTrip(Landroid/content/Context;J)Z

    move-result v2

    if-nez v1, :cond_1

    .line 189
    invoke-static {p0, p1, p2}, Lcom/geely/drivemem/state/TripSession;->startNewTrip(Landroid/content/Context;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static startNewTrip(Landroid/content/Context;J)V
    .locals 5

    const/4 v0, 0x1

    .line 148
    sput-boolean v0, Lcom/geely/drivemem/state/TripSession;->tripActive:Z

    .line 149
    sput-wide p1, Lcom/geely/drivemem/state/TripSession;->startMs:J

    .line 150
    sput-wide p1, Lcom/geely/drivemem/state/TripSession;->currentDriveSegmentStartMs:J

    const-wide/16 p1, 0x0

    .line 151
    sput-wide p1, Lcom/geely/drivemem/state/TripSession;->drivingDurationMs:J

    if-eqz p0, :cond_0

    .line 152
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geely/drivemem/car/CarDb;->latestSampleId()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    :goto_0
    sput-wide p1, Lcom/geely/drivemem/state/TripSession;->startSampleId:J

    const/4 p1, 0x0

    .line 153
    sput-object p1, Lcom/geely/drivemem/state/TripSession;->lastAltitude:Ljava/lang/Double;

    const-wide/16 v0, 0x0

    .line 154
    sput-wide v0, Lcom/geely/drivemem/state/TripSession;->ascentM:D

    .line 155
    sput-wide v0, Lcom/geely/drivemem/state/TripSession;->descentM:D

    const/4 p2, -0x1

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    if-eqz p0, :cond_3

    .line 157
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object v2

    const-string v3, "telemetry.odometer"

    invoke-virtual {v2, v3}, Lcom/geely/drivemem/car/CarActor;->get(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 158
    iget-object v3, v2, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v4, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne v3, v4, :cond_1

    iget-object v3, v2, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_1

    .line 159
    iget-object v0, v2, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :cond_1
    sput-wide v0, Lcom/geely/drivemem/state/TripSession;->startOdoKm:D

    .line 160
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object v0

    const-string v1, "telemetry.battery"

    invoke-virtual {v0, v1}, Lcom/geely/drivemem/car/CarActor;->get(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 161
    iget-object v1, v0, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v2, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 162
    iget-object p2, v0, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_2
    sput p2, Lcom/geely/drivemem/state/TripSession;->startSoc:I

    goto :goto_1

    .line 164
    :cond_3
    sput-wide v0, Lcom/geely/drivemem/state/TripSession;->startOdoKm:D

    .line 165
    sput p2, Lcom/geely/drivemem/state/TripSession;->startSoc:I

    :goto_1
    if-eqz p0, :cond_4

    .line 167
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object p1

    const-string p2, "telemetry.battery_raw_pct"

    invoke-virtual {p1, p2}, Lcom/geely/drivemem/car/CarActor;->get(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p1

    :cond_4
    if-eqz p1, :cond_5

    .line 168
    iget-object p2, p1, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v0, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne p2, v0, :cond_5

    iget-object p2, p1, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    instance-of p2, p2, Ljava/lang/Number;

    if-eqz p2, :cond_5

    .line 169
    iget-object p1, p1, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    goto :goto_2

    :cond_5
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    :goto_2
    sput-wide p1, Lcom/geely/drivemem/state/TripSession;->startSocRaw:D

    .line 170
    sget-wide p1, Lcom/geely/drivemem/state/TripSession;->startSocRaw:D

    sput-wide p1, Lcom/geely/drivemem/state/TripSession;->currentSocRaw:D

    .line 171
    invoke-static {}, Lcom/geely/drivemem/sensors/EnergyIntegrator;->startTrip()V

    if-eqz p0, :cond_6

    .line 172
    invoke-static {p0}, Lcom/geely/drivemem/state/TripSession;->persistOpenTrip(Landroid/content/Context;)V

    :cond_6
    return-void
.end method

.method private static sumEnergySince(Landroid/content/Context;JJ)[D
    .locals 7

    .line 455
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 460
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    .line 455
    const-string p1, "SELECT COALESCE(SUM(energy_spent_kwh),0), COALESCE(SUM(energy_regen_kwh),0), COALESCE(SUM(energy_net_kwh),0) FROM telemetry_sample WHERE ts_ms BETWEEN ? AND ? AND (CASE WHEN gear IS NOT NULL THEN gear <> 4      ELSE (is_charging IS NULL OR is_charging = 0) END)"

    invoke-virtual {p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 462
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    const/4 p4, 0x3

    if-eqz p1, :cond_0

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-interface {p0, p3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    new-array p1, p4, [D

    aput-wide v1, p1, p2

    aput-wide v3, p1, p3

    aput-wide v5, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 464
    new-array p0, p4, [D

    fill-array-data p0, :array_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 463
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static weekSummary(Landroid/content/Context;)Lcom/geely/drivemem/state/TripSession$WeekSummary;
    .locals 4

    .line 532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    sub-long/2addr v0, v2

    .line 533
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 535
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v3, v1

    .line 533
    const-string v0, "SELECT COUNT(*), COALESCE(SUM(end_ms - start_ms), 0) FROM trip WHERE start_ms >= ? AND end_ms IS NOT NULL"

    invoke-virtual {p0, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 537
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 538
    new-instance v0, Lcom/geely/drivemem/state/TripSession$WeekSummary;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/geely/drivemem/state/TripSession$WeekSummary;-><init>(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
.end method
