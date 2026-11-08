.class Lcom/geely/drivemem/ui/AppsView$1;
.super Landroid/content/BroadcastReceiver;
.source "AppsView.java"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/geely/drivemem/ui/AppsView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/AppsView;

.method constructor <init>(Lcom/geely/drivemem/ui/AppsView;)V
  .registers 2
  .prologue
  .line 65
    iput-object p1, p0, Lcom/geely/drivemem/ui/AppsView$1;->this$0:Lcom/geely/drivemem/ui/AppsView;
    invoke-direct { p0 }, Landroid/content/BroadcastReceiver;-><init>()V
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
  .registers 7
  .prologue
  .line 67
    const-string v0, "pkg"
    invoke-virtual { p2, v0 }, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
  .line 68
    if-nez v1, :L1
  :L0
  .line 74
    return-void
  :L1
  .line 69
    const-string v0, "state"
    invoke-virtual { p2, v0 }, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 70
    iget-object v2, p0, Lcom/geely/drivemem/ui/AppsView$1;->this$0:Lcom/geely/drivemem/ui/AppsView;
    invoke-static { v2 }, Lcom/geely/drivemem/ui/AppsView;->access$000(Lcom/geely/drivemem/ui/AppsView;)Ljava/util/Map;
    move-result-object v2
    if-nez v0, :L2
    const-string v0, ""
  :L2
    invoke-interface { v2, v1, v0 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 71
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView$1;->this$0:Lcom/geely/drivemem/ui/AppsView;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/AppsView;->access$100(Lcom/geely/drivemem/ui/AppsView;)Ljava/util/Map;
    move-result-object v0
    const-string v2, "msg"
    invoke-virtual { p2, v2 }, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 72
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView$1;->this$0:Lcom/geely/drivemem/ui/AppsView;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/AppsView;->access$200(Lcom/geely/drivemem/ui/AppsView;)Ljava/util/Map;
    move-result-object v0
    const-string v2, "percent"
    const/4 v3, 0
    invoke-virtual { p2, v2, v3 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v2
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 73
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView$1;->this$0:Lcom/geely/drivemem/ui/AppsView;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/AppsView;->access$300(Lcom/geely/drivemem/ui/AppsView;)V
    goto :L0
.end method
