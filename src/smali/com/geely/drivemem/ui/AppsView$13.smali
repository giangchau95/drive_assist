.class Lcom/geely/drivemem/ui/AppsView$13;
.super Ljava/lang/Object;
.implements Lcom/geely/drivemem/net/OtaUpdater$Callback;
.source "AppsView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/AppsView;->updateHelper()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/AppsView;

.field final synthetic val$c:Landroid/content/Context;

.method constructor <init>(Lcom/geely/drivemem/ui/AppsView;Landroid/content/Context;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 3
  .prologue
  .line 570
    iput-object p1, p0, Lcom/geely/drivemem/ui/AppsView$13;->this$0:Lcom/geely/drivemem/ui/AppsView;
    iput-object p2, p0, Lcom/geely/drivemem/ui/AppsView$13;->val$c:Landroid/content/Context;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onResult(Lcom/geely/drivemem/net/OtaUpdater$Info;ZLjava/lang/String;)V
  .registers 7
  .prologue
  .line 572
    if-nez p1, :L1
  :L0
  .line 575
    return-void
  :L1
  .line 573
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView$13;->val$c:Landroid/content/Context;
    invoke-static { v0, p1 }, Lcom/geely/drivemem/net/OtaUpdater;->updateHelper(Landroid/content/Context;Lcom/geely/drivemem/net/OtaUpdater$Info;)Ljava/lang/String;
    move-result-object v0
  .line 574
    iget-object v1, p0, Lcom/geely/drivemem/ui/AppsView$13;->val$c:Landroid/content/Context;
    if-eqz v0, :L3
  :L2
    const/4 v2, 1
    invoke-static { v1, v0, v2 }, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/widget/Toast;->show()V
    goto :L0
  :L3
    const-string v0, "Updating ModeHelper\u2026 try again in about a minute."
    goto :L2
.end method
