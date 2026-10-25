.class Lcom/geely/drivemem/ui/ChargeCostDialog$4;
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

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$onUpdated:Ljava/lang/Runnable;

.field final synthetic val$sessionId:J

.method constructor <init>(Landroid/widget/EditText;Landroid/content/Context;JLandroid/app/AlertDialog;Ljava/lang/Runnable;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 8
  .prologue
  .line 116
    iput-object p1, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$4;->val$input:Landroid/widget/EditText;
    iput-object p2, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$4;->val$context:Landroid/content/Context;
    iput-wide p3, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$4;->val$sessionId:J
    iput-object p5, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$4;->val$dialog:Landroid/app/AlertDialog;
    iput-object p6, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$4;->val$onUpdated:Ljava/lang/Runnable;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/NumberFormatException; { :L0 .. :L1 } :L2
  .registers 7
  :L0
  .prologue
  .line 119
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$4;->val$input:Landroid/widget/EditText;
    invoke-virtual { v0 }, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v0
    invoke-interface { v0 }, Landroid/text/Editable;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcom/geely/drivemem/ui/ChargeCostDialog;->valueFromText(Ljava/lang/String;)J
    move-result-wide v0
    long-to-double v0, v0
  .line 120
    iget-object v2, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$4;->val$context:Landroid/content/Context;
    iget-wide v4, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$4;->val$sessionId:J
    invoke-static { v2, v4, v5, v0, v1 }, Lcom/geely/drivemem/state/ChargeSession;->updateCost(Landroid/content/Context;JD)V
  .line 121
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$4;->val$dialog:Landroid/app/AlertDialog;
    invoke-virtual { v0 }, Landroid/app/AlertDialog;->dismiss()V
  .line 122
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$4;->val$onUpdated:Ljava/lang/Runnable;
    if-eqz v0, :L1
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$4;->val$onUpdated:Ljava/lang/Runnable;
    invoke-interface { v0 }, Ljava/lang/Runnable;->run()V
  :L1
  .line 127
    return-void
  :L2
  .line 123
    move-exception v0
  .line 124
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$4;->val$context:Landroid/content/Context;
    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$4;->val$context:Landroid/content/Context;
    sget v2, Lcom/geely/drivemem/R$string;->charge_cost_invalid:I
    invoke-virtual { v1, v2 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v1
    const/4 v2, 0
    invoke-static { v0, v1, v2 }, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
  .line 125
    invoke-virtual { v0 }, Landroid/widget/Toast;->show()V
    goto :L1
.end method
