.class Lcom/geely/drivemem/ui/ComfortActivity$7;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "ComfortActivity.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/ComfortActivity;->onResume()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/ComfortActivity;

.method constructor <init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
  .registers 2
  .prologue
  .line 265
    iput-object p1, p0, Lcom/geely/drivemem/ui/ComfortActivity$7;->this$0:Lcom/geely/drivemem/ui/ComfortActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .prologue
  .line 267
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity$7;->this$0:Lcom/geely/drivemem/ui/ComfortActivity;
    const/4 v1, 0
    invoke-static { v0, v1 }, Lcom/geely/drivemem/util/AutoCost;->run(Landroid/content/Context;Z)I
  .line 268
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity$7;->this$0:Lcom/geely/drivemem/ui/ComfortActivity;
    new-instance v1, Lcom/geely/drivemem/ui/ComfortActivity$7$1;
    invoke-direct { v1, p0 }, Lcom/geely/drivemem/ui/ComfortActivity$7$1;-><init>(Lcom/geely/drivemem/ui/ComfortActivity$7;)V
    invoke-virtual { v0, v1 }, Lcom/geely/drivemem/ui/ComfortActivity;->runOnUiThread(Ljava/lang/Runnable;)V
  .line 269
    return-void
.end method
