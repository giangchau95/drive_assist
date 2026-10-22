.class Lcom/geely/drivemem/ui/DailyStatsView$2;
.super Lcom/github/mikephil/charting/renderer/XAxisRenderer;
.source "DailyStatsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/drivemem/ui/DailyStatsView;->buildSkeleton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/drivemem/ui/DailyStatsView;

.field final synthetic val$hourAxis:Lcom/github/mikephil/charting/components/XAxis;


# direct methods
.method constructor <init>(Lcom/geely/drivemem/ui/DailyStatsView;Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/components/XAxis;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/geely/drivemem/ui/DailyStatsView$2;->this$0:Lcom/geely/drivemem/ui/DailyStatsView;

    iput-object p5, p0, Lcom/geely/drivemem/ui/DailyStatsView$2;->val$hourAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-direct {p0, p2, p3, p4}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    return-void
.end method


# virtual methods
.method protected computeAxisValues(FF)V
    .locals 3

    .line 377
    iget-object p1, p0, Lcom/geely/drivemem/ui/DailyStatsView$2;->val$hourAxis:Lcom/github/mikephil/charting/components/XAxis;

    const/16 p2, 0x18

    new-array v0, p2, [F

    iput-object v0, p1, Lcom/github/mikephil/charting/components/XAxis;->mEntries:[F

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    .line 378
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView$2;->val$hourAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mEntries:[F

    int-to-float v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView$2;->val$hourAxis:Lcom/github/mikephil/charting/components/XAxis;

    iput p2, v0, Lcom/github/mikephil/charting/components/XAxis;->mEntryCount:I

    .line 380
    iget-object p2, p0, Lcom/geely/drivemem/ui/DailyStatsView$2;->val$hourAxis:Lcom/github/mikephil/charting/components/XAxis;

    iput p1, p2, Lcom/github/mikephil/charting/components/XAxis;->mDecimals:I

    return-void
.end method
