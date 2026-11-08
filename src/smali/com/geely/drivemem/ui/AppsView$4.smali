.class Lcom/geely/drivemem/ui/AppsView$4;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "AppsView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/AppsView;->btn(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/AppsView;

.field final synthetic val$r:Ljava/lang/Runnable;

.method constructor <init>(Lcom/geely/drivemem/ui/AppsView;Ljava/lang/Runnable;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 3
  .prologue
  .line 303
    iput-object p1, p0, Lcom/geely/drivemem/ui/AppsView$4;->this$0:Lcom/geely/drivemem/ui/AppsView;
    iput-object p2, p0, Lcom/geely/drivemem/ui/AppsView$4;->val$r:Ljava/lang/Runnable;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 3
  .prologue
  .line 303
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView$4;->val$r:Ljava/lang/Runnable;
    invoke-interface { v0 }, Ljava/lang/Runnable;->run()V
    return-void
.end method
