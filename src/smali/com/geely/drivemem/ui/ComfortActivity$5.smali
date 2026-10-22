.class Lcom/geely/drivemem/ui/ComfortActivity$5;
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
  .line 152
    iput-object p1, p0, Lcom/geely/drivemem/ui/ComfortActivity$5;->this$0:Lcom/geely/drivemem/ui/ComfortActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onResult(Lcom/geely/drivemem/net/OtaUpdater$Info;ZLjava/lang/String;)V
  .registers 6
  .prologue
  .line 154
    if-eqz p2, :L0
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity$5;->this$0:Lcom/geely/drivemem/ui/ComfortActivity;
    invoke-virtual { v0 }, Lcom/geely/drivemem/ui/ComfortActivity;->isFinishing()Z
    move-result v0
    if-eqz v0, :L1
  :L0
  .line 158
    return-void
  :L1
  .line 155
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity$5;->this$0:Lcom/geely/drivemem/ui/ComfortActivity;
    const/4 v1, 1
    invoke-static { v0, v1 }, Lcom/geely/drivemem/ui/ComfortActivity;->access$202(Lcom/geely/drivemem/ui/ComfortActivity;Z)Z
  .line 156
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity$5;->this$0:Lcom/geely/drivemem/ui/ComfortActivity;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/ComfortActivity;->access$300(Lcom/geely/drivemem/ui/ComfortActivity;)V
  .line 157
    invoke-static { }, Lcom/geely/drivemem/state/CarState;->isParked()Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity$5;->this$0:Lcom/geely/drivemem/ui/ComfortActivity;
    invoke-static { v0, p1 }, Lcom/geely/drivemem/ui/ComfortActivity;->access$100(Lcom/geely/drivemem/ui/ComfortActivity;Lcom/geely/drivemem/net/OtaUpdater$Info;)V
    goto :L0
.end method
