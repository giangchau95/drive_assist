.class public final enum Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;
.super Ljava/lang/Enum;
.source "DailyStatsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/sensors/DailyStatsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Granularity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;

.field public static final enum DAY:Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;

.field public static final enum MONTH:Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;

.field public static final enum WEEK:Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;


# direct methods
.method private static synthetic $values()[Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;
    .locals 3

    .line 445
    sget-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;->DAY:Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;

    sget-object v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;->WEEK:Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;

    sget-object v2, Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;->MONTH:Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;

    filled-new-array {v0, v1, v2}, [Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 445
    new-instance v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;

    const-string v1, "DAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;->DAY:Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;

    new-instance v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;

    const-string v1, "WEEK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;->WEEK:Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;

    new-instance v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;

    const-string v1, "MONTH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;->MONTH:Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;

    invoke-static {}, Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;->$values()[Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;

    move-result-object v0

    sput-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;->$VALUES:[Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 445
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;
    .locals 1

    .line 445
    const-class v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;

    return-object p0
.end method

.method public static values()[Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;
    .locals 1

    .line 445
    sget-object v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;->$VALUES:[Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;

    invoke-virtual {v0}, [Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geely/drivemem/sensors/DailyStatsProvider$Granularity;

    return-object v0
.end method
