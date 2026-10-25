.class public final Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;
.super Ljava/lang/Object;
.source "DailyStatsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/sensors/DailyStatsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpeedBucket"
.end annotation


# instance fields
.field public final distanceKm:D

.field public final kwh100km:D


# direct methods
.method constructor <init>(DD)V
    .locals 0

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;->kwh100km:D

    iput-wide p3, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;->distanceKm:D

    return-void
.end method
