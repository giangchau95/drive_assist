.class Lcom/geely/drivemem/ui/MonthlySummary$2;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "MonthlySummary.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/MonthlySummary;->showLastMonth(Landroid/app/Activity;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$prev:Ljava/util/Calendar;

.method constructor <init>(Landroid/app/Activity;Ljava/util/Calendar;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 3
  .prologue
  .line 76
    iput-object p1, p0, Lcom/geely/drivemem/ui/MonthlySummary$2;->val$a:Landroid/app/Activity;
    iput-object p2, p0, Lcom/geely/drivemem/ui/MonthlySummary$2;->val$prev:Ljava/util/Calendar;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .prologue
  .line 78
    iget-object v0, p0, Lcom/geely/drivemem/ui/MonthlySummary$2;->val$a:Landroid/app/Activity;
    iget-object v1, p0, Lcom/geely/drivemem/ui/MonthlySummary$2;->val$prev:Ljava/util/Calendar;
    invoke-static { v0, v1 }, Lcom/geely/drivemem/ui/MonthlySummary;->access$000(Landroid/content/Context;Ljava/util/Calendar;)Lcom/geely/drivemem/ui/MonthlySummary$Data;
    move-result-object v0
  .line 79
    iget-object v1, p0, Lcom/geely/drivemem/ui/MonthlySummary$2;->val$a:Landroid/app/Activity;
    new-instance v2, Lcom/geely/drivemem/ui/MonthlySummary$2$1;
    invoke-direct { v2, p0, v0 }, Lcom/geely/drivemem/ui/MonthlySummary$2$1;-><init>(Lcom/geely/drivemem/ui/MonthlySummary$2;Lcom/geely/drivemem/ui/MonthlySummary$Data;)V
    invoke-virtual { v1, v2 }, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
  .line 86
    return-void
.end method
