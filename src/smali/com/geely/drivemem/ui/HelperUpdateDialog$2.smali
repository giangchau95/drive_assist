.class Lcom/geely/drivemem/ui/HelperUpdateDialog$2;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "HelperUpdateDialog.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/HelperUpdateDialog;->show(Landroid/app/Activity;Lcom/geely/drivemem/net/OtaUpdater$Info;)Z
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$d:Landroid/app/AlertDialog;

.method constructor <init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 3
  .prologue
  .line 63
    iput-object p1, p0, Lcom/geely/drivemem/ui/HelperUpdateDialog$2;->val$a:Landroid/app/Activity;
    iput-object p2, p0, Lcom/geely/drivemem/ui/HelperUpdateDialog$2;->val$d:Landroid/app/AlertDialog;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 7
  .prologue
  .line 65
    iget-object v0, p0, Lcom/geely/drivemem/ui/HelperUpdateDialog$2;->val$a:Landroid/app/Activity;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/HelperUpdateDialog;->access$100(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v0
    invoke-interface { v0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "snooze_until"
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    const-wide/32 v4, 86400000
    add-long/2addr v2, v4
    invoke-interface { v0, v1, v2, v3 }, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface { v0 }, Landroid/content/SharedPreferences$Editor;->apply()V
  .line 66
    iget-object v0, p0, Lcom/geely/drivemem/ui/HelperUpdateDialog$2;->val$d:Landroid/app/AlertDialog;
    invoke-virtual { v0 }, Landroid/app/AlertDialog;->dismiss()V
  .line 67
    return-void
.end method
