.class synthetic Lcom/geely/drivemem/ui/DailyStatsView$4;
.super Ljava/lang/Object;
.source "DailyStatsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/ui/DailyStatsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$geely$drivemem$ui$DailyStatsView$Period:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 586
    invoke-static {}, Lcom/geely/drivemem/ui/DailyStatsView$Period;->values()[Lcom/geely/drivemem/ui/DailyStatsView$Period;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/geely/drivemem/ui/DailyStatsView$4;->$SwitchMap$com$geely$drivemem$ui$DailyStatsView$Period:[I

    :try_start_0
    sget-object v1, Lcom/geely/drivemem/ui/DailyStatsView$Period;->WEEK:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    invoke-virtual {v1}, Lcom/geely/drivemem/ui/DailyStatsView$Period;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/geely/drivemem/ui/DailyStatsView$4;->$SwitchMap$com$geely$drivemem$ui$DailyStatsView$Period:[I

    sget-object v1, Lcom/geely/drivemem/ui/DailyStatsView$Period;->MONTH:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    invoke-virtual {v1}, Lcom/geely/drivemem/ui/DailyStatsView$Period;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
