.class Lcom/geely/drivemem/ui/FullChargeReminder$3;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "FullChargeReminder.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/FullChargeReminder;->show(Landroid/app/Activity;J)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$d:Landroid/app/AlertDialog;

.method constructor <init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 3
  .prologue
  .line 77
    iput-object p1, p0, Lcom/geely/drivemem/ui/FullChargeReminder$3;->val$a:Landroid/app/Activity;
    iput-object p2, p0, Lcom/geely/drivemem/ui/FullChargeReminder$3;->val$d:Landroid/app/AlertDialog;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 5
  .prologue
  .line 78
    iget-object v0, p0, Lcom/geely/drivemem/ui/FullChargeReminder$3;->val$a:Landroid/app/Activity;
    const-wide/32 v2, 86400000
    invoke-static { v0, v2, v3 }, Lcom/geely/drivemem/util/FullCharge;->snooze(Landroid/content/Context;J)V
    iget-object v0, p0, Lcom/geely/drivemem/ui/FullChargeReminder$3;->val$d:Landroid/app/AlertDialog;
    invoke-virtual { v0 }, Landroid/app/AlertDialog;->dismiss()V
    return-void
.end method
