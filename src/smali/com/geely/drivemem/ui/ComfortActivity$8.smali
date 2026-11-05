.class Lcom/geely/drivemem/ui/ComfortActivity$8;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "ComfortActivity.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/ComfortActivity;->onResume()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/ComfortActivity;

.method constructor <init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
  .registers 2
  .prologue
  .line 272
    iput-object p1, p0, Lcom/geely/drivemem/ui/ComfortActivity$8;->this$0:Lcom/geely/drivemem/ui/ComfortActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 2
  .prologue
  .line 273
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity$8;->this$0:Lcom/geely/drivemem/ui/ComfortActivity;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/FullChargeReminder;->check(Landroid/app/Activity;)V
    return-void
.end method
