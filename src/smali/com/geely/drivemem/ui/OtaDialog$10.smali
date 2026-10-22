.class Lcom/geely/drivemem/ui/OtaDialog$10;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnDismissListener;
.source "OtaDialog.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/OtaDialog;->show(Landroid/app/Activity;Lcom/geely/drivemem/net/OtaUpdater$Info;Lcom/geely/drivemem/ui/OtaDialog$Listener;)Landroid/app/AlertDialog;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$obdListener:Lcom/geely/drivemem/sensors/Obd2Reader$Listener;

.method constructor <init>(Lcom/geely/drivemem/sensors/Obd2Reader$Listener;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 2
  .prologue
  .line 258
    iput-object p1, p0, Lcom/geely/drivemem/ui/OtaDialog$10;->val$obdListener:Lcom/geely/drivemem/sensors/Obd2Reader$Listener;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
  .registers 3
  .prologue
  .line 259
    iget-object v0, p0, Lcom/geely/drivemem/ui/OtaDialog$10;->val$obdListener:Lcom/geely/drivemem/sensors/Obd2Reader$Listener;
    invoke-static { v0 }, Lcom/geely/drivemem/sensors/Obd2Reader;->unsubscribe(Lcom/geely/drivemem/sensors/Obd2Reader$Listener;)V
    return-void
.end method
