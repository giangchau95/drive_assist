.class Lcom/geely/drivemem/ui/ComfortActivity$8;
.super Ljava/lang/Object;
.implements Lcom/geely/drivemem/net/OtaUpdater$Callback;
.source "ComfortActivity.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/ComfortActivity;->autoCheck()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/ComfortActivity;

.method constructor <init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
  .registers 2
  .prologue
  .line 339
    iput-object p1, p0, Lcom/geely/drivemem/ui/ComfortActivity$8;->this$0:Lcom/geely/drivemem/ui/ComfortActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onResult(Lcom/geely/drivemem/net/OtaUpdater$Info;ZLjava/lang/String;)V
  .registers 7
  .prologue
    const/4 v1, 1
  .line 341
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity$8;->this$0:Lcom/geely/drivemem/ui/ComfortActivity;
    invoke-virtual { v0 }, Lcom/geely/drivemem/ui/ComfortActivity;->isFinishing()Z
    move-result v0
    if-eqz v0, :L1
  :L0
  .line 349
    return-void
  :L1
  .line 342
    invoke-static { }, Lcom/geely/drivemem/state/CarState;->isParked()Z
    move-result v0
    if-eqz v0, :L5
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity$8;->this$0:Lcom/geely/drivemem/ui/ComfortActivity;
    invoke-static { v0, p1 }, Lcom/geely/drivemem/net/OtaUpdater;->helperOutdated(Landroid/content/Context;Lcom/geely/drivemem/net/OtaUpdater$Info;)Z
    move-result v0
    if-eqz v0, :L5
    move v0, v1
  :L2
  .line 343
    if-eqz p2, :L3
  .line 344
    iget-object v2, p0, Lcom/geely/drivemem/ui/ComfortActivity$8;->this$0:Lcom/geely/drivemem/ui/ComfortActivity;
    invoke-static { v2, v1 }, Lcom/geely/drivemem/ui/ComfortActivity;->access$302(Lcom/geely/drivemem/ui/ComfortActivity;Z)Z
  .line 345
    iget-object v1, p0, Lcom/geely/drivemem/ui/ComfortActivity$8;->this$0:Lcom/geely/drivemem/ui/ComfortActivity;
    invoke-static { v1 }, Lcom/geely/drivemem/ui/ComfortActivity;->access$400(Lcom/geely/drivemem/ui/ComfortActivity;)V
  :L3
  .line 347
    if-eqz v0, :L4
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity$8;->this$0:Lcom/geely/drivemem/ui/ComfortActivity;
    invoke-static { v0, p1 }, Lcom/geely/drivemem/ui/HelperUpdateDialog;->show(Landroid/app/Activity;Lcom/geely/drivemem/net/OtaUpdater$Info;)Z
    move-result v0
    if-nez v0, :L0
  :L4
  .line 348
    if-eqz p2, :L0
    invoke-static { }, Lcom/geely/drivemem/state/CarState;->isParked()Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity$8;->this$0:Lcom/geely/drivemem/ui/ComfortActivity;
    invoke-static { v0, p1 }, Lcom/geely/drivemem/ui/ComfortActivity;->access$200(Lcom/geely/drivemem/ui/ComfortActivity;Lcom/geely/drivemem/net/OtaUpdater$Info;)V
    goto :L0
  :L5
  .line 342
    const/4 v0, 0
    goto :L2
.end method
