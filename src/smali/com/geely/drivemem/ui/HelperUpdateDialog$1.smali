.class Lcom/geely/drivemem/ui/HelperUpdateDialog$1;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnDismissListener;
.source "HelperUpdateDialog.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/HelperUpdateDialog;->show(Landroid/app/Activity;Lcom/geely/drivemem/net/OtaUpdater$Info;)Z
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.method constructor <init>()V
  .registers 1
  .prologue
  .line 60
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
  .registers 3
  .prologue
  .line 61
    const/4 v0, 0
    invoke-static { v0 }, Lcom/geely/drivemem/ui/HelperUpdateDialog;->access$002(Z)Z
    return-void
.end method
