.class Lcom/geely/drivemem/ui/OtaDialog$1;
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

.field final synthetic val$d:Landroid/app/AlertDialog;

.method constructor <init>(Landroid/app/AlertDialog;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 2
  .prologue
  .line 52
    iput-object p1, p0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$d:Landroid/app/AlertDialog;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 2
  .prologue
  .line 53
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$d:Landroid/app/AlertDialog;
    invoke-virtual { v0 }, Landroid/app/AlertDialog;->dismiss()V
    return-void
.end method
