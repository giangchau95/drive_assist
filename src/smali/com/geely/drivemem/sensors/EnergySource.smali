.class public final enum Lcom/geely/drivemem/sensors/EnergySource;
.super Ljava/lang/Enum;
.source "EnergySource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geely/drivemem/sensors/EnergySource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/geely/drivemem/sensors/EnergySource;

.field public static final enum ESTIMATED:Lcom/geely/drivemem/sensors/EnergySource;

.field public static final enum MEASURED:Lcom/geely/drivemem/sensors/EnergySource;

.field public static final enum MIXED:Lcom/geely/drivemem/sensors/EnergySource;

.field public static final enum NO_DATA:Lcom/geely/drivemem/sensors/EnergySource;


# direct methods
.method private static synthetic $values()[Lcom/geely/drivemem/sensors/EnergySource;
    .locals 4

    .line 11
    sget-object v0, Lcom/geely/drivemem/sensors/EnergySource;->MEASURED:Lcom/geely/drivemem/sensors/EnergySource;

    sget-object v1, Lcom/geely/drivemem/sensors/EnergySource;->MIXED:Lcom/geely/drivemem/sensors/EnergySource;

    sget-object v2, Lcom/geely/drivemem/sensors/EnergySource;->ESTIMATED:Lcom/geely/drivemem/sensors/EnergySource;

    sget-object v3, Lcom/geely/drivemem/sensors/EnergySource;->NO_DATA:Lcom/geely/drivemem/sensors/EnergySource;

    filled-new-array {v0, v1, v2, v3}, [Lcom/geely/drivemem/sensors/EnergySource;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/geely/drivemem/sensors/EnergySource;

    const-string v1, "MEASURED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/geely/drivemem/sensors/EnergySource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geely/drivemem/sensors/EnergySource;->MEASURED:Lcom/geely/drivemem/sensors/EnergySource;

    new-instance v0, Lcom/geely/drivemem/sensors/EnergySource;

    const-string v1, "MIXED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/geely/drivemem/sensors/EnergySource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geely/drivemem/sensors/EnergySource;->MIXED:Lcom/geely/drivemem/sensors/EnergySource;

    new-instance v0, Lcom/geely/drivemem/sensors/EnergySource;

    const-string v1, "ESTIMATED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/geely/drivemem/sensors/EnergySource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geely/drivemem/sensors/EnergySource;->ESTIMATED:Lcom/geely/drivemem/sensors/EnergySource;

    new-instance v0, Lcom/geely/drivemem/sensors/EnergySource;

    const-string v1, "NO_DATA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/geely/drivemem/sensors/EnergySource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geely/drivemem/sensors/EnergySource;->NO_DATA:Lcom/geely/drivemem/sensors/EnergySource;

    .line 11
    invoke-static {}, Lcom/geely/drivemem/sensors/EnergySource;->$values()[Lcom/geely/drivemem/sensors/EnergySource;

    move-result-object v0

    sput-object v0, Lcom/geely/drivemem/sensors/EnergySource;->$VALUES:[Lcom/geely/drivemem/sensors/EnergySource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static combine(Ljava/util/List;)Lcom/geely/drivemem/sensors/EnergySource;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/drivemem/sensors/EnergySource;",
            ">;)",
            "Lcom/geely/drivemem/sensors/EnergySource;"
        }
    .end annotation

    .line 27
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/geely/drivemem/sensors/EnergySource;

    .line 28
    sget-object v4, Lcom/geely/drivemem/sensors/EnergySource;->MIXED:Lcom/geely/drivemem/sensors/EnergySource;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    move v0, v5

    goto :goto_0

    .line 29
    :cond_1
    sget-object v4, Lcom/geely/drivemem/sensors/EnergySource;->MEASURED:Lcom/geely/drivemem/sensors/EnergySource;

    if-ne v3, v4, :cond_2

    move v1, v5

    goto :goto_0

    .line 30
    :cond_2
    sget-object v4, Lcom/geely/drivemem/sensors/EnergySource;->ESTIMATED:Lcom/geely/drivemem/sensors/EnergySource;

    if-ne v3, v4, :cond_0

    move v2, v5

    goto :goto_0

    :cond_3
    if-nez v0, :cond_7

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    .line 33
    sget-object p0, Lcom/geely/drivemem/sensors/EnergySource;->MEASURED:Lcom/geely/drivemem/sensors/EnergySource;

    return-object p0

    :cond_5
    if-eqz v2, :cond_6

    .line 34
    sget-object p0, Lcom/geely/drivemem/sensors/EnergySource;->ESTIMATED:Lcom/geely/drivemem/sensors/EnergySource;

    return-object p0

    .line 35
    :cond_6
    sget-object p0, Lcom/geely/drivemem/sensors/EnergySource;->NO_DATA:Lcom/geely/drivemem/sensors/EnergySource;

    return-object p0

    .line 32
    :cond_7
    :goto_1
    sget-object p0, Lcom/geely/drivemem/sensors/EnergySource;->MIXED:Lcom/geely/drivemem/sensors/EnergySource;

    return-object p0
.end method

.method public static resolve(JJ)Lcom/geely/drivemem/sensors/EnergySource;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    cmp-long p1, p2, v0

    if-gtz p1, :cond_0

    .line 16
    sget-object p0, Lcom/geely/drivemem/sensors/EnergySource;->NO_DATA:Lcom/geely/drivemem/sensors/EnergySource;

    return-object p0

    :cond_0
    cmp-long p1, p2, v0

    if-gtz p1, :cond_1

    .line 17
    sget-object p0, Lcom/geely/drivemem/sensors/EnergySource;->MEASURED:Lcom/geely/drivemem/sensors/EnergySource;

    return-object p0

    :cond_1
    if-gtz p0, :cond_2

    .line 18
    sget-object p0, Lcom/geely/drivemem/sensors/EnergySource;->ESTIMATED:Lcom/geely/drivemem/sensors/EnergySource;

    return-object p0

    .line 19
    :cond_2
    sget-object p0, Lcom/geely/drivemem/sensors/EnergySource;->MIXED:Lcom/geely/drivemem/sensors/EnergySource;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/geely/drivemem/sensors/EnergySource;
    .locals 1

    .line 11
    const-class v0, Lcom/geely/drivemem/sensors/EnergySource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geely/drivemem/sensors/EnergySource;

    return-object p0
.end method

.method public static values()[Lcom/geely/drivemem/sensors/EnergySource;
    .locals 1

    .line 11
    sget-object v0, Lcom/geely/drivemem/sensors/EnergySource;->$VALUES:[Lcom/geely/drivemem/sensors/EnergySource;

    invoke-virtual {v0}, [Lcom/geely/drivemem/sensors/EnergySource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geely/drivemem/sensors/EnergySource;

    return-object v0
.end method
