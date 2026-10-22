.class Lcom/geely/drivemem/ui/OtaDialog$3;
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

.field final synthetic val$checkBtn:[Landroid/widget/TextView;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$latest:[Lcom/geely/drivemem/net/OtaUpdater$Info;

.field final synthetic val$status:Landroid/widget/TextView;

.field final synthetic val$updateBtn:[Landroid/widget/TextView;

.method constructor <init>(Landroid/app/Activity;[Lcom/geely/drivemem/net/OtaUpdater$Info;Landroid/widget/TextView;[Landroid/widget/TextView;[Landroid/widget/TextView;Landroid/app/AlertDialog;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 7
  .prologue
  .line 121
    iput-object p1, p0, Lcom/geely/drivemem/ui/OtaDialog$3;->val$a:Landroid/app/Activity;
    iput-object p2, p0, Lcom/geely/drivemem/ui/OtaDialog$3;->val$latest:[Lcom/geely/drivemem/net/OtaUpdater$Info;
    iput-object p3, p0, Lcom/geely/drivemem/ui/OtaDialog$3;->val$status:Landroid/widget/TextView;
    iput-object p4, p0, Lcom/geely/drivemem/ui/OtaDialog$3;->val$updateBtn:[Landroid/widget/TextView;
    iput-object p5, p0, Lcom/geely/drivemem/ui/OtaDialog$3;->val$checkBtn:[Landroid/widget/TextView;
    iput-object p6, p0, Lcom/geely/drivemem/ui/OtaDialog$3;->val$dialog:Landroid/app/AlertDialog;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 5
  .prologue
    const/16 v3, 8
    const/4 v2, 0
  .line 123
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$3;->val$a:Landroid/app/Activity;
    iget-object v1, p0, Lcom/geely/drivemem/ui/OtaDialog$3;->val$latest:[Lcom/geely/drivemem/net/OtaUpdater$Info;
    aget-object v1, v1, v2
    invoke-static { v0, v1 }, Lcom/geely/drivemem/net/OtaUpdater;->install(Landroid/content/Context;Lcom/geely/drivemem/net/OtaUpdater$Info;)Ljava/lang/String;
    move-result-object v0
  .line 124
    if-eqz v0, :L1
  .line 125
    iget-object v1, p0, Lcom/geely/drivemem/ui/OtaDialog$3;->val$status:Landroid/widget/TextView;
    const-string v2, "#FF453A"
    invoke-static { v2 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v2
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 126
    iget-object v1, p0, Lcom/geely/drivemem/ui/OtaDialog$3;->val$status:Landroid/widget/TextView;
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L0
  .line 141
    return-void
  :L1
  .line 129
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$3;->val$updateBtn:[Landroid/widget/TextView;
    aget-object v0, v0, v2
    invoke-virtual { v0, v3 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 130
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$3;->val$checkBtn:[Landroid/widget/TextView;
    aget-object v0, v0, v2
    invoke-virtual { v0, v3 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 131
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$3;->val$status:Landroid/widget/TextView;
    sget v1, Lcom/geely/drivemem/util/Style;->TEXT:I
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 132
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$3;->val$status:Landroid/widget/TextView;
    const-string v1, "Downloading and installing\u2026 Drive Assist will restart by itself."
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 133
    new-instance v0, Landroid/os/Handler;
    invoke-direct { v0 }, Landroid/os/Handler;-><init>()V
    new-instance v1, Lcom/geely/drivemem/ui/OtaDialog$3$1;
    invoke-direct { v1, p0 }, Lcom/geely/drivemem/ui/OtaDialog$3$1;-><init>(Lcom/geely/drivemem/ui/OtaDialog$3;)V
    const-wide/32 v2, 90000
    invoke-virtual { v0, v1, v2, v3 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    goto :L0
.end method
