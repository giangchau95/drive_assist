.class Lcom/geely/drivemem/ui/EnergyBalanceChart$1;
.super Ljava/lang/Object;
.source "EnergyBalanceChart.java"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/drivemem/ui/EnergyBalanceChart;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/drivemem/ui/EnergyBalanceChart;


# direct methods
.method constructor <init>(Lcom/geely/drivemem/ui/EnergyBalanceChart;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/geely/drivemem/ui/EnergyBalanceChart$1;->this$0:Lcom/geely/drivemem/ui/EnergyBalanceChart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNothingSelected()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/geely/drivemem/ui/EnergyBalanceChart$1;->this$0:Lcom/geely/drivemem/ui/EnergyBalanceChart;

    invoke-static {v0}, Lcom/geely/drivemem/ui/EnergyBalanceChart;->-$$Nest$fgetdetail(Lcom/geely/drivemem/ui/EnergyBalanceChart;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/geely/drivemem/R$string;->charge_balance_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 1

    .line 81
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-ltz p1, :cond_0

    .line 82
    iget-object p2, p0, Lcom/geely/drivemem/ui/EnergyBalanceChart$1;->this$0:Lcom/geely/drivemem/ui/EnergyBalanceChart;

    invoke-static {p2}, Lcom/geely/drivemem/ui/EnergyBalanceChart;->-$$Nest$fgetdays(Lcom/geely/drivemem/ui/EnergyBalanceChart;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/geely/drivemem/ui/EnergyBalanceChart$1;->this$0:Lcom/geely/drivemem/ui/EnergyBalanceChart;

    invoke-static {p2}, Lcom/geely/drivemem/ui/EnergyBalanceChart;->-$$Nest$fgetdays(Lcom/geely/drivemem/ui/EnergyBalanceChart;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;

    invoke-static {p2, p1}, Lcom/geely/drivemem/ui/EnergyBalanceChart;->-$$Nest$mshowDay(Lcom/geely/drivemem/ui/EnergyBalanceChart;Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;)V

    :cond_0
    return-void
.end method
