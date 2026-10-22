.class public interface abstract Lcom/geely/drivemem/sensors/Obd2Reader$Listener;
.super Ljava/lang/Object;
.source "Obd2Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/sensors/Obd2Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onObd2ConnectedChanged(Z)V
.end method

.method public onObd2Reading(Lcom/geely/drivemem/sensors/Obd2Reader$Reading;)V
    .locals 0

    return-void
.end method
