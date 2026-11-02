.class Lcom/geely/drivemem/ui/TrendsView$6;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnClickListener;
.source "TrendsView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/TrendsView;->editAcPrice()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/TrendsView;

.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$in:Landroid/widget/EditText;

.method constructor <init>(Lcom/geely/drivemem/ui/TrendsView;Landroid/widget/EditText;Landroid/content/Context;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 4
  .prologue
  .line 157
    iput-object p1, p0, Lcom/geely/drivemem/ui/TrendsView$6;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    iput-object p2, p0, Lcom/geely/drivemem/ui/TrendsView$6;->val$in:Landroid/widget/EditText;
    iput-object p3, p0, Lcom/geely/drivemem/ui/TrendsView$6;->val$c:Landroid/content/Context;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L4
  .registers 7
  .prologue
    const-wide/16 v2, 0
  :L0
  .line 159
  .line 160
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$6;->val$in:Landroid/widget/EditText;
    invoke-virtual { v0 }, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v0
    invoke-interface { v0 }, Landroid/text/Editable;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
  :L1
    move-result-wide v0
  :L2
  .line 161
    cmp-long v2, v0, v2
    if-gtz v2, :L5
  :L3
  .line 165
    return-void
  :L4
  .line 160
    move-exception v0
    move-wide v0, v2
    goto :L2
  :L5
  .line 162
    iget-object v2, p0, Lcom/geely/drivemem/ui/TrendsView$6;->val$c:Landroid/content/Context;
    invoke-static { v2, v0, v1 }, Lcom/geely/drivemem/util/AutoCost;->setAcPrice(Landroid/content/Context;J)V
  .line 163
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$6;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/TrendsView;->access$300(Lcom/geely/drivemem/ui/TrendsView;)V
  .line 164
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$6;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    invoke-virtual { v0 }, Lcom/geely/drivemem/ui/TrendsView;->refresh()V
    goto :L3
.end method
