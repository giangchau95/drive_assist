.class Lcom/geely/drivemem/ui/ChargingBanner$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "ChargingBanner.java"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/geely/drivemem/ui/ChargingBanner;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/ChargingBanner;

.method constructor <init>(Lcom/geely/drivemem/ui/ChargingBanner;)V
  .registers 2
  .prologue
  .line 26
    iput-object p1, p0, Lcom/geely/drivemem/ui/ChargingBanner$1;->this$0:Lcom/geely/drivemem/ui/ChargingBanner;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 5
  .prologue
  .line 28
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner$1;->this$0:Lcom/geely/drivemem/ui/ChargingBanner;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/ChargingBanner;->access$000(Lcom/geely/drivemem/ui/ChargingBanner;)Z
    move-result v0
    if-nez v0, :L1
  :L0
  .line 31
    return-void
  :L1
  .line 29
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner$1;->this$0:Lcom/geely/drivemem/ui/ChargingBanner;
    invoke-virtual { v0 }, Lcom/geely/drivemem/ui/ChargingBanner;->isShown()Z
    move-result v0
    if-nez v0, :L2
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner$1;->this$0:Lcom/geely/drivemem/ui/ChargingBanner;
    invoke-virtual { v0 }, Lcom/geely/drivemem/ui/ChargingBanner;->getVisibility()I
    move-result v0
    const/16 v1, 8
    if-ne v0, v1, :L3
  :L2
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner$1;->this$0:Lcom/geely/drivemem/ui/ChargingBanner;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/ChargingBanner;->access$100(Lcom/geely/drivemem/ui/ChargingBanner;)V
  :L3
  .line 30
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner$1;->this$0:Lcom/geely/drivemem/ui/ChargingBanner;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/ChargingBanner;->access$200(Lcom/geely/drivemem/ui/ChargingBanner;)Landroid/os/Handler;
    move-result-object v0
    const-wide/16 v2, 8000
    invoke-virtual { v0, p0, v2, v3 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    goto :L0
.end method
