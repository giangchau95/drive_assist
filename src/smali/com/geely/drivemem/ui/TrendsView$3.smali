.class Lcom/geely/drivemem/ui/TrendsView$3;
.super Ljava/lang/Object;
.implements Lcom/geely/drivemem/ui/BarsView$Formatter;
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
  .line 79
    iput-object p1, p0, Lcom/geely/drivemem/ui/TrendsView$3;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public format(D)Ljava/lang/String;
  .registers 4
  .prologue
  .line 80
    invoke-static { p1, p2 }, Lcom/geely/drivemem/ui/TrendsView;->access$000(D)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
