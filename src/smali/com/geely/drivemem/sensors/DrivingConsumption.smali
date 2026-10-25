.class public final Lcom/geely/drivemem/sensors/DrivingConsumption;
.super Ljava/lang/Object;
.source "DrivingConsumption.java"


# instance fields
.field final distance:[D

.field estimatedSamples:J

.field measuredSamples:J

.field private previousLegacyTs:J

.field private previousOdo:D

.field final regen:[D

.field final spent:[D

.field totalRegen:D

.field totalSpent:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/geely/drivemem/sensors/DrivingConsumption;->spent:[D

    .line 6
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/geely/drivemem/sensors/DrivingConsumption;->regen:[D

    .line 7
    new-array v0, v0, [D

    iput-object v0, p0, Lcom/geely/drivemem/sensors/DrivingConsumption;->distance:[D

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 10
    iput-wide v0, p0, Lcom/geely/drivemem/sensors/DrivingConsumption;->previousOdo:D

    const-wide/16 v0, -0x1

    .line 11
    iput-wide v0, p0, Lcom/geely/drivemem/sensors/DrivingConsumption;->previousLegacyTs:J

    return-void
.end method

.method public static efficiencyKwh100km(DDD)D
    .locals 5

    const-wide v0, 0x3fc999999999999aL    # 0.2

    cmpg-double v0, p0, v0

    const-wide/16 v1, 0x0

    if-gtz v0, :cond_0

    return-wide v1

    :cond_0
    sub-double p4, p2, p4

    cmpl-double v0, p4, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    if-lez v0, :cond_1

    div-double/2addr p4, p0

    mul-double/2addr p4, v3

    return-wide p4

    :cond_1
    cmpl-double p4, p2, v1

    if-lez p4, :cond_2

    div-double/2addr p2, p0

    mul-double v1, p2, v3

    :cond_2
    return-wide v1
.end method

.method static isDriving(Ljava/lang/Integer;DZ)Z
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_3

    .line 29
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v4, 0x4

    if-ne p3, v4, :cond_0

    return v3

    .line 30
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eq p3, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v4, 0x2

    if-eq p3, v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p3, 0x8

    if-eq p0, p3, :cond_2

    cmpl-double p0, p1, v0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :cond_2
    :goto_0
    return v2

    :cond_3
    if-eqz p3, :cond_4

    return v3

    :cond_4
    cmpl-double p0, p1, v0

    if-lez p0, :cond_5

    goto :goto_1

    :cond_5
    move v2, v3

    :goto_1
    return v2
.end method

.method public static isDriving(Ljava/lang/Integer;Ljava/lang/Boolean;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 40
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    .line 41
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method public static isDriving(Ljava/lang/Integer;Z)Z
    .locals 0

    .line 45
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/geely/drivemem/sensors/DrivingConsumption;->isDriving(Ljava/lang/Integer;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method static per100km(DDD)D
    .locals 3

    const-wide v0, 0x3fc999999999999aL    # 0.2

    cmpl-double v0, p4, v0

    const-wide/16 v1, 0x0

    if-lez v0, :cond_0

    sub-double/2addr p0, p2

    .line 108
    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    div-double/2addr p0, p4

    const-wide/high16 p2, 0x4059000000000000L    # 100.0

    mul-double v1, p0, p2

    :cond_0
    return-wide v1
.end method


# virtual methods
.method add(JDDLjava/lang/Integer;ZDDD)V
    .locals 16

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    .line 50
    invoke-virtual/range {v0 .. v15}, Lcom/geely/drivemem/sensors/DrivingConsumption;->add(JDDLjava/lang/Integer;ZDDDLjava/lang/Integer;)V

    return-void
.end method

.method public add(JDDLjava/lang/Integer;ZDDDLjava/lang/Integer;)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move/from16 v6, p8

    .line 63
    invoke-static {v5, v3, v4, v6}, Lcom/geely/drivemem/sensors/DrivingConsumption;->isDriving(Ljava/lang/Integer;DZ)Z

    move-result v5

    .line 64
    invoke-static/range {p9 .. p10}, Ljava/lang/Double;->isFinite(D)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static/range {p11 .. p12}, Ljava/lang/Double;->isFinite(D)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_1

    .line 65
    invoke-static/range {p13 .. p14}, Ljava/lang/Double;->isFinite(D)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    const-wide/16 v10, 0x0

    if-eqz v5, :cond_2

    if-eqz v9, :cond_2

    .line 67
    iget-wide v12, v0, Lcom/geely/drivemem/sensors/DrivingConsumption;->previousLegacyTs:J

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-ltz v16, :cond_2

    sub-long v12, p1, v12

    cmp-long v14, v12, v14

    if-lez v14, :cond_2

    const-wide/32 v14, 0xea60

    cmp-long v14, v12, v14

    if-gtz v14, :cond_2

    long-to-double v12, v12

    mul-double v12, v12, p13

    const-wide v14, 0x414b774000000000L    # 3600000.0

    div-double/2addr v12, v14

    .line 71
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    neg-double v12, v12

    .line 72
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    move-wide/from16 v14, p9

    move-wide/from16 v12, p11

    :goto_2
    if-eqz v5, :cond_3

    if-eqz v9, :cond_3

    move-wide/from16 v7, p1

    goto :goto_3

    :cond_3
    const-wide/16 v16, -0x1

    move-wide/from16 v7, v16

    .line 77
    :goto_3
    iput-wide v7, v0, Lcom/geely/drivemem/sensors/DrivingConsumption;->previousLegacyTs:J

    if-eqz v5, :cond_d

    if-eqz v6, :cond_d

    .line 79
    iget-wide v5, v0, Lcom/geely/drivemem/sensors/DrivingConsumption;->totalSpent:D

    add-double/2addr v5, v14

    iput-wide v5, v0, Lcom/geely/drivemem/sensors/DrivingConsumption;->totalSpent:D

    .line 80
    iget-wide v5, v0, Lcom/geely/drivemem/sensors/DrivingConsumption;->totalRegen:D

    add-double/2addr v5, v12

    iput-wide v5, v0, Lcom/geely/drivemem/sensors/DrivingConsumption;->totalRegen:D

    cmpl-double v5, v14, v10

    if-nez v5, :cond_5

    cmpl-double v5, v12, v10

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v5, 0x1

    :goto_5
    if-eqz p15, :cond_8

    .line 89
    invoke-virtual/range {p15 .. p15}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_6

    if-eqz v5, :cond_8

    .line 90
    :cond_6
    invoke-virtual/range {p15 .. p15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-wide/16 v6, 0x1

    if-eqz v5, :cond_7

    iget-wide v8, v0, Lcom/geely/drivemem/sensors/DrivingConsumption;->measuredSamples:J

    add-long/2addr v8, v6

    iput-wide v8, v0, Lcom/geely/drivemem/sensors/DrivingConsumption;->measuredSamples:J

    goto :goto_6

    .line 91
    :cond_7
    iget-wide v8, v0, Lcom/geely/drivemem/sensors/DrivingConsumption;->estimatedSamples:J

    add-long/2addr v8, v6

    iput-wide v8, v0, Lcom/geely/drivemem/sensors/DrivingConsumption;->estimatedSamples:J

    .line 93
    :cond_8
    :goto_6
    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->isFinite(D)Z

    move-result v5

    if-eqz v5, :cond_d

    cmpl-double v5, v3, v10

    if-ltz v5, :cond_d

    const-wide/high16 v5, 0x4044000000000000L    # 40.0

    cmpg-double v5, v3, v5

    if-gez v5, :cond_9

    const/4 v7, 0x0

    goto :goto_7

    :cond_9
    const-wide/high16 v5, 0x4054000000000000L    # 80.0

    cmpg-double v5, v3, v5

    if-gez v5, :cond_a

    const/4 v7, 0x1

    goto :goto_7

    :cond_a
    const-wide/high16 v5, 0x405e000000000000L    # 120.0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_b

    const/4 v7, 0x2

    goto :goto_7

    :cond_b
    const/4 v7, 0x3

    .line 95
    :goto_7
    iget-wide v3, v0, Lcom/geely/drivemem/sensors/DrivingConsumption;->previousOdo:D

    sub-double v3, v1, v3

    .line 96
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->isFinite(D)Z

    move-result v5

    if-eqz v5, :cond_c

    cmpl-double v5, v1, v10

    if-lez v5, :cond_c

    cmpl-double v5, v3, v10

    if-ltz v5, :cond_c

    const-wide/high16 v5, 0x4049000000000000L    # 50.0

    cmpg-double v5, v3, v5

    if-gez v5, :cond_c

    .line 97
    iget-object v5, v0, Lcom/geely/drivemem/sensors/DrivingConsumption;->distance:[D

    aget-wide v8, v5, v7

    add-double/2addr v8, v3

    aput-wide v8, v5, v7

    .line 99
    :cond_c
    iget-object v3, v0, Lcom/geely/drivemem/sensors/DrivingConsumption;->spent:[D

    aget-wide v4, v3, v7

    add-double/2addr v4, v14

    aput-wide v4, v3, v7

    .line 100
    iget-object v3, v0, Lcom/geely/drivemem/sensors/DrivingConsumption;->regen:[D

    aget-wide v4, v3, v7

    add-double/2addr v4, v12

    aput-wide v4, v3, v7

    .line 104
    :cond_d
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->isFinite(D)Z

    move-result v3

    if-eqz v3, :cond_e

    cmpl-double v3, v1, v10

    if-lez v3, :cond_e

    iput-wide v1, v0, Lcom/geely/drivemem/sensors/DrivingConsumption;->previousOdo:D

    :cond_e
    return-void
.end method

.method public energySource()Lcom/geely/drivemem/sensors/EnergySource;
    .locals 4

    .line 18
    iget-wide v0, p0, Lcom/geely/drivemem/sensors/DrivingConsumption;->measuredSamples:J

    iget-wide v2, p0, Lcom/geely/drivemem/sensors/DrivingConsumption;->estimatedSamples:J

    invoke-static {v0, v1, v2, v3}, Lcom/geely/drivemem/sensors/EnergySource;->resolve(JJ)Lcom/geely/drivemem/sensors/EnergySource;

    move-result-object v0

    return-object v0
.end method
