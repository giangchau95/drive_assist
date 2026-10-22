.class Lcom/geely/drivemem/ui/OtaDialog$1;
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

.field final synthetic val$busy:[Z

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$l:Lcom/geely/drivemem/ui/OtaDialog$Listener;

.field final synthetic val$latest:[Lcom/geely/drivemem/net/OtaUpdater$Info;

.field final synthetic val$notes:Landroid/widget/TextView;

.field final synthetic val$status:Landroid/widget/TextView;

.field final synthetic val$updateBtn:[Landroid/widget/TextView;

.method constructor <init>([ZLandroid/widget/TextView;Landroid/widget/TextView;[Landroid/widget/TextView;Landroid/app/Activity;Landroid/app/AlertDialog;[Lcom/geely/drivemem/net/OtaUpdater$Info;Lcom/geely/drivemem/ui/OtaDialog$Listener;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 9
  .prologue
  .line 79
    iput-object p1, p0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$busy:[Z
    iput-object p2, p0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$status:Landroid/widget/TextView;
    iput-object p3, p0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$notes:Landroid/widget/TextView;
    iput-object p4, p0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$updateBtn:[Landroid/widget/TextView;
    iput-object p5, p0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$a:Landroid/app/Activity;
    iput-object p6, p0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$dialog:Landroid/app/AlertDialog;
    iput-object p7, p0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$latest:[Lcom/geely/drivemem/net/OtaUpdater$Info;
    iput-object p8, p0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$l:Lcom/geely/drivemem/ui/OtaDialog$Listener;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .prologue
    const/4 v2, 0
  .line 81
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$busy:[Z
    aget-boolean v0, v0, v2
    if-eqz v0, :L1
  :L0
  .line 110
    return-void
  :L1
  .line 82
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$busy:[Z
    const/4 v1, 1
    aput-boolean v1, v0, v2
  .line 83
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$status:Landroid/widget/TextView;
    sget v1, Lcom/geely/drivemem/util/Style;->TEXT:I
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 84
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$status:Landroid/widget/TextView;
    const-string v1, "Checking for updates\u2026"
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 85
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$notes:Landroid/widget/TextView;
    const-string v1, ""
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 86
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$updateBtn:[Landroid/widget/TextView;
    aget-object v0, v0, v2
    const/16 v1, 8
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 87
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$a:Landroid/app/Activity;
    new-instance v1, Lcom/geely/drivemem/ui/OtaDialog$1$1;
    invoke-direct { v1, p0 }, Lcom/geely/drivemem/ui/OtaDialog$1$1;-><init>(Lcom/geely/drivemem/ui/OtaDialog$1;)V
    invoke-static { v0, v1 }, Lcom/geely/drivemem/net/OtaUpdater;->check(Landroid/content/Context;Lcom/geely/drivemem/net/OtaUpdater$Callback;)V
    goto :L0
.end method
