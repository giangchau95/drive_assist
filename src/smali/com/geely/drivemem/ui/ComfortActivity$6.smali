.class Lcom/geely/drivemem/ui/ComfortActivity$6;
.super Ljava/lang/Object;
.implements Lcom/geely/drivemem/ui/OtaDialog$Listener;
.source "ComfortActivity.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/ComfortActivity;->openOtaDialog(Lcom/geely/drivemem/net/OtaUpdater$Info;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/ComfortActivity;

.method constructor <init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
  .registers 2
  .prologue
  .line 237
    iput-object p1, p0, Lcom/geely/drivemem/ui/ComfortActivity$6;->this$0:Lcom/geely/drivemem/ui/ComfortActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onUpdateAvailable(Z)V
  .registers 3
  .prologue
  .line 239
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity$6;->this$0:Lcom/geely/drivemem/ui/ComfortActivity;
    invoke-static { v0, p1 }, Lcom/geely/drivemem/ui/ComfortActivity;->access$202(Lcom/geely/drivemem/ui/ComfortActivity;Z)Z
  .line 240
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity$6;->this$0:Lcom/geely/drivemem/ui/ComfortActivity;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/ComfortActivity;->access$300(Lcom/geely/drivemem/ui/ComfortActivity;)V
  .line 241
    return-void
.end method
