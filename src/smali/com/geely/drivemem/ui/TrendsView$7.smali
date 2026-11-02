.class Lcom/geely/drivemem/ui/TrendsView$7;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnClickListener;
.source "TrendsView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/TrendsView;->confirmRecalc()V
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
  .line 176
    iput-object p1, p0, Lcom/geely/drivemem/ui/TrendsView$7;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    iput-object p2, p0, Lcom/geely/drivemem/ui/TrendsView$7;->val$c:Landroid/content/Context;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
  .registers 6
  .prologue
  .line 178
    new-instance v0, Ljava/lang/Thread;
    new-instance v1, Lcom/geely/drivemem/ui/TrendsView$7$1;
    invoke-direct { v1, p0 }, Lcom/geely/drivemem/ui/TrendsView$7$1;-><init>(Lcom/geely/drivemem/ui/TrendsView$7;)V
    const-string v2, "autocost"
    invoke-direct { v0, v1, v2 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 183
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
  .line 184
    return-void
.end method
