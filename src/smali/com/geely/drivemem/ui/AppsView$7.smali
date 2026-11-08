.class Lcom/geely/drivemem/ui/AppsView$7;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "AppsView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/AppsView;->card(Landroid/content/Context;Lcom/geely/drivemem/ui/AppsView$App;)Landroid/view/View;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/AppsView;

.field final synthetic val$a:Lcom/geely/drivemem/ui/AppsView$App;

.method constructor <init>(Lcom/geely/drivemem/ui/AppsView;Lcom/geely/drivemem/ui/AppsView$App;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 3
  .prologue
  .line 466
    iput-object p1, p0, Lcom/geely/drivemem/ui/AppsView$7;->this$0:Lcom/geely/drivemem/ui/AppsView;
    iput-object p2, p0, Lcom/geely/drivemem/ui/AppsView$7;->val$a:Lcom/geely/drivemem/ui/AppsView$App;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .prologue
  .line 466
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView$7;->this$0:Lcom/geely/drivemem/ui/AppsView;
    iget-object v1, p0, Lcom/geely/drivemem/ui/AppsView$7;->val$a:Lcom/geely/drivemem/ui/AppsView$App;
    invoke-static { v0, v1 }, Lcom/geely/drivemem/ui/AppsView;->access$1000(Lcom/geely/drivemem/ui/AppsView;Lcom/geely/drivemem/ui/AppsView$App;)V
    return-void
.end method
