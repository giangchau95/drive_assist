.class Lcom/geely/drivemem/ui/OtaDialog$6$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "OtaDialog.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/OtaDialog$6;->run()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/OtaDialog$6;

.method constructor <init>(Lcom/geely/drivemem/ui/OtaDialog$6;)V
  .registers 2
  .prologue
  .line 190
    iput-object p1, p0, Lcom/geely/drivemem/ui/OtaDialog$6$1;->this$0:Lcom/geely/drivemem/ui/OtaDialog$6;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .prologue
    const/4 v2, 0
  .line 192
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$6$1;->this$0:Lcom/geely/drivemem/ui/OtaDialog$6;
    iget-object v0, v0, Lcom/geely/drivemem/ui/OtaDialog$6;->val$dialog:Landroid/app/AlertDialog;
    invoke-virtual { v0 }, Landroid/app/AlertDialog;->isShowing()Z
    move-result v0
    if-nez v0, :L1
  :L0
  .line 196
    return-void
  :L1
  .line 193
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$6$1;->this$0:Lcom/geely/drivemem/ui/OtaDialog$6;
    iget-object v0, v0, Lcom/geely/drivemem/ui/OtaDialog$6;->val$status:Landroid/widget/TextView;
    const-string v1, "#FF9F0A"
    invoke-static { v1 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 194
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$6$1;->this$0:Lcom/geely/drivemem/ui/OtaDialog$6;
    iget-object v0, v0, Lcom/geely/drivemem/ui/OtaDialog$6;->val$status:Landroid/widget/TextView;
    const-string v1, "Still not updated. The install may have failed \u2014 close and try again."
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 195
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$6$1;->this$0:Lcom/geely/drivemem/ui/OtaDialog$6;
    iget-object v0, v0, Lcom/geely/drivemem/ui/OtaDialog$6;->val$checkBtn:[Landroid/widget/TextView;
    aget-object v0, v0, v2
    invoke-virtual { v0, v2 }, Landroid/widget/TextView;->setVisibility(I)V
    goto :L0
.end method
