.class synthetic Lcom/geely/drivemem/sensors/DailyStatsProvider$1;
.super Ljava/lang/Object;
.source "DailyStatsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/sensors/DailyStatsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$geely$drivemem$sensors$DailyStatsProvider$Granularity:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 478
    invoke-static {}, Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;->values()[Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$1;->$SwitchMap$com$geely$drivemem$sensors$DailyStatsProvider$Granularity:[I

    :try_start_0
    sget-object v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;->WEEK:Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;

    invoke-virtual {v1}, Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$1;->$SwitchMap$com$geely$drivemem$sensors$DailyStatsProvider$Granularity:[I

    sget-object v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;->MONTH:Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;

    invoke-virtual {v1}, Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
