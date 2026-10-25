.class public final Lcom/geely/drivemem/car/CarDb;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CarDb.java"


# static fields
.field static final CLEAR_BOGUS_BATTERY_TEMP_SQL:[Ljava/lang/String;

.field private static final DAY_ODO_SQL:Ljava/lang/String; = "(SELECT odo_km FROM telemetry_sample WHERE odo_km > 0  AND date(ts_ms/1000,\'unixepoch\',\'localtime\') = daily_stat.date ORDER BY id %s LIMIT 1)"

.field public static final DRIVING_ROW_SQL:Ljava/lang/String; = "(CASE WHEN gear IS NOT NULL THEN gear <> 4      ELSE (is_charging IS NULL OR is_charging = 0) END)"

.field public static final ESTIMATED_ENERGY_ROW_SQL:Ljava/lang/String; = "((energy_measured = 0 AND battery_temp_c IS NULL) AND (IFNULL(energy_spent_kwh,0) != 0 OR IFNULL(energy_regen_kwh,0) != 0))"

.field public static final ESTIMATED_ROW_SQL:Ljava/lang/String; = "(energy_measured = 0 AND battery_temp_c IS NULL)"

.field public static final MEASURED_ROW_SQL:Ljava/lang/String; = "(energy_measured = 1 OR battery_temp_c IS NOT NULL)"

.field private static final NAME:Ljava/lang/String; = "car.db"

.field static final REPAIR_ZERO_ODO_SQL:[Ljava/lang/String;

.field static final RESUM_DAY_CHARGES_SQL:Ljava/lang/String; = "UPDATE daily_stat SET  charge_kwh = (SELECT COALESCE(SUM(kwh), 0) FROM charge_session   WHERE date(start_ms/1000,\'unixepoch\',\'localtime\') = daily_stat.date), charge_cost = (SELECT COALESCE(SUM(cost), 0) FROM charge_session   WHERE date(start_ms/1000,\'unixepoch\',\'localtime\') = daily_stat.date) WHERE date = (SELECT date(start_ms/1000,\'unixepoch\',\'localtime\') FROM charge_session WHERE id = ?)"

.field private static final VERSION:I = 0x19

.field private static volatile instance:Lcom/geely/drivemem/car/CarDb;


# instance fields
.field private io:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    .line 512
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "UPDATE telemetry_sample SET energy_measured = 1 WHERE battery_temp_c IS NOT NULL"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "UPDATE telemetry_sample SET battery_temp_c = NULL WHERE battery_temp_c IS NOT NULL"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/geely/drivemem/car/CarDb;->CLEAR_BOGUS_BATTERY_TEMP_SQL:[Ljava/lang/String;

    const/4 v1, 0x7

    .line 525
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "UPDATE telemetry_sample SET odo_km = NULL WHERE odo_km <= 0"

    aput-object v2, v1, v3

    const-string v2, "UPDATE charge_session SET odo_start_km = NULL WHERE odo_start_km <= 0"

    aput-object v2, v1, v4

    const-string v2, "UPDATE valet_session SET start_odo_km = NULL WHERE start_odo_km <= 0"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "UPDATE valet_session SET end_odo_km = NULL WHERE end_odo_km <= 0"

    aput-object v2, v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE daily_stat SET last_odo_km = COALESCE("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "DESC"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 530
    const-string v3, "(SELECT odo_km FROM telemetry_sample WHERE odo_km > 0  AND date(ts_ms/1000,\'unixepoch\',\'localtime\') = daily_stat.date ORDER BY id %s LIMIT 1)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", CASE WHEN first_odo_km > 0 THEN first_odo_km END, last_odo_km) WHERE last_odo_km <= 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE daily_stat SET first_odo_km = COALESCE("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ASC"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 532
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", (SELECT p.last_odo_km FROM daily_stat p WHERE p.date < daily_stat.date   AND p.last_odo_km > 0 AND p.last_odo_km <= daily_stat.last_odo_km ORDER BY p.date DESC LIMIT 1), last_odo_km) WHERE first_odo_km <= 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const/4 v0, 0x6

    const-string v2, "UPDATE daily_stat SET avg_speed_kmh = CASE WHEN driving_minutes > 0 THEN MAX(0, last_odo_km - first_odo_km) / (driving_minutes / 60.0) ELSE 0 END WHERE avg_speed_kmh > 300"

    aput-object v2, v1, v0

    sput-object v1, Lcom/geely/drivemem/car/CarDb;->REPAIR_ZERO_ODO_SQL:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x19

    .line 85
    const-string v2, "car.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private static clearBogusBatteryTemp(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 544
    sget-object v0, Lcom/geely/drivemem/car/CarDb;->CLEAR_BOGUS_BATTERY_TEMP_SQL:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static createChargeStopEvent(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 234
    const-string v0, "CREATE TABLE IF NOT EXISTS charge_stop_event (id INTEGER PRIMARY KEY AUTOINCREMENT, session_id INTEGER NOT NULL,occurred_ms INTEGER NOT NULL, soc INTEGER, kwh REAL, published INTEGER NOT NULL DEFAULT 0,UNIQUE(session_id, occurred_ms))"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static createDailyStat(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 198
    const-string v0, "CREATE TABLE IF NOT EXISTS daily_stat (date TEXT PRIMARY KEY,first_odo_km REAL NOT NULL, last_odo_km REAL NOT NULL,first_battery_pct INTEGER, last_battery_pct INTEGER,min_battery_pct INTEGER, max_battery_pct INTEGER,avg_speed_kmh REAL, max_speed_kmh REAL,min_temp_c REAL, avg_temp_c REAL, max_temp_c REAL,ascent_m REAL NOT NULL DEFAULT 0, descent_m REAL NOT NULL DEFAULT 0,trip_count INTEGER NOT NULL DEFAULT 0, driving_minutes REAL NOT NULL DEFAULT 0,charge_count INTEGER NOT NULL DEFAULT 0, charge_kwh REAL NOT NULL DEFAULT 0,charge_cost REAL NOT NULL DEFAULT 0,discharge_kwh REAL NOT NULL DEFAULT 0,regen_kwh REAL NOT NULL DEFAULT 0,net_kwh REAL NOT NULL DEFAULT 0,energy_source TEXT)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static createTripEnergySegment(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 217
    const-string v0, "CREATE TABLE IF NOT EXISTS trip_energy_segment (id INTEGER PRIMARY KEY AUTOINCREMENT, trip_id INTEGER,start_ms INTEGER NOT NULL, end_ms INTEGER NOT NULL,source TEXT NOT NULL, net_kwh REAL NOT NULL)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 221
    const-string v0, "CREATE INDEX IF NOT EXISTS idx_trip_energy_segment_trip ON trip_energy_segment(trip_id)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static createValetSession(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 225
    const-string v0, "CREATE TABLE IF NOT EXISTS valet_session (id INTEGER PRIMARY KEY AUTOINCREMENT,start_ms INTEGER NOT NULL, end_ms INTEGER,start_odo_km REAL, end_odo_km REAL,start_soc INTEGER, end_soc INTEGER,max_speed_kmh REAL, max_power_kw REAL)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static file(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .line 88
    const-string v0, "car.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;
    .locals 2

    .line 75
    sget-object v0, Lcom/geely/drivemem/car/CarDb;->instance:Lcom/geely/drivemem/car/CarDb;

    if-nez v0, :cond_1

    .line 77
    const-class v1, Lcom/geely/drivemem/car/CarDb;

    monitor-enter v1

    .line 78
    :try_start_0
    sget-object v0, Lcom/geely/drivemem/car/CarDb;->instance:Lcom/geely/drivemem/car/CarDb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/geely/drivemem/car/CarDb;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/geely/drivemem/car/CarDb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/geely/drivemem/car/CarDb;->instance:Lcom/geely/drivemem/car/CarDb;

    .line 79
    :cond_0
    sget-object v0, Lcom/geely/drivemem/car/CarDb;->instance:Lcom/geely/drivemem/car/CarDb;

    .line 80
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private declared-synchronized handler()Landroid/os/Handler;
    .locals 2

    monitor-enter p0

    .line 594
    :try_start_0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarDb;->io:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 595
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cardb"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 597
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/geely/drivemem/car/CarDb;->io:Landroid/os/Handler;

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarDb;->io:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isRowEstimated(Ljava/lang/Integer;Ljava/lang/Double;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRowMeasured(Ljava/lang/Integer;Ljava/lang/Double;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private static removeFrozenFullTail(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 461
    const-string v1, "SELECT id, start_sample_id, end_sample_id FROM charge_session WHERE soc_end >= 100 AND start_sample_id >= 0 AND end_sample_id > start_sample_id"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 463
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    new-array v3, v4, [J

    aput-wide v8, v3, v7

    aput-wide v10, v3, v5

    aput-wide v12, v3, v6

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 464
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 466
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 467
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 468
    new-array v8, v6, [Ljava/lang/String;

    aget-wide v9, v1, v5

    .line 470
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    aget-wide v9, v1, v6

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 468
    const-string v9, "SELECT ts_ms, charge_a, charge_v, battery_pct FROM telemetry_sample WHERE id BETWEEN ? AND ? ORDER BY id"

    invoke-virtual {p0, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 472
    :goto_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 473
    invoke-interface {v8, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v2

    goto :goto_3

    :cond_1
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    :goto_3
    invoke-interface {v8, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v11, v2

    goto :goto_4

    :cond_2
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 474
    :goto_4
    invoke-interface {v8, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v12, v2

    goto :goto_5

    :cond_3
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_5
    filled-new-array {v9, v10, v11, v12}, [Ljava/lang/Object;

    move-result-object v9

    .line 472
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 475
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 476
    new-array v8, v7, [[Ljava/lang/Object;

    invoke-interface {v3, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/Object;

    invoke-static {v3}, Lcom/geely/drivemem/state/ChargeSession;->frozenFullTailWh([[Ljava/lang/Object;)D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpg-double v3, v8, v10

    if-gez v3, :cond_5

    goto/16 :goto_1

    .line 482
    :cond_5
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aget-wide v12, v1, v7

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    filled-new-array {v3, v10, v11, v12}, [Ljava/lang/Object;

    move-result-object v3

    .line 478
    const-string v10, "UPDATE charge_session SET  avg_power_w = avg_power_w * MAX(0, kwh - ?) / kwh, cost = cost * MAX(0, kwh - ?) / kwh, kwh = MAX(0, kwh - ?) WHERE id = ? AND kwh > 0"

    invoke-virtual {p0, v10, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    aget-wide v10, v1, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v10, "UPDATE daily_stat SET  charge_kwh = (SELECT COALESCE(SUM(kwh), 0) FROM charge_session   WHERE date(start_ms/1000,\'unixepoch\',\'localtime\') = daily_stat.date), charge_cost = (SELECT COALESCE(SUM(cost), 0) FROM charge_session   WHERE date(start_ms/1000,\'unixepoch\',\'localtime\') = daily_stat.date) WHERE date = (SELECT date(start_ms/1000,\'unixepoch\',\'localtime\') FROM charge_session WHERE id = ?)"

    invoke-virtual {p0, v10, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    aget-wide v10, v1, v7

    .line 485
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    .line 484
    const-string v8, "v25: charge %d minus %.2f kWh counted after full"

    invoke-static {v3, v8, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "CarDb"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    .line 475
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_6
    return-void

    :catchall_1
    move-exception p0

    .line 464
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p0
.end method

.method private static repairEstimatedFlag(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 22

    move-object/from16 v0, p0

    .line 548
    const-string v1, "UPDATE telemetry_sample SET energy_measured = 1 WHERE energy_measured = 0 AND (energy_measured = 1 OR battery_temp_c IS NOT NULL)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 551
    const-string v1, "SELECT DISTINCT date(ts_ms/1000,\'unixepoch\',\'localtime\') FROM telemetry_sample WHERE date(ts_ms/1000,\'unixepoch\',\'localtime\') IN (SELECT date FROM daily_stat)"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 554
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 555
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 556
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 558
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 559
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Lcom/geely/drivemem/sensors/DrivingConsumption;

    invoke-direct {v7}, Lcom/geely/drivemem/sensors/DrivingConsumption;-><init>()V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 560
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const-string v6, "?"

    invoke-static {v4, v6}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v6, ","

    invoke-static {v6, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 561
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SELECT date(ts_ms/1000,\'unixepoch\',\'localtime\') AS day,        ts_ms, odo_km, speed_kmh, gear, is_charging,        energy_spent_kwh, energy_regen_kwh, instant_power_kw_est, energy_measured FROM telemetry_sample WHERE date(ts_ms/1000,\'unixepoch\',\'localtime\') IN ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") ORDER BY day ASC, ts_ms ASC, id ASC"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/String;

    .line 567
    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 561
    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 569
    :goto_2
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 570
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/geely/drivemem/sensors/DrivingConsumption;

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    .line 572
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v9, 0x2

    .line 573
    invoke-interface {v3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    const-wide/high16 v11, 0x7ff8000000000000L    # Double.NaN

    if-eqz v10, :cond_4

    move-wide v9, v11

    goto :goto_3

    :cond_4
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    :goto_3
    const/4 v13, 0x3

    .line 574
    invoke-interface {v3, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_5

    move-wide v13, v11

    goto :goto_4

    :cond_5
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v13

    :goto_4
    const/4 v15, 0x4

    .line 575
    invoke-interface {v3, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_6

    move-object v15, v2

    goto :goto_5

    :cond_6
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    :goto_5
    const/4 v2, 0x5

    .line 576
    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-nez v16, :cond_7

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    move v4, v5

    :goto_6
    const/4 v2, 0x6

    .line 577
    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_8

    move-wide/from16 v16, v11

    goto :goto_7

    :cond_8
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    :goto_7
    const/4 v2, 0x7

    .line 578
    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_9

    move-wide/from16 v18, v11

    goto :goto_8

    :cond_9
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    :goto_8
    const/16 v2, 0x8

    .line 579
    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_a

    goto :goto_9

    :cond_a
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v11

    :goto_9
    move-wide/from16 v20, v11

    const/16 v2, 0x9

    .line 580
    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v2, 0x0

    goto :goto_a

    :cond_b
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_a
    move-wide v11, v13

    move-object v13, v15

    move v14, v4

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move-object/from16 v21, v2

    .line 581
    invoke-virtual/range {v6 .. v21}, Lcom/geely/drivemem/sensors/DrivingConsumption;->add(JDDLjava/lang/Integer;ZDDDLjava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    goto/16 :goto_2

    .line 583
    :cond_c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 585
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 586
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/geely/drivemem/sensors/DrivingConsumption;

    invoke-virtual {v3}, Lcom/geely/drivemem/sensors/DrivingConsumption;->energySource()Lcom/geely/drivemem/sensors/EnergySource;

    move-result-object v3

    .line 588
    invoke-virtual {v3}, Lcom/geely/drivemem/sensors/EnergySource;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 587
    const-string v3, "UPDATE daily_stat SET energy_source = ? WHERE date = ?"

    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    :cond_d
    return-void

    :catchall_0
    move-exception v0

    .line 583
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_1
    move-exception v0

    .line 555
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public db()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 609
    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public latestSampleId()J
    .locals 3

    .line 617
    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT id FROM telemetry_sample ORDER BY id DESC LIMIT 1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 620
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    .line 621
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 91
    const-string v0, "CREATE TABLE telemetry_sample (id INTEGER PRIMARY KEY AUTOINCREMENT,ts_ms INTEGER NOT NULL,odo_km REAL,battery_pct INTEGER, battery_raw_pct REAL,speed_kmh REAL,gear INTEGER,is_charging INTEGER,charge_a REAL, charge_v REAL,park_mode INTEGER,outside_temp_c REAL,altitude_m REAL,instant_power_kw_est REAL,drive_energy_pct REAL,battery_energy_pct REAL,other_energy_pct REAL,power_spent_kw REAL,power_regen_kw REAL,energy_spent_kwh REAL,energy_regen_kwh REAL,energy_net_kwh REAL,battery_temp_c REAL,energy_measured INTEGER,energy_spent_est_kwh REAL, energy_regen_est_kwh REAL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    const-string v0, "CREATE INDEX idx_sample_ts ON telemetry_sample(ts_ms)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    const-string v0, "CREATE INDEX idx_sample_odo ON telemetry_sample(odo_km)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    const-string v0, "CREATE TABLE charge_session (id INTEGER PRIMARY KEY AUTOINCREMENT,start_ms INTEGER NOT NULL, end_ms INTEGER NOT NULL,start_sample_id INTEGER, end_sample_id INTEGER,soc_start INTEGER, soc_end INTEGER,kwh REAL, avg_power_w REAL,max_charge_v REAL,samples INTEGER,odo_start_km REAL,cost REAL,dismissed INTEGER NOT NULL DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    const-string v0, "CREATE TABLE park_session (id INTEGER PRIMARY KEY AUTOINCREMENT,start_ms INTEGER NOT NULL, end_ms INTEGER,start_sample_id INTEGER, end_sample_id INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    const-string v0, "CREATE TABLE trip (id INTEGER PRIMARY KEY AUTOINCREMENT,start_ms INTEGER NOT NULL, end_ms INTEGER,start_sample_id INTEGER, end_sample_id INTEGER,ascent_m REAL, descent_m REAL,regen_kwh REAL,spent_kwh REAL,net_kwh REAL,energy_source TEXT, estimated_net_kwh REAL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    invoke-static {p1}, Lcom/geely/drivemem/car/CarDb;->createTripEnergySegment(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 166
    const-string v0, "CREATE TABLE comfort_event (id INTEGER PRIMARY KEY AUTOINCREMENT,ts_ms INTEGER NOT NULL,event TEXT NOT NULL,pointer INTEGER, out_c REAL, setpoint REAL, fan INTEGER,ac INTEGER, recirc INTEGER, power INTEGER,detail TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    const-string v0, "CREATE TABLE battery_health_reading (id INTEGER PRIMARY KEY AUTOINCREMENT,ts_ms INTEGER NOT NULL,odo_km REAL,soh_pct REAL NOT NULL,source TEXT NOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    invoke-static {p1}, Lcom/geely/drivemem/car/CarDb;->createValetSession(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 182
    invoke-static {p1}, Lcom/geely/drivemem/car/CarDb;->createChargeStopEvent(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 184
    invoke-static {p1}, Lcom/geely/drivemem/car/CarDb;->createDailyStat(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const/4 p3, 0x4

    if-ge p2, p3, :cond_0

    .line 250
    const-string p2, "DROP TABLE IF EXISTS telemetry_sample"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 251
    const-string p2, "DROP TABLE IF EXISTS charge_session"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 252
    const-string p2, "DROP TABLE IF EXISTS daily_odometer"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 253
    const-string p2, "DROP TABLE IF EXISTS park_session"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 254
    const-string p2, "DROP TABLE IF EXISTS trip"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 255
    const-string p2, "DROP TABLE IF EXISTS comfort_event"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 256
    const-string p2, "DROP TABLE IF EXISTS battery_health_reading"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0, p1}, Lcom/geely/drivemem/car/CarDb;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :cond_0
    const/4 p3, 0x5

    if-ge p2, p3, :cond_1

    .line 265
    const-string p3, "CREATE TABLE IF NOT EXISTS daily_odo (date TEXT PRIMARY KEY,first_odo_km REAL NOT NULL, last_odo_km REAL NOT NULL)"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    const/4 p3, 0x6

    if-ge p2, p3, :cond_2

    .line 279
    const-string p3, "DROP TABLE IF EXISTS daily_odo"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 280
    invoke-static {p1}, Lcom/geely/drivemem/car/CarDb;->createDailyStat(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    const/4 p3, 0x7

    .line 289
    const-string v0, "DELETE FROM daily_stat"

    if-ge p2, p3, :cond_3

    .line 290
    const-string p3, "ALTER TABLE daily_stat ADD COLUMN discharge_kwh REAL NOT NULL DEFAULT 0"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3
    const/16 p3, 0x8

    if-ge p2, p3, :cond_4

    .line 298
    const-string p3, "ALTER TABLE telemetry_sample ADD COLUMN power_spent_kw REAL"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 299
    const-string p3, "ALTER TABLE telemetry_sample ADD COLUMN power_regen_kw REAL"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 300
    const-string p3, "ALTER TABLE telemetry_sample ADD COLUMN energy_spent_kwh REAL"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 301
    const-string p3, "ALTER TABLE telemetry_sample ADD COLUMN energy_regen_kwh REAL"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 302
    const-string p3, "ALTER TABLE telemetry_sample ADD COLUMN energy_net_kwh REAL"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 304
    const-string p3, "ALTER TABLE trip ADD COLUMN spent_kwh REAL"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 305
    const-string p3, "ALTER TABLE trip ADD COLUMN net_kwh REAL"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 307
    const-string p3, "ALTER TABLE daily_stat ADD COLUMN regen_kwh REAL NOT NULL DEFAULT 0"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 308
    const-string p3, "ALTER TABLE daily_stat ADD COLUMN net_kwh REAL NOT NULL DEFAULT 0"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    const/16 p3, 0x9

    if-ge p2, p3, :cond_5

    .line 314
    const-string p3, "ALTER TABLE charge_session ADD COLUMN cost REAL"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 315
    const-string p3, "ALTER TABLE charge_session ADD COLUMN dismissed INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 316
    const-string p3, "ALTER TABLE daily_stat ADD COLUMN charge_cost REAL NOT NULL DEFAULT 0"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5
    const/16 p3, 0xa

    if-ge p2, p3, :cond_6

    .line 324
    const-string p3, "DELETE FROM daily_stat WHERE date IN (SELECT DISTINCT date(ts_ms/1000,\'unixepoch\',\'localtime\') FROM telemetry_sample)"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_6
    const/16 p3, 0xb

    if-ge p2, p3, :cond_7

    .line 333
    const-string p3, "ALTER TABLE charge_session ADD COLUMN max_charge_v REAL"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 334
    const-string p3, "UPDATE charge_session SET max_charge_v = (SELECT MAX(charge_v) FROM telemetry_sample WHERE telemetry_sample.id BETWEEN charge_session.start_sample_id AND charge_session.end_sample_id) WHERE start_sample_id IS NOT NULL AND end_sample_id IS NOT NULL"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_7
    const/16 p3, 0xc

    if-ge p2, p3, :cond_8

    .line 342
    invoke-static {p1}, Lcom/geely/drivemem/car/CarDb;->createValetSession(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_8
    const/16 p3, 0xd

    if-ge p2, p3, :cond_9

    .line 346
    const-string p3, "ALTER TABLE valet_session RENAME TO valet_session_v12"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 347
    invoke-static {p1}, Lcom/geely/drivemem/car/CarDb;->createValetSession(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 348
    const-string p3, "INSERT INTO valet_session (id,start_ms,end_ms,start_odo_km,end_odo_km,start_soc,end_soc,max_speed_kmh,max_power_kw) SELECT id,start_ms,end_ms,start_odo_km,end_odo_km,start_soc,end_soc,max_speed_kmh,max_power_kw FROM valet_session_v12"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 351
    const-string p3, "DROP TABLE valet_session_v12"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_9
    const/16 p3, 0xe

    if-ge p2, p3, :cond_a

    .line 353
    invoke-static {p1}, Lcom/geely/drivemem/car/CarDb;->createChargeStopEvent(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_a
    const/16 p3, 0xf

    if-ge p2, p3, :cond_b

    .line 357
    const-string p3, "ALTER TABLE valet_session RENAME TO valet_session_v14"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 358
    invoke-static {p1}, Lcom/geely/drivemem/car/CarDb;->createValetSession(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 359
    const-string p3, "INSERT INTO valet_session (id,start_ms,end_ms,start_odo_km,end_odo_km,start_soc,end_soc,max_speed_kmh,max_power_kw) SELECT id,start_ms,end_ms,start_odo_km,end_odo_km,start_soc,end_soc,max_speed_kmh,max_power_kw FROM valet_session_v14"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 362
    const-string p3, "DROP TABLE valet_session_v14"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_b
    const/16 p3, 0x10

    if-ge p2, p3, :cond_c

    .line 368
    const-string p3, "ALTER TABLE telemetry_sample ADD COLUMN battery_temp_c REAL"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_c
    const/16 p3, 0x11

    if-ge p2, p3, :cond_d

    .line 380
    const-string p3, "ALTER TABLE valet_session RENAME TO valet_session_v16"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 381
    invoke-static {p1}, Lcom/geely/drivemem/car/CarDb;->createValetSession(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 382
    const-string p3, "INSERT INTO valet_session (id,start_ms,end_ms,start_odo_km,end_odo_km,start_soc,end_soc,max_speed_kmh,max_power_kw) SELECT id,start_ms,end_ms,start_odo_km,end_odo_km,start_soc,end_soc,max_speed_kmh,max_power_kw FROM valet_session_v16"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 385
    const-string p3, "DROP TABLE valet_session_v16"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_d
    const/16 p3, 0x12

    if-ge p2, p3, :cond_e

    .line 391
    const-string p3, "ALTER TABLE telemetry_sample ADD COLUMN battery_raw_pct REAL"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_e
    const/16 p3, 0x13

    if-ge p2, p3, :cond_f

    .line 394
    const-string p3, "ALTER TABLE trip ADD COLUMN energy_source TEXT"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 395
    const-string p3, "ALTER TABLE trip ADD COLUMN estimated_net_kwh REAL"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_f
    const/16 p3, 0x14

    if-ge p2, p3, :cond_10

    .line 397
    invoke-static {p1}, Lcom/geely/drivemem/car/CarDb;->createTripEnergySegment(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_10
    const/16 p3, 0x15

    if-ge p2, p3, :cond_11

    .line 421
    const-string p3, "ALTER TABLE telemetry_sample ADD COLUMN energy_measured INTEGER"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 422
    const-string p3, "ALTER TABLE telemetry_sample ADD COLUMN energy_spent_est_kwh REAL"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 423
    const-string p3, "ALTER TABLE telemetry_sample ADD COLUMN energy_regen_est_kwh REAL"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 424
    const-string p3, "ALTER TABLE daily_stat ADD COLUMN energy_source TEXT"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_11
    const/16 p3, 0x16

    if-ge p2, p3, :cond_12

    .line 430
    invoke-static {p1}, Lcom/geely/drivemem/car/CarDb;->repairEstimatedFlag(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_12
    const/16 p3, 0x17

    if-ge p2, p3, :cond_13

    .line 436
    invoke-static {p1}, Lcom/geely/drivemem/car/CarDb;->clearBogusBatteryTemp(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_13
    const/16 p3, 0x18

    if-ge p2, p3, :cond_14

    .line 440
    sget-object p3, Lcom/geely/drivemem/car/CarDb;->REPAIR_ZERO_ODO_SQL:[Ljava/lang/String;

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_14

    aget-object v2, p3, v1

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_14
    const/16 p3, 0x19

    if-ge p2, p3, :cond_15

    .line 444
    invoke-static {p1}, Lcom/geely/drivemem/car/CarDb;->removeFrozenFullTail(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_15
    return-void
.end method

.method public write(Ljava/lang/Runnable;)V
    .locals 1

    .line 605
    invoke-direct {p0}, Lcom/geely/drivemem/car/CarDb;->handler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
