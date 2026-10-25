.class Lcom/geely/drivemem/ui/TrendsView$6;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "TrendsView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/TrendsView;->showFull(J)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/TrendsView;

.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$last:J

.method constructor <init>(Lcom/geely/drivemem/ui/TrendsView;Landroid/content/Context;J)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 6
  .prologue
  .line 301
    iput-object p1, p0, Lcom/geely/drivemem/ui/TrendsView$6;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    iput-object p2, p0, Lcom/geely/drivemem/ui/TrendsView$6;->val$c:Landroid/content/Context;
    iput-wide p3, p0, Lcom/geely/drivemem/ui/TrendsView$6;->val$last:J
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 5
  .prologue
    const/16 v0, 30
  .line 303
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView$6;->val$c:Landroid/content/Context;
    iget-object v2, p0, Lcom/geely/drivemem/ui/TrendsView$6;->val$c:Landroid/content/Context;
    invoke-static { v2 }, Lcom/geely/drivemem/util/FullCharge;->intervalDays(Landroid/content/Context;)I
    move-result v2
    if-ne v2, v0, :L0
    const/16 v0, 15
  :L0
    invoke-static { v1, v0 }, Lcom/geely/drivemem/util/FullCharge;->setIntervalDays(Landroid/content/Context;I)V
  .line 304
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$6;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    iget-wide v2, p0, Lcom/geely/drivemem/ui/TrendsView$6;->val$last:J
    invoke-static { v0, v2, v3 }, Lcom/geely/drivemem/ui/TrendsView;->access$700(Lcom/geely/drivemem/ui/TrendsView;J)V
  .line 305
    return-void
.end method
