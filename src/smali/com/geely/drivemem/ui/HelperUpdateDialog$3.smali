.class Lcom/geely/drivemem/ui/HelperUpdateDialog$3;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "HelperUpdateDialog.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/HelperUpdateDialog;->show(Landroid/app/Activity;Lcom/geely/drivemem/net/OtaUpdater$Info;)Z
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$d:Landroid/app/AlertDialog;

.field final synthetic val$info:Lcom/geely/drivemem/net/OtaUpdater$Info;

.field final synthetic val$m:Landroid/widget/TextView;

.method constructor <init>(Landroid/app/Activity;Lcom/geely/drivemem/net/OtaUpdater$Info;Landroid/widget/TextView;Landroid/app/AlertDialog;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 5
  .prologue
  .line 70
    iput-object p1, p0, Lcom/geely/drivemem/ui/HelperUpdateDialog$3;->val$a:Landroid/app/Activity;
    iput-object p2, p0, Lcom/geely/drivemem/ui/HelperUpdateDialog$3;->val$info:Lcom/geely/drivemem/net/OtaUpdater$Info;
    iput-object p3, p0, Lcom/geely/drivemem/ui/HelperUpdateDialog$3;->val$m:Landroid/widget/TextView;
    iput-object p4, p0, Lcom/geely/drivemem/ui/HelperUpdateDialog$3;->val$d:Landroid/app/AlertDialog;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .prologue
  .line 72
    iget-object v0, p0, Lcom/geely/drivemem/ui/HelperUpdateDialog$3;->val$a:Landroid/app/Activity;
    iget-object v1, p0, Lcom/geely/drivemem/ui/HelperUpdateDialog$3;->val$info:Lcom/geely/drivemem/net/OtaUpdater$Info;
    invoke-static { v0, v1 }, Lcom/geely/drivemem/net/OtaUpdater;->updateHelper(Landroid/content/Context;Lcom/geely/drivemem/net/OtaUpdater$Info;)Ljava/lang/String;
    move-result-object v0
  .line 73
    if-eqz v0, :L1
  .line 74
    iget-object v1, p0, Lcom/geely/drivemem/ui/HelperUpdateDialog$3;->val$m:Landroid/widget/TextView;
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 75
    iget-object v0, p0, Lcom/geely/drivemem/ui/HelperUpdateDialog$3;->val$m:Landroid/widget/TextView;
    sget v1, Lcom/geely/drivemem/util/Style;->HEAT:I
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextColor(I)V
  :L0
  .line 81
    return-void
  :L1
  .line 77
    iget-object v0, p0, Lcom/geely/drivemem/ui/HelperUpdateDialog$3;->val$d:Landroid/app/AlertDialog;
    invoke-virtual { v0 }, Landroid/app/AlertDialog;->dismiss()V
  .line 78
    iget-object v0, p0, Lcom/geely/drivemem/ui/HelperUpdateDialog$3;->val$a:Landroid/app/Activity;
    const-string v1, "Updating ModeHelper\u2026 it restarts itself in a few seconds."
    const/4 v2, 1
    invoke-static { v0, v1, v2 }, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
  .line 79
    invoke-virtual { v0 }, Landroid/widget/Toast;->show()V
    goto :L0
.end method
