.class Lcom/geely/drivemem/ui/TrendsView$12;
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

.field final synthetic val$last:J

.method constructor <init>(Lcom/geely/drivemem/ui/TrendsView;J)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 4
  .prologue
  .line 396
    iput-object p1, p0, Lcom/geely/drivemem/ui/TrendsView$12;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    iput-wide p2, p0, Lcom/geely/drivemem/ui/TrendsView$12;->val$last:J
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 5
  .prologue
  .line 397
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$12;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    iget-wide v2, p0, Lcom/geely/drivemem/ui/TrendsView$12;->val$last:J
    invoke-static { v0, v2, v3 }, Lcom/geely/drivemem/ui/TrendsView;->access$1200(Lcom/geely/drivemem/ui/TrendsView;J)V
    return-void
.end method
