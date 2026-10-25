.class Lcom/geely/drivemem/car/CarActor$HandlerAdapter;
.super Ljava/lang/Object;
.source "CarActor.java"

# interfaces
.implements Lcom/geely/drivemem/car/CarActor$HandlerLike;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/car/CarActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerAdapter"
.end annotation


# instance fields
.field final delegate:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/drivemem/car/CarActor$HandlerAdapter;->delegate:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor$HandlerAdapter;->delegate:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor$HandlerAdapter;->delegate:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor$HandlerAdapter;->delegate:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor$HandlerAdapter;->delegate:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
