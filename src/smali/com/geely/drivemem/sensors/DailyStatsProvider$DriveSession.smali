.class public final Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;
.super Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;
.source "DailyStatsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/sensors/DailyStatsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DriveSession"
.end annotation


# instance fields
.field public final ascentDPlusM:D

.field public final descentDMinusM:D

.field public final distanceKm:D

.field public final efficiencyKwh100km:D

.field public final energyKwh:D

.field public final energySource:Lcom/geely/drivemem/sensors/EnergySource;

.field public final regenKwh:D

.field public final socEnd:I

.field public final socStart:I

.field public final spentKwh:D

.field public final tripId:J


# direct methods
.method public constructor <init>(JJJDIIDDDDD)V
    .locals 24

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move/from16 v10, p10

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move-wide/from16 v15, p15

    move-wide/from16 v19, p17

    move-wide/from16 v21, p19

    add-double v17, p17, p15

    .line 103
    sget-object v23, Lcom/geely/drivemem/sensors/EnergySource;->MEASURED:Lcom/geely/drivemem/sensors/EnergySource;

    invoke-direct/range {v0 .. v23}, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;-><init>(JJJDIIDDDDDDLcom/geely/drivemem/sensors/EnergySource;)V

    return-void
.end method

.method public constructor <init>(JJJDIIDDDDDDLcom/geely/drivemem/sensors/EnergySource;)V
    .locals 5

    move-object v0, p0

    move-wide v1, p3

    move-wide v3, p5

    .line 86
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;-><init>(JJ)V

    move-wide v1, p1

    .line 87
    iput-wide v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->tripId:J

    move-wide v1, p7

    .line 88
    iput-wide v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->distanceKm:D

    move v1, p9

    .line 89
    iput v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->socStart:I

    move v1, p10

    .line 90
    iput v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->socEnd:I

    move-wide/from16 v1, p11

    .line 91
    iput-wide v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->ascentDPlusM:D

    move-wide/from16 v1, p13

    .line 92
    iput-wide v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->descentDMinusM:D

    move-wide/from16 v1, p15

    .line 93
    iput-wide v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->regenKwh:D

    move-wide/from16 v1, p17

    .line 94
    iput-wide v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->spentKwh:D

    move-wide/from16 v1, p19

    .line 95
    iput-wide v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->energyKwh:D

    move-wide/from16 v1, p21

    .line 96
    iput-wide v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->efficiencyKwh100km:D

    move-object/from16 v1, p23

    .line 97
    iput-object v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->energySource:Lcom/geely/drivemem/sensors/EnergySource;

    return-void
.end method


# virtual methods
.method public isTrip()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
