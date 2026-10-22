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
  .line 113
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
  .line 114
    iget-object v0, p0, Lcom/geely/drivemem/net/OtaUpdater$1$1;->this$0:Lcom/geely/drivemem/net/OtaUpdater$1;
    iget-object v0, v0, Lcom/geely/drivemem/net/OtaUpdater$1;->val$cb:Lcom/geely/drivemem/net/OtaUpdater$Callback;
    iget-object v1, p0, Lcom/geely/drivemem/net/OtaUpdater$1$1;->val$fi:Lcom/geely/drivemem/net/OtaUpdater$Info;
    iget-boolean v2, p0, Lcom/geely/drivemem/net/OtaUpdater$1$1;->val$newer:Z
    iget-object v3, p0, Lcom/geely/drivemem/net/OtaUpdater$1$1;->val$fe:Ljava/lang/String;
    invoke-interface { v0, v1, v2, v3 }, Lcom/geely/drivemem/net/OtaUpdater$Callback;->onResult(Lcom/geely/drivemem/net/OtaUpdater$Info;ZLjava/lang/String;)V
    return-void
.end method
