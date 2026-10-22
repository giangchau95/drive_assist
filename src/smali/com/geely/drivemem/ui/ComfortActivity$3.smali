.class Lcom/geely/drivemem/ui/ComfortActivity$3;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "ComfortActivity.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/ComfortActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/ComfortActivity;

.method constructor <init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
  .registers 2
  .prologue
  .line 92
    iput-object p1, p0, Lcom/geely/drivemem/ui/ComfortActivity$3;->this$0:Lcom/geely/drivemem/ui/ComfortActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 4
  .prologue
  .line 93
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity$3;->this$0:Lcom/geely/drivemem/ui/ComfortActivity;
    const/4 v1, 0
    invoke-static { v0, v1 }, Lcom/geely/drivemem/ui/ComfortActivity;->access$100(Lcom/geely/drivemem/ui/ComfortActivity;Lcom/geely/drivemem/net/OtaUpdater$Info;)V
    return-void
.end method
