.class public interface abstract Lcom/geely/drivemem/state/ChargeSession$ProgressListener;
.super Ljava/lang/Object;
.source "ChargeSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/state/ChargeSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressListener"
.end annotation


# virtual methods
.method public onCompleted(Lcom/geely/drivemem/state/ChargeSession$Summary;)V
    .locals 0

    return-void
.end method

.method public abstract onIdle()V
.end method

.method public abstract onProgress(IIJJ)V
.end method
