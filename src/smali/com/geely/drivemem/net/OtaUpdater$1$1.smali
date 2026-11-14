.class Lcom/geely/drivemem/net/OtaUpdater$1$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "OtaUpdater.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/net/OtaUpdater$1;->run()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/net/OtaUpdater$1;

.field final synthetic val$fe:Ljava/lang/String;

.field final synthetic val$fi:Lcom/geely/drivemem/net/OtaUpdater$Info;

.field final synthetic val$newer:Z

.method constructor <init>(Lcom/geely/drivemem/net/OtaUpdater$1;Lcom/geely/drivemem/net/OtaUpdater$Info;ZLjava/lang/String;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 5
  .prologue
  .line 157
    iput-object p1, p0, Lcom/geely/drivemem/net/OtaUpdater$1$1;->this$0:Lcom/geely/drivemem/net/OtaUpdater$1;
    iput-object p2, p0, Lcom/geely/drivemem/net/OtaUpdater$1$1;->val$fi:Lcom/geely/drivemem/net/OtaUpdater$Info;
    iput-boolean p3, p0, Lcom/geely/drivemem/net/OtaUpdater$1$1;->val$newer:Z
    iput-object p4, p0, Lcom/geely/drivemem/net/OtaUpdater$1$1;->val$fe:Ljava/lang/String;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 5
  .prologue
  .line 159
    iget-object v0, p0, Lcom/geely/drivemem/net/OtaUpdater$1$1;->val$fi:Lcom/geely/drivemem/net/OtaUpdater$Info;
    if-eqz v0, :L1
    iget-object v0, p0, Lcom/geely/drivemem/net/OtaUpdater$1$1;->this$0:Lcom/geely/drivemem/net/OtaUpdater$1;
    iget-object v0, v0, Lcom/geely/drivemem/net/OtaUpdater$1;->val$app:Landroid/content/Context;
    iget-object v1, p0, Lcom/geely/drivemem/net/OtaUpdater$1$1;->val$fi:Lcom/geely/drivemem/net/OtaUpdater$Info;
    invoke-static { v0, v1 }, Lcom/geely/drivemem/net/OtaUpdater;->helperOutdated(Landroid/content/Context;Lcom/geely/drivemem/net/OtaUpdater$Info;)Z
    move-result v0
    if-eqz v0, :L1
    invoke-static { }, Lcom/geely/drivemem/net/OtaUpdater;->blockedReason()Ljava/lang/String;
    move-result-object v0
    if-nez v0, :L1
  .line 160
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    invoke-static { }, Lcom/geely/drivemem/net/OtaUpdater;->access$000()J
    move-result-wide v2
    sub-long/2addr v0, v2
    const-wide/32 v2, 600000
    cmp-long v0, v0, v2
    if-lez v0, :L1
  .line 161
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    invoke-static { v0, v1 }, Lcom/geely/drivemem/net/OtaUpdater;->access$002(J)J
  .line 162
    iget-object v0, p0, Lcom/geely/drivemem/net/OtaUpdater$1$1;->this$0:Lcom/geely/drivemem/net/OtaUpdater$1;
    iget-object v0, v0, Lcom/geely/drivemem/net/OtaUpdater$1;->val$app:Landroid/content/Context;
    iget-object v1, p0, Lcom/geely/drivemem/net/OtaUpdater$1$1;->val$fi:Lcom/geely/drivemem/net/OtaUpdater$Info;
    invoke-static { v0, v1 }, Lcom/geely/drivemem/net/OtaUpdater;->updateHelper(Landroid/content/Context;Lcom/geely/drivemem/net/OtaUpdater$Info;)Ljava/lang/String;
    move-result-object v0
  .line 163
    const-string v1, "DriveMemOta"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "helper auto-update: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    if-nez v0, :L0
    const-string v0, "started"
  :L0
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
  :L1
  .line 165
    iget-object v0, p0, Lcom/geely/drivemem/net/OtaUpdater$1$1;->this$0:Lcom/geely/drivemem/net/OtaUpdater$1;
    iget-object v0, v0, Lcom/geely/drivemem/net/OtaUpdater$1;->val$cb:Lcom/geely/drivemem/net/OtaUpdater$Callback;
    iget-object v1, p0, Lcom/geely/drivemem/net/OtaUpdater$1$1;->val$fi:Lcom/geely/drivemem/net/OtaUpdater$Info;
    iget-boolean v2, p0, Lcom/geely/drivemem/net/OtaUpdater$1$1;->val$newer:Z
    iget-object v3, p0, Lcom/geely/drivemem/net/OtaUpdater$1$1;->val$fe:Ljava/lang/String;
    invoke-interface { v0, v1, v2, v3 }, Lcom/geely/drivemem/net/OtaUpdater$Callback;->onResult(Lcom/geely/drivemem/net/OtaUpdater$Info;ZLjava/lang/String;)V
  .line 166
    return-void
.end method
