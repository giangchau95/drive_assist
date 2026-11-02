.class Lcom/geely/drivemem/ui/ChargingBanner$2;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "ChargingBanner.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/ChargingBanner;->poll()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/ChargingBanner;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$kwh:D

.field final synthetic val$soc:I

.field final synthetic val$startMs:J

.method constructor <init>(Lcom/geely/drivemem/ui/ChargingBanner;Landroid/content/Context;IDJ)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 8
  .prologue
  .line 77
    iput-object p1, p0, Lcom/geely/drivemem/ui/ChargingBanner$2;->this$0:Lcom/geely/drivemem/ui/ChargingBanner;
    iput-object p2, p0, Lcom/geely/drivemem/ui/ChargingBanner$2;->val$ctx:Landroid/content/Context;
    iput p3, p0, Lcom/geely/drivemem/ui/ChargingBanner$2;->val$soc:I
    iput-wide p4, p0, Lcom/geely/drivemem/ui/ChargingBanner$2;->val$kwh:D
    iput-wide p6, p0, Lcom/geely/drivemem/ui/ChargingBanner$2;->val$startMs:J
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 7
  .prologue
  .line 79
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner$2;->val$ctx:Landroid/content/Context;
    iget v1, p0, Lcom/geely/drivemem/ui/ChargingBanner$2;->val$soc:I
    iget-wide v2, p0, Lcom/geely/drivemem/ui/ChargingBanner$2;->val$kwh:D
    iget-wide v4, p0, Lcom/geely/drivemem/ui/ChargingBanner$2;->val$startMs:J
    invoke-static/range { v0 .. v5 }, Lcom/geely/drivemem/ui/ChargingBanner;->ratePctPerHour(Landroid/content/Context;IDJ)D
    move-result-wide v0
  .line 80
    iget-object v2, p0, Lcom/geely/drivemem/ui/ChargingBanner$2;->this$0:Lcom/geely/drivemem/ui/ChargingBanner;
    invoke-static { v2 }, Lcom/geely/drivemem/ui/ChargingBanner;->access$200(Lcom/geely/drivemem/ui/ChargingBanner;)Landroid/os/Handler;
    move-result-object v2
    new-instance v3, Lcom/geely/drivemem/ui/ChargingBanner$2$1;
    invoke-direct { v3, p0, v0, v1 }, Lcom/geely/drivemem/ui/ChargingBanner$2$1;-><init>(Lcom/geely/drivemem/ui/ChargingBanner$2;D)V
    invoke-virtual { v2, v3 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  .line 81
    return-void
.end method
