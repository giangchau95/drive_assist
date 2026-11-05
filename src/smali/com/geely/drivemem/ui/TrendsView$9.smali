.class Lcom/geely/drivemem/ui/TrendsView$9;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "TrendsView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/TrendsView;->buildPeriodRow()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/TrendsView;

.field final synthetic val$act:Landroid/app/Activity;

.method constructor <init>(Lcom/geely/drivemem/ui/TrendsView;Landroid/app/Activity;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 3
  .prologue
  .line 247
    iput-object p1, p0, Lcom/geely/drivemem/ui/TrendsView$9;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    iput-object p2, p0, Lcom/geely/drivemem/ui/TrendsView$9;->val$act:Landroid/app/Activity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 2
  .prologue
  .line 248
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$9;->val$act:Landroid/app/Activity;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/MonthlySummary;->showLastMonth(Landroid/app/Activity;)V
    return-void
.end method
