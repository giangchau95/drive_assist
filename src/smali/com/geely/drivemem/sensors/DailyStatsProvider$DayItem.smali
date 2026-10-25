.class public final Lcom/geely/drivemem/sensors/DailyStatsProvider$DayItem;
.super Ljava/lang/Object;
.source "DailyStatsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/sensors/DailyStatsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DayItem"
.end annotation


# instance fields
.field public final date:Ljava/lang/String;

.field public final km:D

.field public final shortLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayItem;->date:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayItem;->shortLabel:Ljava/lang/String;

    .line 48
    iput-wide p3, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayItem;->km:D

    return-void
.end method
