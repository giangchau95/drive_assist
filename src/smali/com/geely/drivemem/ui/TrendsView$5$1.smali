.class Lcom/geely/drivemem/ui/TrendsView$5$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "TrendsView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/TrendsView$5;->run()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$1:Lcom/geely/drivemem/ui/TrendsView$5;

.field final synthetic val$fs:Lcom/geely/drivemem/ui/TrendsView$Series;

.field final synthetic val$last:J

.method constructor <init>(Lcom/geely/drivemem/ui/TrendsView$5;Lcom/geely/drivemem/ui/TrendsView$Series;J)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 6
  .prologue
  .line 238
    iput-object p1, p0, Lcom/geely/drivemem/ui/TrendsView$5$1;->this$1:Lcom/geely/drivemem/ui/TrendsView$5;
    iput-object p2, p0, Lcom/geely/drivemem/ui/TrendsView$5$1;->val$fs:Lcom/geely/drivemem/ui/TrendsView$Series;
    iput-wide p3, p0, Lcom/geely/drivemem/ui/TrendsView$5$1;->val$last:J
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 5
  .prologue
  .line 240
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$5$1;->this$1:Lcom/geely/drivemem/ui/TrendsView$5;
    iget v0, v0, Lcom/geely/drivemem/ui/TrendsView$5;->val$my:I
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView$5$1;->this$1:Lcom/geely/drivemem/ui/TrendsView$5;
    iget-object v1, v1, Lcom/geely/drivemem/ui/TrendsView$5;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    invoke-static { v1 }, Lcom/geely/drivemem/ui/TrendsView;->access$500(Lcom/geely/drivemem/ui/TrendsView;)I
    move-result v1
    if-eq v0, v1, :L1
  :L0
  .line 243
    return-void
  :L1
  .line 241
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$5$1;->val$fs:Lcom/geely/drivemem/ui/TrendsView$Series;
    if-eqz v0, :L2
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$5$1;->this$1:Lcom/geely/drivemem/ui/TrendsView$5;
    iget-object v0, v0, Lcom/geely/drivemem/ui/TrendsView$5;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView$5$1;->val$fs:Lcom/geely/drivemem/ui/TrendsView$Series;
    iget-object v2, p0, Lcom/geely/drivemem/ui/TrendsView$5$1;->this$1:Lcom/geely/drivemem/ui/TrendsView$5;
    iget v2, v2, Lcom/geely/drivemem/ui/TrendsView$5;->val$per:I
    invoke-static { v0, v1, v2 }, Lcom/geely/drivemem/ui/TrendsView;->access$600(Lcom/geely/drivemem/ui/TrendsView;Lcom/geely/drivemem/ui/TrendsView$Series;I)V
  :L2
  .line 242
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$5$1;->this$1:Lcom/geely/drivemem/ui/TrendsView$5;
    iget-object v0, v0, Lcom/geely/drivemem/ui/TrendsView$5;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    iget-wide v2, p0, Lcom/geely/drivemem/ui/TrendsView$5$1;->val$last:J
    invoke-static { v0, v2, v3 }, Lcom/geely/drivemem/ui/TrendsView;->access$700(Lcom/geely/drivemem/ui/TrendsView;J)V
    goto :L0
.end method
