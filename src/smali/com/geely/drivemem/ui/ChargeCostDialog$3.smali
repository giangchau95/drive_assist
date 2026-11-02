.class Lcom/geely/drivemem/ui/ChargeCostDialog$3;
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

.field final synthetic val$kwh:D

.method constructor <init>(Landroid/widget/EditText;Landroid/content/Context;D)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 6
  .prologue
  .line 105
    iput-object p1, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$3;->val$input:Landroid/widget/EditText;
    iput-object p2, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$3;->val$context:Landroid/content/Context;
    iput-wide p3, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$3;->val$kwh:D
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 5
  .prologue
  .line 107
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$3;->val$input:Landroid/widget/EditText;
    invoke-virtual { v0 }, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v0
    invoke-interface { v0 }, Landroid/text/Editable;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcom/geely/drivemem/ui/ChargeCostDialog;->valueFromText(Ljava/lang/String;)J
    move-result-wide v0
  .line 108
    const-wide/16 v2, 0
    cmp-long v2, v0, v2
    if-lez v2, :L0
    const-wide/32 v2, 100000
    cmp-long v2, v0, v2
    if-gez v2, :L0
    iget-object v2, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$3;->val$context:Landroid/content/Context;
    invoke-static { v2, v0, v1 }, Lcom/geely/drivemem/util/AutoCost;->setLastDcPrice(Landroid/content/Context;J)V
  :L0
  .line 109
    long-to-double v0, v0
    iget-wide v2, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$3;->val$kwh:D
    mul-double/2addr v0, v2
    invoke-static { v0, v1 }, Ljava/lang/Math;->round(D)J
    move-result-wide v0
  .line 110
    iget-object v2, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$3;->val$input:Landroid/widget/EditText;
    invoke-static { v0, v1 }, Lcom/geely/drivemem/ui/ChargeCostDialog;->formatVnd(J)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v0 }, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
  .line 111
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$3;->val$input:Landroid/widget/EditText;
    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$3;->val$input:Landroid/widget/EditText;
    invoke-virtual { v1 }, Landroid/widget/EditText;->length()I
    move-result v1
    invoke-virtual { v0, v1 }, Landroid/widget/EditText;->setSelection(I)V
  .line 112
    return-void
.end method
