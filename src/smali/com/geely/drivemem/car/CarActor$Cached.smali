.class final Lcom/geely/drivemem/car/CarActor$Cached;
.super Ljava/lang/Object;
.source "CarActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/car/CarActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cached"
.end annotation


# instance fields
.field final epsilon:D

.field volatile reading:Lcom/geely/drivemem/car/CarActor$Reading;


# direct methods
.method constructor <init>(D)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    sget-object v0, Lcom/geely/drivemem/car/CarActor$Reading;->LOADING:Lcom/geely/drivemem/car/CarActor$Reading;

    iput-object v0, p0, Lcom/geely/drivemem/car/CarActor$Cached;->reading:Lcom/geely/drivemem/car/CarActor$Reading;

    .line 88
    iput-wide p1, p0, Lcom/geely/drivemem/car/CarActor$Cached;->epsilon:D

    return-void
.end method
