.class Lcom/geely/drivemem/ui/DailyStatsView$1;
.super Ljava/lang/Object;
.source "DailyStatsView.java"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


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


# direct methods
.method constructor <init>(Lcom/geely/drivemem/ui/DailyStatsView;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/geely/drivemem/ui/DailyStatsView$1;->this$0:Lcom/geely/drivemem/ui/DailyStatsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNothingSelected()V
    .locals 0

    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 2

    .line 157
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 158
    iget-object p2, p0, Lcom/geely/drivemem/ui/DailyStatsView$1;->this$0:Lcom/geely/drivemem/ui/DailyStatsView;

    invoke-static {p2}, Lcom/geely/drivemem/ui/DailyStatsView;->-$$Nest$fgetperiod(Lcom/geely/drivemem/ui/DailyStatsView;)Lcom/geely/drivemem/ui/DailyStatsView$Period;

    move-result-object p2

    sget-object v0, Lcom/geely/drivemem/ui/DailyStatsView$Period;->DAY:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    if-ltz p1, :cond_1

    .line 159
    iget-object p2, p0, Lcom/geely/drivemem/ui/DailyStatsView$1;->this$0:Lcom/geely/drivemem/ui/DailyStatsView;

    invoke-static {p2}, Lcom/geely/drivemem/ui/DailyStatsView;->-$$Nest$fgetdays(Lcom/geely/drivemem/ui/DailyStatsView;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/geely/drivemem/ui/DailyStatsView$1;->this$0:Lcom/geely/drivemem/ui/DailyStatsView;

    invoke-static {p2}, Lcom/geely/drivemem/ui/DailyStatsView;->-$$Nest$fgetselectedIdx(Lcom/geely/drivemem/ui/DailyStatsView;)I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 160
    iget-object p2, p0, Lcom/geely/drivemem/ui/DailyStatsView$1;->this$0:Lcom/geely/drivemem/ui/DailyStatsView;

    invoke-static {p2, p1, v1}, Lcom/geely/drivemem/ui/DailyStatsView;->-$$Nest$mselectIndex(Lcom/geely/drivemem/ui/DailyStatsView;IZ)V

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    .line 162
    iget-object p2, p0, Lcom/geely/drivemem/ui/DailyStatsView$1;->this$0:Lcom/geely/drivemem/ui/DailyStatsView;

    invoke-static {p2}, Lcom/geely/drivemem/ui/DailyStatsView;->-$$Nest$fgetperiodWindow(Lcom/geely/drivemem/ui/DailyStatsView;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/geely/drivemem/ui/DailyStatsView$1;->this$0:Lcom/geely/drivemem/ui/DailyStatsView;

    invoke-static {p2}, Lcom/geely/drivemem/ui/DailyStatsView;->-$$Nest$fgetperiodSelectedIdx(Lcom/geely/drivemem/ui/DailyStatsView;)I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 163
    iget-object p2, p0, Lcom/geely/drivemem/ui/DailyStatsView$1;->this$0:Lcom/geely/drivemem/ui/DailyStatsView;

    invoke-static {p2, p1, v1}, Lcom/geely/drivemem/ui/DailyStatsView;->-$$Nest$mselectPeriodIndex(Lcom/geely/drivemem/ui/DailyStatsView;IZ)V

    :cond_1
    :goto_0
    return-void
.end method
