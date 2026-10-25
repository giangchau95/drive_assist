.class Lcom/geely/drivemem/ui/TrendsView$8;
.super Ljava/lang/Object;
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.source "TrendsView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/TrendsView;->pickDate(J)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/TrendsView;

.field final synthetic val$c:Landroid/content/Context;

.method constructor <init>(Lcom/geely/drivemem/ui/TrendsView;Landroid/content/Context;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 3
  .prologue
  .line 316
    iput-object p1, p0, Lcom/geely/drivemem/ui/TrendsView$8;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    iput-object p2, p0, Lcom/geely/drivemem/ui/TrendsView$8;->val$c:Landroid/content/Context;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
  .registers 12
  .prologue
    const/4 v5, 0
  .line 318
    invoke-static { }, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
    move-result-object v0
  .line 319
    const/16 v4, 12
    move v1, p2
    move v2, p3
    move v3, p4
    move v6, v5
    invoke-virtual/range { v0 .. v6 }, Ljava/util/Calendar;->set(IIIIII)V
  .line 320
    invoke-virtual { v0 }, Ljava/util/Calendar;->getTimeInMillis()J
    move-result-wide v0
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    invoke-static { v0, v1, v2, v3 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v0
  .line 321
    iget-object v2, p0, Lcom/geely/drivemem/ui/TrendsView$8;->val$c:Landroid/content/Context;
    invoke-static { v2, v0, v1 }, Lcom/geely/drivemem/util/FullCharge;->setManualMs(Landroid/content/Context;J)V
  .line 322
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$8;->val$c:Landroid/content/Context;
    const-wide/16 v2, 0
    invoke-static { v0, v2, v3 }, Lcom/geely/drivemem/util/FullCharge;->snooze(Landroid/content/Context;J)V
  .line 323
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$8;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    invoke-virtual { v0 }, Lcom/geely/drivemem/ui/TrendsView;->refresh()V
  .line 324
    return-void
.end method
