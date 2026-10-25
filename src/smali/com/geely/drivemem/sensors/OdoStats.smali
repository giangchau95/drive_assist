.class public final Lcom/geely/drivemem/sensors/OdoStats;
.super Ljava/lang/Object;
.source "OdoStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/drivemem/sensors/OdoStats$Reading;,
        Lcom/geely/drivemem/sensors/OdoStats$DayRange;,
        Lcom/geely/drivemem/sensors/OdoStats$DailySeries;
    }
.end annotation


# static fields
.field private static final DAY_FMT:Ljava/text/SimpleDateFormat;

.field private static final SHORT_DAY_FMT:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/geely/drivemem/sensors/OdoStats;->DAY_FMT:Ljava/text/SimpleDateFormat;

    .line 69
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d/M"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/geely/drivemem/sensors/OdoStats;->SHORT_DAY_FMT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dayBoundsMs(Ljava/lang/String;)[J
    .locals 7

    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 134
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 135
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 136
    :try_start_0
    sget-object v1, Lcom/geely/drivemem/sensors/OdoStats;->DAY_FMT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :catch_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/4 p0, 0x5

    const/4 v1, 0x1

    .line 138
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->add(II)V

    .line 139
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const/4 p0, 0x2

    new-array p0, p0, [J

    aput-wide v3, p0, v2

    aput-wide v5, p0, v1

    return-object p0
.end method

.method private static dayMs(Ljava/lang/String;)J
    .locals 2

    .line 93
    :try_start_0
    sget-object v0, Lcom/geely/drivemem/sensors/OdoStats;->DAY_FMT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static kmSince(Landroid/content/Context;I)D
    .locals 2

    .line 35
    invoke-static {p0}, Lcom/geely/drivemem/sensors/OdoStats;->readLog(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1}, Lcom/geely/drivemem/sensors/OdoStats;->kmSince(Ljava/util/List;JI)D

    move-result-wide p0

    return-wide p0
.end method

.method public static kmSince(Ljava/util/List;JI)D
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/drivemem/sensors/OdoStats$Reading;",
            ">;JI)D"
        }
    .end annotation

    .line 40
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_0

    return-wide v2

    :cond_0
    int-to-long v0, p3

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v0, v4

    sub-long/2addr p1, v0

    const/4 p3, 0x0

    .line 42
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/geely/drivemem/sensors/OdoStats$Reading;

    .line 43
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/drivemem/sensors/OdoStats$Reading;

    .line 44
    iget-object v4, v1, Lcom/geely/drivemem/sensors/OdoStats$Reading;->date:Ljava/lang/String;

    invoke-static {v4}, Lcom/geely/drivemem/sensors/OdoStats;->dayMs(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    cmp-long v4, v4, p1

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, v1

    goto :goto_0

    .line 48
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/geely/drivemem/sensors/OdoStats$Reading;

    .line 49
    iget-wide p0, p0, Lcom/geely/drivemem/sensors/OdoStats$Reading;->odoKm:D

    iget-wide p2, p3, Lcom/geely/drivemem/sensors/OdoStats$Reading;->odoKm:D

    sub-double/2addr p0, p2

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static readDayRanges(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/geely/drivemem/sensors/OdoStats$DayRange;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v1, "SELECT grp.day, first.odo_km, last.odo_km FROM (SELECT date(ts_ms/1000,\'unixepoch\',\'localtime\') AS day,         MIN(id) AS first_id, MAX(id) AS last_id  FROM telemetry_sample WHERE odo_km > 0 GROUP BY day) grp JOIN telemetry_sample first ON first.id = grp.first_id JOIN telemetry_sample last ON last.id = grp.last_id ORDER BY grp.day ASC"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 154
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/geely/drivemem/sensors/OdoStats$DayRange;

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/geely/drivemem/sensors/OdoStats$DayRange;-><init>(Ljava/lang/String;DD)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 155
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static readLog(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/geely/drivemem/sensors/OdoStats$Reading;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 112
    const-string v1, "SELECT MAX(date) FROM daily_stat"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 114
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/geely/drivemem/sensors/OdoStats;->dayBoundsMs(Ljava/lang/String;)[J

    move-result-object v2

    aget-wide v5, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    .line 115
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 117
    new-array v1, v3, [Ljava/lang/String;

    .line 124
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 117
    const-string v2, "SELECT date, first_odo_km AS odo_km FROM daily_stat UNION ALL SELECT grp.day AS date, ts.odo_km FROM telemetry_sample ts JOIN (SELECT date(ts_ms/1000,\'unixepoch\',\'localtime\') AS day, MIN(id) AS first_id       FROM telemetry_sample WHERE odo_km > 0 AND ts_ms >= ? GROUP BY day) grp ON ts.id = grp.first_id ORDER BY date ASC"

    invoke-virtual {p0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 126
    :goto_1
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/geely/drivemem/sensors/OdoStats$Reading;

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-direct {v1, v2, v5, v6}, Lcom/geely/drivemem/sensors/OdoStats$Reading;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 127
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_1
    move-exception p0

    .line 115
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p0
.end method

.method public static recentDaily(Ljava/util/List;I)Lcom/geely/drivemem/sensors/OdoStats$DailySeries;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/drivemem/sensors/OdoStats$DayRange;",
            ">;I)",
            "Lcom/geely/drivemem/sensors/OdoStats$DailySeries;"
        }
    .end annotation

    .line 73
    new-array v0, p1, [D

    .line 74
    new-array v1, p1, [Ljava/lang/String;

    .line 75
    const-string v2, ""

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 77
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    add-int/lit8 v5, v2, -0x1

    sub-int/2addr v5, v4

    .line 79
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/geely/drivemem/sensors/OdoStats$DayRange;

    add-int/lit8 v6, p1, -0x1

    sub-int/2addr v6, v4

    .line 81
    iget-wide v7, v5, Lcom/geely/drivemem/sensors/OdoStats$DayRange;->lastOdoKm:D

    iget-wide v9, v5, Lcom/geely/drivemem/sensors/OdoStats$DayRange;->firstOdoKm:D

    sub-double/2addr v7, v9

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    aput-wide v7, v0, v6

    .line 82
    iget-object v5, v5, Lcom/geely/drivemem/sensors/OdoStats$DayRange;->date:Ljava/lang/String;

    invoke-static {v5}, Lcom/geely/drivemem/sensors/OdoStats;->shortLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    :cond_0
    new-instance p0, Lcom/geely/drivemem/sensors/OdoStats$DailySeries;

    invoke-direct {p0, v0, v1}, Lcom/geely/drivemem/sensors/OdoStats$DailySeries;-><init>([D[Ljava/lang/String;)V

    return-object p0
.end method

.method private static shortLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 88
    :try_start_0
    sget-object v0, Lcom/geely/drivemem/sensors/OdoStats;->SHORT_DAY_FMT:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/geely/drivemem/sensors/OdoStats;->DAY_FMT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 89
    :catch_0
    const-string p0, ""

    return-object p0
.end method
