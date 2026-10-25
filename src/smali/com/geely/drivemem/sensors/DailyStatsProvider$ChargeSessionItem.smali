.class public final Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;
.super Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;
.source "DailyStatsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/sensors/DailyStatsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChargeSessionItem"
.end annotation


# instance fields
.field public final avgPowerKw:D

.field public final chargeId:J

.field public final cost:Ljava/lang/Double;

.field public final isDcfc:Z

.field public final kwh:D

.field public final socEnd:I

.field public final socStart:I


# direct methods
.method public constructor <init>(JJJIIDDZ)V
    .locals 15

    const/4 v14, 0x0

    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move/from16 v13, p13

    .line 121
    invoke-direct/range {v0 .. v14}, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;-><init>(JJJIIDDZLjava/lang/Double;)V

    return-void
.end method

.method public constructor <init>(JJJIIDDZLjava/lang/Double;)V
    .locals 0

    .line 126
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;-><init>(JJ)V

    .line 127
    iput-wide p1, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->chargeId:J

    .line 128
    iput p7, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->socStart:I

    .line 129
    iput p8, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->socEnd:I

    .line 130
    iput-wide p9, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->kwh:D

    .line 131
    iput-wide p11, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->avgPowerKw:D

    .line 132
    iput-boolean p13, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->isDcfc:Z

    .line 133
    iput-object p14, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->cost:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public isTrip()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
