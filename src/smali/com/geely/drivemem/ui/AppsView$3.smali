.class Lcom/geely/drivemem/ui/AppsView$3;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "AppsView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/AppsView;->render()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/AppsView;

.method constructor <init>(Lcom/geely/drivemem/ui/AppsView;)V
  .registers 2
  .prologue
  .line 190
    iput-object p1, p0, Lcom/geely/drivemem/ui/AppsView$3;->this$0:Lcom/geely/drivemem/ui/AppsView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 2
  .prologue
  .line 191
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView$3;->this$0:Lcom/geely/drivemem/ui/AppsView;
    invoke-virtual { v0 }, Lcom/geely/drivemem/ui/AppsView;->refresh()V
    return-void
.end method
