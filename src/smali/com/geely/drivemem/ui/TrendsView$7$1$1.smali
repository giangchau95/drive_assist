.class Lcom/geely/drivemem/ui/TrendsView$7$1$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "TrendsView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/TrendsView$7$1;->run()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$2:Lcom/geely/drivemem/ui/TrendsView$7$1;

.method constructor <init>(Lcom/geely/drivemem/ui/TrendsView$7$1;)V
  .registers 2
  .prologue
  .line 181
    iput-object p1, p0, Lcom/geely/drivemem/ui/TrendsView$7$1$1;->this$2:Lcom/geely/drivemem/ui/TrendsView$7$1;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 2
  .prologue
  .line 181
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$7$1$1;->this$2:Lcom/geely/drivemem/ui/TrendsView$7$1;
    iget-object v0, v0, Lcom/geely/drivemem/ui/TrendsView$7$1;->this$1:Lcom/geely/drivemem/ui/TrendsView$7;
    iget-object v0, v0, Lcom/geely/drivemem/ui/TrendsView$7;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    invoke-virtual { v0 }, Lcom/geely/drivemem/ui/TrendsView;->refresh()V
    return-void
.end method
