.class public final Lcom/geely/drivemem/sensors/DailyStatsProvider;
.super Ljava/lang/Object;
.source "DailyStatsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;,
        Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;,
        Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;,
        Lcom/geely/drivemem/sensors/DailyStatsProvider$StatsDetail;,
        Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;,
        Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;,
        Lcom/geely/drivemem/sensors/DailyStatsProvider$DayEnergyBalance;,
        Lcom/geely/drivemem/sensors/DailyStatsProvider$DayItem;,
        Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;,
        Lcom/geely/drivemem/sensors/DailyStatsProvider$ValetSessionItem;,
        Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;,
        Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;
    }
.end annotation


# static fields
.field private static final DAY_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;",
            ">;"
        }
    .end annotation
.end field

.field private static final DAY_FMT:Ljava/text/SimpleDateFormat;

.field private static final DISPLAY_DAY_FMT:Ljava/text/SimpleDateFormat;

.field private static final MONTH_LABEL_FMT:Ljava/text/SimpleDateFormat;

.field private static final SHORT_DAY_FMT:Ljava/text/SimpleDateFormat;

.field private static final SPEED_BUCKET_MAX:[D

.field private static final TIME_FMT:Ljava/text/SimpleDateFormat;

.field static final TRIP_IN_VALET_SQL:Ljava/lang/String; = "EXISTS (SELECT 1 FROM valet_session v WHERE t.start_ms >= v.start_ms AND t.start_ms < COALESCE(v.end_ms, 9223372036854775807))"

.field private static final WEEK_BOUND_FMT:Ljava/text/SimpleDateFormat;


# direct methods
.method static bridge synthetic -$$Nest$sfgetSPEED_BUCKET_MAX()[D
    .locals 1

    sget-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider;->SPEED_BUCKET_MAX:[D

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetTIME_FMT()Ljava/text/SimpleDateFormat;
    .locals 1

    sget-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider;->TIME_FMT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smformatDuration(JJ)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->formatDuration(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider;->DAY_FMT:Ljava/text/SimpleDateFormat;

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d/M"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider;->SHORT_DAY_FMT:Ljava/text/SimpleDateFormat;

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "en"

    const-string v3, "US"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "EEEE, MMMM d"

    invoke-direct {v0, v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider;->DISPLAY_DAY_FMT:Ljava/text/SimpleDateFormat;

    .line 27
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider;->TIME_FMT:Ljava/text/SimpleDateFormat;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider;->DAY_CACHE:Ljava/util/Map;

    .line 382
    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "MMM d"

    invoke-direct {v0, v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider;->WEEK_BOUND_FMT:Ljava/text/SimpleDateFormat;

    .line 383
    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MMMM yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider;->MONTH_LABEL_FMT:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x4

    .line 510
    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider;->SPEED_BUCKET_MAX:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x4044000000000000L    # 40.0
        0x4054000000000000L    # 80.0
        0x405e000000000000L    # 120.0
        0x7fefffffffffffffL    # Double.MAX_VALUE
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aggregate(Ljava/util/List;Ljava/lang/String;)Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;"
        }
    .end annotation

    .line 279
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 280
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 282
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v3

    move/from16 v31, v5

    move v11, v4

    move v14, v11

    move/from16 v27, v14

    move/from16 v28, v27

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;

    .line 283
    iget-object v12, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->energySource:Lcom/geely/drivemem/sensors/EnergySource;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-wide v1, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->distanceKm:D

    add-double/2addr v3, v1

    .line 285
    iget-wide v1, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->dischargeKwh:D

    add-double v19, v19, v1

    .line 286
    iget-wide v1, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->regenKwh:D

    add-double v21, v21, v1

    .line 287
    iget-wide v1, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->ascentDPlusM:D

    add-double v23, v23, v1

    .line 288
    iget-wide v1, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->descentDMinusM:D

    add-double v25, v25, v1

    .line 289
    iget-wide v1, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->drivingMinutes:D

    add-double v29, v29, v1

    .line 290
    iget v1, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->chargeCount:I

    add-int v31, v31, v1

    .line 291
    iget-wide v1, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->chargeKwh:D

    add-double v32, v32, v1

    .line 292
    iget-wide v1, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->chargeCost:D

    add-double/2addr v9, v1

    .line 293
    iget v1, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->minBatteryPct:I

    if-ltz v1, :cond_1

    if-ltz v14, :cond_0

    iget v1, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->minBatteryPct:I

    if-ge v1, v14, :cond_1

    :cond_0
    iget v14, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->minBatteryPct:I

    .line 294
    :cond_1
    iget v1, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->maxBatteryPct:I

    if-ltz v1, :cond_2

    iget v1, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->maxBatteryPct:I

    if-le v1, v11, :cond_2

    iget v11, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->maxBatteryPct:I

    :cond_2
    if-gez v27, :cond_3

    .line 295
    iget v1, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->firstBatteryPct:I

    if-ltz v1, :cond_3

    iget v1, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->firstBatteryPct:I

    move/from16 v27, v1

    .line 296
    :cond_3
    iget v1, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->lastBatteryPct:I

    if-ltz v1, :cond_4

    iget v1, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->lastBatteryPct:I

    move/from16 v28, v1

    .line 297
    :cond_4
    iget-wide v1, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->avgTempC:D

    const-wide/16 v16, 0x0

    cmpl-double v1, v1, v16

    if-eqz v1, :cond_5

    iget-wide v1, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->avgTempC:D

    add-double/2addr v6, v1

    add-int/lit8 v5, v5, 0x1

    .line 298
    :cond_5
    iget-wide v1, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->maxAltitudeM:D

    move-object/from16 v36, v13

    move/from16 p0, v14

    move-wide/from16 v13, v34

    cmpl-double v1, v1, v13

    if-lez v1, :cond_6

    iget-wide v1, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->maxAltitudeM:D

    move-wide/from16 v34, v1

    goto :goto_1

    :cond_6
    move-wide/from16 v34, v13

    .line 299
    :goto_1
    iget-object v1, v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->sessions:Ljava/util/List;

    invoke-interface {v15, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move/from16 v14, p0

    move-object/from16 v13, v36

    goto/16 :goto_0

    :cond_7
    move-object/from16 v36, v13

    move-wide/from16 v48, v34

    move/from16 v34, v14

    move-wide/from16 v13, v48

    sub-double v37, v19, v21

    const-wide/16 v0, 0x0

    cmpl-double v2, v29, v0

    if-lez v2, :cond_8

    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    div-double v16, v29, v16

    div-double v16, v3, v16

    move-wide/from16 v39, v16

    goto :goto_2

    :cond_8
    move-wide/from16 v39, v0

    :goto_2
    if-lez v5, :cond_9

    int-to-double v0, v5

    div-double/2addr v6, v0

    move-wide/from16 v41, v6

    goto :goto_3

    :cond_9
    move-wide/from16 v41, v0

    :goto_3
    sub-double v17, v23, v25

    move-wide v5, v3

    move-wide/from16 v7, v19

    move-wide v1, v9

    move-wide/from16 v9, v21

    .line 306
    invoke-static/range {v5 .. v10}, Lcom/geely/drivemem/sensors/DrivingConsumption;->efficiencyKwh100km(DDD)D

    move-result-wide v5

    move/from16 v35, v11

    move-wide v11, v5

    .line 308
    new-instance v9, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;

    move-object v0, v9

    move-wide v7, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    move-wide/from16 v5, v19

    move-wide/from16 v43, v7

    move-wide/from16 v7, v21

    move-object/from16 v45, v9

    move-wide/from16 v9, v37

    move-wide/from16 v46, v13

    move/from16 v21, v34

    move-object/from16 v34, v36

    move-wide/from16 v13, v23

    move-object/from16 v36, v15

    move-wide/from16 v15, v25

    move/from16 v19, v27

    move/from16 v20, v28

    move/from16 v22, v35

    move-wide/from16 v23, v29

    move-wide/from16 v25, v39

    move-wide/from16 v27, v41

    move/from16 v29, v31

    move-wide/from16 v30, v32

    move-object/from16 v32, v36

    invoke-direct/range {v0 .. v32}, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;-><init>(Ljava/lang/String;Ljava/lang/String;DDDDDDDDIIIIDDDIDLjava/util/List;)V

    move-wide/from16 v1, v43

    move-object/from16 v0, v45

    .line 311
    iput-wide v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->chargeCost:D

    move-wide/from16 v1, v46

    .line 312
    iput-wide v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->maxAltitudeM:D

    .line 313
    invoke-static/range {v34 .. v34}, Lcom/geely/drivemem/sensors/EnergySource;->combine(Ljava/util/List;)Lcom/geely/drivemem/sensors/EnergySource;

    move-result-object v1

    iput-object v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->energySource:Lcom/geely/drivemem/sensors/EnergySource;

    return-object v0
.end method

.method private static buildPeriodOverview(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;"
        }
    .end annotation

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 436
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->getDayOverview(Landroid/content/Context;Ljava/lang/String;)Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 437
    :cond_0
    new-instance p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;

    invoke-static {v0, p2}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->aggregate(Ljava/util/List;Ljava/lang/String;)Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;

    move-result-object p1

    invoke-direct {p0, p1, v0, p2}, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;-><init>(Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;Ljava/util/List;Ljava/lang/String;)V

    return-object p0
.end method

.method public static datesForGranularity(Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 478
    sget-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$1;->$SwitchMap$com$geely$drivemem$sensors$DailyStatsProvider$Granularity:[I

    invoke-virtual {p0}, Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 481
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 480
    :cond_0
    invoke-static {p1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->monthDates(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 479
    :cond_1
    invoke-static {p1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->weekDates(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static dayBoundsMs(Ljava/lang/String;)[J
    .locals 6

    .line 364
    invoke-static {p0}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->dayCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    .line 365
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 366
    invoke-virtual {p0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 367
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/4 p0, 0x2

    new-array p0, p0, [J

    const/4 v2, 0x0

    aput-wide v0, p0, v2

    aput-wide v4, p0, v3

    return-object p0
.end method

.method private static dayCalendar(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 3

    .line 348
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 349
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 350
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 351
    :try_start_0
    sget-object v1, Lcom/geely/drivemem/sensors/DailyStatsProvider;->DAY_FMT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private static formatDisplayDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1310
    :try_start_0
    sget-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider;->DISPLAY_DAY_FMT:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/geely/drivemem/sensors/DailyStatsProvider;->DAY_FMT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1311
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    return-object v0

    :catch_0
    return-object p0
.end method

.method private static formatDuration(JJ)Ljava/lang/String;
    .locals 4

    sub-long/2addr p2, p0

    const-wide/16 p0, 0x3e8

    .line 1317
    div-long/2addr p2, p0

    const-wide/16 p0, 0x0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    const-wide/16 v0, 0xe10

    .line 1318
    div-long v2, p2, v0

    rem-long/2addr p2, v0

    const-wide/16 v0, 0x3c

    div-long/2addr p2, v0

    cmp-long p0, v2, p0

    .line 1319
    const-string p1, "m"

    if-lez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "h "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-wide/16 v0, 0xa

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1320
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getActiveDriveSession(Landroid/content/Context;)Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;
    .locals 1

    .line 1160
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->getActiveDriveSession(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;

    move-result-object p0

    return-object p0
.end method

.method public static getActiveDriveSession(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;
    .locals 34

    move-object/from16 v0, p1

    .line 1084
    invoke-static {}, Lcom/geely/drivemem/state/TripSession;->isTripActive()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1085
    invoke-static/range {p0 .. p0}, Lcom/geely/drivemem/state/ValetSession;->isActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    .line 1088
    :cond_0
    invoke-static {}, Lcom/geely/drivemem/state/TripSession;->getActiveTripStartMs()J

    move-result-wide v6

    .line 1089
    invoke-static {}, Lcom/geely/drivemem/state/TripSession;->getActiveTripStartSampleId()J

    move-result-wide v3

    .line 1090
    invoke-static {}, Lcom/geely/drivemem/state/TripSession;->getActiveTripStartOdoKm()D

    move-result-wide v8

    .line 1091
    invoke-static {}, Lcom/geely/drivemem/state/TripSession;->getActiveTripStartSoc()I

    move-result v1

    const-wide/16 v10, 0x0

    cmpg-double v5, v8, v10

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ltz v5, :cond_1

    if-gez v1, :cond_8

    :cond_1
    const-wide/16 v14, 0x0

    cmp-long v16, v3, v14

    if-lez v16, :cond_4

    .line 1095
    new-array v2, v13, [Ljava/lang/String;

    .line 1097
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    .line 1095
    const-string v3, "SELECT odo_km, battery_pct FROM telemetry_sample WHERE id = ?"

    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1099
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    if-gez v5, :cond_2

    .line 1100
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    :cond_2
    if-gez v1, :cond_3

    .line 1101
    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1103
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    :goto_0
    cmpg-double v2, v8, v10

    if-ltz v2, :cond_5

    if-gez v1, :cond_8

    :cond_5
    cmp-long v3, v6, v14

    if-lez v3, :cond_8

    .line 1106
    new-array v3, v13, [Ljava/lang/String;

    .line 1108
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v12

    .line 1106
    const-string v4, "SELECT odo_km, battery_pct FROM telemetry_sample WHERE ts_ms >= ? ORDER BY id ASC LIMIT 1"

    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1110
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    if-gez v2, :cond_6

    .line 1111
    invoke-interface {v3, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    :cond_6
    if-gez v1, :cond_7

    .line 1112
    invoke-interface {v3, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1114
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1120
    :cond_8
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object v2

    const-string v3, "telemetry.odometer"

    invoke-virtual {v2, v3}, Lcom/geely/drivemem/car/CarActor;->get(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v2

    .line 1121
    iget-object v3, v2, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v4, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne v3, v4, :cond_9

    iget-object v3, v2, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_9

    .line 1122
    iget-object v2, v2, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    goto :goto_2

    :cond_9
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 1124
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object v4

    const-string v5, "telemetry.battery"

    invoke-virtual {v4, v5}, Lcom/geely/drivemem/car/CarActor;->get(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v4

    .line 1125
    iget-object v5, v4, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v14, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne v5, v14, :cond_a

    iget-object v5, v4, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_a

    .line 1126
    iget-object v4, v4, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_3

    :cond_a
    const/4 v4, -0x1

    :goto_3
    cmpg-double v5, v2, v10

    if-ltz v5, :cond_c

    if-gez v4, :cond_b

    goto :goto_5

    :cond_b
    :goto_4
    move/from16 v27, v4

    goto :goto_6

    .line 1130
    :cond_c
    :goto_5
    const-string v14, "SELECT odo_km, battery_pct FROM telemetry_sample ORDER BY id DESC LIMIT 1"

    const/4 v15, 0x0

    invoke-virtual {v0, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1133
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_e

    if-gez v5, :cond_d

    .line 1134
    invoke-interface {v14, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-interface {v14, v12}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    :cond_d
    if-gez v4, :cond_e

    .line 1135
    invoke-interface {v14, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-interface {v14, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1137
    :cond_e
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_6
    cmpl-double v4, v8, v10

    if-lez v4, :cond_f

    cmpl-double v4, v2, v8

    if-ltz v4, :cond_f

    sub-double/2addr v2, v8

    move-wide v10, v2

    .line 1141
    :cond_f
    invoke-static {}, Lcom/geely/drivemem/state/TripSession;->getActiveTripAscentM()D

    move-result-wide v14

    .line 1142
    invoke-static {}, Lcom/geely/drivemem/state/TripSession;->getActiveTripDescentM()D

    move-result-wide v16

    .line 1146
    new-array v2, v13, [Ljava/lang/String;

    .line 1147
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    .line 1146
    const-string v3, "ts_ms >= ?"

    invoke-static {v0, v3, v2}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->queryDrivingConsumption(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Lcom/geely/drivemem/sensors/DrivingConsumption;

    move-result-object v0

    .line 1148
    iget-wide v2, v0, Lcom/geely/drivemem/sensors/DrivingConsumption;->totalSpent:D

    move-wide/from16 v20, v2

    .line 1149
    iget-wide v4, v0, Lcom/geely/drivemem/sensors/DrivingConsumption;->totalRegen:D

    move-wide/from16 v18, v4

    sub-double v22, v2, v4

    move-wide/from16 v28, v10

    move-wide/from16 v30, v2

    move-wide/from16 v32, v4

    .line 1151
    invoke-static/range {v28 .. v33}, Lcom/geely/drivemem/sensors/DrivingConsumption;->efficiencyKwh100km(DDD)D

    move-result-wide v24

    .line 1154
    new-instance v2, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;

    move-object v3, v2

    const-wide/16 v8, 0x0

    .line 1155
    invoke-virtual {v0}, Lcom/geely/drivemem/sensors/DrivingConsumption;->energySource()Lcom/geely/drivemem/sensors/EnergySource;

    move-result-object v26

    const-wide/16 v4, 0x0

    move v12, v1

    move/from16 v13, v27

    invoke-direct/range {v3 .. v26}, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;-><init>(JJJDIIDDDDDDLcom/geely/drivemem/sensors/EnergySource;)V

    return-object v2

    :catchall_2
    move-exception v0

    .line 1137
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_10
    :goto_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDayOverview(Landroid/content/Context;Ljava/lang/String;)Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;
    .locals 50

    move-object/from16 v0, p1

    .line 854
    invoke-static/range {p0 .. p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    .line 855
    invoke-static/range {p1 .. p1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->formatDisplayDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 865
    sget-object v1, Lcom/geely/drivemem/sensors/EnergySource;->NO_DATA:Lcom/geely/drivemem/sensors/EnergySource;

    .line 867
    invoke-static {}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->todayDateStr()Ljava/lang/String;

    move-result-object v2

    .line 868
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_0

    .line 871
    sget-object v2, Lcom/geely/drivemem/sensors/DailyStatsProvider;->DAY_CACHE:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    const/4 v2, 0x3

    const/4 v15, 0x2

    const/4 v10, 0x1

    const-wide/16 v4, 0x0

    const/4 v11, 0x0

    if-nez v34, :cond_9

    .line 878
    new-array v7, v10, [Ljava/lang/String;

    aput-object v0, v7, v11

    const-string v8, "SELECT first_odo_km, last_odo_km, first_battery_pct, last_battery_pct,        min_battery_pct, max_battery_pct, avg_speed_kmh, avg_temp_c,        ascent_m, descent_m, driving_minutes, charge_count, charge_kwh,        discharge_kwh, regen_kwh, net_kwh, charge_cost, energy_source FROM daily_stat WHERE date = ?"

    invoke-virtual {v14, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 885
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 887
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    sub-double/2addr v8, v12

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 888
    invoke-interface {v7, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 889
    :goto_0
    invoke-interface {v7, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, -0x1

    goto :goto_1

    :cond_2
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    :goto_1
    const/4 v13, 0x4

    .line 890
    invoke-interface {v7, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_3

    const/4 v13, -0x1

    goto :goto_2

    :cond_3
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    :goto_2
    const/4 v6, 0x5

    .line 891
    invoke-interface {v7, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_4

    const/4 v6, -0x1

    goto :goto_3

    :cond_4
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    :goto_3
    const/4 v2, 0x6

    .line 892
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    const/4 v2, 0x7

    .line 893
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v20

    const/16 v2, 0x8

    .line 894
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v22

    const/16 v2, 0x9

    .line 895
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v24

    const/16 v2, 0xa

    .line 896
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v26

    const/16 v2, 0xb

    .line 897
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v4, 0xc

    .line 898
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const/16 v15, 0xd

    .line 899
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v31

    const/16 v15, 0xe

    .line 900
    invoke-interface {v7, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_5

    const-wide/16 v35, 0x0

    goto :goto_4

    :cond_5
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v35

    :goto_4
    const/16 v15, 0xf

    .line 901
    invoke-interface {v7, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_6

    sub-double v37, v31, v35

    goto :goto_5

    :cond_6
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v37

    :goto_5
    const/16 v15, 0x10

    .line 902
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v39

    const/16 v15, 0x11

    .line 903
    invoke-interface {v7, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_7

    const/4 v15, 0x0

    goto :goto_6

    :cond_7
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_6
    invoke-static {v15}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->parseEnergySource(Ljava/lang/String;)Lcom/geely/drivemem/sensors/EnergySource;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v33, v10

    goto :goto_7

    :cond_8
    move-object v15, v1

    move v2, v11

    move/from16 v33, v2

    const/4 v1, -0x1

    const-wide/16 v4, 0x0

    const/4 v6, -0x1

    const-wide/16 v8, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    .line 905
    :goto_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_9
    move-object v15, v1

    move v2, v11

    move/from16 v33, v2

    const/4 v1, -0x1

    const-wide/16 v4, 0x0

    const/4 v6, -0x1

    const-wide/16 v8, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    :goto_8
    if-nez v33, :cond_a

    if-nez v34, :cond_a

    .line 920
    invoke-static {v14, v0}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->hasAnyTelemetry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 921
    new-instance v2, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;

    move-object v1, v2

    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v33, v4

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    move-object/from16 v41, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v33}, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;-><init>(Ljava/lang/String;Ljava/lang/String;DDDDDDDDIIIIDDDIDLjava/util/List;)V

    .line 923
    sget-object v1, Lcom/geely/drivemem/sensors/DailyStatsProvider;->DAY_CACHE:Ljava/util/Map;

    move-object/from16 v2, v41

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_a
    if-nez v33, :cond_23

    .line 929
    invoke-static/range {p1 .. p1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->dayBoundsMs(Ljava/lang/String;)[J

    move-result-object v7

    .line 930
    aget-wide v18, v7, v11

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aget-wide v18, v7, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    move/from16 v33, v1

    const/4 v10, 0x2

    .line 934
    new-array v1, v10, [Ljava/lang/String;

    aput-object v15, v1, v11

    const/4 v10, 0x1

    aput-object v7, v1, v10

    const-string v10, "SELECT first.odo_km, last.odo_km, first.battery_pct, last.battery_pct FROM (SELECT MIN(id) as first_id, MAX(id) as last_id FROM telemetry_sample  WHERE ts_ms >= ? AND ts_ms < ? AND odo_km > 0) grp JOIN telemetry_sample first ON first.id = grp.first_id JOIN telemetry_sample last ON last.id = grp.last_id"

    invoke-virtual {v14, v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 942
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    if-eqz v10, :cond_e

    .line 943
    invoke-interface {v1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_9

    :cond_b
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    move-wide/from16 v18, v8

    :goto_9
    const/4 v8, 0x1

    .line 944
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v31

    sub-double v9, v9, v31

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    const/4 v10, 0x2

    .line 945
    invoke-interface {v1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v10, 0x3

    const/4 v11, -0x1

    goto :goto_a

    :cond_c
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v10, 0x3

    .line 946
    :goto_a
    invoke-interface {v1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, -0x1

    goto :goto_b

    :cond_d
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :goto_b
    move/from16 v33, v11

    .line 948
    :cond_e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-eqz v34, :cond_10

    .line 951
    invoke-static/range {p0 .. p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object v1

    const-string v10, "telemetry.odometer"

    invoke-virtual {v1, v10}, Lcom/geely/drivemem/car/CarActor;->get(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v1

    .line 952
    iget-object v10, v1, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v11, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne v10, v11, :cond_f

    iget-object v10, v1, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    instance-of v10, v10, Ljava/lang/Number;

    if-eqz v10, :cond_f

    .line 953
    iget-object v1, v1, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    const-wide/16 v28, 0x0

    cmpl-double v1, v18, v28

    if-ltz v1, :cond_f

    cmpl-double v1, v10, v18

    if-ltz v1, :cond_f

    sub-double v8, v10, v18

    .line 958
    :cond_f
    invoke-static/range {p0 .. p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object v1

    const-string v10, "telemetry.battery"

    invoke-virtual {v1, v10}, Lcom/geely/drivemem/car/CarActor;->get(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v1

    .line 959
    iget-object v10, v1, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v11, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne v10, v11, :cond_10

    iget-object v10, v1, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    instance-of v10, v10, Ljava/lang/Integer;

    if-eqz v10, :cond_10

    .line 960
    iget-object v1, v1, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-gez v33, :cond_10

    move/from16 v33, v12

    :cond_10
    const/4 v1, 0x2

    .line 966
    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v15, v10, v1

    const/4 v11, 0x1

    aput-object v7, v10, v11

    const-string v11, "SELECT MIN(battery_pct), MAX(battery_pct), AVG(outside_temp_c) FROM telemetry_sample WHERE ts_ms >= ? AND ts_ms < ?"

    invoke-virtual {v14, v11, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 971
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 972
    invoke-interface {v10, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v1, 0x1

    const/4 v13, -0x1

    goto :goto_c

    :cond_11
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v13, v6

    const/4 v1, 0x1

    .line 973
    :goto_c
    invoke-interface {v10, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_12

    const/4 v1, 0x2

    const/4 v6, -0x1

    goto :goto_d

    :cond_12
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v1, 0x2

    .line 974
    :goto_d
    invoke-interface {v10, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_13

    const-wide/16 v18, 0x0

    goto :goto_e

    :cond_13
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :goto_e
    move-wide/from16 v20, v18

    .line 976
    :cond_14
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    if-eqz v34, :cond_19

    if-ltz v12, :cond_18

    if-ltz v13, :cond_15

    if-ge v12, v13, :cond_16

    :cond_15
    move v13, v12

    :cond_16
    if-ltz v6, :cond_17

    if-le v12, v6, :cond_18

    :cond_17
    move v6, v12

    .line 983
    :cond_18
    invoke-static/range {p0 .. p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object v1

    const-string v10, "telemetry.outside_temp"

    invoke-virtual {v1, v10}, Lcom/geely/drivemem/car/CarActor;->get(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v1

    .line 984
    iget-object v10, v1, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v11, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne v10, v11, :cond_19

    iget-object v10, v1, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    instance-of v10, v10, Ljava/lang/Number;

    if-eqz v10, :cond_19

    .line 985
    iget-object v1, v1, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    const-wide/16 v18, 0x0

    cmpl-double v1, v20, v18

    if-nez v1, :cond_19

    move-wide/from16 v20, v10

    :cond_19
    const/4 v1, 0x2

    .line 990
    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v15, v10, v1

    const/4 v11, 0x1

    aput-object v7, v10, v11

    const-string v11, "SELECT COALESCE(SUM(ascent_m),0), COALESCE(SUM(descent_m),0),        COALESCE(SUM(end_ms - start_ms),0) FROM trip WHERE start_ms >= ? AND start_ms < ? AND end_ms IS NOT NULL"

    invoke-virtual {v14, v11, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 996
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    const-wide v18, 0x40ed4c0000000000L    # 60000.0

    if-eqz v11, :cond_1a

    .line 997
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v22

    const/4 v1, 0x1

    .line 998
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v24

    const/4 v1, 0x2

    .line 999
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v26
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    div-double v26, v26, v18

    .line 1001
    :cond_1a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const-wide/16 v10, 0x0

    if-eqz v34, :cond_1b

    .line 1003
    invoke-static {}, Lcom/geely/drivemem/state/TripSession;->isTripActive()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1004
    invoke-static {}, Lcom/geely/drivemem/state/TripSession;->getActiveTripAscentM()D

    move-result-wide v31

    add-double v22, v22, v31

    .line 1005
    invoke-static {}, Lcom/geely/drivemem/state/TripSession;->getActiveTripDescentM()D

    move-result-wide v31

    add-double v24, v24, v31

    .line 1006
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    invoke-static {}, Lcom/geely/drivemem/state/TripSession;->getActiveTripStartMs()J

    move-result-wide v35

    move/from16 v16, v2

    sub-long v1, v31, v35

    cmp-long v31, v1, v10

    if-lez v31, :cond_1c

    long-to-double v1, v1

    div-double v1, v1, v18

    add-double v26, v26, v1

    goto :goto_f

    :cond_1b
    move/from16 v16, v2

    :cond_1c
    :goto_f
    const-wide/16 v1, 0x0

    cmpl-double v18, v26, v1

    if-lez v18, :cond_1d

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    div-double v1, v26, v1

    div-double v1, v8, v1

    .line 1016
    :cond_1d
    invoke-static {}, Lcom/geely/drivemem/state/ChargeSession;->activeRowId()J

    move-result-wide v18

    cmp-long v10, v18, v10

    if-lez v10, :cond_1e

    .line 1017
    invoke-static {}, Lcom/geely/drivemem/state/ChargeSession;->isCharging()Z

    move-result v10

    if-eqz v10, :cond_1e

    const/4 v10, 0x1

    goto :goto_10

    :cond_1e
    const/4 v10, 0x0

    :goto_10
    if-eqz v10, :cond_1f

    .line 1018
    const-string v11, " AND id != ?"

    goto :goto_11

    :cond_1f
    const-string v11, ""

    :goto_11
    if-eqz v10, :cond_20

    const/4 v10, 0x3

    .line 1020
    new-array v10, v10, [Ljava/lang/String;

    move-wide/from16 v28, v1

    const/4 v1, 0x0

    aput-object v15, v10, v1

    const/4 v2, 0x1

    aput-object v7, v10, v2

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    const/4 v2, 0x2

    aput-object v17, v10, v2

    goto :goto_12

    :cond_20
    move-wide/from16 v28, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1021
    new-array v10, v2, [Ljava/lang/String;

    aput-object v15, v10, v1

    const/4 v2, 0x1

    aput-object v7, v10, v2

    .line 1022
    :goto_12
    const-string v2, "SELECT COUNT(*), COALESCE(SUM(kwh),0), COALESCE(SUM(cost),0) FROM charge_session WHERE start_ms >= ? AND start_ms < ?"

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1026
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_21

    .line 1027
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v1, 0x1

    .line 1028
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    const/4 v1, 0x2

    .line 1029
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-wide/from16 v39, v16

    move/from16 v16, v4

    move-wide v4, v10

    .line 1031
    :cond_21
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    if-eqz v34, :cond_22

    .line 1033
    invoke-static {}, Lcom/geely/drivemem/state/ChargeSession;->isCharging()Z

    move-result v1

    if-eqz v1, :cond_22

    add-int/lit8 v16, v16, 0x1

    .line 1035
    invoke-static {}, Lcom/geely/drivemem/state/ChargeSession;->currentKwh()D

    move-result-wide v1

    add-double/2addr v4, v1

    :cond_22
    const/4 v10, 0x2

    .line 1040
    new-array v1, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v15, v1, v11

    const/16 v17, 0x1

    aput-object v7, v1, v17

    const-string v2, "ts_ms >= ? AND ts_ms < ?"

    invoke-static {v14, v2, v1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->queryDrivingConsumption(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Lcom/geely/drivemem/sensors/DrivingConsumption;

    move-result-object v1

    .line 1042
    iget-wide v10, v1, Lcom/geely/drivemem/sensors/DrivingConsumption;->totalSpent:D

    move-wide/from16 v18, v4

    .line 1043
    iget-wide v4, v1, Lcom/geely/drivemem/sensors/DrivingConsumption;->totalRegen:D

    sub-double v31, v10, v4

    .line 1045
    invoke-virtual {v1}, Lcom/geely/drivemem/sensors/DrivingConsumption;->energySource()Lcom/geely/drivemem/sensors/EnergySource;

    move-result-object v15

    move-wide/from16 v35, v4

    move/from16 v41, v16

    move-wide/from16 v44, v18

    move-wide/from16 v42, v20

    move-wide/from16 v37, v31

    move/from16 v20, v33

    move-wide/from16 v1, v39

    move-wide/from16 v31, v10

    move/from16 v21, v12

    move-wide/from16 v39, v28

    move-wide v10, v8

    move-wide/from16 v28, v26

    move/from16 v27, v6

    move/from16 v26, v13

    goto :goto_13

    :catchall_1
    move-exception v0

    .line 1031
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_2
    move-exception v0

    .line 1001
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_3
    move-exception v0

    .line 976
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_4
    move-exception v0

    .line 948
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_23
    move/from16 v33, v1

    move/from16 v16, v2

    move/from16 v17, v10

    move-wide/from16 v44, v4

    move-wide v10, v8

    move/from16 v41, v16

    move-wide/from16 v42, v20

    move-wide/from16 v28, v26

    move/from16 v20, v33

    move-wide/from16 v1, v39

    move/from16 v27, v6

    move/from16 v21, v12

    move/from16 v26, v13

    move-wide/from16 v39, v18

    :goto_13
    move-wide v4, v10

    move-wide/from16 v6, v31

    move-wide/from16 v8, v35

    .line 1048
    invoke-static/range {v4 .. v9}, Lcom/geely/drivemem/sensors/DrivingConsumption;->efficiencyKwh100km(DDD)D

    move-result-wide v12

    sub-double v18, v22, v24

    move-object/from16 v4, p0

    .line 1052
    invoke-static {v4, v14, v0}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->queryDaySessions(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v33

    .line 1054
    new-instance v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;

    move-wide v6, v1

    move-object v1, v8

    move-object/from16 v2, p1

    move-wide v4, v10

    move-wide v10, v6

    move-wide/from16 v6, v31

    move-object v0, v8

    move-wide/from16 v8, v35

    move-wide/from16 v46, v10

    move/from16 v35, v17

    const/16 v16, 0x2

    move-wide/from16 v10, v37

    move-object/from16 v48, v14

    move-object/from16 v49, v15

    move-wide/from16 v14, v22

    move-wide/from16 v16, v24

    move/from16 v22, v26

    move/from16 v23, v27

    move-wide/from16 v24, v28

    move-wide/from16 v26, v39

    move-wide/from16 v28, v42

    move/from16 v30, v41

    move-wide/from16 v31, v44

    invoke-direct/range {v1 .. v33}, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;-><init>(Ljava/lang/String;Ljava/lang/String;DDDDDDDDIIIIDDDIDLjava/util/List;)V

    move-wide/from16 v1, v46

    .line 1057
    iput-wide v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->chargeCost:D

    move-object/from16 v15, v49

    .line 1058
    iput-object v15, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->energySource:Lcom/geely/drivemem/sensors/EnergySource;

    .line 1067
    invoke-static/range {p1 .. p1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->dayBoundsMs(Ljava/lang/String;)[J

    move-result-object v1

    const/4 v2, 0x2

    .line 1068
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    .line 1070
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aget-wide v4, v1, v35

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v35

    .line 1068
    const-string v1, "SELECT MAX(altitude_m) FROM telemetry_sample WHERE ts_ms >= ? AND ts_ms < ?"

    move-object/from16 v4, v48

    invoke-virtual {v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1072
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->maxAltitudeM:D
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1073
    :cond_24
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-nez v34, :cond_25

    .line 1075
    sget-object v1, Lcom/geely/drivemem/sensors/DailyStatsProvider;->DAY_CACHE:Ljava/util/Map;

    move-object v2, v0

    move-object/from16 v0, p1

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_25
    move-object v2, v0

    :goto_14
    return-object v2

    :catchall_5
    move-exception v0

    .line 1073
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getEnergyBalanceDays(Landroid/content/Context;Ljava/util/List;I)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/geely/drivemem/state/ChargeSession$Summary;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/geely/drivemem/sensors/DailyStatsProvider$DayEnergyBalance;",
            ">;"
        }
    .end annotation

    move/from16 v0, p2

    .line 669
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 670
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 671
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, v0

    const-wide/32 v7, 0x5265c00

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v3, 0xb

    const/4 v4, 0x0

    .line 672
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    .line 673
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 675
    invoke-static/range {p0 .. p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_3

    .line 677
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    const/4 v6, 0x5

    const/4 v7, 0x1

    .line 678
    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 679
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    .line 681
    new-instance v12, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayEnergyBalance;

    sget-object v6, Lcom/geely/drivemem/sensors/DailyStatsProvider;->DAY_FMT:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v12, v6}, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayEnergyBalance;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x2

    .line 682
    new-array v8, v6, [Ljava/lang/String;

    .line 693
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 682
    const-string v9, "SELECT COALESCE(SUM(energy_spent_kwh),0), COALESCE(SUM(energy_regen_kwh),0),        SUM(CASE WHEN (energy_measured = 1 OR battery_temp_c IS NOT NULL) THEN 1 ELSE 0 END),        SUM(CASE WHEN ((energy_measured = 0 AND battery_temp_c IS NULL) AND (IFNULL(energy_spent_kwh,0) != 0 OR IFNULL(energy_regen_kwh,0) != 0)) THEN 1 ELSE 0 END) FROM telemetry_sample WHERE ts_ms >= ? AND ts_ms < ? AND (is_charging IS NULL OR is_charging = 0)"

    invoke-virtual {v3, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 695
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 696
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    iput-wide v9, v12, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayEnergyBalance;->spentKwh:D

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    iput-wide v9, v12, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayEnergyBalance;->regenKwh:D

    .line 697
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v6, v7, v9, v10}, Lcom/geely/drivemem/sensors/EnergySource;->resolve(JJ)Lcom/geely/drivemem/sensors/EnergySource;

    move-result-object v6

    iput-object v6, v12, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayEnergyBalance;->energySource:Lcom/geely/drivemem/sensors/EnergySource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 701
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lcom/geely/drivemem/state/ChargeSession$Summary;

    .line 702
    iget-wide v10, v13, Lcom/geely/drivemem/state/ChargeSession$Summary;->startWallMs:J

    iget-wide v8, v13, Lcom/geely/drivemem/state/ChargeSession$Summary;->endWallMs:J

    move-wide v6, v14

    move-wide/from16 v19, v8

    move-wide/from16 v8, v16

    move-object v4, v12

    move-object/from16 p0, v13

    move-wide/from16 v12, v19

    invoke-static/range {v6 .. v13}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->overlapFraction(JJJJ)D

    move-result-wide v6

    .line 703
    invoke-virtual/range {p0 .. p0}, Lcom/geely/drivemem/state/ChargeSession$Summary;->isDcfc()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-wide v8, v4, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayEnergyBalance;->dcKwh:D

    move-object/from16 v10, p0

    iget-wide v10, v10, Lcom/geely/drivemem/state/ChargeSession$Summary;->kwh:D

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    iput-wide v8, v4, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayEnergyBalance;->dcKwh:D

    goto :goto_2

    :cond_1
    move-object/from16 v10, p0

    .line 704
    iget-wide v8, v4, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayEnergyBalance;->acKwh:D

    iget-wide v10, v10, Lcom/geely/drivemem/state/ChargeSession$Summary;->kwh:D

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    iput-wide v8, v4, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayEnergyBalance;->acKwh:D

    :goto_2
    move-object v12, v4

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    move-object v4, v12

    .line 706
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 699
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    return-object v1
.end method

.method public static getHourlySpeedData(Landroid/content/Context;Ljava/lang/String;)Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;
    .locals 13

    .line 526
    new-instance v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;

    invoke-direct {v0}, Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;-><init>()V

    .line 527
    invoke-static {p1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->dayBoundsMs(Ljava/lang/String;)[J

    move-result-object p1

    .line 533
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-wide v4, p1, v3

    .line 538
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v4, 0x1

    aget-wide v5, p1, v4

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    .line 533
    const-string p1, "SELECT odo_km, speed_kmh, ts_ms FROM telemetry_sample WHERE ts_ms >= ? AND ts_ms < ? AND (CASE WHEN gear IS NOT NULL THEN gear <> 4      ELSE (is_charging IS NULL OR is_charging = 0) END) ORDER BY id ASC"

    invoke-virtual {p0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 541
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 542
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const-wide/16 v7, 0x0

    if-eqz v2, :cond_4

    .line 543
    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 544
    :cond_1
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    .line 545
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v11

    cmpg-double v2, v9, v7

    if-lez v2, :cond_0

    cmpg-double v2, v11, v7

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    cmpl-double v2, v5, v7

    if-ltz v2, :cond_3

    cmpl-double v2, v9, v5

    if-ltz v2, :cond_3

    sub-double v5, v9, v5

    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    cmpg-double v2, v5, v7

    if-gez v2, :cond_3

    .line 548
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v2, 0xb

    .line 549
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 550
    invoke-static {v11, v12}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->speedBucketFor(D)I

    move-result v7

    .line 551
    iget-object v8, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;->km:[[D

    aget-object v2, v8, v2

    aget-wide v11, v2, v7

    add-double/2addr v11, v5

    aput-wide v11, v2, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    move-wide v5, v9

    goto :goto_0

    .line 555
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move p0, v3

    :goto_1
    const/16 p1, 0x18

    if-ge p0, p1, :cond_7

    .line 558
    iget-object p1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;->km:[[D

    aget-object p1, p1, p0

    array-length v1, p1

    move v2, v3

    move-wide v4, v7

    :goto_2
    if-ge v2, v1, :cond_5

    aget-wide v9, p1, v2

    add-double/2addr v4, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 559
    :cond_5
    iget-wide v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;->maxHourlyTotalKm:D

    cmpl-double p1, v4, v1

    if-lez p1, :cond_6

    iput-wide v4, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;->maxHourlyTotalKm:D

    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_7
    return-object v0

    :catchall_0
    move-exception p1

    .line 555
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method public static getHourlySpeedData(Landroid/content/Context;Ljava/util/List;)Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;"
        }
    .end annotation

    .line 570
    new-instance v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;

    invoke-direct {v0}, Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;-><init>()V

    .line 571
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 572
    invoke-static {p0, v1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->getHourlySpeedData(Landroid/content/Context;Ljava/lang/String;)Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;

    move-result-object v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    move v5, v3

    .line 574
    :goto_1
    iget-object v6, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;->km:[[D

    aget-object v6, v6, v4

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 575
    iget-object v6, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;->km:[[D

    aget-object v6, v6, v4

    aget-wide v7, v6, v5

    iget-object v9, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;->km:[[D

    aget-object v9, v9, v4

    aget-wide v9, v9, v5

    add-double/2addr v7, v9

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move p0, v3

    :goto_2
    if-ge p0, v2, :cond_5

    .line 579
    iget-object p1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;->km:[[D

    aget-object p1, p1, p0

    array-length v1, p1

    const-wide/16 v4, 0x0

    move v6, v3

    :goto_3
    if-ge v6, v1, :cond_3

    aget-wide v7, p1, v6

    add-double/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 580
    :cond_3
    iget-wide v6, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;->maxHourlyTotalKm:D

    cmpl-double p1, v4, v6

    if-lez p1, :cond_4

    iput-wide v4, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;->maxHourlyTotalKm:D

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public static getRecentDays(Landroid/content/Context;I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/geely/drivemem/sensors/DailyStatsProvider$DayItem;",
            ">;"
        }
    .end annotation

    .line 762
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 763
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x1

    .line 766
    new-array v3, v2, [Ljava/lang/String;

    .line 768
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 766
    const-string v4, "SELECT date, MAX(0, last_odo_km - first_odo_km) AS km FROM daily_stat ORDER BY date DESC LIMIT ?"

    invoke-virtual {v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 769
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 771
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 772
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    .line 774
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 782
    invoke-static {}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->todayDateStr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->dayBoundsMs(Ljava/lang/String;)[J

    move-result-object v3

    aget-wide v6, v3, v5

    const-wide/32 v8, 0x240c8400

    sub-long/2addr v6, v8

    const/4 v3, 0x2

    .line 783
    new-array v8, v3, [Ljava/lang/String;

    .line 792
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v2

    .line 783
    const-string v6, "SELECT grp.day, MAX(0, last.odo_km - first.odo_km) AS km FROM (SELECT date(ts_ms/1000,\'unixepoch\',\'localtime\') AS day,         MIN(id) AS first_id, MAX(id) AS last_id  FROM telemetry_sample WHERE odo_km > 0 AND ts_ms >= ? GROUP BY day) grp JOIN telemetry_sample first ON first.id = grp.first_id JOIN telemetry_sample last ON last.id = grp.last_id WHERE grp.day NOT IN (SELECT date FROM daily_stat) ORDER BY grp.day DESC LIMIT ?"

    invoke-virtual {v1, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 794
    :goto_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 795
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 797
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 799
    invoke-static {}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->todayDateStr()Ljava/lang/String;

    move-result-object v6

    .line 800
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-wide/16 v7, 0x0

    .line 801
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    :cond_2
    invoke-static {v6}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->dayBoundsMs(Ljava/lang/String;)[J

    move-result-object v7

    .line 806
    new-array v3, v3, [Ljava/lang/String;

    aget-wide v8, v7, v5

    .line 809
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    aget-wide v7, v7, v2

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    .line 806
    const-string v2, "SELECT odo_km FROM telemetry_sample WHERE ts_ms >= ? AND ts_ms < ?   AND odo_km > 0 ORDER BY id ASC LIMIT 1"

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 811
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 812
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    .line 813
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object p0

    const-string v7, "telemetry.odometer"

    invoke-virtual {p0, v7}, Lcom/geely/drivemem/car/CarActor;->get(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0

    .line 814
    iget-object v7, p0, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v8, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Number;

    if-eqz v7, :cond_3

    .line 815
    iget-object p0, p0, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    cmpl-double p0, v7, v2

    if-ltz p0, :cond_3

    sub-double/2addr v7, v2

    .line 817
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {v4, v6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 821
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 824
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 825
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 826
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    .line 827
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 828
    invoke-static {v1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->shortLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 829
    new-instance v3, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayItem;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {v3, v1, v2, v5, v6}, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayItem;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    return-object v0

    :catchall_0
    move-exception p0

    .line 821
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p0

    :catchall_1
    move-exception p0

    .line 797
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw p0

    :catchall_2
    move-exception p0

    .line 774
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw p0
.end method

.method public static getSpeedBucketEfficiency(Landroid/content/Context;Ljava/lang/String;)[Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;
    .locals 0

    .line 607
    invoke-static {p1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->dayBoundsMs(Ljava/lang/String;)[J

    move-result-object p1

    invoke-static {p0, p1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->getSpeedBucketEfficiency(Landroid/content/Context;[J)[Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;

    move-result-object p0

    return-object p0
.end method

.method public static getSpeedBucketEfficiency(Landroid/content/Context;Ljava/util/List;)[Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;"
        }
    .end annotation

    .line 624
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->todayDateStr()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->getSpeedBucketEfficiency(Landroid/content/Context;Ljava/lang/String;)[Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 625
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->dayBoundsMs(Ljava/lang/String;)[J

    move-result-object v1

    aget-wide v1, v1, v0

    .line 626
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->dayBoundsMs(Ljava/lang/String;)[J

    move-result-object p1

    aget-wide v5, p1, v4

    const/4 p1, 0x2

    .line 627
    new-array p1, p1, [J

    aput-wide v1, p1, v0

    aput-wide v5, p1, v4

    invoke-static {p0, p1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->getSpeedBucketEfficiency(Landroid/content/Context;[J)[Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;

    move-result-object p0

    return-object p0
.end method

.method private static getSpeedBucketEfficiency(Landroid/content/Context;[J)[Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;
    .locals 8

    .line 631
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x2

    .line 632
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aget-wide v2, p1, v1

    .line 634
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    .line 632
    const-string p1, "ts_ms >= ? AND ts_ms < ?"

    invoke-static {p0, p1, v0}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->queryDrivingConsumption(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Lcom/geely/drivemem/sensors/DrivingConsumption;

    move-result-object p0

    .line 636
    sget-object p1, Lcom/geely/drivemem/sensors/DailyStatsProvider;->SPEED_BUCKET_MAX:[D

    array-length p1, p1

    new-array p1, p1, [Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;

    .line 637
    :goto_0
    sget-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider;->SPEED_BUCKET_MAX:[D

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/geely/drivemem/sensors/DrivingConsumption;->spent:[D

    aget-wide v2, v0, v1

    iget-object v0, p0, Lcom/geely/drivemem/sensors/DrivingConsumption;->regen:[D

    aget-wide v4, v0, v1

    iget-object v0, p0, Lcom/geely/drivemem/sensors/DrivingConsumption;->distance:[D

    aget-wide v6, v0, v1

    invoke-static/range {v2 .. v7}, Lcom/geely/drivemem/sensors/DrivingConsumption;->per100km(DDD)D

    move-result-wide v2

    .line 640
    new-instance v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;

    iget-object v4, p0, Lcom/geely/drivemem/sensors/DrivingConsumption;->distance:[D

    aget-wide v4, v4, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;-><init>(DD)V

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static getStatsDetail(Landroid/content/Context;Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;Ljava/lang/String;)Lcom/geely/drivemem/sensors/DailyStatsProvider$StatsDetail;
    .locals 2

    .line 494
    invoke-static {p1, p2}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->datesForGranularity(Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 495
    invoke-static {p1, p2, v0}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->labelForGranularity(Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 496
    invoke-static {p0, v0, p1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->buildPeriodOverview(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;

    move-result-object p1

    .line 497
    new-instance p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$StatsDetail;

    .line 498
    invoke-static {p0, v0}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->getHourlySpeedData(Landroid/content/Context;Ljava/util/List;)Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;

    move-result-object v1

    .line 499
    invoke-static {p0, v0}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->getSpeedBucketEfficiency(Landroid/content/Context;Ljava/util/List;)[Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;

    move-result-object p0

    invoke-direct {p2, p1, v1, p0}, Lcom/geely/drivemem/sensors/DailyStatsProvider$StatsDetail;-><init>(Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;[Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;)V

    return-object p2
.end method

.method private static hasAnyTelemetry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 5

    .line 375
    invoke-static {p1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->dayBoundsMs(Ljava/lang/String;)[J

    move-result-object p1

    const/4 v0, 0x2

    .line 376
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aget-wide v2, p1, v1

    .line 378
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    .line 376
    const-string p1, "SELECT EXISTS(SELECT 1 FROM telemetry_sample WHERE ts_ms >= ? AND ts_ms < ?)"

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 379
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method private static labelForGranularity(Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 486
    sget-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$1;->$SwitchMap$com$geely$drivemem$sensors$DailyStatsProvider$Granularity:[I

    invoke-virtual {p0}, Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 p2, 0x2

    if-eq p0, p2, :cond_0

    .line 489
    invoke-static {p1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->formatDisplayDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 488
    :cond_0
    invoke-static {p1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->monthLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 487
    :cond_1
    invoke-static {p2}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->weekLabel(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$queryDaySessions$0(Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;)I
    .locals 2

    .line 1299
    iget-wide v0, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;->startMs:J

    iget-wide p0, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;->startMs:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static monthDates(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 336
    invoke-static {p0}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->dayCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 337
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 338
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    .line 339
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 341
    sget-object v5, Lcom/geely/drivemem/sensors/DailyStatsProvider;->DAY_FMT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private static monthLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 396
    sget-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider;->MONTH_LABEL_FMT:Ljava/text/SimpleDateFormat;

    invoke-static {p0}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->dayCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    const-string v5, "US"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static overlapFraction(JJJJ)D
    .locals 3

    cmp-long v0, p6, p4

    const-wide/16 v1, 0x0

    if-gtz v0, :cond_0

    return-wide v1

    .line 717
    :cond_0
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 718
    invoke-static {p2, p3, p6, p7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    cmp-long v0, p2, p0

    if-gtz v0, :cond_1

    return-wide v1

    :cond_1
    sub-long/2addr p2, p0

    long-to-double p0, p2

    sub-long/2addr p6, p4

    long-to-double p2, p6

    div-double/2addr p0, p2

    return-wide p0
.end method

.method private static parseEnergySource(Ljava/lang/String;)Lcom/geely/drivemem/sensors/EnergySource;
    .locals 0

    if-nez p0, :cond_0

    .line 838
    sget-object p0, Lcom/geely/drivemem/sensors/EnergySource;->NO_DATA:Lcom/geely/drivemem/sensors/EnergySource;

    return-object p0

    .line 839
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/geely/drivemem/sensors/EnergySource;->valueOf(Ljava/lang/String;)Lcom/geely/drivemem/sensors/EnergySource;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 840
    :catch_0
    sget-object p0, Lcom/geely/drivemem/sensors/EnergySource;->NO_DATA:Lcom/geely/drivemem/sensors/EnergySource;

    return-object p0
.end method

.method private static parseTripEnergySource(Ljava/lang/String;)Lcom/geely/drivemem/sensors/EnergySource;
    .locals 1

    .line 848
    const-string v0, "SOC_ESTIMATED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/geely/drivemem/sensors/EnergySource;->ESTIMATED:Lcom/geely/drivemem/sensors/EnergySource;

    return-object p0

    .line 849
    :cond_0
    const-string v0, "MIXED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/geely/drivemem/sensors/EnergySource;->MIXED:Lcom/geely/drivemem/sensors/EnergySource;

    return-object p0

    .line 850
    :cond_1
    sget-object p0, Lcom/geely/drivemem/sensors/EnergySource;->MEASURED:Lcom/geely/drivemem/sensors/EnergySource;

    return-object p0
.end method

.method private static queryDaySessions(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 49
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1164
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1165
    invoke-static/range {p2 .. p2}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->dayBoundsMs(Ljava/lang/String;)[J

    move-result-object v3

    const/4 v4, 0x0

    .line 1166
    aget-wide v5, v3, v4

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-wide v7, v3, v6

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x2

    .line 1169
    new-array v8, v7, [Ljava/lang/String;

    aput-object v5, v8, v4

    aput-object v3, v8, v6

    const-string v9, "SELECT t.id, t.start_ms, t.end_ms, t.ascent_m, t.descent_m, t.regen_kwh,        s1.odo_km, s2.odo_km, s1.battery_pct, s2.battery_pct,        t.spent_kwh, t.net_kwh, t.energy_source, t.estimated_net_kwh FROM trip t LEFT JOIN telemetry_sample s1 ON t.start_sample_id = s1.id LEFT JOIN telemetry_sample s2 ON t.end_sample_id = s2.id WHERE t.start_ms >= ? AND t.start_ms < ? AND NOT EXISTS (SELECT 1 FROM valet_session v WHERE t.start_ms >= v.start_ms AND t.start_ms < COALESCE(v.end_ms, 9223372036854775807)) ORDER BY t.start_ms ASC"

    invoke-virtual {v0, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1179
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    const/4 v13, 0x4

    const/16 v16, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x3

    const-wide/16 v14, 0x0

    if-eqz v9, :cond_d

    .line 1180
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 1181
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 1182
    invoke-interface {v8, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_0

    const-wide/16 v29, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move-wide/from16 v29, v20

    .line 1183
    :goto_1
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v35

    .line 1184
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v37

    .line 1185
    invoke-interface {v8, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_1

    move-wide v11, v14

    goto :goto_2

    :cond_1
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v11

    .line 1186
    :goto_2
    invoke-interface {v8, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_2

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    goto :goto_3

    :cond_2
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    :goto_3
    const/4 v13, 0x7

    .line 1187
    invoke-interface {v8, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_3

    const/16 v13, 0x8

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    goto :goto_4

    :cond_3
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    const/16 v13, 0x8

    .line 1188
    :goto_4
    invoke-interface {v8, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_4

    const/16 v33, -0x1

    goto :goto_5

    :cond_4
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v33, v13

    :goto_5
    const/16 v13, 0x9

    .line 1189
    invoke-interface {v8, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_5

    const/16 v34, -0x1

    goto :goto_6

    :cond_5
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v34, v13

    :goto_6
    const/16 v13, 0xc

    .line 1190
    invoke-interface {v8, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_6

    goto :goto_7

    :cond_6
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    :goto_7
    invoke-static/range {v16 .. v16}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->parseTripEnergySource(Ljava/lang/String;)Lcom/geely/drivemem/sensors/EnergySource;

    move-result-object v13

    const/16 v6, 0xd

    .line 1191
    invoke-interface {v8, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_7

    const-wide/high16 v16, 0x7ff8000000000000L    # Double.NaN

    goto :goto_8

    :cond_7
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    :goto_8
    cmpl-double v6, v9, v14

    if-lez v6, :cond_8

    cmpl-double v6, v18, v9

    if-ltz v6, :cond_8

    sub-double v18, v18, v9

    move-wide/from16 v31, v18

    goto :goto_9

    :cond_8
    move-wide/from16 v31, v14

    .line 1202
    :goto_9
    sget-object v6, Lcom/geely/drivemem/sensors/EnergySource;->ESTIMATED:Lcom/geely/drivemem/sensors/EnergySource;

    if-ne v13, v6, :cond_9

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isFinite(D)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object/from16 v48, v5

    move-wide v9, v14

    move-wide v11, v9

    :goto_a
    move-wide/from16 v4, v16

    goto :goto_b

    :cond_9
    cmp-long v6, v29, v27

    if-lez v6, :cond_a

    .line 1207
    const-string v6, "ts_ms BETWEEN ? AND ?"

    new-array v9, v7, [Ljava/lang/String;

    .line 1209
    invoke-static/range {v27 .. v28}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 1207
    invoke-static {v0, v6, v9}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->queryDrivingConsumption(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Lcom/geely/drivemem/sensors/DrivingConsumption;

    move-result-object v6

    .line 1210
    iget-wide v9, v6, Lcom/geely/drivemem/sensors/DrivingConsumption;->totalSpent:D

    .line 1211
    iget-wide v11, v6, Lcom/geely/drivemem/sensors/DrivingConsumption;->totalRegen:D

    sub-double v16, v9, v11

    move-object/from16 v48, v5

    goto :goto_a

    :cond_a
    move-object/from16 v48, v5

    move-wide v4, v14

    move-wide v9, v4

    .line 1215
    :goto_b
    sget-object v6, Lcom/geely/drivemem/sensors/EnergySource;->ESTIMATED:Lcom/geely/drivemem/sensors/EnergySource;

    if-ne v13, v6, :cond_b

    const-wide v16, 0x3fc999999999999aL    # 0.2

    cmpl-double v6, v31, v16

    if-lez v6, :cond_c

    .line 1216
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v16

    div-double v14, v14, v31

    goto :goto_c

    :cond_b
    move-wide/from16 v39, v31

    move-wide/from16 v41, v9

    move-wide/from16 v43, v11

    .line 1217
    invoke-static/range {v39 .. v44}, Lcom/geely/drivemem/sensors/DrivingConsumption;->efficiencyKwh100km(DDD)D

    move-result-wide v14

    :cond_c
    :goto_c
    move-wide/from16 v45, v14

    .line 1218
    new-instance v6, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;

    move-object/from16 v24, v6

    move-wide/from16 v39, v11

    move-wide/from16 v41, v9

    move-wide/from16 v43, v4

    move-object/from16 v47, v13

    invoke-direct/range {v24 .. v47}, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;-><init>(JJJDIIDDDDDDLcom/geely/drivemem/sensors/EnergySource;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v5, v48

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v48, v5

    .line 1221
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1224
    invoke-static {}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->todayDateStr()Ljava/lang/String;

    move-result-object v4

    .line 1225
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1226
    invoke-static/range {p0 .. p1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->getActiveDriveSession(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 1227
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1236
    :cond_e
    new-array v5, v7, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v8, 0x1

    aput-object v48, v5, v8

    const-string v8, "SELECT id, start_ms, end_ms, start_odo_km, end_odo_km, max_speed_kmh, max_power_kw, start_soc, end_soc FROM valet_session WHERE start_ms < ? AND (end_ms IS NULL OR end_ms >= ?) ORDER BY start_ms ASC"

    invoke-virtual {v0, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1242
    :goto_d
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 1243
    invoke-interface {v5, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_f

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    goto :goto_e

    :cond_f
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    .line 1244
    :goto_e
    invoke-interface {v5, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_10

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    goto :goto_f

    :cond_10
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v24

    :goto_f
    cmpl-double v26, v8, v14

    if-ltz v26, :cond_11

    cmpl-double v26, v24, v8

    if-ltz v26, :cond_11

    sub-double v24, v24, v8

    move-wide/from16 v33, v24

    goto :goto_10

    :cond_11
    move-wide/from16 v33, v14

    .line 1246
    :goto_10
    new-instance v8, Lcom/geely/drivemem/sensors/DailyStatsProvider$ValetSessionItem;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    const/4 v9, 0x1

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_12

    const-wide/16 v31, 0x0

    goto :goto_11

    :cond_12
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    move-wide/from16 v31, v24

    .line 1247
    :goto_11
    invoke-interface {v5, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_13

    move-wide/from16 v35, v14

    goto :goto_12

    :cond_13
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v24

    move-wide/from16 v35, v24

    :goto_12
    invoke-interface {v5, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_14

    move-object/from16 v37, v16

    :goto_13
    const/4 v9, 0x7

    goto :goto_14

    :cond_14
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    move-object/from16 v37, v9

    goto :goto_13

    .line 1248
    :goto_14
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_15

    const/16 v9, 0x8

    const/16 v38, -0x1

    goto :goto_15

    :cond_15
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move/from16 v38, v24

    const/16 v9, 0x8

    :goto_15
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_16

    const/16 v39, -0x1

    goto :goto_16

    :cond_16
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move/from16 v39, v24

    :goto_16
    move-object/from16 v26, v8

    invoke-direct/range {v26 .. v39}, Lcom/geely/drivemem/sensors/DailyStatsProvider$ValetSessionItem;-><init>(JJJDDLjava/lang/Double;II)V

    .line 1246
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_d

    .line 1250
    :cond_17
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1253
    invoke-static {}, Lcom/geely/drivemem/state/ChargeSession;->activeRowId()J

    move-result-wide v8

    const-wide/16 v17, 0x0

    cmp-long v5, v8, v17

    if-lez v5, :cond_18

    .line 1254
    invoke-static {}, Lcom/geely/drivemem/state/ChargeSession;->isCharging()Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v5, 0x1

    goto :goto_17

    :cond_18
    const/4 v5, 0x0

    :goto_17
    if-eqz v5, :cond_19

    .line 1255
    const-string v17, " AND c.id != ? "

    goto :goto_18

    :cond_19
    const-string v17, ""

    :goto_18
    move-object/from16 v6, v17

    if-eqz v5, :cond_1a

    .line 1257
    new-array v5, v12, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v48, v5, v17

    const/16 v18, 0x1

    aput-object v3, v5, v18

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v7

    goto :goto_19

    :cond_1a
    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 1258
    new-array v5, v7, [Ljava/lang/String;

    aput-object v48, v5, v17

    aput-object v3, v5, v18

    .line 1259
    :goto_19
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "SELECT c.id, c.start_ms, c.end_ms, c.soc_start, c.soc_end, c.kwh, c.avg_power_w,        c.max_charge_v, c.cost FROM charge_session c LEFT JOIN telemetry_sample s1 ON c.start_sample_id = s1.id WHERE c.start_ms >= ? AND c.start_ms < ?"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "ORDER BY c.start_ms ASC"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1266
    :goto_1a
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    .line 1267
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    const/4 v5, 0x1

    .line 1268
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 1269
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 1270
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 1271
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 1272
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v33

    .line 1273
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    const-wide v17, 0x408f400000000000L    # 1000.0

    div-double v35, v8, v17

    const/4 v6, 0x7

    .line 1274
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_1b

    move-object/from16 v8, v16

    goto :goto_1b

    :cond_1b
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    :goto_1b
    if-eqz v8, :cond_1c

    .line 1275
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Lcom/geely/drivemem/state/ChargeSession;->isDcfc(D)Z

    move-result v8

    if-eqz v8, :cond_1c

    move/from16 v37, v5

    goto :goto_1c

    :cond_1c
    move/from16 v37, v0

    :goto_1c
    const/16 v8, 0x8

    .line 1276
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_1d

    move-object/from16 v38, v16

    goto :goto_1d

    :cond_1d
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    move-object/from16 v38, v9

    .line 1277
    :goto_1d
    new-instance v9, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;

    move-object/from16 v24, v9

    invoke-direct/range {v24 .. v38}, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;-><init>(JJJIIDDZLjava/lang/Double;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1a

    :cond_1e
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 1279
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1282
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {}, Lcom/geely/drivemem/state/ChargeSession;->isCharging()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1283
    invoke-static {}, Lcom/geely/drivemem/state/ChargeSession;->currentStartWallMs()J

    move-result-wide v25

    .line 1284
    invoke-static {}, Lcom/geely/drivemem/state/ChargeSession;->currentSocStart()I

    move-result v29

    .line 1285
    invoke-static {}, Lcom/geely/drivemem/state/ChargeSession;->currentSocEnd()I

    move-result v30

    .line 1286
    invoke-static {}, Lcom/geely/drivemem/state/ChargeSession;->currentKwh()D

    move-result-wide v31

    .line 1287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v25

    const-wide/16 v6, 0x0

    cmp-long v1, v3, v6

    if-lez v1, :cond_1f

    long-to-double v3, v3

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double/2addr v3, v6

    div-double v14, v31, v3

    :cond_1f
    move-wide/from16 v33, v14

    .line 1290
    invoke-static/range {p0 .. p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object v1

    const-string v3, "telemetry.charge_v"

    invoke-virtual {v1, v3}, Lcom/geely/drivemem/car/CarActor;->get(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v1

    .line 1291
    iget-object v3, v1, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v4, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne v3, v4, :cond_20

    iget-object v3, v1, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Float;

    if-eqz v3, :cond_20

    .line 1292
    iget-object v1, v1, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/Float;

    :cond_20
    if-eqz v16, :cond_21

    .line 1294
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Lcom/geely/drivemem/state/ChargeSession;->isDcfc(D)Z

    move-result v1

    if-eqz v1, :cond_21

    move/from16 v35, v5

    goto :goto_1e

    :cond_21
    move/from16 v35, v0

    .line 1295
    :goto_1e
    new-instance v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;

    const-wide/16 v23, 0x0

    const-wide/16 v27, 0x0

    move-object/from16 v22, v0

    invoke-direct/range {v22 .. v35}, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;-><init>(JJJIIDDZ)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1299
    :cond_22
    new-instance v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/geely/drivemem/sensors/DailyStatsProvider$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v2

    :catchall_0
    move-exception v0

    .line 1279
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_1
    move-exception v0

    .line 1250
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_2
    move-exception v0

    .line 1221
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static queryDrivingConsumption(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Lcom/geely/drivemem/sensors/DrivingConsumption;
    .locals 23

    .line 728
    new-instance v0, Lcom/geely/drivemem/sensors/DrivingConsumption;

    invoke-direct {v0}, Lcom/geely/drivemem/sensors/DrivingConsumption;-><init>()V

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT ts_ms, odo_km, speed_kmh, gear, is_charging,        energy_spent_kwh, energy_regen_kwh, instant_power_kw_est, energy_measured,        battery_temp_c FROM telemetry_sample WHERE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ORDER BY ts_ms ASC, id ASC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 735
    :goto_0
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    .line 736
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    .line 737
    invoke-interface {v14, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    if-eqz v5, :cond_0

    move-wide v8, v6

    goto :goto_1

    :cond_0
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    :goto_1
    const/4 v5, 0x2

    .line 738
    invoke-interface {v14, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    move-wide v10, v6

    goto :goto_2

    :cond_1
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    :goto_2
    const/4 v5, 0x3

    .line 739
    invoke-interface {v14, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_2

    move-object v12, v13

    goto :goto_3

    :cond_2
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v12, v5

    :goto_3
    const/4 v5, 0x4

    .line 740
    invoke-interface {v14, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_3

    move v15, v4

    goto :goto_4

    :cond_3
    move v15, v1

    :goto_4
    const/4 v1, 0x5

    .line 741
    invoke-interface {v14, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_4

    move-wide/from16 v16, v6

    goto :goto_5

    :cond_4
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    :goto_5
    const/4 v1, 0x6

    .line 742
    invoke-interface {v14, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_5

    move-wide/from16 v18, v6

    goto :goto_6

    :cond_5
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    :goto_6
    const/4 v1, 0x7

    .line 743
    invoke-interface {v14, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_6

    move-wide/from16 v20, v6

    goto :goto_7

    :cond_6
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    move-wide/from16 v20, v5

    :goto_7
    const/16 v1, 0x8

    .line 744
    invoke-interface {v14, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_8

    :cond_7
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    :goto_8
    const/16 v1, 0x9

    .line 749
    invoke-interface {v14, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_9

    if-eqz v13, :cond_8

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v22, v1

    goto :goto_9

    :cond_9
    move-object/from16 v22, v13

    :goto_9
    move-object v1, v0

    move-wide v4, v8

    move-wide v6, v10

    move-object v8, v12

    move v9, v15

    move-wide/from16 v10, v16

    move-wide/from16 v12, v18

    move-object/from16 v17, v14

    move-wide/from16 v14, v20

    move-object/from16 v16, v22

    .line 750
    :try_start_1
    invoke-virtual/range {v1 .. v16}, Lcom/geely/drivemem/sensors/DrivingConsumption;->add(JDDLjava/lang/Integer;ZDDDLjava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v14, v17

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_a

    :cond_a
    move-object/from16 v17, v14

    .line 752
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v17, v14

    :goto_a
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static recentMonths(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;",
            ">;"
        }
    .end annotation

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 423
    invoke-static {p1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->dayCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 424
    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr p2, v2

    :goto_0
    if-ltz p2, :cond_0

    .line 426
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    const/4 v2, 0x2

    neg-int v3, p2

    .line 427
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 428
    sget-object v2, Lcom/geely/drivemem/sensors/DailyStatsProvider;->DAY_FMT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-static {v1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->monthDates(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->monthLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->buildPeriodOverview(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static recentWeeks(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;",
            ">;"
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 409
    invoke-static {p1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->dayCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p1

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_0

    .line 411
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    mul-int/lit8 v2, p2, -0x7

    const/4 v3, 0x5

    .line 412
    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 413
    sget-object v2, Lcom/geely/drivemem/sensors/DailyStatsProvider;->DAY_FMT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->weekDates(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 414
    invoke-static {v1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->weekLabel(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->buildPeriodOverview(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static shortLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1304
    :try_start_0
    sget-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider;->SHORT_DAY_FMT:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/geely/drivemem/sensors/DailyStatsProvider;->DAY_FMT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method private static speedBucketFor(D)I
    .locals 3

    const/4 v0, 0x0

    .line 513
    :goto_0
    sget-object v1, Lcom/geely/drivemem/sensors/DailyStatsProvider;->SPEED_BUCKET_MAX:[D

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 514
    aget-wide v1, v1, v0

    cmpg-double v1, p0, v1

    if-gez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 516
    :cond_1
    array-length p0, v1

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static todayDateStr()Ljava/lang/String;
    .locals 2

    .line 757
    sget-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider;->DAY_FMT:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static weekDates(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 323
    invoke-static {p0}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->dayCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x2

    .line 324
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    const/4 v1, 0x7

    .line 325
    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 328
    sget-object v3, Lcom/geely/drivemem/sensors/DailyStatsProvider;->DAY_FMT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x5

    const/4 v4, 0x1

    .line 329
    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static weekLabel(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 387
    const-string v0, " - "

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/geely/drivemem/sensors/DailyStatsProvider;->WEEK_BOUND_FMT:Ljava/text/SimpleDateFormat;

    sget-object v3, Lcom/geely/drivemem/sensors/DailyStatsProvider;->DAY_FMT:Ljava/text/SimpleDateFormat;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 388
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 391
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
