.class Lcom/geely/drivemem/ui/ChargeCostDialog$1;
.super Ljava/lang/Object;
.implements Landroid/text/TextWatcher;
.source "ChargeCostDialog.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/ChargeCostDialog;->show(Landroid/content/Context;JDIILjava/lang/Double;Ljava/lang/Runnable;)Landroid/app/AlertDialog;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field private formatting:Z

.field final synthetic val$input:Landroid/widget/EditText;

.method constructor <init>(Landroid/widget/EditText;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 2
  .prologue
  .line 70
    iput-object p1, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$1;->val$input:Landroid/widget/EditText;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
  .registers 4
  .prologue
  .line 75
    iget-boolean v0, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$1;->formatting:Z
    if-eqz v0, :L1
  :L0
  .line 81
    return-void
  :L1
  .line 76
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$1;->formatting:Z
  .line 77
    invoke-interface { p1 }, Landroid/text/Editable;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcom/geely/drivemem/ui/ChargeCostDialog;->valueFromText(Ljava/lang/String;)J
    move-result-wide v0
    invoke-static { v0, v1 }, Lcom/geely/drivemem/ui/ChargeCostDialog;->formatVnd(J)Ljava/lang/String;
    move-result-object v0
  .line 78
    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$1;->val$input:Landroid/widget/EditText;
    invoke-virtual { v1, v0 }, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
  .line 79
    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$1;->val$input:Landroid/widget/EditText;
    invoke-virtual { v0 }, Ljava/lang/String;->length()I
    move-result v0
    invoke-virtual { v1, v0 }, Landroid/widget/EditText;->setSelection(I)V
  .line 80
    const/4 v0, 0
    iput-boolean v0, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$1;->formatting:Z
    goto :L0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
  .registers 5
  .prologue
  .line 72
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
  .registers 5
  .prologue
  .line 73
    return-void
.end method
