.class public final Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;
.super Ljava/lang/Object;
.source "DailyStatsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/sensors/DailyStatsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DayOverview"
.end annotation


# instance fields
.field public final ascentDPlusM:D

.field public final avgSpeedKmh:D

.field public final avgTempC:D

.field public chargeCost:D

.field public final chargeCount:I

.field public final chargeKwh:D

.field public final date:Ljava/lang/String;

.field public final descentDMinusM:D

.field public final dischargeKwh:D

.field public final displayDate:Ljava/lang/String;

.field public final distanceKm:D

.field public final drivingMinutes:D

.field public final efficiencyKwh100km:D

.field public energySource:Lcom/geely/drivemem/sensors/EnergySource;

.field public final firstBatteryPct:I

.field public final lastBatteryPct:I

.field public maxAltitudeM:D

.field public final maxBatteryPct:I

.field public final minBatteryPct:I

.field public final netElevationM:D

.field public final netKwh:D

.field public final regenKwh:D

.field public final sessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DDDDDDDDIIIIDDDIDLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "DDDDDDDDIIIIDDDID",
            "Ljava/util/List<",
            "Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    sget-object v1, Lcom/geely/drivemem/sensors/EnergySource;->NO_DATA:Lcom/geely/drivemem/sensors/EnergySource;

    iput-object v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->energySource:Lcom/geely/drivemem/sensors/EnergySource;

    move-object v1, p1

    .line 209
    iput-object v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->date:Ljava/lang/String;

    move-object v1, p2

    .line 210
    iput-object v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->displayDate:Ljava/lang/String;

    move-wide v1, p3

    .line 211
    iput-wide v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->distanceKm:D

    move-wide v1, p5

    .line 212
    iput-wide v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->dischargeKwh:D

    move-wide v1, p7

    .line 213
    iput-wide v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->regenKwh:D

    move-wide v1, p9

    .line 214
    iput-wide v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->netKwh:D

    move-wide v1, p11

    .line 215
    iput-wide v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->efficiencyKwh100km:D

    move-wide/from16 v1, p13

    .line 216
    iput-wide v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->ascentDPlusM:D

    move-wide/from16 v1, p15

    .line 217
    iput-wide v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->descentDMinusM:D

    move-wide/from16 v1, p17

    .line 218
    iput-wide v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->netElevationM:D

    move/from16 v1, p19

    .line 219
    iput v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->firstBatteryPct:I

    move/from16 v1, p20

    .line 220
    iput v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->lastBatteryPct:I

    move/from16 v1, p21

    .line 221
    iput v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->minBatteryPct:I

    move/from16 v1, p22

    .line 222
    iput v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->maxBatteryPct:I

    move-wide/from16 v1, p23

    .line 223
    iput-wide v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->drivingMinutes:D

    move-wide/from16 v1, p25

    .line 224
    iput-wide v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->avgSpeedKmh:D

    move-wide/from16 v1, p27

    .line 225
    iput-wide v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->avgTempC:D

    move/from16 v1, p29

    .line 226
    iput v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->chargeCount:I

    move-wide/from16 v1, p30

    .line 227
    iput-wide v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->chargeKwh:D

    move-object/from16 v1, p32

    .line 228
    iput-object v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->sessions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DDDDDDIIIIDDDIDLjava/util/List;)V
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "DDDDDDIIIIDDDID",
            "Ljava/util/List<",
            "Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    move-wide/from16 v15, p11

    move-wide/from16 v17, p13

    move/from16 v19, p15

    move/from16 v20, p16

    move/from16 v21, p17

    move/from16 v22, p18

    move-wide/from16 v23, p19

    move-wide/from16 v25, p21

    move-wide/from16 v27, p23

    move/from16 v29, p25

    move-wide/from16 v30, p26

    move-object/from16 v32, p28

    const-wide/16 v7, 0x0

    .line 237
    invoke-direct/range {v0 .. v32}, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;-><init>(Ljava/lang/String;Ljava/lang/String;DDDDDDDDIIIIDDDIDLjava/util/List;)V

    return-void
.end method
