.class Lcom/geely/drivemem/ui/OtaDialog$4;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "OtaDialog.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/OtaDialog;->show(Landroid/app/Activity;Lcom/geely/drivemem/net/OtaUpdater$Info;Lcom/geely/drivemem/ui/OtaDialog$Listener;)Landroid/app/AlertDialog;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$status:Landroid/widget/TextView;

.method constructor <init>(Landroid/app/Activity;Landroid/widget/TextView;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 3
  .prologue
  .line 164
    iput-object p1, p0, Lcom/geely/drivemem/ui/OtaDialog$4;->val$a:Landroid/app/Activity;
    iput-object p2, p0, Lcom/geely/drivemem/ui/OtaDialog$4;->val$status:Landroid/widget/TextView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .prologue
  .line 165
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$4;->val$a:Landroid/app/Activity;
    iget-object v1, p0, Lcom/geely/drivemem/ui/OtaDialog$4;->val$status:Landroid/widget/TextView;
    invoke-static { v0, v1 }, Lcom/geely/drivemem/ui/OtaDialog;->access$000(Landroid/app/Activity;Landroid/widget/TextView;)V
    return-void
.end method
