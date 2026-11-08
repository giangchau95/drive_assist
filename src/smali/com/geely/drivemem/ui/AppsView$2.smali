.class Lcom/geely/drivemem/ui/AppsView$2;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "AppsView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/AppsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/AppsView;

.method constructor <init>(Lcom/geely/drivemem/ui/AppsView;)V
  .registers 2
  .prologue
  .line 101
    iput-object p1, p0, Lcom/geely/drivemem/ui/AppsView$2;->this$0:Lcom/geely/drivemem/ui/AppsView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 3
  .prologue
  .line 102
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView$2;->this$0:Lcom/geely/drivemem/ui/AppsView;
    invoke-virtual { v0 }, Lcom/geely/drivemem/ui/AppsView;->refresh()V
    return-void
.end method
