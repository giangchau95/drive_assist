.class final enum Lcom/geely/drivemem/ui/DailyStatsView$Period;
.super Ljava/lang/Enum;
.source "DailyStatsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/ui/DailyStatsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Period"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geely/drivemem/ui/DailyStatsView$Period;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/geely/drivemem/ui/DailyStatsView$Period;

.field public static final enum DAY:Lcom/geely/drivemem/ui/DailyStatsView$Period;

.field public static final enum MONTH:Lcom/geely/drivemem/ui/DailyStatsView$Period;

.field public static final enum WEEK:Lcom/geely/drivemem/ui/DailyStatsView$Period;


# direct methods
.method private static synthetic $values()[Lcom/geely/drivemem/ui/DailyStatsView$Period;
    .locals 3

    .line 60
    sget-object v0, Lcom/geely/drivemem/ui/DailyStatsView$Period;->DAY:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    sget-object v1, Lcom/geely/drivemem/ui/DailyStatsView$Period;->WEEK:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    sget-object v2, Lcom/geely/drivemem/ui/DailyStatsView$Period;->MONTH:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    filled-new-array {v0, v1, v2}, [Lcom/geely/drivemem/ui/DailyStatsView$Period;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 60
    new-instance v0, Lcom/geely/drivemem/ui/DailyStatsView$Period;

    const-string v1, "DAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/geely/drivemem/ui/DailyStatsView$Period;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geely/drivemem/ui/DailyStatsView$Period;->DAY:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    new-instance v0, Lcom/geely/drivemem/ui/DailyStatsView$Period;

    const-string v1, "WEEK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/geely/drivemem/ui/DailyStatsView$Period;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geely/drivemem/ui/DailyStatsView$Period;->WEEK:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    new-instance v0, Lcom/geely/drivemem/ui/DailyStatsView$Period;

    const-string v1, "MONTH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/geely/drivemem/ui/DailyStatsView$Period;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geely/drivemem/ui/DailyStatsView$Period;->MONTH:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    invoke-static {}, Lcom/geely/drivemem/ui/DailyStatsView$Period;->$values()[Lcom/geely/drivemem/ui/DailyStatsView$Period;

    move-result-object v0

    sput-object v0, Lcom/geely/drivemem/ui/DailyStatsView$Period;->$VALUES:[Lcom/geely/drivemem/ui/DailyStatsView$Period;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/geely/drivemem/ui/DailyStatsView$Period;
    .locals 1

    .line 60
    const-class v0, Lcom/geely/drivemem/ui/DailyStatsView$Period;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geely/drivemem/ui/DailyStatsView$Period;

    return-object p0
.end method

.method public static values()[Lcom/geely/drivemem/ui/DailyStatsView$Period;
    .locals 1

    .line 60
    sget-object v0, Lcom/geely/drivemem/ui/DailyStatsView$Period;->$VALUES:[Lcom/geely/drivemem/ui/DailyStatsView$Period;

    invoke-virtual {v0}, [Lcom/geely/drivemem/ui/DailyStatsView$Period;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geely/drivemem/ui/DailyStatsView$Period;

    return-object v0
.end method
