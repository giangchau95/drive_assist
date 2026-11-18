.class Lcom/geely/drivemem/util/Fonts$2;
.super Ljava/lang/Object;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.source "Fonts.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/util/Fonts;->watch(Landroid/view/View;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$root:Landroid/view/View;

.method constructor <init>(Landroid/view/View;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 2
  .prologue
  .line 69
    iput-object p1, p0, Lcom/geely/drivemem/util/Fonts$2;->val$root:Landroid/view/View;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onGlobalLayout()V
  .registers 2
  .prologue
  .line 70
    iget-object v0, p0, Lcom/geely/drivemem/util/Fonts$2;->val$root:Landroid/view/View;
    invoke-static { v0 }, Lcom/geely/drivemem/util/Fonts;->apply(Landroid/view/View;)V
    return-void
.end method
