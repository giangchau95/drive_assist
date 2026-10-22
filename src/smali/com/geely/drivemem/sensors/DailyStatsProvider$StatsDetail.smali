.class public final Lcom/geely/drivemem/sensors/DailyStatsProvider$StatsDetail;
.super Ljava/lang/Object;
.source "DailyStatsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/sensors/DailyStatsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatsDetail"
.end annotation


# instance fields
.field public final hourly:Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;

.field public final overview:Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;

.field public final speedBuckets:[Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;


# direct methods
.method constructor <init>(Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;[Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;)V
    .locals 0

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    iput-object p1, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$StatsDetail;->overview:Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;

    .line 468
    iput-object p2, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$StatsDetail;->hourly:Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;

    .line 469
    iput-object p3, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$StatsDetail;->speedBuckets:[Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;

    return-void
.end method
