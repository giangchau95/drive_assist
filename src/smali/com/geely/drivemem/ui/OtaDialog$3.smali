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

.field final synthetic val$obdBtn:[Landroid/widget/TextView;

.field final synthetic val$obdStatus:Landroid/widget/TextView;

.method constructor <init>(Landroid/app/Activity;Landroid/widget/TextView;[Landroid/widget/TextView;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 4
  .prologue
  .line 122
    iput-object p1, p0, Lcom/geely/drivemem/ui/OtaDialog$3;->val$a:Landroid/app/Activity;
    iput-object p2, p0, Lcom/geely/drivemem/ui/OtaDialog$3;->val$obdStatus:Landroid/widget/TextView;
    iput-object p3, p0, Lcom/geely/drivemem/ui/OtaDialog$3;->val$obdBtn:[Landroid/widget/TextView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 5
  .prologue
    const/4 v3, 0
  .line 124
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$3;->val$a:Landroid/app/Activity;
    invoke-static { v0 }, Lcom/geely/drivemem/util/Prefs;->getObd2Enabled(Landroid/content/Context;)Z
    move-result v1
  .line 125
    iget-object v2, p0, Lcom/geely/drivemem/ui/OtaDialog$3;->val$obdStatus:Landroid/widget/TextView;
    if-nez v1, :L3
    const-string v0, "OBD2: Off"
  :L0
    invoke-virtual { v2, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 127
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$3;->val$obdBtn:[Landroid/widget/TextView;
    aget-object v0, v0, v3
    if-eqz v0, :L2
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$3;->val$obdBtn:[Landroid/widget/TextView;
    aget-object v2, v0, v3
    if-eqz v1, :L5
    const-string v0, "Turn off"
  :L1
    invoke-virtual { v2, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L2
  .line 128
    return-void
  :L3
  .line 126
    invoke-static { }, Lcom/geely/drivemem/sensors/Obd2Reader;->isConnected()Z
    move-result v0
    if-eqz v0, :L4
    const-string v0, "OBD2: On \u2014 connected"
    goto :L0
  :L4
    const-string v0, "OBD2: On \u2014 searching for dongle\u2026"
    goto :L0
  :L5
  .line 127
    const-string v0, "Turn on"
    goto :L1
.end method
