.class Lcom/geely/drivemem/ui/FullChargeReminder$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "FullChargeReminder.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/FullChargeReminder;->check(Landroid/app/Activity;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$a:Landroid/app/Activity;

.method constructor <init>(Landroid/app/Activity;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 2
  .prologue
  .line 25
    iput-object p1, p0, Lcom/geely/drivemem/ui/FullChargeReminder$1;->val$a:Landroid/app/Activity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 5
  .prologue
  .line 27
    iget-object v0, p0, Lcom/geely/drivemem/ui/FullChargeReminder$1;->val$a:Landroid/app/Activity;
    invoke-static { v0 }, Lcom/geely/drivemem/util/FullCharge;->lastFullMs(Landroid/content/Context;)J
    move-result-wide v0
  .line 28
    iget-object v2, p0, Lcom/geely/drivemem/ui/FullChargeReminder$1;->val$a:Landroid/app/Activity;
    invoke-static { v2, v0, v1 }, Lcom/geely/drivemem/util/FullCharge;->isDue(Landroid/content/Context;J)Z
    move-result v2
    if-nez v2, :L1
  :L0
  .line 35
    return-void
  :L1
  .line 29
    iget-object v2, p0, Lcom/geely/drivemem/ui/FullChargeReminder$1;->val$a:Landroid/app/Activity;
    new-instance v3, Lcom/geely/drivemem/ui/FullChargeReminder$1$1;
    invoke-direct { v3, p0, v0, v1 }, Lcom/geely/drivemem/ui/FullChargeReminder$1$1;-><init>(Lcom/geely/drivemem/ui/FullChargeReminder$1;J)V
    invoke-virtual { v2, v3 }, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    goto :L0
.end method
