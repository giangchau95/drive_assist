.class Lcom/geely/drivemem/ui/TrendsView$4;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "TrendsView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/TrendsView;->buildPeriodRow()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/TrendsView;

.field final synthetic val$idx:I

.method constructor <init>(Lcom/geely/drivemem/ui/TrendsView;I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 3
  .prologue
  .line 155
    iput-object p1, p0, Lcom/geely/drivemem/ui/TrendsView$4;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    iput p2, p0, Lcom/geely/drivemem/ui/TrendsView$4;->val$idx:I
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .prologue
  .line 157
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$4;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/TrendsView;->access$100(Lcom/geely/drivemem/ui/TrendsView;)I
    move-result v0
    iget v1, p0, Lcom/geely/drivemem/ui/TrendsView$4;->val$idx:I
    if-ne v0, v1, :L1
  :L0
  .line 161
    return-void
  :L1
  .line 158
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$4;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    iget v1, p0, Lcom/geely/drivemem/ui/TrendsView$4;->val$idx:I
    invoke-static { v0, v1 }, Lcom/geely/drivemem/ui/TrendsView;->access$102(Lcom/geely/drivemem/ui/TrendsView;I)I
  .line 159
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$4;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/TrendsView;->access$200(Lcom/geely/drivemem/ui/TrendsView;)V
  .line 160
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$4;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    invoke-virtual { v0 }, Lcom/geely/drivemem/ui/TrendsView;->refresh()V
    goto :L0
.end method
