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

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$kwh:D

.field final synthetic val$lastPrice:J

.method constructor <init>(Landroid/widget/EditText;JD)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 6
  .prologue
  .line 120
    iput-object p1, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$4;->val$input:Landroid/widget/EditText;
    iput-wide p2, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$4;->val$lastPrice:J
    iput-wide p4, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$4;->val$kwh:D
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 7
  .prologue
  .line 122
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$4;->val$input:Landroid/widget/EditText;
    iget-wide v2, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$4;->val$lastPrice:J
    long-to-double v2, v2
    iget-wide v4, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$4;->val$kwh:D
    mul-double/2addr v2, v4
    invoke-static { v2, v3 }, Ljava/lang/Math;->round(D)J
    move-result-wide v2
    invoke-static { v2, v3 }, Lcom/geely/drivemem/ui/ChargeCostDialog;->formatVnd(J)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
  .line 123
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$4;->val$input:Landroid/widget/EditText;
    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargeCostDialog$4;->val$input:Landroid/widget/EditText;
    invoke-virtual { v1 }, Landroid/widget/EditText;->length()I
    move-result v1
    invoke-virtual { v0, v1 }, Landroid/widget/EditText;->setSelection(I)V
  .line 124
    return-void
.end method
