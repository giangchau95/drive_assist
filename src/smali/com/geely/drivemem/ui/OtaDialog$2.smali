.class Lcom/geely/drivemem/ui/OtaDialog$2;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "OtaDialog.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/OtaDialog;->confirmUninstall(Landroid/app/Activity;Landroid/widget/TextView;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$d:Landroid/app/AlertDialog;

.field final synthetic val$status:Landroid/widget/TextView;

.method constructor <init>(Landroid/app/AlertDialog;Landroid/app/Activity;Landroid/widget/TextView;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 4
  .prologue
  .line 55
    iput-object p1, p0, Lcom/geely/drivemem/ui/OtaDialog$2;->val$d:Landroid/app/AlertDialog;
    iput-object p2, p0, Lcom/geely/drivemem/ui/OtaDialog$2;->val$a:Landroid/app/Activity;
    iput-object p3, p0, Lcom/geely/drivemem/ui/OtaDialog$2;->val$status:Landroid/widget/TextView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .prologue
  .line 57
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$2;->val$d:Landroid/app/AlertDialog;
    invoke-virtual { v0 }, Landroid/app/AlertDialog;->dismiss()V
  .line 58
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$2;->val$a:Landroid/app/Activity;
    invoke-static { v0 }, Lcom/geely/drivemem/net/OtaUpdater;->uninstallAll(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v0
  .line 59
    if-eqz v0, :L1
  .line 60
    iget-object v1, p0, Lcom/geely/drivemem/ui/OtaDialog$2;->val$status:Landroid/widget/TextView;
    const-string v2, "#FF453A"
    invoke-static { v2 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v2
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 61
    iget-object v1, p0, Lcom/geely/drivemem/ui/OtaDialog$2;->val$status:Landroid/widget/TextView;
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L0
  .line 66
    return-void
  :L1
  .line 63
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$2;->val$status:Landroid/widget/TextView;
    sget v1, Lcom/geely/drivemem/util/Style;->TEXT:I
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 64
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$2;->val$status:Landroid/widget/TextView;
    const-string v1, "Uninstalling\u2026 the app will close."
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto :L0
.end method
