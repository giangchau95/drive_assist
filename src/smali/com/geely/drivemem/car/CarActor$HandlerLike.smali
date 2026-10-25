.class interface abstract Lcom/geely/drivemem/car/CarActor$HandlerLike;
.super Ljava/lang/Object;
.source "CarActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/car/CarActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "HandlerLike"
.end annotation


# virtual methods
.method public abstract getLooper()Landroid/os/Looper;
.end method

.method public abstract post(Ljava/lang/Runnable;)V
.end method

.method public abstract postDelayed(Ljava/lang/Runnable;J)V
.end method

.method public abstract removeCallbacks(Ljava/lang/Runnable;)V
.end method
