.class Lcom/geely/drivemem/ui/TrendsView$10;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "TrendsView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/TrendsView;->refresh()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/TrendsView;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$my:I

.field final synthetic val$per:I

.method constructor <init>(Lcom/geely/drivemem/ui/TrendsView;Landroid/content/Context;II)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 5
  .prologue
  .line 315
    iput-object p1, p0, Lcom/geely/drivemem/ui/TrendsView$10;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    iput-object p2, p0, Lcom/geely/drivemem/ui/TrendsView$10;->val$ctx:Landroid/content/Context;
    iput p3, p0, Lcom/geely/drivemem/ui/TrendsView$10;->val$per:I
    iput p4, p0, Lcom/geely/drivemem/ui/TrendsView$10;->val$my:I
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L5
  .catch Ljava/lang/Throwable; { :L1 .. :L2 } :L4
  .registers 6
  .prologue
  .line 317
    const/4 v0, 0
  :L0
  .line 318
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView$10;->val$ctx:Landroid/content/Context;
    const/4 v2, 0
    invoke-static { v1, v2 }, Lcom/geely/drivemem/util/AutoCost;->run(Landroid/content/Context;Z)I
  :L1
  .line 319
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView$10;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    iget-object v2, p0, Lcom/geely/drivemem/ui/TrendsView$10;->val$ctx:Landroid/content/Context;
    iget v3, p0, Lcom/geely/drivemem/ui/TrendsView$10;->val$per:I
    invoke-static { v1, v2, v3 }, Lcom/geely/drivemem/ui/TrendsView;->access$800(Lcom/geely/drivemem/ui/TrendsView;Landroid/content/Context;I)Lcom/geely/drivemem/ui/TrendsView$Series;
  :L2
    move-result-object v0
  :L3
  .line 321
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView$10;->val$ctx:Landroid/content/Context;
    invoke-static { v1 }, Lcom/geely/drivemem/util/FullCharge;->lastFullMs(Landroid/content/Context;)J
    move-result-wide v2
  .line 322
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView$10;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    invoke-static { v1 }, Lcom/geely/drivemem/ui/TrendsView;->access$400(Lcom/geely/drivemem/ui/TrendsView;)Landroid/os/Handler;
    move-result-object v1
    new-instance v4, Lcom/geely/drivemem/ui/TrendsView$10$1;
    invoke-direct { v4, p0, v0, v2, v3 }, Lcom/geely/drivemem/ui/TrendsView$10$1;-><init>(Lcom/geely/drivemem/ui/TrendsView$10;Lcom/geely/drivemem/ui/TrendsView$Series;J)V
    invoke-virtual { v1, v4 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  .line 329
    return-void
  :L4
  .line 319
    move-exception v1
    goto :L3
  :L5
  .line 318
    move-exception v1
    goto :L1
.end method
