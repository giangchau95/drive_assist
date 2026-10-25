.class public final Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;
.super Ljava/lang/Object;
.source "DailyStatsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/sensors/DailyStatsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PeriodOverview"
.end annotation


# instance fields
.field public final days:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;",
            ">;"
        }
    .end annotation
.end field

.field public final periodLabel:Ljava/lang/String;

.field public final totals:Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;


# direct methods
.method public constructor <init>(Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;",
            "Ljava/util/List<",
            "Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;->totals:Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;

    .line 256
    iput-object p2, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;->days:Ljava/util/List;

    .line 257
    iput-object p3, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;->periodLabel:Ljava/lang/String;

    return-void
.end method
