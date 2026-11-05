.class Lcom/geely/drivemem/ui/MonthlySummary$1$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "MonthlySummary.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/MonthlySummary$1;->run()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/MonthlySummary$1;

.field final synthetic val$d:Lcom/geely/drivemem/ui/MonthlySummary$Data;

.method constructor <init>(Lcom/geely/drivemem/ui/MonthlySummary$1;Lcom/geely/drivemem/ui/MonthlySummary$Data;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 3
  .prologue
  .line 54
    iput-object p1, p0, Lcom/geely/drivemem/ui/MonthlySummary$1$1;->this$0:Lcom/geely/drivemem/ui/MonthlySummary$1;
    iput-object p2, p0, Lcom/geely/drivemem/ui/MonthlySummary$1$1;->val$d:Lcom/geely/drivemem/ui/MonthlySummary$Data;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .prologue
  .line 56
    iget-object v0, p0, Lcom/geely/drivemem/ui/MonthlySummary$1$1;->this$0:Lcom/geely/drivemem/ui/MonthlySummary$1;
    iget-object v0, v0, Lcom/geely/drivemem/ui/MonthlySummary$1;->val$a:Landroid/app/Activity;
    invoke-virtual { v0 }, Landroid/app/Activity;->isFinishing()Z
    move-result v0
    if-nez v0, :L0
    invoke-static { }, Lcom/geely/drivemem/ui/MonthlySummary;->access$100()Z
    move-result v0
    if-eqz v0, :L1
  :L0
  .line 64
    return-void
  :L1
  .line 57
    iget-object v0, p0, Lcom/geely/drivemem/ui/MonthlySummary$1$1;->val$d:Lcom/geely/drivemem/ui/MonthlySummary$Data;
    if-eqz v0, :L2
    iget-object v0, p0, Lcom/geely/drivemem/ui/MonthlySummary$1$1;->val$d:Lcom/geely/drivemem/ui/MonthlySummary$Data;
    iget-boolean v0, v0, Lcom/geely/drivemem/ui/MonthlySummary$Data;->hasData:Z
    if-eqz v0, :L2
  .line 58
    iget-object v0, p0, Lcom/geely/drivemem/ui/MonthlySummary$1$1;->this$0:Lcom/geely/drivemem/ui/MonthlySummary$1;
    iget-object v0, v0, Lcom/geely/drivemem/ui/MonthlySummary$1;->val$a:Landroid/app/Activity;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/MonthlySummary;->access$200(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v0
    invoke-interface { v0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "summary_shown"
    iget-object v2, p0, Lcom/geely/drivemem/ui/MonthlySummary$1$1;->val$d:Lcom/geely/drivemem/ui/MonthlySummary$Data;
    iget-object v2, v2, Lcom/geely/drivemem/ui/MonthlySummary$Data;->key:Ljava/lang/String;
    invoke-interface { v0, v1, v2 }, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface { v0 }, Landroid/content/SharedPreferences$Editor;->apply()V
  .line 59
    iget-object v0, p0, Lcom/geely/drivemem/ui/MonthlySummary$1$1;->this$0:Lcom/geely/drivemem/ui/MonthlySummary$1;
    iget-object v0, v0, Lcom/geely/drivemem/ui/MonthlySummary$1;->val$a:Landroid/app/Activity;
    iget-object v1, p0, Lcom/geely/drivemem/ui/MonthlySummary$1$1;->val$d:Lcom/geely/drivemem/ui/MonthlySummary$Data;
    iget-object v2, p0, Lcom/geely/drivemem/ui/MonthlySummary$1$1;->this$0:Lcom/geely/drivemem/ui/MonthlySummary$1;
    iget-object v2, v2, Lcom/geely/drivemem/ui/MonthlySummary$1;->val$next:Ljava/lang/Runnable;
    invoke-static { v0, v1, v2 }, Lcom/geely/drivemem/ui/MonthlySummary;->access$300(Landroid/app/Activity;Lcom/geely/drivemem/ui/MonthlySummary$Data;Ljava/lang/Runnable;)V
    goto :L0
  :L2
  .line 61
    iget-object v0, p0, Lcom/geely/drivemem/ui/MonthlySummary$1$1;->this$0:Lcom/geely/drivemem/ui/MonthlySummary$1;
    iget-object v0, v0, Lcom/geely/drivemem/ui/MonthlySummary$1;->val$a:Landroid/app/Activity;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/MonthlySummary;->access$200(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v0
    invoke-interface { v0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "summary_shown"
    iget-object v2, p0, Lcom/geely/drivemem/ui/MonthlySummary$1$1;->this$0:Lcom/geely/drivemem/ui/MonthlySummary$1;
    iget-object v2, v2, Lcom/geely/drivemem/ui/MonthlySummary$1;->val$key:Ljava/lang/String;
    invoke-interface { v0, v1, v2 }, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface { v0 }, Landroid/content/SharedPreferences$Editor;->apply()V
  .line 62
    iget-object v0, p0, Lcom/geely/drivemem/ui/MonthlySummary$1$1;->this$0:Lcom/geely/drivemem/ui/MonthlySummary$1;
    iget-object v0, v0, Lcom/geely/drivemem/ui/MonthlySummary$1;->val$next:Ljava/lang/Runnable;
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/geely/drivemem/ui/MonthlySummary$1$1;->this$0:Lcom/geely/drivemem/ui/MonthlySummary$1;
    iget-object v0, v0, Lcom/geely/drivemem/ui/MonthlySummary$1;->val$next:Ljava/lang/Runnable;
    invoke-interface { v0 }, Ljava/lang/Runnable;->run()V
    goto :L0
.end method
