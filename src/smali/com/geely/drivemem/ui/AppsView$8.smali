.class Lcom/geely/drivemem/ui/AppsView$8;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "AppsView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/AppsView;->install(Lcom/geely/drivemem/ui/AppsView$App;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/AppsView;

.field final synthetic val$pkg:Ljava/lang/String;

.method constructor <init>(Lcom/geely/drivemem/ui/AppsView;Ljava/lang/String;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 3
  .prologue
  .line 349
    iput-object p1, p0, Lcom/geely/drivemem/ui/AppsView$8;->this$0:Lcom/geely/drivemem/ui/AppsView;
    iput-object p2, p0, Lcom/geely/drivemem/ui/AppsView$8;->val$pkg:Ljava/lang/String;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .prologue
  .line 350
    const-string v0, "start"
    iget-object v1, p0, Lcom/geely/drivemem/ui/AppsView$8;->this$0:Lcom/geely/drivemem/ui/AppsView;
    invoke-static { v1 }, Lcom/geely/drivemem/ui/AppsView;->access$000(Lcom/geely/drivemem/ui/AppsView;)Ljava/util/Map;
    move-result-object v1
    iget-object v2, p0, Lcom/geely/drivemem/ui/AppsView$8;->val$pkg:Ljava/lang/String;
    invoke-interface { v1, v2 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView$8;->this$0:Lcom/geely/drivemem/ui/AppsView;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/AppsView;->access$300(Lcom/geely/drivemem/ui/AppsView;)V
  :L0
    return-void
.end method
