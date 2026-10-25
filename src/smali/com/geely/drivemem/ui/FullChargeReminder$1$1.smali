.class Lcom/geely/drivemem/ui/FullChargeReminder$1$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "FullChargeReminder.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/FullChargeReminder$1;->run()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/FullChargeReminder$1;

.field final synthetic val$last:J

.method constructor <init>(Lcom/geely/drivemem/ui/FullChargeReminder$1;J)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 4
  .prologue
  .line 29
    iput-object p1, p0, Lcom/geely/drivemem/ui/FullChargeReminder$1$1;->this$0:Lcom/geely/drivemem/ui/FullChargeReminder$1;
    iput-wide p2, p0, Lcom/geely/drivemem/ui/FullChargeReminder$1$1;->val$last:J
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 5
  .prologue
  .line 31
    iget-object v0, p0, Lcom/geely/drivemem/ui/FullChargeReminder$1$1;->this$0:Lcom/geely/drivemem/ui/FullChargeReminder$1;
    iget-object v0, v0, Lcom/geely/drivemem/ui/FullChargeReminder$1;->val$a:Landroid/app/Activity;
    invoke-virtual { v0 }, Landroid/app/Activity;->isFinishing()Z
    move-result v0
    if-nez v0, :L0
    invoke-static { }, Lcom/geely/drivemem/ui/FullChargeReminder;->access$000()Z
    move-result v0
    if-nez v0, :L0
    invoke-static { }, Lcom/geely/drivemem/state/CarState;->isParked()Z
    move-result v0
    if-nez v0, :L1
  :L0
  .line 33
    return-void
  :L1
  .line 32
    iget-object v0, p0, Lcom/geely/drivemem/ui/FullChargeReminder$1$1;->this$0:Lcom/geely/drivemem/ui/FullChargeReminder$1;
    iget-object v0, v0, Lcom/geely/drivemem/ui/FullChargeReminder$1;->val$a:Landroid/app/Activity;
    iget-wide v2, p0, Lcom/geely/drivemem/ui/FullChargeReminder$1$1;->val$last:J
    invoke-static { v0, v2, v3 }, Lcom/geely/drivemem/ui/FullChargeReminder;->access$100(Landroid/app/Activity;J)V
    goto :L0
.end method
