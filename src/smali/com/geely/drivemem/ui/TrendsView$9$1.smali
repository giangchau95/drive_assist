.class Lcom/geely/drivemem/ui/TrendsView$9$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "TrendsView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/TrendsView$9;->run()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$1:Lcom/geely/drivemem/ui/TrendsView$9;

.field final synthetic val$fs:Lcom/geely/drivemem/ui/TrendsView$Series;

.field final synthetic val$last:J

.method constructor <init>(Lcom/geely/drivemem/ui/TrendsView$9;Lcom/geely/drivemem/ui/TrendsView$Series;J)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 6
  .prologue
  .line 315
    iput-object p1, p0, Lcom/geely/drivemem/ui/TrendsView$9$1;->this$1:Lcom/geely/drivemem/ui/TrendsView$9;
    iput-object p2, p0, Lcom/geely/drivemem/ui/TrendsView$9$1;->val$fs:Lcom/geely/drivemem/ui/TrendsView$Series;
    iput-wide p3, p0, Lcom/geely/drivemem/ui/TrendsView$9$1;->val$last:J
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 5
  .prologue
  .line 317
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$9$1;->this$1:Lcom/geely/drivemem/ui/TrendsView$9;
    iget v0, v0, Lcom/geely/drivemem/ui/TrendsView$9;->val$my:I
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView$9$1;->this$1:Lcom/geely/drivemem/ui/TrendsView$9;
    iget-object v1, v1, Lcom/geely/drivemem/ui/TrendsView$9;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    invoke-static { v1 }, Lcom/geely/drivemem/ui/TrendsView;->access$900(Lcom/geely/drivemem/ui/TrendsView;)I
    move-result v1
    if-eq v0, v1, :L1
  :L0
  .line 320
    return-void
  :L1
  .line 318
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$9$1;->val$fs:Lcom/geely/drivemem/ui/TrendsView$Series;
    if-eqz v0, :L2
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$9$1;->this$1:Lcom/geely/drivemem/ui/TrendsView$9;
    iget-object v0, v0, Lcom/geely/drivemem/ui/TrendsView$9;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView$9$1;->val$fs:Lcom/geely/drivemem/ui/TrendsView$Series;
    iget-object v2, p0, Lcom/geely/drivemem/ui/TrendsView$9$1;->this$1:Lcom/geely/drivemem/ui/TrendsView$9;
    iget v2, v2, Lcom/geely/drivemem/ui/TrendsView$9;->val$per:I
    invoke-static { v0, v1, v2 }, Lcom/geely/drivemem/ui/TrendsView;->access$1000(Lcom/geely/drivemem/ui/TrendsView;Lcom/geely/drivemem/ui/TrendsView$Series;I)V
  :L2
  .line 319
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$9$1;->this$1:Lcom/geely/drivemem/ui/TrendsView$9;
    iget-object v0, v0, Lcom/geely/drivemem/ui/TrendsView$9;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    iget-wide v2, p0, Lcom/geely/drivemem/ui/TrendsView$9$1;->val$last:J
    invoke-static { v0, v2, v3 }, Lcom/geely/drivemem/ui/TrendsView;->access$1100(Lcom/geely/drivemem/ui/TrendsView;J)V
    goto :L0
.end method
