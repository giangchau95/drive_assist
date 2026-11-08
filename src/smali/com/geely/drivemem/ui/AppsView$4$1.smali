.class Lcom/geely/drivemem/ui/AppsView$4$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "AppsView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/AppsView$4;->run()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$1:Lcom/geely/drivemem/ui/AppsView$4;

.field final synthetic val$bm:Landroid/graphics/Bitmap;

.method constructor <init>(Lcom/geely/drivemem/ui/AppsView$4;Landroid/graphics/Bitmap;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 3
  .prologue
  .line 335
    iput-object p1, p0, Lcom/geely/drivemem/ui/AppsView$4$1;->this$1:Lcom/geely/drivemem/ui/AppsView$4;
    iput-object p2, p0, Lcom/geely/drivemem/ui/AppsView$4$1;->val$bm:Landroid/graphics/Bitmap;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .prologue
  .line 336
    invoke-static { }, Lcom/geely/drivemem/ui/AppsView;->access$900()Ljava/util/Map;
    move-result-object v0
    iget-object v1, p0, Lcom/geely/drivemem/ui/AppsView$4$1;->this$1:Lcom/geely/drivemem/ui/AppsView$4;
    iget-object v1, v1, Lcom/geely/drivemem/ui/AppsView$4;->val$a:Lcom/geely/drivemem/ui/AppsView$App;
    iget-object v1, v1, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    iget-object v2, p0, Lcom/geely/drivemem/ui/AppsView$4$1;->val$bm:Landroid/graphics/Bitmap;
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView$4$1;->this$1:Lcom/geely/drivemem/ui/AppsView$4;
    iget-object v0, v0, Lcom/geely/drivemem/ui/AppsView$4;->val$iv:Landroid/widget/ImageView;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView$4$1;->this$1:Lcom/geely/drivemem/ui/AppsView$4;
    iget-object v0, v0, Lcom/geely/drivemem/ui/AppsView$4;->val$iv:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/geely/drivemem/ui/AppsView$4$1;->val$bm:Landroid/graphics/Bitmap;
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    return-void
.end method
