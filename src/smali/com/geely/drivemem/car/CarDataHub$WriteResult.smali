.class public final Lcom/geely/drivemem/car/CarDataHub$WriteResult;
.super Ljava/lang/Object;
.source "CarDataHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/car/CarDataHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WriteResult"
.end annotation


# instance fields
.field public final applied:Z

.field public final error:Ljava/lang/String;

.field public final value:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$smok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarDataHub$WriteResult;
    .locals 0

    invoke-static {p0}, Lcom/geely/drivemem/car/CarDataHub$WriteResult;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarDataHub$WriteResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smrejected(Ljava/lang/String;)Lcom/geely/drivemem/car/CarDataHub$WriteResult;
    .locals 0

    invoke-static {p0}, Lcom/geely/drivemem/car/CarDataHub$WriteResult;->rejected(Ljava/lang/String;)Lcom/geely/drivemem/car/CarDataHub$WriteResult;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(ZLjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean p1, p0, Lcom/geely/drivemem/car/CarDataHub$WriteResult;->applied:Z

    iput-object p2, p0, Lcom/geely/drivemem/car/CarDataHub$WriteResult;->value:Ljava/lang/Object;

    iput-object p3, p0, Lcom/geely/drivemem/car/CarDataHub$WriteResult;->error:Ljava/lang/String;

    return-void
.end method

.method private static ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarDataHub$WriteResult;
    .locals 3

    .line 79
    new-instance v0, Lcom/geely/drivemem/car/CarDataHub$WriteResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/geely/drivemem/car/CarDataHub$WriteResult;-><init>(ZLjava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static rejected(Ljava/lang/String;)Lcom/geely/drivemem/car/CarDataHub$WriteResult;
    .locals 3

    .line 80
    new-instance v0, Lcom/geely/drivemem/car/CarDataHub$WriteResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/geely/drivemem/car/CarDataHub$WriteResult;-><init>(ZLjava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
