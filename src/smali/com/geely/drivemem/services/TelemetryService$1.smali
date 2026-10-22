.class Lcom/geely/drivemem/services/TelemetryService$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "TelemetryService.java"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/geely/drivemem/services/TelemetryService;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/services/TelemetryService;

.method constructor <init>(Lcom/geely/drivemem/services/TelemetryService;)V
  .registers 2
  .prologue
  .line 22
    iput-object p1, p0, Lcom/geely/drivemem/services/TelemetryService$1;->this$0:Lcom/geely/drivemem/services/TelemetryService;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 5
  .prologue
  .line 24
    iget-object v0, p0, Lcom/geely/drivemem/services/TelemetryService$1;->this$0:Lcom/geely/drivemem/services/TelemetryService;
    invoke-static { v0 }, Lcom/geely/drivemem/services/TelemetryService;->access$000(Lcom/geely/drivemem/services/TelemetryService;)Z
    move-result v0
    if-nez v0, :L1
  :L0
  .line 27
    return-void
  :L1
  .line 25
    iget-object v0, p0, Lcom/geely/drivemem/services/TelemetryService$1;->this$0:Lcom/geely/drivemem/services/TelemetryService;
    const-string v1, "tele"
    invoke-static { v0, v1 }, Lcom/geely/drivemem/util/Beat;->mark(Landroid/content/Context;Ljava/lang/String;)V
  .line 26
    iget-object v0, p0, Lcom/geely/drivemem/services/TelemetryService$1;->this$0:Lcom/geely/drivemem/services/TelemetryService;
    invoke-static { v0 }, Lcom/geely/drivemem/services/TelemetryService;->access$100(Lcom/geely/drivemem/services/TelemetryService;)Landroid/os/Handler;
    move-result-object v0
    const-wide/16 v2, 30000
    invoke-virtual { v0, p0, v2, v3 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    goto :L0
.end method
