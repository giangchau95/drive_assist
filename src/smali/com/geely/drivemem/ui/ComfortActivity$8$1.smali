.class Lcom/geely/drivemem/ui/ComfortActivity$8$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "ComfortActivity.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/ComfortActivity$8;->run()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$1:Lcom/geely/drivemem/ui/ComfortActivity$8;

.method constructor <init>(Lcom/geely/drivemem/ui/ComfortActivity$8;)V
  .registers 2
  .prologue
  .line 309
    iput-object p1, p0, Lcom/geely/drivemem/ui/ComfortActivity$8$1;->this$1:Lcom/geely/drivemem/ui/ComfortActivity$8;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 2
  .prologue
  .line 309
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity$8$1;->this$1:Lcom/geely/drivemem/ui/ComfortActivity$8;
    iget-object v0, v0, Lcom/geely/drivemem/ui/ComfortActivity$8;->this$0:Lcom/geely/drivemem/ui/ComfortActivity;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/ComfortActivity;->access$400(Lcom/geely/drivemem/ui/ComfortActivity;)V
    return-void
.end method
