.class Lcom/geely/drivemem/ui/MonthlySummary$3;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnDismissListener;
.source "MonthlySummary.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/MonthlySummary;->show(Landroid/app/Activity;Lcom/geely/drivemem/ui/MonthlySummary$Data;Ljava/lang/Runnable;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$next:Ljava/lang/Runnable;

.method constructor <init>(Ljava/lang/Runnable;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 2
  .prologue
  .line 194
    iput-object p1, p0, Lcom/geely/drivemem/ui/MonthlySummary$3;->val$next:Ljava/lang/Runnable;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
  .registers 3
  .prologue
  .line 196
    const/4 v0, 0
    invoke-static { v0 }, Lcom/geely/drivemem/ui/MonthlySummary;->access$102(Z)Z
  .line 197
    iget-object v0, p0, Lcom/geely/drivemem/ui/MonthlySummary$3;->val$next:Ljava/lang/Runnable;
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/geely/drivemem/ui/MonthlySummary$3;->val$next:Ljava/lang/Runnable;
    invoke-interface { v0 }, Ljava/lang/Runnable;->run()V
  :L0
  .line 198
    return-void
.end method
