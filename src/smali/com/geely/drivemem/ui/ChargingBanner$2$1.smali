.class Lcom/geely/drivemem/ui/ChargingBanner$2$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "ChargingBanner.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/ChargingBanner$2;->run()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$1:Lcom/geely/drivemem/ui/ChargingBanner$2;

.field final synthetic val$rate:D

.method constructor <init>(Lcom/geely/drivemem/ui/ChargingBanner$2;D)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 4
  .prologue
  .line 80
    iput-object p1, p0, Lcom/geely/drivemem/ui/ChargingBanner$2$1;->this$1:Lcom/geely/drivemem/ui/ChargingBanner$2;
    iput-wide p2, p0, Lcom/geely/drivemem/ui/ChargingBanner$2$1;->val$rate:D
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 7
  .prologue
  .line 80
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner$2$1;->this$1:Lcom/geely/drivemem/ui/ChargingBanner$2;
    iget-object v0, v0, Lcom/geely/drivemem/ui/ChargingBanner$2;->this$0:Lcom/geely/drivemem/ui/ChargingBanner;
    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargingBanner$2$1;->this$1:Lcom/geely/drivemem/ui/ChargingBanner$2;
    iget v1, v1, Lcom/geely/drivemem/ui/ChargingBanner$2;->val$soc:I
    iget-object v2, p0, Lcom/geely/drivemem/ui/ChargingBanner$2$1;->this$1:Lcom/geely/drivemem/ui/ChargingBanner$2;
    iget-wide v2, v2, Lcom/geely/drivemem/ui/ChargingBanner$2;->val$kwh:D
    iget-wide v4, p0, Lcom/geely/drivemem/ui/ChargingBanner$2$1;->val$rate:D
    invoke-static/range { v0 .. v5 }, Lcom/geely/drivemem/ui/ChargingBanner;->access$300(Lcom/geely/drivemem/ui/ChargingBanner;IDD)V
    return-void
.end method
