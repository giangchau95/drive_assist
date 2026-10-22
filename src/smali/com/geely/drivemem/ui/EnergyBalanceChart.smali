.class public final Lcom/geely/drivemem/ui/EnergyBalanceChart;
.super Landroid/widget/LinearLayout;
.source "EnergyBalanceChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;
    }
.end annotation


# instance fields
.field private final chart:Lcom/github/mikephil/charting/charts/BarChart;

.field private days:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;",
            ">;"
        }
    .end annotation
.end field

.field private final detail:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetdays(Lcom/geely/drivemem/ui/EnergyBalanceChart;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/geely/drivemem/ui/EnergyBalanceChart;->days:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdetail(Lcom/geely/drivemem/ui/EnergyBalanceChart;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/geely/drivemem/ui/EnergyBalanceChart;->detail:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowDay(Lcom/geely/drivemem/ui/EnergyBalanceChart;Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/geely/drivemem/ui/EnergyBalanceChart;->showDay(Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/drivemem/ui/EnergyBalanceChart;->days:Ljava/util/List;

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Lcom/geely/drivemem/ui/EnergyBalanceChart;->setOrientation(I)V

    const/16 v1, 0x10

    .line 43
    invoke-static {p1, v1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v1

    .line 44
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/geely/drivemem/ui/EnergyBalanceChart;->setPadding(IIII)V

    .line 45
    invoke-static {}, Lcom/geely/drivemem/util/Style;->cardFillColor()I

    move-result v1

    invoke-static {v1, p1}, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/geely/drivemem/ui/EnergyBalanceChart;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 46
    sget v1, Lcom/geely/drivemem/R$string;->charge_balance_title:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/geely/drivemem/util/Style;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    .line 47
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, 0x0

    .line 48
    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 49
    invoke-virtual {p0, v1}, Lcom/geely/drivemem/ui/EnergyBalanceChart;->addView(Landroid/view/View;)V

    .line 50
    new-instance v1, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-direct {v1, p1}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/geely/drivemem/ui/EnergyBalanceChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 51
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 52
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    .line 53
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawBorders(Z)V

    .line 54
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setDoubleTapToZoomEnabled(Z)V

    .line 55
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 56
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 57
    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/BarChart;->setFitBars(Z)V

    .line 58
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 59
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    .line 60
    sget v5, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    const/high16 v5, 0x41500000    # 13.0f

    .line 61
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/YAxis;->setTextSize(F)V

    .line 62
    sget v6, Lcom/geely/drivemem/util/Style;->CARD:I

    sget v7, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    const/high16 v8, 0x3e800000    # 0.25f

    invoke-static {v6, v7, v8}, Lcom/geely/drivemem/util/Style;->blend(IIF)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/components/YAxis;->setGridColor(I)V

    .line 63
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 64
    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/components/YAxis;->setDrawZeroLine(Z)V

    .line 65
    sget v0, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/components/YAxis;->setZeroLineColor(I)V

    const v0, 0x3f99999a    # 1.2f

    .line 66
    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/components/YAxis;->setZeroLineWidth(F)V

    .line 67
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    .line 68
    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 69
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 70
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 71
    sget v3, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 72
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 73
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    const/16 v3, 0xa

    .line 74
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    .line 75
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    sget v3, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/Legend;->setTextColor(I)V

    .line 76
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/Legend;->setTextSize(F)V

    .line 77
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/Legend;->setXEntrySpace(F)V

    const/high16 v0, 0x41200000    # 10.0f

    const/high16 v3, 0x41000000    # 8.0f

    const/high16 v4, 0x40800000    # 4.0f

    .line 78
    invoke-virtual {v1, v4, v0, v3, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setExtraOffsets(FFFF)V

    .line 79
    new-instance v0, Lcom/geely/drivemem/ui/EnergyBalanceChart$1;

    invoke-direct {v0, p0}, Lcom/geely/drivemem/ui/EnergyBalanceChart$1;-><init>(Lcom/geely/drivemem/ui/EnergyBalanceChart;)V

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/BarChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 88
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0xfa

    invoke-static {p1, v3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/geely/drivemem/ui/EnergyBalanceChart;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    sget v0, Lcom/geely/drivemem/R$string;->charge_balance_hint:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/geely/drivemem/util/Style;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/drivemem/ui/EnergyBalanceChart;->detail:Landroid/widget/TextView;

    .line 90
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/geely/drivemem/ui/EnergyBalanceChart;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showDay(Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;)V
    .locals 9

    .line 128
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p1, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;->label:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/EnergyBalanceChart;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/geely/drivemem/R$string;->charge_balance_spent:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;->spent:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 130
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/EnergyBalanceChart;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/geely/drivemem/R$string;->charge_balance_regen:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p1, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;->regen:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-wide v6, p1, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;->ac:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-wide v7, p1, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;->dc:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v1

    .line 128
    const-string v2, "%s  \u00b7  %s \u2212%.2f  \u00b7  %s +%.2f  \u00b7  AC +%.2f  \u00b7  DC +%.2f kWh"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/geely/drivemem/ui/EnergyBalanceChart;->detail:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;->energySource:Lcom/geely/drivemem/sensors/EnergySource;

    invoke-static {v0, p1}, Lcom/geely/drivemem/ui/DailyStatsView;->withEnergySourceMark(Ljava/lang/CharSequence;Lcom/geely/drivemem/sensors/EnergySource;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public setDays(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/geely/drivemem/ui/EnergyBalanceChart;->days:Ljava/util/List;

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/high16 v3, 0x3f800000    # 1.0f

    move v5, v3

    const/4 v6, 0x0

    .line 99
    :goto_0
    iget-object v7, v0, Lcom/geely/drivemem/ui/EnergyBalanceChart;->days:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x4

    if-ge v6, v7, :cond_0

    .line 100
    iget-object v7, v0, Lcom/geely/drivemem/ui/EnergyBalanceChart;->days:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;

    .line 101
    new-instance v12, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v13, v6

    iget-wide v14, v7, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;->spent:D

    double-to-float v14, v14

    neg-float v14, v14

    iget-wide v8, v7, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;->regen:D

    double-to-float v8, v8

    move-object/from16 v16, v12

    iget-wide v11, v7, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;->ac:D

    double-to-float v11, v11

    move/from16 v17, v5

    iget-wide v4, v7, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;->dc:D

    double-to-float v4, v4

    new-array v5, v10, [F

    const/4 v10, 0x0

    aput v14, v5, v10

    const/4 v9, 0x1

    aput v8, v5, v9

    const/4 v8, 0x2

    aput v11, v5, v8

    const/4 v8, 0x3

    aput v4, v5, v8

    move-object/from16 v4, v16

    invoke-direct {v4, v13, v5}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(F[F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v4, v7, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;->label:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-wide v4, v7, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;->regen:D

    iget-wide v8, v7, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;->ac:D

    add-double/2addr v4, v8

    iget-wide v8, v7, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;->dc:D

    add-double/2addr v4, v8

    double-to-float v4, v4

    move/from16 v5, v17

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 105
    iget-wide v7, v7, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;->spent:D

    double-to-float v4, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 107
    :cond_0
    new-instance v4, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v6, ""

    invoke-direct {v4, v1, v6}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 108
    new-array v1, v10, [Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/geely/drivemem/ui/EnergyBalanceChart;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/geely/drivemem/R$string;->charge_balance_spent:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v1, v7

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/geely/drivemem/ui/EnergyBalanceChart;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/geely/drivemem/R$string;->charge_balance_regen:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v1, v7

    const-string v6, "AC"

    const/4 v7, 0x2

    aput-object v6, v1, v7

    const-string v6, "DC"

    const/4 v7, 0x3

    aput-object v6, v1, v7

    .line 108
    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/data/BarDataSet;->setStackLabels([Ljava/lang/String;)V

    .line 114
    sget v1, Lcom/geely/drivemem/util/Style;->HEAT:I

    sget v6, Lcom/geely/drivemem/util/Style;->PURPLE:I

    sget v7, Lcom/geely/drivemem/util/Style;->ACCENT:I

    sget v8, Lcom/geely/drivemem/util/Style;->GOOD:I

    filled-new-array {v1, v6, v7, v8}, [I

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    const/4 v1, 0x0

    .line 115
    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/data/BarDataSet;->setDrawValues(Z)V

    .line 116
    new-instance v6, Lcom/github/mikephil/charting/data/BarData;

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    aput-object v4, v7, v1

    invoke-direct {v6, v7}, Lcom/github/mikephil/charting/data/BarData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V

    const v1, 0x3f333333    # 0.7f

    .line 117
    invoke-virtual {v6, v1}, Lcom/github/mikephil/charting/data/BarData;->setBarWidth(F)V

    .line 118
    iget-object v1, v0, Lcom/geely/drivemem/ui/EnergyBalanceChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    new-instance v4, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;

    invoke-direct {v4, v2}, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 119
    iget-object v1, v0, Lcom/geely/drivemem/ui/EnergyBalanceChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    neg-float v2, v3

    const v3, 0x3f933333    # 1.15f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 120
    iget-object v1, v0, Lcom/geely/drivemem/ui/EnergyBalanceChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    mul-float/2addr v5, v3

    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 121
    iget-object v1, v0, Lcom/geely/drivemem/ui/EnergyBalanceChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 122
    iget-object v1, v0, Lcom/geely/drivemem/ui/EnergyBalanceChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 123
    iget-object v1, v0, Lcom/geely/drivemem/ui/EnergyBalanceChart;->detail:Landroid/widget/TextView;

    sget v2, Lcom/geely/drivemem/R$string;->charge_balance_hint:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 124
    iget-object v1, v0, Lcom/geely/drivemem/ui/EnergyBalanceChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    return-void
.end method
