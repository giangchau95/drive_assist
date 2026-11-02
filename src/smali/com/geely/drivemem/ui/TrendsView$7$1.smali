.class Lcom/geely/drivemem/ui/TrendsView$7$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "TrendsView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/TrendsView$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$1:Lcom/geely/drivemem/ui/TrendsView$7;

.method constructor <init>(Lcom/geely/drivemem/ui/TrendsView$7;)V
  .registers 2
  .prologue
  .line 178
    iput-object p1, p0, Lcom/geely/drivemem/ui/TrendsView$7$1;->this$1:Lcom/geely/drivemem/ui/TrendsView$7;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .prologue
  .line 180
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$7$1;->this$1:Lcom/geely/drivemem/ui/TrendsView$7;
    iget-object v0, v0, Lcom/geely/drivemem/ui/TrendsView$7;->val$c:Landroid/content/Context;
    const/4 v1, 1
    invoke-static { v0, v1 }, Lcom/geely/drivemem/util/AutoCost;->run(Landroid/content/Context;Z)I
  .line 181
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$7$1;->this$1:Lcom/geely/drivemem/ui/TrendsView$7;
    iget-object v0, v0, Lcom/geely/drivemem/ui/TrendsView$7;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/TrendsView;->access$400(Lcom/geely/drivemem/ui/TrendsView;)Landroid/os/Handler;
    move-result-object v0
    new-instance v1, Lcom/geely/drivemem/ui/TrendsView$7$1$1;
    invoke-direct { v1, p0 }, Lcom/geely/drivemem/ui/TrendsView$7$1$1;-><init>(Lcom/geely/drivemem/ui/TrendsView$7$1;)V
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  .line 182
    return-void
.end method
