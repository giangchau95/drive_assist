.class Lcom/geely/drivemem/ui/OtaDialog$1$1;
.super Ljava/lang/Object;
.implements Lcom/geely/drivemem/net/OtaUpdater$Callback;
.source "OtaDialog.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/OtaDialog$1;->run()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/OtaDialog$1;

.method constructor <init>(Lcom/geely/drivemem/ui/OtaDialog$1;)V
  .registers 2
  .prologue
  .line 87
    iput-object p1, p0, Lcom/geely/drivemem/ui/OtaDialog$1$1;->this$0:Lcom/geely/drivemem/ui/OtaDialog$1;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onResult(Lcom/geely/drivemem/net/OtaUpdater$Info;ZLjava/lang/String;)V
  .registers 8
  .prologue
    const/4 v3, 0
  .line 89
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$1$1;->this$0:Lcom/geely/drivemem/ui/OtaDialog$1;
    iget-object v0, v0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$busy:[Z
    aput-boolean v3, v0, v3
  .line 90
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$1$1;->this$0:Lcom/geely/drivemem/ui/OtaDialog$1;
    iget-object v0, v0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$dialog:Landroid/app/AlertDialog;
    invoke-virtual { v0 }, Landroid/app/AlertDialog;->isShowing()Z
    move-result v0
    if-nez v0, :L1
  :L0
  .line 108
    return-void
  :L1
  .line 91
    if-nez p1, :L2
  .line 92
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$1$1;->this$0:Lcom/geely/drivemem/ui/OtaDialog$1;
    iget-object v0, v0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$status:Landroid/widget/TextView;
    const-string v1, "#FF453A"
    invoke-static { v1 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 93
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$1$1;->this$0:Lcom/geely/drivemem/ui/OtaDialog$1;
    iget-object v0, v0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$status:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Could not check: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto :L0
  :L2
  .line 96
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$1$1;->this$0:Lcom/geely/drivemem/ui/OtaDialog$1;
    iget-object v0, v0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$latest:[Lcom/geely/drivemem/net/OtaUpdater$Info;
    aput-object p1, v0, v3
  .line 97
    if-eqz p2, :L4
  .line 98
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$1$1;->this$0:Lcom/geely/drivemem/ui/OtaDialog$1;
    iget-object v0, v0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$status:Landroid/widget/TextView;
    const-string v1, "#30D158"
    invoke-static { v1 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 99
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$1$1;->this$0:Lcom/geely/drivemem/ui/OtaDialog$1;
    iget-object v0, v0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$status:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "New version available: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget-object v2, p1, Lcom/geely/drivemem/net/OtaUpdater$Info;->versionName:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 100
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$1$1;->this$0:Lcom/geely/drivemem/ui/OtaDialog$1;
    iget-object v0, v0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$notes:Landroid/widget/TextView;
    iget-object v1, p1, Lcom/geely/drivemem/net/OtaUpdater$Info;->changelog:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 101
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$1$1;->this$0:Lcom/geely/drivemem/ui/OtaDialog$1;
    iget-object v0, v0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$updateBtn:[Landroid/widget/TextView;
    aget-object v0, v0, v3
    invoke-virtual { v0, v3 }, Landroid/widget/TextView;->setVisibility(I)V
  :L3
  .line 107
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$1$1;->this$0:Lcom/geely/drivemem/ui/OtaDialog$1;
    iget-object v0, v0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$l:Lcom/geely/drivemem/ui/OtaDialog$Listener;
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$1$1;->this$0:Lcom/geely/drivemem/ui/OtaDialog$1;
    iget-object v0, v0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$l:Lcom/geely/drivemem/ui/OtaDialog$Listener;
    invoke-interface { v0, p2 }, Lcom/geely/drivemem/ui/OtaDialog$Listener;->onUpdateAvailable(Z)V
    goto :L0
  :L4
  .line 103
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$1$1;->this$0:Lcom/geely/drivemem/ui/OtaDialog$1;
    iget-object v0, v0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$status:Landroid/widget/TextView;
    sget v1, Lcom/geely/drivemem/util/Style;->TEXT:I
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 104
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$1$1;->this$0:Lcom/geely/drivemem/ui/OtaDialog$1;
    iget-object v0, v0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$status:Landroid/widget/TextView;
    const-string v1, "You are on the latest version."
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 105
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$1$1;->this$0:Lcom/geely/drivemem/ui/OtaDialog$1;
    iget-object v0, v0, Lcom/geely/drivemem/ui/OtaDialog$1;->val$notes:Landroid/widget/TextView;
    iget-object v1, p1, Lcom/geely/drivemem/net/OtaUpdater$Info;->changelog:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto :L3
.end method
