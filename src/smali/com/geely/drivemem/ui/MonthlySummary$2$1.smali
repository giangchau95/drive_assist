.class Lcom/geely/drivemem/ui/MonthlySummary$2$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "MonthlySummary.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/MonthlySummary$2;->run()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/MonthlySummary$2;

.field final synthetic val$d:Lcom/geely/drivemem/ui/MonthlySummary$Data;

.method constructor <init>(Lcom/geely/drivemem/ui/MonthlySummary$2;Lcom/geely/drivemem/ui/MonthlySummary$Data;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 3
  .prologue
  .line 79
    iput-object p1, p0, Lcom/geely/drivemem/ui/MonthlySummary$2$1;->this$0:Lcom/geely/drivemem/ui/MonthlySummary$2;
    iput-object p2, p0, Lcom/geely/drivemem/ui/MonthlySummary$2$1;->val$d:Lcom/geely/drivemem/ui/MonthlySummary$Data;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .prologue
  .line 81
    iget-object v0, p0, Lcom/geely/drivemem/ui/MonthlySummary$2$1;->this$0:Lcom/geely/drivemem/ui/MonthlySummary$2;
    iget-object v0, v0, Lcom/geely/drivemem/ui/MonthlySummary$2;->val$a:Landroid/app/Activity;
    invoke-virtual { v0 }, Landroid/app/Activity;->isFinishing()Z
    move-result v0
    if-nez v0, :L0
    invoke-static { }, Lcom/geely/drivemem/ui/MonthlySummary;->access$100()Z
    move-result v0
    if-eqz v0, :L1
  :L0
  .line 84
    return-void
  :L1
  .line 82
    iget-object v0, p0, Lcom/geely/drivemem/ui/MonthlySummary$2$1;->val$d:Lcom/geely/drivemem/ui/MonthlySummary$Data;
    if-eqz v0, :L2
    iget-object v0, p0, Lcom/geely/drivemem/ui/MonthlySummary$2$1;->val$d:Lcom/geely/drivemem/ui/MonthlySummary$Data;
    iget-boolean v0, v0, Lcom/geely/drivemem/ui/MonthlySummary$Data;->hasData:Z
    if-eqz v0, :L2
    iget-object v0, p0, Lcom/geely/drivemem/ui/MonthlySummary$2$1;->this$0:Lcom/geely/drivemem/ui/MonthlySummary$2;
    iget-object v0, v0, Lcom/geely/drivemem/ui/MonthlySummary$2;->val$a:Landroid/app/Activity;
    iget-object v1, p0, Lcom/geely/drivemem/ui/MonthlySummary$2$1;->val$d:Lcom/geely/drivemem/ui/MonthlySummary$Data;
    const/4 v2, 0
    invoke-static { v0, v1, v2 }, Lcom/geely/drivemem/ui/MonthlySummary;->access$300(Landroid/app/Activity;Lcom/geely/drivemem/ui/MonthlySummary$Data;Ljava/lang/Runnable;)V
    goto :L0
  :L2
  .line 83
    iget-object v0, p0, Lcom/geely/drivemem/ui/MonthlySummary$2$1;->this$0:Lcom/geely/drivemem/ui/MonthlySummary$2;
    iget-object v0, v0, Lcom/geely/drivemem/ui/MonthlySummary$2;->val$a:Landroid/app/Activity;
    const-string v1, "No data for last month yet"
    const/4 v2, 0
    invoke-static { v0, v1, v2 }, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/widget/Toast;->show()V
    goto :L0
.end method
