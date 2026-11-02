.class Lcom/geely/drivemem/ui/TrendsView$5;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "TrendsView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/TrendsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/TrendsView;

.method constructor <init>(Lcom/geely/drivemem/ui/TrendsView;)V
  .registers 2
  .prologue
  .line 133
    iput-object p1, p0, Lcom/geely/drivemem/ui/TrendsView$5;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 2
  .prologue
  .line 134
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$5;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/TrendsView;->access$200(Lcom/geely/drivemem/ui/TrendsView;)V
    return-void
.end method
