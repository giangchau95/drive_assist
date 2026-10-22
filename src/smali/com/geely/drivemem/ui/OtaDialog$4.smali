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

.field final synthetic val$refreshObd:Ljava/lang/Runnable;

.method constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 3
  .prologue
  .line 130
    iput-object p1, p0, Lcom/geely/drivemem/ui/OtaDialog$4;->val$a:Landroid/app/Activity;
    iput-object p2, p0, Lcom/geely/drivemem/ui/OtaDialog$4;->val$refreshObd:Ljava/lang/Runnable;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 5
  .prologue
  .line 132
    iget-object v1, p0, Lcom/geely/drivemem/ui/OtaDialog$4;->val$a:Landroid/app/Activity;
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$4;->val$a:Landroid/app/Activity;
    invoke-static { v0 }, Lcom/geely/drivemem/util/Prefs;->getObd2Enabled(Landroid/content/Context;)Z
    move-result v0
    if-nez v0, :L1
    const/4 v0, 1
  :L0
    invoke-static { v1, v0 }, Lcom/geely/drivemem/sensors/Obd2Reader;->setEnabled(Landroid/content/Context;Z)V
  .line 133
    new-instance v0, Landroid/os/Handler;
    invoke-direct { v0 }, Landroid/os/Handler;-><init>()V
    iget-object v1, p0, Lcom/geely/drivemem/ui/OtaDialog$4;->val$refreshObd:Ljava/lang/Runnable;
    const-wide/16 v2, 300
    invoke-virtual { v0, v1, v2, v3 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
  .line 134
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$4;->val$refreshObd:Ljava/lang/Runnable;
    invoke-interface { v0 }, Ljava/lang/Runnable;->run()V
  .line 135
    return-void
  :L1
  .line 132
    const/4 v0, 0
    goto :L0
.end method
