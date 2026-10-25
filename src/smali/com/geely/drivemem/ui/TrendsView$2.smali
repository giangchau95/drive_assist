.class Lcom/geely/drivemem/ui/TrendsView$2;
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
  .line 72
    iput-object p1, p0, Lcom/geely/drivemem/ui/TrendsView$2;->this$0:Lcom/geely/drivemem/ui/TrendsView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public format(D)Ljava/lang/String;
  .registers 8
  .prologue
  .line 73
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    const-string v1, "%.0f"
    const/4 v2, 1
    new-array v2, v2, [Ljava/lang/Object;
    const/4 v3, 0
    invoke-static { p1, p2 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v4
    aput-object v4, v2, v3
    invoke-static { v0, v1, v2 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
