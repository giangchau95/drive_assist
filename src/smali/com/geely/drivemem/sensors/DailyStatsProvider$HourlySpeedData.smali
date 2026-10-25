.class public final Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;
.super Ljava/lang/Object;
.source "DailyStatsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/sensors/DailyStatsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HourlySpeedData"
.end annotation


# instance fields
.field public final km:[[D

.field public maxHourlyTotalKm:D


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    invoke-static {}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->-$$Nest$sfgetSPEED_BUCKET_MAX()[D

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x0

    const/16 v2, 0x18

    aput v2, v1, v0

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;->km:[[D

    return-void
.end method
