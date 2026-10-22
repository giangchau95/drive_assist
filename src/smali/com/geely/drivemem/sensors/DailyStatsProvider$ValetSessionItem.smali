.class public final Lcom/geely/drivemem/sensors/DailyStatsProvider$ValetSessionItem;
.super Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;
.source "DailyStatsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/sensors/DailyStatsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValetSessionItem"
.end annotation


# instance fields
.field public final distanceKm:D

.field public final endSoc:I

.field public final maxPowerKw:Ljava/lang/Double;

.field public final maxSpeedKmh:D

.field public final startSoc:I

.field public final valetId:J


# direct methods
.method public constructor <init>(JJJDDLjava/lang/Double;II)V
    .locals 0

    .line 156
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;-><init>(JJ)V

    .line 157
    iput-wide p1, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$ValetSessionItem;->valetId:J

    iput-wide p7, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$ValetSessionItem;->distanceKm:D

    iput-wide p9, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$ValetSessionItem;->maxSpeedKmh:D

    .line 158
    iput-object p11, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$ValetSessionItem;->maxPowerKw:Ljava/lang/Double;

    iput p12, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$ValetSessionItem;->startSoc:I

    iput p13, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$ValetSessionItem;->endSoc:I

    return-void
.end method


# virtual methods
.method public isTrip()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValet()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
