.class public final Lcom/geely/drivemem/car/CarActor$Reading;
.super Ljava/lang/Object;
.source "CarActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/car/CarActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reading"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/drivemem/car/CarActor$Reading$Status;
    }
.end annotation


# static fields
.field public static final LOADING:Lcom/geely/drivemem/car/CarActor$Reading;

.field public static final NOT_AVAILABLE:Lcom/geely/drivemem/car/CarActor$Reading;


# instance fields
.field public final error:Ljava/lang/String;

.field public final status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

.field public final value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Lcom/geely/drivemem/car/CarActor$Reading;

    sget-object v1, Lcom/geely/drivemem/car/CarActor$Reading$Status;->NOT_AVAILABLE:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/geely/drivemem/car/CarActor$Reading;-><init>(Lcom/geely/drivemem/car/CarActor$Reading$Status;Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/geely/drivemem/car/CarActor$Reading;->NOT_AVAILABLE:Lcom/geely/drivemem/car/CarActor$Reading;

    .line 58
    new-instance v0, Lcom/geely/drivemem/car/CarActor$Reading;

    sget-object v1, Lcom/geely/drivemem/car/CarActor$Reading$Status;->LOADING:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    invoke-direct {v0, v1, v2, v2}, Lcom/geely/drivemem/car/CarActor$Reading;-><init>(Lcom/geely/drivemem/car/CarActor$Reading$Status;Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/geely/drivemem/car/CarActor$Reading;->LOADING:Lcom/geely/drivemem/car/CarActor$Reading;

    return-void
.end method

.method private constructor <init>(Lcom/geely/drivemem/car/CarActor$Reading$Status;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    iput-object p2, p0, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    iput-object p3, p0, Lcom/geely/drivemem/car/CarActor$Reading;->error:Ljava/lang/String;

    return-void
.end method

.method public static error(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;
    .locals 3

    .line 60
    new-instance v0, Lcom/geely/drivemem/car/CarActor$Reading;

    sget-object v1, Lcom/geely/drivemem/car/CarActor$Reading$Status;->ERROR:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/geely/drivemem/car/CarActor$Reading;-><init>(Lcom/geely/drivemem/car/CarActor$Reading$Status;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;
    .locals 3

    .line 59
    new-instance v0, Lcom/geely/drivemem/car/CarActor$Reading;

    sget-object v1, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/geely/drivemem/car/CarActor$Reading;-><init>(Lcom/geely/drivemem/car/CarActor$Reading$Status;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
