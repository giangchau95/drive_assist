.class public final enum Lcom/geely/drivemem/car/CarActor$Reading$Status;
.super Ljava/lang/Enum;
.source "CarActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/car/CarActor$Reading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geely/drivemem/car/CarActor$Reading$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/geely/drivemem/car/CarActor$Reading$Status;

.field public static final enum ERROR:Lcom/geely/drivemem/car/CarActor$Reading$Status;

.field public static final enum LOADING:Lcom/geely/drivemem/car/CarActor$Reading$Status;

.field public static final enum NOT_AVAILABLE:Lcom/geely/drivemem/car/CarActor$Reading$Status;

.field public static final enum OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;


# direct methods
.method private static synthetic $values()[Lcom/geely/drivemem/car/CarActor$Reading$Status;
    .locals 4

    .line 52
    sget-object v0, Lcom/geely/drivemem/car/CarActor$Reading$Status;->NOT_AVAILABLE:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v1, Lcom/geely/drivemem/car/CarActor$Reading$Status;->LOADING:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v2, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v3, Lcom/geely/drivemem/car/CarActor$Reading$Status;->ERROR:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    filled-new-array {v0, v1, v2, v3}, [Lcom/geely/drivemem/car/CarActor$Reading$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Lcom/geely/drivemem/car/CarActor$Reading$Status;

    const-string v1, "NOT_AVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/geely/drivemem/car/CarActor$Reading$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geely/drivemem/car/CarActor$Reading$Status;->NOT_AVAILABLE:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    new-instance v0, Lcom/geely/drivemem/car/CarActor$Reading$Status;

    const-string v1, "LOADING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/geely/drivemem/car/CarActor$Reading$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geely/drivemem/car/CarActor$Reading$Status;->LOADING:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    new-instance v0, Lcom/geely/drivemem/car/CarActor$Reading$Status;

    const-string v1, "OK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/geely/drivemem/car/CarActor$Reading$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    new-instance v0, Lcom/geely/drivemem/car/CarActor$Reading$Status;

    const-string v1, "ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/geely/drivemem/car/CarActor$Reading$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geely/drivemem/car/CarActor$Reading$Status;->ERROR:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    invoke-static {}, Lcom/geely/drivemem/car/CarActor$Reading$Status;->$values()[Lcom/geely/drivemem/car/CarActor$Reading$Status;

    move-result-object v0

    sput-object v0, Lcom/geely/drivemem/car/CarActor$Reading$Status;->$VALUES:[Lcom/geely/drivemem/car/CarActor$Reading$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading$Status;
    .locals 1

    .line 52
    const-class v0, Lcom/geely/drivemem/car/CarActor$Reading$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geely/drivemem/car/CarActor$Reading$Status;

    return-object p0
.end method

.method public static values()[Lcom/geely/drivemem/car/CarActor$Reading$Status;
    .locals 1

    .line 52
    sget-object v0, Lcom/geely/drivemem/car/CarActor$Reading$Status;->$VALUES:[Lcom/geely/drivemem/car/CarActor$Reading$Status;

    invoke-virtual {v0}, [Lcom/geely/drivemem/car/CarActor$Reading$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geely/drivemem/car/CarActor$Reading$Status;

    return-object v0
.end method
