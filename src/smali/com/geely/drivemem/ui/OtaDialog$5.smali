.class Lcom/geely/drivemem/ui/OtaDialog$5;
.super Ljava/lang/Object;
.implements Lcom/geely/drivemem/sensors/Obd2Reader$Listener;
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
  .line 139
    iput-object p1, p0, Lcom/geely/drivemem/ui/OtaDialog$5;->val$a:Landroid/app/Activity;
    iput-object p2, p0, Lcom/geely/drivemem/ui/OtaDialog$5;->val$refreshObd:Ljava/lang/Runnable;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onObd2ConnectedChanged(Z)V
  .registers 4
  .prologue
  .line 141
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$5;->val$a:Landroid/app/Activity;
    iget-object v1, p0, Lcom/geely/drivemem/ui/OtaDialog$5;->val$refreshObd:Ljava/lang/Runnable;
    invoke-virtual { v0, v1 }, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
  .line 142
    return-void
.end method
