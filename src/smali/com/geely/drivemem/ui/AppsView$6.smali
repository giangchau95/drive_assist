.class Lcom/geely/drivemem/ui/AppsView$6;
.super Landroid/view/ViewOutlineProvider;
.source "AppsView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/AppsView;->card(Landroid/content/Context;Lcom/geely/drivemem/ui/AppsView$App;)Landroid/view/View;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/AppsView;

.field final synthetic val$rad:I

.method constructor <init>(Lcom/geely/drivemem/ui/AppsView;I)V
  .registers 3
  .prologue
  .line 399
    iput-object p1, p0, Lcom/geely/drivemem/ui/AppsView$6;->this$0:Lcom/geely/drivemem/ui/AppsView;
    iput p2, p0, Lcom/geely/drivemem/ui/AppsView$6;->val$rad:I
    invoke-direct { p0 }, Landroid/view/ViewOutlineProvider;-><init>()V
    return-void
.end method

.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
  .registers 9
  .prologue
    const/4 v1, 0
  .line 400
    invoke-virtual { p1 }, Landroid/view/View;->getWidth()I
    move-result v3
    invoke-virtual { p1 }, Landroid/view/View;->getHeight()I
    move-result v4
    iget v0, p0, Lcom/geely/drivemem/ui/AppsView$6;->val$rad:I
    int-to-float v5, v0
    move-object v0, p2
    move v2, v1
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Outline;->setRoundRect(IIIIF)V
    return-void
.end method
