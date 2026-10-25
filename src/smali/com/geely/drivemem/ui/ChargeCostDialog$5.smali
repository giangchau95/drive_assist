.class Lcom/geely/drivemem/ui/ChargeCostDialog$5;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "ChargeCostDialog.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/ChargeCostDialog;->show(Landroid/content/Context;JDIILjava/lang/Double;Ljava/lang/Runnable;)Landroid/app/AlertDialog;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$input:Landroid/widget/EditText;

.method constructor <init>(Landroid/widget/EditText;Landroid/content/Context;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 3
  .prologue
  .line 135
    iput-object p1, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$5;->val$input:Landroid/widget/EditText;
    iput-object p2, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$5;->val$context:Landroid/content/Context;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .prologue
  .line 137
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$5;->val$input:Landroid/widget/EditText;
    invoke-virtual { v0 }, Landroid/widget/EditText;->selectAll()V
  .line 138
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$5;->val$context:Landroid/content/Context;
    const-string v1, "input_method"
    invoke-virtual { v0, v1 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;
  .line 139
    if-eqz v0, :L0
    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$5;->val$input:Landroid/widget/EditText;
    const/4 v2, 1
    invoke-virtual { v0, v1, v2 }, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
  :L0
  .line 140
    return-void
.end method
