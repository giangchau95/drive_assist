.class public final Lcom/geely/drivemem/sensors/TelemetryRollup;
.super Ljava/lang/Object;
.source "TelemetryRollup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/drivemem/sensors/TelemetryRollup$EnergyStats;
    }
.end annotation


# static fields
.field private static final DAY_FMT:Ljava/text/SimpleDateFormat;

.field private static final RETAIN_DAYS:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "DriveMem"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/geely/drivemem/sensors/TelemetryRollup;->DAY_FMT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dayBoundsMs(Ljava/lang/String;)[J
    .locals 7

    .line 48
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 51
    :try_start_0
    sget-object v1, Lcom/geely/drivemem/sensors/TelemetryRollup;->DAY_FMT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :catch_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/4 p0, 0x5

    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->add(II)V

    .line 54
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const/4 p0, 0x2

    new-array p0, p0, [J

    aput-wide v3, p0, v2

    aput-wide v5, p0, v1

    return-object p0
.end method

.method private static energyByDay(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/geely/drivemem/sensors/TelemetryRollup$EnergyStats;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 240
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 242
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 243
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/geely/drivemem/sensors/DrivingConsumption;

    invoke-direct {v4}, Lcom/geely/drivemem/sensors/DrivingConsumption;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    .line 254
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v5, 0x1

    aput-object p3, v3, v5

    const-string v6, "SELECT date(ts_ms/1000,\'unixepoch\',\'localtime\') AS day,        ts_ms, odo_km, speed_kmh, gear, is_charging,        energy_spent_kwh, energy_regen_kwh, instant_power_kw_est, energy_measured FROM telemetry_sample WHERE ts_ms >= ? AND ts_ms < ? ORDER BY day ASC, ts_ms ASC, id ASC"

    move-object/from16 v7, p0

    invoke-virtual {v7, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 262
    :goto_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 263
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 264
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/geely/drivemem/sensors/DrivingConsumption;

    if-nez v7, :cond_2

    goto :goto_1

    .line 266
    :cond_2
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 267
    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    if-eqz v6, :cond_3

    move-wide v12, v10

    goto :goto_2

    :cond_3
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    :goto_2
    const/4 v6, 0x3

    .line 268
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_4

    move-wide v14, v10

    goto :goto_3

    :cond_4
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    :goto_3
    const/4 v6, 0x4

    .line 269
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    const/16 v17, 0x0

    if-eqz v16, :cond_5

    move-object/from16 v6, v17

    goto :goto_4

    :cond_5
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_4
    const/4 v2, 0x5

    .line 270
    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-nez v16, :cond_6

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v5

    goto :goto_5

    :cond_6
    move v2, v4

    :goto_5
    const/4 v4, 0x6

    .line 271
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_7

    move-wide/from16 v18, v10

    goto :goto_6

    :cond_7
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    :goto_6
    const/4 v4, 0x7

    .line 272
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_8

    move-wide/from16 v20, v10

    goto :goto_7

    :cond_8
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v20

    :goto_7
    const/16 v4, 0x8

    .line 273
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_9

    goto :goto_8

    :cond_9
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    :goto_8
    move-wide/from16 v23, v10

    const/16 v4, 0x9

    .line 274
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_a

    move-object/from16 v22, v17

    goto :goto_9

    :cond_a
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v22, v4

    :goto_9
    move-wide v10, v12

    move-wide v12, v14

    move-object v14, v6

    move v15, v2

    move-wide/from16 v16, v18

    move-wide/from16 v18, v20

    move-wide/from16 v20, v23

    .line 275
    invoke-virtual/range {v7 .. v22}, Lcom/geely/drivemem/sensors/DrivingConsumption;->add(JDDLjava/lang/Integer;ZDDDLjava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    const/4 v4, 0x0

    goto/16 :goto_1

    .line 277
    :cond_b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 279
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 280
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/geely/drivemem/sensors/DrivingConsumption;

    iget-wide v5, v3, Lcom/geely/drivemem/sensors/DrivingConsumption;->totalSpent:D

    .line 281
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/geely/drivemem/sensors/DrivingConsumption;

    iget-wide v7, v3, Lcom/geely/drivemem/sensors/DrivingConsumption;->totalRegen:D

    .line 282
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v12, Lcom/geely/drivemem/sensors/TelemetryRollup$EnergyStats;

    sub-double v9, v5, v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/drivemem/sensors/DrivingConsumption;

    invoke-virtual {v2}, Lcom/geely/drivemem/sensors/DrivingConsumption;->energySource()Lcom/geely/drivemem/sensors/EnergySource;

    move-result-object v11

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/geely/drivemem/sensors/TelemetryRollup$EnergyStats;-><init>(DDDLcom/geely/drivemem/sensors/EnergySource;)V

    invoke-interface {v0, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_c
    return-object v0

    :catchall_0
    move-exception v0

    .line 277
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static freezeCompletedDays(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 27

    move-object/from16 v0, p0

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x1

    .line 90
    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v6, "SELECT grp.day, first.odo_km, last.odo_km, first.battery_pct, last.battery_pct FROM (SELECT date(ts_ms/1000,\'unixepoch\',\'localtime\') AS day,         MIN(id) AS first_id, MAX(id) AS last_id  FROM telemetry_sample WHERE odo_km > 0 GROUP BY day) grp JOIN telemetry_sample first ON first.id = grp.first_id JOIN telemetry_sample last ON last.id = grp.last_id WHERE grp.day < ? AND grp.day NOT IN (SELECT date FROM daily_stat)"

    invoke-virtual {v0, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 100
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz v6, :cond_2

    .line 101
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 102
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    .line 110
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    const-wide/high16 v15, 0x7ff8000000000000L    # Double.NaN

    if-eqz v14, :cond_0

    move-wide/from16 v17, v15

    goto :goto_1

    :cond_0
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v17

    .line 111
    :goto_1
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v15

    :goto_2
    new-array v7, v7, [D

    aput-wide v10, v7, v5

    aput-wide v12, v7, v3

    aput-wide v17, v7, v9

    aput-wide v15, v7, v8

    .line 108
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 113
    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 114
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    .line 124
    :cond_3
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 125
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 126
    invoke-virtual {v11, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-gez v12, :cond_5

    move-object v4, v11

    .line 127
    :cond_5
    invoke-virtual {v11, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_4

    move-object v6, v11

    goto :goto_3

    .line 129
    :cond_6
    invoke-static {v4}, Lcom/geely/drivemem/sensors/TelemetryRollup;->dayBoundsMs(Ljava/lang/String;)[J

    move-result-object v4

    aget-wide v10, v4, v5

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 130
    invoke-static {v6}, Lcom/geely/drivemem/sensors/TelemetryRollup;->dayBoundsMs(Ljava/lang/String;)[J

    move-result-object v6

    aget-wide v10, v6, v3

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 134
    new-array v10, v9, [Ljava/lang/String;

    aput-object v4, v10, v5

    aput-object v6, v10, v3

    const-string v11, "SELECT date(ts_ms/1000,\'unixepoch\',\'localtime\') AS day, MAX(speed_kmh) FROM telemetry_sample WHERE speed_kmh > 0 AND ts_ms >= ? AND ts_ms < ? GROUP BY day"

    invoke-static {v0, v11, v3, v10}, Lcom/geely/drivemem/sensors/TelemetryRollup;->groupedByDay(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 138
    new-array v11, v9, [Ljava/lang/String;

    aput-object v4, v11, v5

    aput-object v6, v11, v3

    const-string v12, "SELECT date(ts_ms/1000,\'unixepoch\',\'localtime\') AS day, MIN(outside_temp_c), AVG(outside_temp_c), MAX(outside_temp_c) FROM telemetry_sample WHERE outside_temp_c IS NOT NULL AND ts_ms >= ? AND ts_ms < ? GROUP BY day"

    invoke-static {v0, v12, v8, v11}, Lcom/geely/drivemem/sensors/TelemetryRollup;->groupedByDay(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    .line 143
    new-array v12, v9, [Ljava/lang/String;

    aput-object v4, v12, v5

    aput-object v6, v12, v3

    const-string v13, "SELECT date(ts_ms/1000,\'unixepoch\',\'localtime\') AS day, MIN(battery_pct), MAX(battery_pct) FROM telemetry_sample WHERE battery_pct IS NOT NULL AND ts_ms >= ? AND ts_ms < ? GROUP BY day"

    invoke-static {v0, v13, v9, v12}, Lcom/geely/drivemem/sensors/TelemetryRollup;->groupedByDay(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    .line 147
    new-array v13, v9, [Ljava/lang/String;

    aput-object v4, v13, v5

    aput-object v6, v13, v3

    const-string v14, "SELECT date(start_ms/1000,\'unixepoch\',\'localtime\') AS day, COALESCE(SUM(ascent_m),0), COALESCE(SUM(descent_m),0), COUNT(*), COALESCE(SUM(end_ms-start_ms),0) FROM trip WHERE end_ms IS NOT NULL AND start_ms >= ? AND start_ms < ? GROUP BY day"

    invoke-static {v0, v14, v7, v13}, Lcom/geely/drivemem/sensors/TelemetryRollup;->groupedByDay(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    .line 152
    new-array v14, v9, [Ljava/lang/String;

    aput-object v4, v14, v5

    aput-object v6, v14, v3

    const-string v15, "SELECT date(start_ms/1000,\'unixepoch\',\'localtime\') AS day, COUNT(*), COALESCE(SUM(kwh),0), COALESCE(SUM(cost),0) FROM charge_session WHERE start_ms >= ? AND start_ms < ? GROUP BY day"

    invoke-static {v0, v15, v8, v14}, Lcom/geely/drivemem/sensors/TelemetryRollup;->groupedByDay(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    .line 156
    invoke-static {v0, v1, v4, v6}, Lcom/geely/drivemem/sensors/TelemetryRollup;->energyByDay(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 158
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 159
    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [D

    .line 160
    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [D

    .line 161
    invoke-interface {v11, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [D

    .line 162
    invoke-interface {v12, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [D

    .line 163
    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [D

    .line 164
    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [D

    .line 166
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 167
    const-string v8, "date"

    invoke-virtual {v7, v8, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    aget-wide v22, v16, v5

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const-string v5, "first_odo_km"

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 169
    aget-wide v23, v16, v3

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v8, "last_odo_km"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 170
    aget-wide v23, v16, v9

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    move-object v8, v4

    if-nez v5, :cond_7

    aget-wide v3, v16, v9

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "first_battery_pct"

    invoke-virtual {v7, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    const/4 v3, 0x3

    .line 171
    aget-wide v23, v16, v3

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_8

    move-object v4, v6

    aget-wide v5, v16, v3

    double-to-int v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "last_battery_pct"

    invoke-virtual {v7, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    :cond_8
    move-object v4, v6

    :goto_5
    if-eqz v19, :cond_9

    const/4 v3, 0x0

    .line 172
    aget-wide v5, v19, v3

    double-to-int v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "min_battery_pct"

    invoke-virtual {v7, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, 0x1

    aget-wide v5, v19, v3

    double-to-int v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "max_battery_pct"

    invoke-virtual {v7, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    const/4 v3, 0x0

    if-eqz v17, :cond_a

    .line 173
    aget-wide v5, v17, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "max_speed_kmh"

    invoke-virtual {v7, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_a
    if-eqz v18, :cond_b

    .line 174
    aget-wide v5, v18, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v5, "min_temp_c"

    invoke-virtual {v7, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const/4 v3, 0x1

    aget-wide v23, v18, v3

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v6, "avg_temp_c"

    invoke-virtual {v7, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    aget-wide v17, v18, v9

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v6, "max_temp_c"

    invoke-virtual {v7, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_b
    const-wide/16 v17, 0x0

    if-eqz v20, :cond_c

    const/4 v3, 0x0

    .line 175
    aget-wide v23, v20, v3

    goto :goto_6

    :cond_c
    move-wide/from16 v23, v17

    :goto_6
    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v6, "ascent_m"

    invoke-virtual {v7, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    if-eqz v20, :cond_d

    const/4 v3, 0x1

    .line 176
    aget-wide v23, v20, v3

    goto :goto_7

    :cond_d
    move-wide/from16 v23, v17

    :goto_7
    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v6, "descent_m"

    invoke-virtual {v7, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    if-eqz v20, :cond_e

    .line 177
    aget-wide v5, v20, v9

    double-to-int v5, v5

    goto :goto_8

    :cond_e
    const/4 v5, 0x0

    :goto_8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "trip_count"

    invoke-virtual {v7, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v6, 0x3

    if-eqz v20, :cond_f

    .line 178
    aget-wide v19, v20, v6

    const-wide v23, 0x40ed4c0000000000L    # 60000.0

    div-double v19, v19, v23

    goto :goto_9

    :cond_f
    move-wide/from16 v19, v17

    .line 179
    :goto_9
    const-string v5, "driving_minutes"

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v7, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const/4 v3, 0x1

    .line 182
    aget-wide v23, v16, v3

    const/4 v3, 0x0

    aget-wide v25, v16, v3

    sub-double v23, v23, v25

    cmpl-double v3, v19, v17

    if-lez v3, :cond_10

    const-wide/high16 v25, 0x404e000000000000L    # 60.0

    div-double v19, v19, v25

    div-double v23, v23, v19

    goto :goto_a

    :cond_10
    move-wide/from16 v23, v17

    .line 183
    :goto_a
    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v5, "avg_speed_kmh"

    invoke-virtual {v7, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    move-object/from16 v16, v10

    const/4 v3, 0x0

    if-eqz v21, :cond_11

    .line 184
    aget-wide v9, v21, v3

    double-to-int v9, v9

    goto :goto_b

    :cond_11
    move v9, v3

    :goto_b
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "charge_count"

    invoke-virtual {v7, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v9, 0x1

    if-eqz v21, :cond_12

    .line 185
    aget-wide v19, v21, v9

    goto :goto_c

    :cond_12
    move-wide/from16 v19, v17

    :goto_c
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const-string v3, "charge_kwh"

    invoke-virtual {v7, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const/4 v3, 0x2

    if-eqz v21, :cond_13

    .line 186
    aget-wide v19, v21, v3

    goto :goto_d

    :cond_13
    move-wide/from16 v19, v17

    :goto_d
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v10, "charge_cost"

    invoke-virtual {v7, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 187
    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/geely/drivemem/sensors/TelemetryRollup$EnergyStats;

    move-object v10, v4

    if-eqz v5, :cond_14

    .line 188
    iget-wide v3, v5, Lcom/geely/drivemem/sensors/TelemetryRollup$EnergyStats;->spentKwh:D

    goto :goto_e

    :cond_14
    move-wide/from16 v3, v17

    :goto_e
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "discharge_kwh"

    invoke-virtual {v7, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    if-eqz v5, :cond_15

    .line 189
    iget-wide v3, v5, Lcom/geely/drivemem/sensors/TelemetryRollup$EnergyStats;->regenKwh:D

    goto :goto_f

    :cond_15
    move-wide/from16 v3, v17

    :goto_f
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "regen_kwh"

    invoke-virtual {v7, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    if-eqz v5, :cond_16

    .line 190
    iget-wide v3, v5, Lcom/geely/drivemem/sensors/TelemetryRollup$EnergyStats;->netKwh:D

    move-wide/from16 v17, v3

    :cond_16
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "net_kwh"

    invoke-virtual {v7, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    if-eqz v5, :cond_17

    .line 191
    iget-object v3, v5, Lcom/geely/drivemem/sensors/TelemetryRollup$EnergyStats;->energySource:Lcom/geely/drivemem/sensors/EnergySource;

    goto :goto_10

    :cond_17
    sget-object v3, Lcom/geely/drivemem/sensors/EnergySource;->NO_DATA:Lcom/geely/drivemem/sensors/EnergySource;

    :goto_10
    invoke-virtual {v3}, Lcom/geely/drivemem/sensors/EnergySource;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "energy_source"

    invoke-virtual {v7, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v3, "daily_stat"

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v0, v3, v4, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move v7, v5

    move-object v4, v8

    move v3, v9

    const/4 v5, 0x0

    const/4 v9, 0x2

    move v8, v6

    move-object v6, v10

    move-object/from16 v10, v16

    goto/16 :goto_4

    .line 195
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "rollup: froze "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " day(s) into daily_stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DriveMem"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 113
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static varargs groupedByDay(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[D>;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 206
    array-length v1, p3

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 208
    :goto_1
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 209
    new-array p1, p2, [D

    const/4 p3, 0x0

    move v1, p3

    :goto_2
    if-ge v1, p2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 210
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    aput-wide v3, p1, v1

    move v1, v2

    goto :goto_2

    .line 211
    :cond_1
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 213
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method static synthetic lambda$runIfDue$0(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .line 63
    const-string v0, "DriveMem"

    .line 0
    const-string v1, "rollup: done for "

    .line 63
    invoke-static {p1}, Lcom/geely/drivemem/util/Prefs;->getRollupLastDay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 65
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 66
    invoke-static {v2, p0}, Lcom/geely/drivemem/sensors/TelemetryRollup;->freezeCompletedDays(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 67
    invoke-static {v2}, Lcom/geely/drivemem/sensors/TelemetryRollup;->pruneOldRawRows(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 68
    invoke-static {p1, p0}, Lcom/geely/drivemem/util/Prefs;->setRollupLastDay(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "rollup: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static pruneOldRawRows(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x1cf7c5800L

    sub-long/2addr v0, v2

    const/4 v2, 0x1

    .line 289
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 291
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 289
    const-string v0, "telemetry_sample"

    const-string v1, "ts_ms < ? AND date(ts_ms/1000,\'unixepoch\',\'localtime\') IN (SELECT date FROM daily_stat)"

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rollup: pruned "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " raw row(s) older than 90d"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DriveMem"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static runIfDue(Landroid/content/Context;)V
    .locals 3

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 60
    sget-object v0, Lcom/geely/drivemem/sensors/TelemetryRollup;->DAY_FMT:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object v1

    new-instance v2, Lcom/geely/drivemem/sensors/TelemetryRollup$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p0}, Lcom/geely/drivemem/sensors/TelemetryRollup$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/geely/drivemem/car/CarDb;->write(Ljava/lang/Runnable;)V

    return-void
.end method
