.class public Lcom/geely/drivemem/ui/DailyStatsView;
.super Landroid/widget/LinearLayout;
.source "DailyStatsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/drivemem/ui/DailyStatsView$Period;,
        Lcom/geely/drivemem/ui/DailyStatsView$DottedLineView;
    }
.end annotation


# static fields
.field private static final HERO_UNIT_SCALE:F = 0.4f

.field private static final MONTH_CHART_FMT:Ljava/text/SimpleDateFormat;

.field private static final MONTH_WINDOW:I = 0xc

.field private static final ROW_UNIT_SCALE:F = 0.68f

.field private static final SPEED_BUCKET_LABELS:[Ljava/lang/String;

.field private static final WEEK_WINDOW:I = 0x8


# instance fields
.field private altitudeCard:Landroid/widget/LinearLayout;

.field private batteryCard:Landroid/widget/LinearLayout;

.field private chart:Lcom/github/mikephil/charting/charts/BarChart;

.field private consumptionCard:Landroid/widget/LinearLayout;

.field private days:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/drivemem/sensors/DailyStatsProvider$DayItem;",
            ">;"
        }
    .end annotation
.end field

.field private hourlyChart:Lcom/github/mikephil/charting/charts/BarChart;

.field private hourlyEmptyState:Landroid/widget/TextView;

.field private hourlySummary:Landroid/widget/TextView;

.field private navDateLabel:Landroid/widget/TextView;

.field private navNextBtn:Landroid/widget/TextView;

.field private navPrevBtn:Landroid/widget/TextView;

.field private final onBack:Ljava/lang/Runnable;

.field private period:Lcom/geely/drivemem/ui/DailyStatsView$Period;

.field private periodAnchorDate:Ljava/lang/String;

.field private periodDropdownLabel:Landroid/widget/TextView;

.field private periodSelectedIdx:I

.field private periodWindow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;",
            ">;"
        }
    .end annotation
.end field

.field private selectedIdx:I

.field private sessionsContainer:Landroid/widget/LinearLayout;

.field private sessionsSummary:Landroid/widget/TextView;

.field private final tickListener:Lcom/geely/drivemem/car/EntityBus$Listener;

.field private timeCard:Landroid/widget/LinearLayout;


# direct methods
.method public static synthetic $r8$lambda$0SLhePJIHmPsyMeTg8W4ZksLul8(Lcom/geely/drivemem/ui/DailyStatsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->onLiveTick()V

    return-void
.end method

.method public static synthetic $r8$lambda$5cNRSx8eVojTSrdQJRS1c3OpzFQ(Lcom/geely/drivemem/ui/DailyStatsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->onNavPrev()V

    return-void
.end method

.method public static synthetic $r8$lambda$MFoDKlzHQtgtLwAea0L1lj6Sd54(Lcom/geely/drivemem/ui/DailyStatsView;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/geely/drivemem/ui/DailyStatsView;->lambda$buildSkeleton$1(Landroid/widget/LinearLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WdklpDu8aR4N12crMG2in0HJax8(Lcom/geely/drivemem/ui/DailyStatsView;Landroid/widget/PopupWindow;Lcom/geely/drivemem/ui/DailyStatsView$Period;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/geely/drivemem/ui/DailyStatsView;->lambda$showPeriodMenu$2(Landroid/widget/PopupWindow;Lcom/geely/drivemem/ui/DailyStatsView$Period;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iIYfWU6z5pAE3VIS3Pmj9zdj8Os(Lcom/geely/drivemem/ui/DailyStatsView;Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/geely/drivemem/ui/DailyStatsView;->lambda$buildChargeSessionCard$3(Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tjzqK2-IxzbnbokPgOvENoHEZg8(Lcom/geely/drivemem/ui/DailyStatsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->onNavNext()V

    return-void
.end method

.method public static synthetic $r8$lambda$xlS9S3QLGy84LHoQAirjh-NnS2A(Lcom/geely/drivemem/ui/DailyStatsView;Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/geely/drivemem/ui/DailyStatsView;->lambda$new$0(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetdays(Lcom/geely/drivemem/ui/DailyStatsView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->days:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetperiod(Lcom/geely/drivemem/ui/DailyStatsView;)Lcom/geely/drivemem/ui/DailyStatsView$Period;
    .locals 0

    iget-object p0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->period:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetperiodSelectedIdx(Lcom/geely/drivemem/ui/DailyStatsView;)I
    .locals 0

    iget p0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodSelectedIdx:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetperiodWindow(Lcom/geely/drivemem/ui/DailyStatsView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodWindow:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedIdx(Lcom/geely/drivemem/ui/DailyStatsView;)I
    .locals 0

    iget p0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->selectedIdx:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mselectIndex(Lcom/geely/drivemem/ui/DailyStatsView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/geely/drivemem/ui/DailyStatsView;->selectIndex(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mselectPeriodIndex(Lcom/geely/drivemem/ui/DailyStatsView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/geely/drivemem/ui/DailyStatsView;->selectPeriodIndex(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 746
    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "en"

    const-string v3, "US"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MMM"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/geely/drivemem/ui/DailyStatsView;->MONTH_CHART_FMT:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x4

    .line 1235
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0\u201340"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "40\u201380"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "80\u2013120"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "120+"

    aput-object v2, v0, v1

    sput-object v0, Lcom/geely/drivemem/ui/DailyStatsView;->SPEED_BUCKET_LABELS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, v0}, Lcom/geely/drivemem/ui/DailyStatsView;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2

    .line 111
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->days:Ljava/util/List;

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->selectedIdx:I

    .line 61
    sget-object v1, Lcom/geely/drivemem/ui/DailyStatsView$Period;->DAY:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    iput-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->period:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodWindow:Ljava/util/List;

    .line 67
    iput v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodSelectedIdx:I

    .line 86
    new-instance v0, Lcom/geely/drivemem/ui/DailyStatsView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/geely/drivemem/ui/DailyStatsView$$ExternalSyntheticLambda3;-><init>(Lcom/geely/drivemem/ui/DailyStatsView;)V

    iput-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->tickListener:Lcom/geely/drivemem/car/EntityBus$Listener;

    .line 112
    iput-object p2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->onBack:Ljava/lang/Runnable;

    const/4 p2, 0x1

    .line 113
    invoke-virtual {p0, p2}, Lcom/geely/drivemem/ui/DailyStatsView;->setOrientation(I)V

    const/16 p2, 0x10

    .line 114
    invoke-static {p1, p2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p2

    const/16 v0, 0x20

    .line 115
    invoke-static {p1, v0}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p2, p2, p2, p1}, Lcom/geely/drivemem/ui/DailyStatsView;->setPadding(IIII)V

    .line 117
    invoke-direct {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->buildSkeleton()V

    .line 118
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->refresh()V

    return-void
.end method

.method private static appendDivider(Landroid/text/SpannableStringBuilder;)V
    .locals 4

    .line 1791
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 1792
    const-string v1, "  \u00b7  "

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1793
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static appendMetadata(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1781
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 1782
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1783
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    sget v1, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-direct {p1, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1785
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    .line 1786
    invoke-virtual {p0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1787
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p2, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    invoke-virtual {p0, p2, p1, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static appendUnit(Landroid/text/SpannableStringBuilder;Ljava/lang/String;F)V
    .locals 0

    .line 1410
    invoke-static {p0, p1, p2}, Lcom/geely/drivemem/util/Style;->appendUnit(Landroid/text/SpannableStringBuilder;Ljava/lang/String;F)V

    return-void
.end method

.method private buildChargeSessionCard(Landroid/widget/LinearLayout;Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;)V
    .locals 9

    .line 1677
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1680
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 1681
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    .line 1682
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1685
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1686
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1687
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1688
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1689
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1696
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1697
    iget-boolean v5, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->isDcfc:Z

    if-eqz v5, :cond_0

    sget v5, Lcom/geely/drivemem/R$drawable;->ic_ev_plug_ccs2:I

    goto :goto_0

    :cond_0
    sget v5, Lcom/geely/drivemem/R$drawable;->ic_power_plug:I

    :goto_0
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1698
    iget-boolean v5, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->isDcfc:Z

    if-eqz v5, :cond_1

    sget v5, Lcom/geely/drivemem/util/Style;->GOOD:I

    goto :goto_1

    :cond_1
    sget v5, Lcom/geely/drivemem/util/Style;->ACCENT:I

    :goto_1
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v5, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1699
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x14

    invoke-static {v0, v6}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v0, v6}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1700
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1703
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1704
    sget v5, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41880000    # 17.0f

    .line 1705
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1706
    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1707
    iget-object v7, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->timeLabel:Ljava/lang/String;

    iget-object v8, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->durationLabel:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/geely/drivemem/ui/DailyStatsView;->sessionTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v7, 0xa

    .line 1708
    invoke-static {v0, v7}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v3, v7, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1709
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1711
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1714
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1715
    iget-boolean v4, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->isDcfc:Z

    if-eqz v4, :cond_2

    sget v4, Lcom/geely/drivemem/util/Style;->GOOD:I

    goto :goto_2

    :cond_2
    sget v4, Lcom/geely/drivemem/util/Style;->ACCENT:I

    :goto_2
    const/high16 v7, 0x41940000    # 18.5f

    .line 1716
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1717
    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1718
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v6, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->kwh:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "+%.1f"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "kWh"

    const v7, 0x3f2e147b    # 0.68f

    invoke-static {v5, v4, v6, v7}, Lcom/geely/drivemem/ui/DailyStatsView;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1719
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1721
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1724
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41800000    # 16.0f

    .line 1725
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v3, 0x1e

    .line 1726
    invoke-static {v0, v3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, 0x7

    invoke-static {v0, v4}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v3, v0, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1728
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1731
    iget v2, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->socStart:I

    const-string v3, "%"

    if-ltz v2, :cond_3

    iget v2, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->socEnd:I

    if-ltz v2, :cond_3

    .line 1732
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->socStart:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "% \u2192 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->socEnd:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 1733
    :cond_3
    iget v2, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->socStart:I

    if-ltz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->socStart:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    const-string v2, "\u2014"

    .line 1734
    :goto_3
    const-string v3, "SoC: "

    sget v4, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-static {v0, v3, v2, v4}, Lcom/geely/drivemem/ui/DailyStatsView;->appendMetadata(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1737
    invoke-static {v0}, Lcom/geely/drivemem/ui/DailyStatsView;->appendDivider(Landroid/text/SpannableStringBuilder;)V

    .line 1740
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v3, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->avgPowerKw:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%.1f kW"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1741
    const-string v3, "Avg Power: "

    sget v4, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-static {v0, v3, v2, v4}, Lcom/geely/drivemem/ui/DailyStatsView;->appendMetadata(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1744
    invoke-static {v0}, Lcom/geely/drivemem/ui/DailyStatsView;->appendDivider(Landroid/text/SpannableStringBuilder;)V

    .line 1747
    iget-object v2, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->cost:Ljava/lang/Double;

    if-eqz v2, :cond_5

    iget-object v2, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->cost:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_5

    .line 1748
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iget-object v3, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->cost:Ljava/lang/Double;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%,.0f \u20ab"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1749
    const-string v3, "Cost: "

    sget v4, Lcom/geely/drivemem/util/Style;->ACCENT:I

    invoke-static {v0, v3, v2, v4}, Lcom/geely/drivemem/ui/DailyStatsView;->appendMetadata(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    .line 1751
    :cond_5
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 1752
    const-string v3, "Cost not entered"

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1753
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    sget v4, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1756
    :goto_4
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1757
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1758
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1762
    iget-wide v0, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->endMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    iget-wide v0, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->chargeId:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 1763
    new-instance v0, Lcom/geely/drivemem/ui/DailyStatsView$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2}, Lcom/geely/drivemem/ui/DailyStatsView$$ExternalSyntheticLambda7;-><init>(Lcom/geely/drivemem/ui/DailyStatsView;Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    return-void
.end method

.method private buildDriveSessionCard(Landroid/widget/LinearLayout;Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1567
    invoke-virtual/range {p0 .. p0}, Lcom/geely/drivemem/ui/DailyStatsView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1570
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 1571
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    .line 1572
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1575
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1576
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1577
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1578
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1579
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1584
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1585
    sget v7, Lcom/geely/drivemem/R$drawable;->ic_car:I

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1586
    sget v7, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v7, v8}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1587
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x14

    invoke-static {v2, v8}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v9

    invoke-static {v2, v8}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v8

    invoke-direct {v7, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1588
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1591
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1592
    sget v7, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41880000    # 17.0f

    .line 1593
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1594
    invoke-virtual {v5, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1595
    iget-object v9, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->timeLabel:Ljava/lang/String;

    iget-object v10, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->durationLabel:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/geely/drivemem/ui/DailyStatsView;->sessionTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v9, 0xa

    .line 1596
    invoke-static {v2, v9}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v5, v9, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1597
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1599
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1602
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1603
    sget v6, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41900000    # 18.0f

    .line 1604
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1605
    invoke-virtual {v5, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1606
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1607
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v9, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->distanceKm:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "%.1f"

    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "km"

    const v11, 0x3f2e147b    # 0.68f

    invoke-static {v8, v7, v9, v11}, Lcom/geely/drivemem/ui/DailyStatsView;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1608
    const-string v8, "  \u2022  "

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1609
    iget-wide v8, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->efficiencyKwh100km:D

    const-wide/16 v12, 0x0

    cmpl-double v8, v8, v12

    const-string v9, "\u2014"

    if-lez v8, :cond_0

    .line 1610
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v14, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->efficiencyKwh100km:D

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v8, v10, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "kWh/100km"

    invoke-static {v8, v7, v10, v11}, Lcom/geely/drivemem/ui/DailyStatsView;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 1612
    :cond_0
    invoke-virtual {v6, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1614
    :goto_0
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1615
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1617
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1620
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x41800000    # 16.0f

    .line 1621
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v5, 0x1e

    .line 1622
    invoke-static {v2, v5}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x7

    invoke-static {v2, v6}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v3, v5, v2, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1624
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1627
    iget v4, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->socStart:I

    const-string v5, "%"

    if-ltz v4, :cond_1

    iget v4, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->socEnd:I

    if-ltz v4, :cond_1

    .line 1628
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->socStart:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "% \u2192 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->socEnd:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1629
    :cond_1
    iget v4, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->socStart:I

    if-ltz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->socStart:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v9

    .line 1630
    :goto_1
    const-string v5, "SoC: "

    sget v6, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-static {v2, v5, v4, v6}, Lcom/geely/drivemem/ui/DailyStatsView;->appendMetadata(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1633
    invoke-static {v2}, Lcom/geely/drivemem/ui/DailyStatsView;->appendDivider(Landroid/text/SpannableStringBuilder;)V

    .line 1636
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 1637
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v6, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->ascentDPlusM:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "\u25b2+%.0fm"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1638
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    sget v6, Lcom/geely/drivemem/util/Style;->HEAT:I

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v2, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1640
    const-string v4, " "

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1642
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 1643
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v10, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->descentDMinusM:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v8, "\u25bc-%.0fm"

    invoke-static {v5, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1644
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    sget v6, Lcom/geely/drivemem/util/Style;->COOL:I

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v2, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1647
    invoke-static {v2}, Lcom/geely/drivemem/ui/DailyStatsView;->appendDivider(Landroid/text/SpannableStringBuilder;)V

    .line 1650
    iget-wide v4, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->spentKwh:D

    cmpl-double v4, v4, v12

    if-gtz v4, :cond_4

    iget-wide v4, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->regenKwh:D

    cmpl-double v4, v4, v12

    if-lez v4, :cond_3

    goto :goto_2

    .line 1652
    :cond_3
    iget-wide v4, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->distanceKm:D

    cmpl-double v4, v4, v12

    if-lez v4, :cond_5

    const-string v9, "0.0 kWh"

    goto :goto_3

    .line 1651
    :cond_4
    :goto_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v5, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->energyKwh:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%.1f kWh"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1653
    :cond_5
    :goto_3
    const-string v4, "Consumption: "

    sget v5, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-static {v2, v4, v9, v5}, Lcom/geely/drivemem/ui/DailyStatsView;->appendMetadata(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1658
    iget-object v4, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->energySource:Lcom/geely/drivemem/sensors/EnergySource;

    sget-object v5, Lcom/geely/drivemem/sensors/EnergySource;->ESTIMATED:Lcom/geely/drivemem/sensors/EnergySource;

    if-eq v4, v5, :cond_6

    iget-object v4, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->energySource:Lcom/geely/drivemem/sensors/EnergySource;

    sget-object v5, Lcom/geely/drivemem/sensors/EnergySource;->MIXED:Lcom/geely/drivemem/sensors/EnergySource;

    if-ne v4, v5, :cond_7

    :cond_6
    const/16 v4, 0x20

    .line 1659
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1660
    const-string v4, "~"

    const v5, 0x3f59999a    # 0.85f

    invoke-static {v2, v4, v5}, Lcom/geely/drivemem/util/Style;->appendUnit(Landroid/text/SpannableStringBuilder;Ljava/lang/String;F)V

    .line 1663
    :cond_7
    iget-wide v4, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->regenKwh:D

    cmpl-double v4, v4, v12

    if-lez v4, :cond_8

    .line 1664
    const-string v4, " (Regen "

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1665
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 1666
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v8, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;->regenKwh:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v6, "+%.1f"

    invoke-static {v5, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1667
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    sget v5, Lcom/geely/drivemem/util/Style;->COOL:I

    invoke-direct {v1, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v1, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1668
    const-string v1, ")"

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1671
    :cond_8
    sget v1, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1672
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1673
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private buildGapRow(J)Landroid/view/View;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1470
    :cond_0
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1472
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 1473
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 1474
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1475
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0xc

    .line 1477
    invoke-static {v0, v3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, 0x2

    .line 1478
    invoke-static {v0, v4}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v0, v4}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v3, v5, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1480
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1481
    sget v4, Lcom/geely/drivemem/R$drawable;->ic_parking:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1482
    sget v4, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1483
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v0, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v4, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x8

    .line 1484
    invoke-static {v0, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v2

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1485
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1486
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1488
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1489
    sget v0, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 1490
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1491
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Parked "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/geely/drivemem/ui/DailyStatsView;->formatGapDuration(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1492
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private buildSessionCard(Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;)Landroid/view/View;
    .locals 3

    .line 1513
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1514
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 1515
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0xc

    .line 1516
    invoke-static {v0, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v2

    .line 1517
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1518
    invoke-static {v0}, Lcom/geely/drivemem/util/Style;->tile(Landroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1520
    invoke-virtual {p1}, Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;->isValet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1521
    check-cast p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$ValetSessionItem;

    invoke-direct {p0, v1, p1}, Lcom/geely/drivemem/ui/DailyStatsView;->buildValetSessionCard(Landroid/widget/LinearLayout;Lcom/geely/drivemem/sensors/DailyStatsProvider$ValetSessionItem;)V

    goto :goto_0

    .line 1522
    :cond_0
    invoke-virtual {p1}, Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;->isTrip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1523
    check-cast p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;

    invoke-direct {p0, v1, p1}, Lcom/geely/drivemem/ui/DailyStatsView;->buildDriveSessionCard(Landroid/widget/LinearLayout;Lcom/geely/drivemem/sensors/DailyStatsProvider$DriveSession;)V

    goto :goto_0

    .line 1525
    :cond_1
    check-cast p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;

    invoke-direct {p0, v1, p1}, Lcom/geely/drivemem/ui/DailyStatsView;->buildChargeSessionCard(Landroid/widget/LinearLayout;Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;)V

    :goto_0
    return-object v1
.end method

.method private buildSkeleton()V
    .locals 16

    move-object/from16 v6, p0

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/geely/drivemem/ui/DailyStatsView;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 125
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 127
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 128
    iget-object v3, v6, Lcom/geely/drivemem/ui/DailyStatsView;->onBack:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 129
    invoke-static {v7, v3}, Lcom/geely/drivemem/util/Style;->backButton(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    invoke-static {v0, v7, v2}, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V

    .line 132
    :cond_0
    const-string v3, "Daily Statistics"

    invoke-static {v7, v3}, Lcom/geely/drivemem/util/Style;->header(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    invoke-virtual {v6, v0}, Lcom/geely/drivemem/ui/DailyStatsView;->addView(Landroid/view/View;)V

    .line 136
    new-instance v0, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-direct {v0, v7}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 137
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0xa0

    .line 138
    invoke-static {v7, v8}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v3

    const/4 v9, -0x1

    invoke-direct {v0, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x8

    .line 139
    invoke-static {v7, v3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 140
    iget-object v4, v6, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/charts/BarChart;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 143
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 144
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    .line 145
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawBorders(Z)V

    .line 146
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDoubleTapToZoomEnabled(Z)V

    .line 147
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 148
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 149
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setTouchEnabled(Z)V

    .line 150
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setFitBars(Z)V

    .line 151
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v5, 0x4

    invoke-static {v7, v5}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0, v10}, Lcom/github/mikephil/charting/charts/BarChart;->setExtraBottomOffset(F)V

    .line 152
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-static {v7, v3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0, v10}, Lcom/github/mikephil/charting/charts/BarChart;->setExtraTopOffset(F)V

    .line 154
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v10, Lcom/geely/drivemem/ui/DailyStatsView$1;

    invoke-direct {v10, v6}, Lcom/geely/drivemem/ui/DailyStatsView$1;-><init>(Lcom/geely/drivemem/ui/DailyStatsView;)V

    invoke-virtual {v0, v10}, Lcom/github/mikephil/charting/charts/BarChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 171
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v6, v0}, Lcom/geely/drivemem/ui/DailyStatsView;->addView(Landroid/view/View;)V

    const/16 v0, 0xe

    .line 172
    invoke-static {v6, v7, v0}, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V

    .line 177
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 178
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 179
    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 181
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 182
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 183
    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 184
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v12, v1, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    sget v12, Lcom/geely/drivemem/R$string;->daily_stats_prev_day:I

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v15, Lcom/geely/drivemem/ui/DailyStatsView$$ExternalSyntheticLambda4;

    invoke-direct {v15, v6}, Lcom/geely/drivemem/ui/DailyStatsView$$ExternalSyntheticLambda4;-><init>(Lcom/geely/drivemem/ui/DailyStatsView;)V

    invoke-static {v7, v12, v1, v15}, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;

    move-result-object v12

    iput-object v12, v6, Lcom/geely/drivemem/ui/DailyStatsView;->navPrevBtn:Landroid/widget/TextView;

    .line 187
    sget v15, Lcom/geely/drivemem/R$drawable;->ic_chevron_left:I

    invoke-direct {v6, v12, v15, v4}, Lcom/geely/drivemem/ui/DailyStatsView;->setNavIcon(Landroid/widget/TextView;IZ)V

    .line 189
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v12, v6, Lcom/geely/drivemem/ui/DailyStatsView;->navDateLabel:Landroid/widget/TextView;

    .line 190
    sget v15, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    iget-object v12, v6, Lcom/geely/drivemem/ui/DailyStatsView;->navDateLabel:Landroid/widget/TextView;

    const/high16 v15, 0x41800000    # 16.0f

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 192
    iget-object v12, v6, Lcom/geely/drivemem/ui/DailyStatsView;->navDateLabel:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 193
    iget-object v12, v6, Lcom/geely/drivemem/ui/DailyStatsView;->navDateLabel:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 194
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v1, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 195
    iget-object v8, v6, Lcom/geely/drivemem/ui/DailyStatsView;->navDateLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    sget v8, Lcom/geely/drivemem/R$string;->daily_stats_next_day:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v12, Lcom/geely/drivemem/ui/DailyStatsView$$ExternalSyntheticLambda5;

    invoke-direct {v12, v6}, Lcom/geely/drivemem/ui/DailyStatsView$$ExternalSyntheticLambda5;-><init>(Lcom/geely/drivemem/ui/DailyStatsView;)V

    invoke-static {v7, v8, v1, v12}, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;

    move-result-object v8

    iput-object v8, v6, Lcom/geely/drivemem/ui/DailyStatsView;->navNextBtn:Landroid/widget/TextView;

    .line 198
    sget v12, Lcom/geely/drivemem/R$drawable;->ic_chevron_right:I

    invoke-direct {v6, v8, v12, v1}, Lcom/geely/drivemem/ui/DailyStatsView;->setNavIcon(Landroid/widget/TextView;IZ)V

    .line 200
    iget-object v8, v6, Lcom/geely/drivemem/ui/DailyStatsView;->navPrevBtn:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    iget-object v8, v6, Lcom/geely/drivemem/ui/DailyStatsView;->navDateLabel:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    iget-object v8, v6, Lcom/geely/drivemem/ui/DailyStatsView;->navNextBtn:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    invoke-static {v10, v7, v0}, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V

    .line 213
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 214
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 215
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 216
    sget v11, Lcom/geely/drivemem/util/Style;->CARD:I

    invoke-static {v11, v7}, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v11, 0x12

    .line 217
    invoke-static {v7, v11}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v12

    invoke-static {v7, v0}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v0

    .line 218
    invoke-virtual {v8, v12, v0, v12, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 220
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->periodDropdownLabel:Landroid/widget/TextView;

    .line 221
    iget-object v12, v6, Lcom/geely/drivemem/ui/DailyStatsView;->period:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    invoke-static {v12}, Lcom/geely/drivemem/ui/DailyStatsView;->periodDisplayName(Lcom/geely/drivemem/ui/DailyStatsView$Period;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->periodDropdownLabel:Landroid/widget/TextView;

    sget v12, Lcom/geely/drivemem/util/Style;->CARD:I

    invoke-static {v12}, Lcom/geely/drivemem/util/Style;->onFill(I)I

    move-result v12

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->periodDropdownLabel:Landroid/widget/TextView;

    const/high16 v12, 0x41780000    # 15.5f

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 224
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->periodDropdownLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v15, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 225
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->periodDropdownLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 228
    sget v12, Lcom/geely/drivemem/R$drawable;->ic_chevron_right:I

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    sget v12, Lcom/geely/drivemem/util/Style;->CARD:I

    invoke-static {v12}, Lcom/geely/drivemem/util/Style;->onFill(I)I

    move-result v12

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v12, v15}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/high16 v12, 0x42b40000    # 90.0f

    .line 230
    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setRotation(F)V

    .line 231
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v7, v11}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v15

    invoke-static {v7, v11}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v12, v15, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 232
    invoke-static {v7, v3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v5

    iput v5, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 233
    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 236
    new-instance v0, Lcom/geely/drivemem/ui/DailyStatsView$$ExternalSyntheticLambda6;

    invoke-direct {v0, v6, v8}, Lcom/geely/drivemem/ui/DailyStatsView$$ExternalSyntheticLambda6;-><init>(Lcom/geely/drivemem/ui/DailyStatsView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 239
    invoke-virtual {v6, v10}, Lcom/geely/drivemem/ui/DailyStatsView;->addView(Landroid/view/View;)V

    .line 240
    invoke-static {v6, v7, v11}, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V

    .line 243
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 244
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 245
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    invoke-static {v7, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v5

    const/16 v8, 0xc

    .line 249
    invoke-static {v7, v8}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v10

    .line 251
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, v6, Lcom/geely/drivemem/ui/DailyStatsView;->consumptionCard:Landroid/widget/LinearLayout;

    .line 252
    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 253
    iget-object v11, v6, Lcom/geely/drivemem/ui/DailyStatsView;->consumptionCard:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 254
    iget-object v11, v6, Lcom/geely/drivemem/ui/DailyStatsView;->consumptionCard:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/geely/drivemem/util/Style;->cardFillColor()I

    move-result v12

    invoke-static {v12, v7}, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 255
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v1, v9, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 256
    iput v10, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 257
    iget-object v12, v6, Lcom/geely/drivemem/ui/DailyStatsView;->consumptionCard:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    iget-object v11, v6, Lcom/geely/drivemem/ui/DailyStatsView;->consumptionCard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, v6, Lcom/geely/drivemem/ui/DailyStatsView;->batteryCard:Landroid/widget/LinearLayout;

    .line 261
    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 262
    iget-object v11, v6, Lcom/geely/drivemem/ui/DailyStatsView;->batteryCard:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 263
    iget-object v11, v6, Lcom/geely/drivemem/ui/DailyStatsView;->batteryCard:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/geely/drivemem/util/Style;->cardFillColor()I

    move-result v12

    invoke-static {v12, v7}, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 264
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v1, v9, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 265
    iput v10, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 266
    iget-object v12, v6, Lcom/geely/drivemem/ui/DailyStatsView;->batteryCard:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    iget-object v11, v6, Lcom/geely/drivemem/ui/DailyStatsView;->batteryCard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 269
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, v6, Lcom/geely/drivemem/ui/DailyStatsView;->timeCard:Landroid/widget/LinearLayout;

    .line 270
    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 271
    iget-object v11, v6, Lcom/geely/drivemem/ui/DailyStatsView;->timeCard:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 272
    iget-object v11, v6, Lcom/geely/drivemem/ui/DailyStatsView;->timeCard:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/geely/drivemem/util/Style;->cardFillColor()I

    move-result v12

    invoke-static {v12, v7}, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 273
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v1, v9, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 274
    iput v10, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 275
    iget-object v10, v6, Lcom/geely/drivemem/ui/DailyStatsView;->timeCard:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    iget-object v10, v6, Lcom/geely/drivemem/ui/DailyStatsView;->timeCard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 278
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, v6, Lcom/geely/drivemem/ui/DailyStatsView;->altitudeCard:Landroid/widget/LinearLayout;

    .line 279
    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 280
    iget-object v10, v6, Lcom/geely/drivemem/ui/DailyStatsView;->altitudeCard:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 281
    iget-object v10, v6, Lcom/geely/drivemem/ui/DailyStatsView;->altitudeCard:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/geely/drivemem/util/Style;->cardFillColor()I

    move-result v11

    invoke-static {v11, v7}, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 282
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v1, v9, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 283
    iget-object v11, v6, Lcom/geely/drivemem/ui/DailyStatsView;->altitudeCard:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    iget-object v10, v6, Lcom/geely/drivemem/ui/DailyStatsView;->altitudeCard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    invoke-virtual {v6, v0}, Lcom/geely/drivemem/ui/DailyStatsView;->addView(Landroid/view/View;)V

    const/16 v0, 0x14

    .line 287
    invoke-static {v6, v7, v0}, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V

    .line 290
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 291
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x30

    .line 292
    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 293
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 294
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 297
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 298
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 299
    invoke-static {}, Lcom/geely/drivemem/util/Style;->cardFillColor()I

    move-result v11

    invoke-static {v11, v7}, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 300
    invoke-direct {v6, v7}, Lcom/geely/drivemem/ui/DailyStatsView;->sectionSummary(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v11

    iput-object v11, v6, Lcom/geely/drivemem/ui/DailyStatsView;->sessionsSummary:Landroid/widget/TextView;

    .line 301
    const-string v12, "Day Sessions"

    invoke-direct {v6, v7, v12, v11}, Lcom/geely/drivemem/ui/DailyStatsView;->sectionHeading(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    const-string v11, "Trips and charges \u00b7 most recent first"

    invoke-direct {v6, v7, v11}, Lcom/geely/drivemem/ui/DailyStatsView;->sectionCaption(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 303
    invoke-static {v0, v7, v8}, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V

    .line 304
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, v6, Lcom/geely/drivemem/ui/DailyStatsView;->sessionsContainer:Landroid/widget/LinearLayout;

    .line 305
    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 306
    iget-object v11, v6, Lcom/geely/drivemem/ui/DailyStatsView;->sessionsContainer:Landroid/widget/LinearLayout;

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v1, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 309
    invoke-static {v7, v8}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v12

    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 310
    invoke-virtual {v10, v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 313
    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 314
    invoke-virtual {v11, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 315
    invoke-static {}, Lcom/geely/drivemem/util/Style;->cardFillColor()I

    move-result v0

    invoke-static {v0, v7}, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 319
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    invoke-direct {v6, v7}, Lcom/geely/drivemem/ui/DailyStatsView;->sectionSummary(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->hourlySummary:Landroid/widget/TextView;

    .line 321
    sget v5, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 322
    const-string v0, "Distance by Hour & Speed"

    iget-object v5, v6, Lcom/geely/drivemem/ui/DailyStatsView;->hourlySummary:Landroid/widget/TextView;

    invoke-direct {v6, v7, v0, v5}, Lcom/geely/drivemem/ui/DailyStatsView;->sectionHeading(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 323
    const-string v0, "Distance in km \u00b7 colors by speed range"

    invoke-direct {v6, v7, v0}, Lcom/geely/drivemem/ui/DailyStatsView;->sectionCaption(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 327
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 328
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 329
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 330
    invoke-static {v7, v8}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v7, v3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 331
    invoke-static {}, Lcom/geely/drivemem/ui/DailyStatsView;->hourlySpeedColors()[I

    move-result-object v2

    move v3, v1

    .line 332
    :goto_0
    sget-object v5, Lcom/geely/drivemem/ui/DailyStatsView;->SPEED_BUCKET_LABELS:[Ljava/lang/String;

    array-length v8, v5

    if-ge v3, v8, :cond_1

    .line 333
    aget-object v5, v5, v3

    aget v8, v2, v3

    invoke-direct {v6, v7, v5, v8}, Lcom/geely/drivemem/ui/DailyStatsView;->speedLegendItem(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 335
    :cond_1
    invoke-direct {v6, v7}, Lcom/geely/drivemem/ui/DailyStatsView;->sectionSummary(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    .line 336
    const-string v3, "km/h"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 338
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 340
    new-instance v0, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-direct {v0, v7}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 341
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 342
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 343
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    .line 344
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawBorders(Z)V

    .line 345
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 346
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 347
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setTouchEnabled(Z)V

    .line 348
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setMinOffset(F)V

    .line 349
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v0, v3, v8, v5, v8}, Lcom/github/mikephil/charting/charts/BarChart;->setExtraOffsets(FFFF)V

    .line 350
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 351
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 352
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    const/high16 v2, 0x41700000    # 15.0f

    .line 353
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setSpaceTop(F)V

    .line 354
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 355
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    const/high16 v2, 0x41480000    # 12.5f

    .line 356
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setTextSize(F)V

    const/4 v3, 0x4

    .line 357
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(I)V

    .line 358
    invoke-static {}, Lcom/geely/drivemem/util/Style;->cardFillColor()I

    move-result v3

    sget v5, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    const v8, 0x3e3851ec    # 0.18f

    invoke-static {v3, v5, v8}, Lcom/geely/drivemem/util/Style;->blend(IIF)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setGridColor(I)V

    const v3, 0x3f333333    # 0.7f

    .line 359
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setGridLineWidth(F)V

    .line 361
    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v5

    .line 362
    invoke-virtual {v5, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 363
    invoke-virtual {v5, v4}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 364
    invoke-static {}, Lcom/geely/drivemem/util/Style;->cardFillColor()I

    move-result v0

    sget v1, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    const v3, 0x3eb33333    # 0.35f

    invoke-static {v0, v1, v3}, Lcom/geely/drivemem/util/Style;->blend(IIF)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/github/mikephil/charting/components/XAxis;->setAxisLineColor(I)V

    .line 365
    sget v0, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v5, v0}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 366
    invoke-virtual {v5, v2}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 367
    sget-object v0, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v5, v0}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/high16 v0, 0x41000000    # 8.0f

    .line 368
    invoke-virtual {v5, v0}, Lcom/github/mikephil/charting/components/XAxis;->setYOffset(F)V

    const v0, -0x40d9999a    # -0.65f

    .line 369
    invoke-virtual {v5, v0}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMinimum(F)V

    const v0, 0x41bd3333    # 23.65f

    .line 370
    invoke-virtual {v5, v0}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaximum(F)V

    .line 374
    iget-object v8, v6, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v12, Lcom/geely/drivemem/ui/DailyStatsView$2;

    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v2

    iget-object v0, v6, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyChart:Lcom/github/mikephil/charting/charts/BarChart;

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 375
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v4

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v3, v5

    invoke-direct/range {v0 .. v5}, Lcom/geely/drivemem/ui/DailyStatsView$2;-><init>(Lcom/geely/drivemem/ui/DailyStatsView;Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/components/XAxis;)V

    .line 374
    invoke-virtual {v8, v12}, Lcom/github/mikephil/charting/charts/BarChart;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    .line 384
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 385
    iget-object v1, v6, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    const-string v1, "No trips recorded"

    invoke-direct {v6, v7, v1}, Lcom/geely/drivemem/ui/DailyStatsView;->sectionCaption(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v6, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyEmptyState:Landroid/widget/TextView;

    .line 388
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v13, v13, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 390
    iget-object v2, v6, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyEmptyState:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0xa0

    .line 392
    invoke-static {v7, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v9, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 391
    invoke-virtual {v11, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    const-string v0, "Hour of day"

    invoke-direct {v6, v7, v0}, Lcom/geely/drivemem/ui/DailyStatsView;->sectionCaption(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x800005

    .line 394
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 395
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 396
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 397
    invoke-virtual {v6, v10}, Lcom/geely/drivemem/ui/DailyStatsView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private buildSpeedBucketChart(Landroid/content/Context;[Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;D)Landroid/view/View;
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/16 v2, 0x28

    .line 1247
    invoke-static {v0, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v2

    const/16 v3, 0xe

    .line 1248
    invoke-static {v0, v3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v3

    add-int/2addr v3, v2

    .line 1252
    array-length v4, v1

    const/4 v5, 0x0

    move-wide/from16 v7, p3

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v9, v1, v6

    iget-wide v9, v9, Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;->kwh100km:D

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v9, 0x0

    cmpg-double v4, v7, v9

    if-gtz v4, :cond_1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 1255
    :cond_1
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    .line 1256
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1257
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v15, 0x6

    .line 1259
    invoke-static {v0, v15}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v15

    iput v15, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1260
    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1262
    new-instance v13, Landroid/widget/FrameLayout;

    invoke-direct {v13, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1263
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v15, v14, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v15}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1265
    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1266
    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1267
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v11, v5

    .line 1270
    :goto_1
    array-length v12, v1

    if-ge v11, v12, :cond_7

    .line 1271
    aget-object v12, v1, v11

    .line 1272
    iget-wide v9, v12, Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;->distanceKm:D

    const-wide v16, 0x3fc999999999999aL    # 0.2

    cmpl-double v9, v9, v16

    if-lez v9, :cond_2

    move v9, v6

    goto :goto_2

    :cond_2
    move v9, v5

    .line 1274
    :goto_2
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1275
    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x51

    .line 1276
    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1277
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v6, v5, v14, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    if-lez v11, :cond_3

    const/4 v1, 0x5

    .line 1278
    invoke-static {v0, v1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v1

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1279
    :cond_3
    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1281
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz v9, :cond_4

    .line 1282
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v18, v15

    iget-wide v14, v12, Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;->kwh100km:D

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    const-string v15, "%.1f"

    invoke-static {v6, v15, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_4
    move-object/from16 v18, v15

    const-string v6, "\u2014"

    :goto_3
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1283
    sget v6, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41300000    # 11.0f

    .line 1284
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1285
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1287
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    if-eqz v9, :cond_5

    const/4 v6, 0x2

    .line 1289
    invoke-static {v0, v6}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v14

    int-to-double v5, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    iget-wide v3, v12, Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;->kwh100km:D

    div-double/2addr v3, v7

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v4, v3

    const/4 v3, 0x2

    goto :goto_4

    :cond_5
    move/from16 v19, v3

    move-object/from16 v20, v4

    const/4 v3, 0x2

    .line 1290
    invoke-static {v0, v3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v4

    .line 1291
    :goto_4
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1292
    invoke-static {v0, v3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v4

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1293
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1294
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1295
    sget v4, Lcom/geely/drivemem/util/Style;->ACCENT:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    if-eqz v9, :cond_6

    const/16 v4, 0x6e

    goto :goto_5

    :cond_6
    const/16 v4, 0x3c

    .line 1296
    :goto_5
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    const/4 v4, 0x2

    .line 1297
    invoke-static {v0, v4}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1298
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1299
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v1, v18

    .line 1301
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v11, v11, 0x1

    move-object v15, v1

    move/from16 v3, v19

    move-object/from16 v4, v20

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v9, 0x0

    const/4 v14, -0x1

    move-object/from16 v1, p2

    goto/16 :goto_1

    :cond_7
    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object v1, v15

    .line 1303
    invoke-virtual {v13, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const-wide/16 v3, 0x0

    cmpl-double v1, p3, v3

    const/4 v3, 0x4

    if-lez v1, :cond_8

    int-to-double v1, v2

    div-double v4, p3, v7

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 1306
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    mul-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    sub-int v1, v19, v1

    .line 1307
    new-instance v2, Lcom/geely/drivemem/ui/DailyStatsView$DottedLineView;

    invoke-direct {v2, v0}, Lcom/geely/drivemem/ui/DailyStatsView$DottedLineView;-><init>(Landroid/content/Context;)V

    .line 1308
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1309
    invoke-static {v0, v3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, -0x1

    invoke-direct {v4, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x2

    .line 1310
    invoke-static {v0, v5}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v5

    sub-int/2addr v1, v5

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1311
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1312
    invoke-virtual {v13, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_8
    move-object/from16 v1, v20

    .line 1315
    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1317
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 1318
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1319
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1321
    invoke-static {v0, v3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v3

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1322
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    .line 1323
    :goto_6
    sget-object v3, Lcom/geely/drivemem/ui/DailyStatsView;->SPEED_BUCKET_LABELS:[Ljava/lang/String;

    array-length v5, v3

    if-ge v4, v5, :cond_a

    .line 1324
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1325
    aget-object v3, v3, v4

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1326
    sget v3, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41300000    # 11.0f

    .line 1327
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0x11

    .line 1328
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1329
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x2

    const/4 v9, 0x0

    invoke-direct {v6, v9, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v10, 0x5

    if-lez v4, :cond_9

    .line 1330
    invoke-static {v0, v10}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v11

    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1331
    :cond_9
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1332
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1334
    :cond_a
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private buildSpeedBucketUnavailable(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 1224
    const-string v0, "Speed breakdown unavailable without OBD2"

    invoke-static {p1, v0}, Lcom/geely/drivemem/util/Style;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    .line 1225
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1226
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x6

    .line 1228
    invoke-static {p1, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1229
    invoke-static {p1, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p1

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1230
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private buildValetSessionCard(Landroid/widget/LinearLayout;Lcom/geely/drivemem/sensors/DailyStatsProvider$ValetSessionItem;)V
    .locals 9

    .line 1532
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1533
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x10

    .line 1534
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1535
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1536
    sget v3, Lcom/geely/drivemem/R$drawable;->ic_shield_car:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1537
    sget v3, Lcom/geely/drivemem/util/Style;->PURPLE:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1538
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x14

    invoke-static {v0, v4}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v0, v4}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1539
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1540
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Valet mode  \u00b7  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ValetSessionItem;->timeLabel:Ljava/lang/String;

    iget-object v5, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ValetSessionItem;->durationLabel:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/geely/drivemem/ui/DailyStatsView;->sessionTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1541
    sget v3, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41880000    # 17.0f

    .line 1542
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1543
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 v5, 0xa

    .line 1544
    invoke-static {v0, v5}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1545
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1546
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1547
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    iget-wide v7, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ValetSessionItem;->distanceKm:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%.1f km"

    invoke-static {v5, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1548
    sget v5, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41900000    # 18.0f

    .line 1549
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1550
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1551
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1552
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1554
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1555
    iget-object v2, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ValetSessionItem;->maxPowerKw:Ljava/lang/Double;

    const-string v3, "\u2014"

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iget-object v4, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ValetSessionItem;->maxPowerKw:Ljava/lang/Double;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%.1f kW"

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1556
    :goto_0
    iget v4, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ValetSessionItem;->startSoc:I

    if-ltz v4, :cond_1

    iget v4, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ValetSessionItem;->endSoc:I

    if-ltz v4, :cond_1

    .line 1557
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    iget v4, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ValetSessionItem;->endSoc:I

    iget v5, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ValetSessionItem;->startSoc:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%+d pp"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1558
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    iget-wide v7, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$ValetSessionItem;->maxSpeedKmh:D

    .line 1559
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    filled-new-array {p2, v2, v3}, [Ljava/lang/Object;

    move-result-object p2

    .line 1558
    const-string v2, "Max %.0f km/h  \u00b7  power %s  \u00b7  battery %s"

    invoke-static {v4, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1560
    sget p2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41800000    # 16.0f

    .line 1561
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p2, 0x1e

    .line 1562
    invoke-static {v0, p2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p2

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, p2, v0, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1563
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createHeroView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 3

    .line 1170
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1171
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1173
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1174
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1175
    sget p2, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x42100000    # 36.0f

    .line 1176
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p2, 0x0

    .line 1177
    invoke-virtual {v2, p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1178
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1180
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1181
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1182
    sget p3, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p3, 0x41580000    # 13.5f

    .line 1183
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p3, 0x2

    .line 1184
    invoke-static {p1, p3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p1

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1, p3, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1185
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private static distributeInPairs(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    .line 1372
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1373
    rem-int/lit8 v3, v2, 0x2

    const/4 v4, -0x2

    if-nez v3, :cond_1

    .line 1374
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1375
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1376
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez v2, :cond_0

    .line 1378
    invoke-static {p0, p3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1379
    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1380
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1382
    :cond_1
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1383
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v1, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    if-nez v3, :cond_2

    .line 1384
    invoke-static {p0, p3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v4

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1385
    :cond_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1386
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    .line 1388
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_4

    .line 1389
    :cond_3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 1391
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1392
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1393
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static formatGapDuration(J)Ljava/lang/String;
    .locals 4

    const-wide/32 v0, 0xea60

    .line 1506
    div-long/2addr p0, v0

    const-wide/16 v0, 0x3c

    .line 1507
    div-long v2, p0, v0

    .line 1508
    rem-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 1509
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%dh %02dmin"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%dmin"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static hourlySpeedColors()[I
    .locals 6

    .line 916
    sget-boolean v0, Lcom/geely/drivemem/util/Style;->LIGHT:Z

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eqz v0, :cond_0

    .line 917
    new-array v0, v5, [I

    const v5, -0xf78088

    aput v5, v0, v4

    const v4, -0xdb9c34

    aput v4, v0, v3

    const v3, -0x3b95f7

    aput v3, v0, v2

    const v2, -0x4fd358

    aput v2, v0, v1

    goto :goto_0

    .line 918
    :cond_0
    new-array v0, v5, [I

    const v5, -0xd22b41

    aput v5, v0, v4

    const v4, -0x9f6001

    aput v4, v0, v3

    const/16 v3, -0x4bac

    aput v3, v0, v2

    const v2, -0x178607

    aput v2, v0, v1

    :goto_0
    return-object v0
.end method

.method private synthetic lambda$buildChargeSessionCard$3(Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;Landroid/view/View;)V
    .locals 9

    .line 1764
    invoke-static {}, Lcom/geely/drivemem/state/CarState;->isParked()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1765
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/geely/drivemem/R$string;->charge_cost_parked_only:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1769
    :cond_0
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->chargeId:J

    iget-wide v3, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->kwh:D

    iget v5, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->socStart:I

    iget v6, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->socEnd:I

    iget-object v7, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$ChargeSessionItem;->cost:Ljava/lang/Double;

    new-instance v8, Lcom/geely/drivemem/ui/DailyStatsView$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lcom/geely/drivemem/ui/DailyStatsView$$ExternalSyntheticLambda0;-><init>(Lcom/geely/drivemem/ui/DailyStatsView;)V

    .line 1768
    invoke-static/range {v0 .. v8}, Lcom/geely/drivemem/ui/ChargeCostDialog;->show(Landroid/content/Context;JDIILjava/lang/Double;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    return-void
.end method

.method private synthetic lambda$buildSkeleton$1(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 0

    .line 236
    invoke-direct {p0, p1}, Lcom/geely/drivemem/ui/DailyStatsView;->showPeriodMenu(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V
    .locals 0

    .line 87
    new-instance p1, Lcom/geely/drivemem/ui/DailyStatsView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/geely/drivemem/ui/DailyStatsView$$ExternalSyntheticLambda2;-><init>(Lcom/geely/drivemem/ui/DailyStatsView;)V

    invoke-virtual {p0, p1}, Lcom/geely/drivemem/ui/DailyStatsView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$showPeriodMenu$2(Landroid/widget/PopupWindow;Lcom/geely/drivemem/ui/DailyStatsView$Period;Landroid/view/View;)V
    .locals 0

    .line 619
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 620
    invoke-direct {p0, p2}, Lcom/geely/drivemem/ui/DailyStatsView;->setPeriod(Lcom/geely/drivemem/ui/DailyStatsView$Period;)V

    return-void
.end method

.method private loadPeriod()V
    .locals 9

    .line 657
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 658
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->period:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    sget-object v2, Lcom/geely/drivemem/ui/DailyStatsView$Period;->WEEK:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    if-ne v1, v2, :cond_0

    .line 659
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodAnchorDate:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->recentWeeks(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 660
    :cond_0
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodAnchorDate:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->recentMonths(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodWindow:Ljava/util/List;

    .line 662
    iget v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodSelectedIdx:I

    if-ltz v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 663
    iget v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodSelectedIdx:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodWindow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 665
    :goto_1
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodWindow:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 666
    iget-object v2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodWindow:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [D

    const/4 v3, 0x0

    move v4, v3

    .line 667
    :goto_2
    iget-object v5, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodWindow:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 668
    iget-object v5, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodWindow:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;

    .line 669
    iget-object v6, v5, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;->days:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;

    iget-object v6, v6, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->date:Ljava/lang/String;

    .line 670
    iget-object v7, p0, Lcom/geely/drivemem/ui/DailyStatsView;->period:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    sget-object v8, Lcom/geely/drivemem/ui/DailyStatsView$Period;->WEEK:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    if-ne v7, v8, :cond_2

    invoke-static {v6}, Lcom/geely/drivemem/ui/DailyStatsView;->weekChartLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_2
    invoke-static {v6}, Lcom/geely/drivemem/ui/DailyStatsView;->monthChartLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    aput-object v6, v1, v4

    .line 671
    iget-object v5, v5, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;->totals:Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;

    iget-wide v5, v5, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->distanceKm:D

    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 673
    :cond_3
    invoke-direct {p0, v1, v2, v0}, Lcom/geely/drivemem/ui/DailyStatsView;->renderBarChart([Ljava/lang/String;[DI)V

    .line 674
    invoke-direct {p0, v0}, Lcom/geely/drivemem/ui/DailyStatsView;->renderPeriodCards(I)V

    return-void
.end method

.method private metricChip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 4

    .line 1197
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1198
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0xa

    .line 1199
    invoke-static {p1, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v2

    const/16 v3, 0x8

    invoke-static {p1, v3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v3

    .line 1200
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1201
    invoke-static {p1}, Lcom/geely/drivemem/util/Style;->tile(Landroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1203
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1204
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1205
    sget p2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41600000    # 14.0f

    .line 1206
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1207
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1209
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1210
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41980000    # 19.0f

    .line 1211
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v2, 0x0

    .line 1212
    invoke-virtual {p2, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1213
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p3, 0x2

    .line 1214
    invoke-static {p1, p3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p1

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1, p3, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1215
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static monthChartLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 750
    :try_start_0
    sget-object v0, Lcom/geely/drivemem/ui/DailyStatsView;->MONTH_CHART_FMT:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 751
    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/util/Locale;

    const-string v5, "en"

    const-string v6, "US"

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method private onLiveTick()V
    .locals 8

    .line 421
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->days:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->period:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    sget-object v1, Lcom/geely/drivemem/ui/DailyStatsView$Period;->DAY:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    if-eq v0, v1, :cond_1

    return-void

    .line 429
    :cond_1
    invoke-static {}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->todayDateStr()Ljava/lang/String;

    move-result-object v0

    .line 430
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->days:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_2

    return-void

    .line 434
    :cond_2
    iget-object v2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->days:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayItem;

    iget-object v2, v2, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayItem;->date:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 435
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->refresh()V

    return-void

    .line 439
    :cond_3
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->getDayOverview(Landroid/content/Context;Ljava/lang/String;)Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;

    move-result-object v0

    .line 442
    iget-object v2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->days:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayItem;

    .line 443
    iget-object v3, p0, Lcom/geely/drivemem/ui/DailyStatsView;->days:Ljava/util/List;

    new-instance v4, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayItem;

    iget-object v5, v2, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayItem;->date:Ljava/lang/String;

    iget-object v2, v2, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayItem;->shortLabel:Ljava/lang/String;

    iget-wide v6, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->distanceKm:D

    invoke-direct {v4, v5, v2, v6, v7}, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayItem;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 447
    iget-object v2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarDataSet;

    if-eqz v2, :cond_4

    .line 448
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarDataSet;->getEntryCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 449
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/BarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarEntry;

    if-eqz v2, :cond_4

    .line 450
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v3

    iget-wide v4, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->distanceKm:D

    double-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 451
    iget-wide v3, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->distanceKm:D

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarEntry;->setY(F)V

    .line 452
    iget-object v2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->notifyDataChanged()V

    .line 453
    iget-object v2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->notifyDataSetChanged()V

    .line 454
    iget-object v2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 460
    :cond_4
    iget v2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->selectedIdx:I

    if-ne v2, v1, :cond_5

    .line 461
    invoke-direct {p0, v0}, Lcom/geely/drivemem/ui/DailyStatsView;->renderOverview(Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private onNavNext()V
    .locals 3

    .line 578
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->period:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    sget-object v1, Lcom/geely/drivemem/ui/DailyStatsView$Period;->DAY:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 579
    iget v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->selectedIdx:I

    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->days:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->selectedIdx:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/geely/drivemem/ui/DailyStatsView;->selectIndex(IZ)V

    goto :goto_0

    .line 580
    :cond_0
    iget v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodSelectedIdx:I

    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodWindow:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 581
    iget v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodSelectedIdx:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/geely/drivemem/ui/DailyStatsView;->selectPeriodIndex(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onNavPrev()V
    .locals 3

    .line 570
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->period:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    sget-object v1, Lcom/geely/drivemem/ui/DailyStatsView$Period;->DAY:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 571
    iget v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->selectedIdx:I

    if-lez v0, :cond_1

    sub-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/geely/drivemem/ui/DailyStatsView;->selectIndex(IZ)V

    goto :goto_0

    .line 572
    :cond_0
    iget v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodSelectedIdx:I

    if-lez v0, :cond_1

    sub-int/2addr v0, v2

    .line 573
    invoke-direct {p0, v0, v2}, Lcom/geely/drivemem/ui/DailyStatsView;->selectPeriodIndex(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static parseDayMs(Ljava/lang/String;)J
    .locals 3

    .line 864
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static percentRange(IIF)Ljava/lang/CharSequence;
    .locals 0

    .line 1405
    invoke-static {p0, p1, p2}, Lcom/geely/drivemem/util/Style;->percentRange(IIF)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private periodDayHeader(Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;)Landroid/view/View;
    .locals 11

    .line 824
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 825
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 826
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    .line 827
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 828
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xa

    .line 830
    invoke-static {v0, v6}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 831
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 834
    iget-object v7, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->displayDate:Ljava/lang/String;

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    iget-object v7, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->displayDate:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 835
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->displayDate:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->displayDate:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 836
    :cond_0
    iget-object v7, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->date:Ljava/lang/String;

    .line 837
    :goto_0
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    sget v7, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41600000    # 14.0f

    .line 839
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v9, 0x0

    .line 840
    invoke-virtual {v6, v9, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 841
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v9, v2, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 843
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 844
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    iget-wide v9, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->distanceKm:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v6, "%.1f km"

    invoke-static {v5, v6, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 845
    sget p1, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 846
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 847
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 849
    invoke-direct {p0, v0}, Lcom/geely/drivemem/ui/DailyStatsView;->sessionDivider(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    .line 850
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 851
    invoke-static {v0, v8}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x6

    .line 852
    invoke-static {v0, v4}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 854
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 855
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 856
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 857
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 858
    invoke-virtual {v4, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v4
.end method

.method private static periodDisplayName(Lcom/geely/drivemem/ui/DailyStatsView$Period;)Ljava/lang/String;
    .locals 1

    .line 586
    sget-object v0, Lcom/geely/drivemem/ui/DailyStatsView$4;->$SwitchMap$com$geely$drivemem$ui$DailyStatsView$Period:[I

    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView$Period;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 589
    const-string p0, "Day"

    return-object p0

    .line 588
    :cond_0
    const-string p0, "Month"

    return-object p0

    .line 587
    :cond_1
    const-string p0, "Week"

    return-object p0
.end method

.method private renderAltitudeCard(Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;)V
    .locals 9

    .line 1123
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1124
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->altitudeCard:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1127
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1128
    const-string v2, "Elevation"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41780000    # 15.5f

    .line 1130
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1131
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1132
    iget-object v2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->altitudeCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1133
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->altitudeCard:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V

    .line 1136
    iget-wide v1, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->netElevationM:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v1, v4

    if-ltz v1, :cond_0

    const-string v1, "+"

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 1137
    :goto_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v4, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->netElevationM:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "%s%.0f"

    invoke-static {v2, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    const-string v4, "m"

    invoke-static {v1, v3, v4, v2}, Lcom/geely/drivemem/ui/DailyStatsView;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1138
    iget-object v2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->altitudeCard:Landroid/widget/LinearLayout;

    const-string v5, "Day Balance"

    invoke-direct {p0, v0, v1, v5}, Lcom/geely/drivemem/ui/DailyStatsView;->createHeroView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1139
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->altitudeCard:Landroid/widget/LinearLayout;

    const/16 v2, 0xe

    invoke-static {v1, v0, v2}, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V

    .line 1141
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v5, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->ascentDPlusM:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "+%.0f"

    invoke-static {v1, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/geely/drivemem/util/Style;->HEAT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v5, 0x3f2e147b    # 0.68f

    invoke-static {v1, v2, v4, v5}, Lcom/geely/drivemem/ui/DailyStatsView;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1142
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v6, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->descentDMinusM:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "-%.0f"

    invoke-static {v2, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v6, Lcom/geely/drivemem/util/Style;->COOL:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v6, v4, v5}, Lcom/geely/drivemem/ui/DailyStatsView;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1143
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v7, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->maxAltitudeM:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v7, "%.0f"

    invoke-static {v6, v7, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3, v4, v5}, Lcom/geely/drivemem/ui/DailyStatsView;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1145
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1146
    const-string v4, "Ascent"

    invoke-direct {p0, v0, v4, v1}, Lcom/geely/drivemem/ui/DailyStatsView;->metricChip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
    const-string v1, "Descent"

    invoke-direct {p0, v0, v1, v2}, Lcom/geely/drivemem/ui/DailyStatsView;->metricChip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1148
    const-string v1, "Max Altitude"

    invoke-direct {p0, v0, v1, p1}, Lcom/geely/drivemem/ui/DailyStatsView;->metricChip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    iget-object p1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->altitudeCard:Landroid/widget/LinearLayout;

    const/16 v1, 0xa

    invoke-static {v0, p1, v3, v1}, Lcom/geely/drivemem/ui/DailyStatsView;->distributeInPairs(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;I)V

    return-void
.end method

.method private renderBarChart([Ljava/lang/String;[DI)V
    .locals 8

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 482
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 483
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_1

    .line 484
    new-instance v4, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v5, v3

    aget-wide v6, p2, v3

    double-to-float v6, v6

    invoke-direct {v4, v5, v6}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v3, p3, :cond_0

    .line 485
    sget v4, Lcom/geely/drivemem/util/Style;->ACCENT:I

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->tileBarColor()I

    move-result v4

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 488
    :cond_1
    new-instance p2, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string p3, "km"

    invoke-direct {p2, v0, p3}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 489
    invoke-virtual {p2, v1}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors(Ljava/util/List;)V

    const/4 p3, 0x1

    .line 490
    invoke-virtual {p2, p3}, Lcom/github/mikephil/charting/data/BarDataSet;->setDrawValues(Z)V

    .line 491
    new-instance v0, Lcom/geely/drivemem/ui/DailyStatsView$3;

    invoke-direct {v0, p0}, Lcom/geely/drivemem/ui/DailyStatsView$3;-><init>(Lcom/geely/drivemem/ui/DailyStatsView;)V

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/data/BarDataSet;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 508
    sget v0, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/data/BarDataSet;->setValueTextColor(I)V

    const/high16 v0, 0x41480000    # 12.5f

    .line 509
    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/data/BarDataSet;->setValueTextSize(F)V

    .line 510
    invoke-virtual {p2, v2}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightAlpha(I)V

    .line 512
    new-instance v1, Lcom/github/mikephil/charting/data/BarData;

    new-array p3, p3, [Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    aput-object p2, p3, v2

    invoke-direct {v1, p3}, Lcom/github/mikephil/charting/data/BarData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V

    const p2, 0x3f2e147b    # 0.68f

    .line 513
    invoke-virtual {v1, p2}, Lcom/github/mikephil/charting/data/BarData;->setBarWidth(F)V

    .line 514
    iget-object p2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p2, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 516
    iget-object p2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object p2

    .line 517
    sget-object p3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {p2, p3}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 518
    invoke-virtual {p2, v2}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 519
    sget p3, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {p2, p3}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 520
    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 521
    invoke-virtual {p2, p3}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 522
    array-length p3, p1

    invoke-virtual {p2, p3}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    .line 523
    new-instance p3, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;

    invoke-direct {p3, p1}, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;-><init>([Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 526
    iget-object p1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 527
    iget-object p1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 528
    iget-object p1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p1

    const/high16 p2, 0x41c80000    # 25.0f

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/YAxis;->setSpaceTop(F)V

    .line 529
    iget-object p1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 531
    iget-object p1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    return-void
.end method

.method private renderBatteryCard(Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;)V
    .locals 9

    .line 1054
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1055
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->batteryCard:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1058
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1059
    const-string v2, "Battery & Charging"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41780000    # 15.5f

    .line 1061
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1062
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1063
    iget-object v2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->batteryCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1064
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->batteryCard:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V

    .line 1067
    iget v1, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->firstBatteryPct:I

    const-string v2, "\u2014"

    if-ltz v1, :cond_0

    iget v1, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->lastBatteryPct:I

    if-ltz v1, :cond_0

    .line 1068
    iget v1, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->firstBatteryPct:I

    iget v4, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->lastBatteryPct:I

    const v5, 0x3ecccccd    # 0.4f

    invoke-static {v1, v4, v5}, Lcom/geely/drivemem/ui/DailyStatsView;->percentRange(IIF)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 1070
    :goto_0
    iget-object v4, p0, Lcom/geely/drivemem/ui/DailyStatsView;->batteryCard:Landroid/widget/LinearLayout;

    const-string v5, "SoC Change"

    invoke-direct {p0, v0, v1, v5}, Lcom/geely/drivemem/ui/DailyStatsView;->createHeroView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1071
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->batteryCard:Landroid/widget/LinearLayout;

    const/16 v4, 0xe

    invoke-static {v1, v0, v4}, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V

    .line 1076
    iget-wide v4, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->chargeKwh:D

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    const-string v4, "kWh"

    const v5, 0x3f2e147b    # 0.68f

    if-lez v1, :cond_1

    .line 1077
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v6, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->chargeKwh:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "+%.1f"

    invoke-static {v1, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v4, v5}, Lcom/geely/drivemem/ui/DailyStatsView;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    .line 1078
    :cond_1
    const-string v1, "0.0"

    invoke-static {v1, v3, v4, v5}, Lcom/geely/drivemem/ui/DailyStatsView;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1079
    :goto_1
    iget v4, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->chargeCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 1080
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v7, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->avgTempC:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%.1f"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u00b0C"

    invoke-static {v6, v3, v7, v5}, Lcom/geely/drivemem/ui/DailyStatsView;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1081
    iget v7, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->minBatteryPct:I

    if-ltz v7, :cond_2

    .line 1082
    iget p1, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->minBatteryPct:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "%"

    invoke-static {p1, v3, v2, v5}, Lcom/geely/drivemem/ui/DailyStatsView;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1085
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1086
    const-string v3, "Energy Charged"

    invoke-direct {p0, v0, v3, v1}, Lcom/geely/drivemem/ui/DailyStatsView;->metricChip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1087
    const-string v1, "Charges"

    invoke-direct {p0, v0, v1, v4}, Lcom/geely/drivemem/ui/DailyStatsView;->metricChip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    const-string v1, "Outside Temp."

    invoke-direct {p0, v0, v1, v6}, Lcom/geely/drivemem/ui/DailyStatsView;->metricChip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    const-string v1, "Min SoC"

    invoke-direct {p0, v0, v1, v2}, Lcom/geely/drivemem/ui/DailyStatsView;->metricChip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->batteryCard:Landroid/widget/LinearLayout;

    const/16 v2, 0xa

    invoke-static {v0, v1, p1, v2}, Lcom/geely/drivemem/ui/DailyStatsView;->distributeInPairs(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;I)V

    return-void
.end method

.method private renderConsumptionCard(Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;[Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;)V
    .locals 12

    .line 970
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 971
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->consumptionCard:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 974
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 975
    const-string v2, "Consumption & Efficiency"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41780000    # 15.5f

    .line 977
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 978
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 979
    iget-object v4, p0, Lcom/geely/drivemem/ui/DailyStatsView;->consumptionCard:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 980
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->consumptionCard:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-static {v1, v0, v4}, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V

    .line 985
    iget-wide v4, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->efficiencyKwh100km:D

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    const-string v4, "\u2014"

    const-string v5, "%.1f"

    if-lez v1, :cond_0

    .line 986
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v8, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->efficiencyKwh100km:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v1, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "kWh/100 km"

    const v9, 0x3ecccccd    # 0.4f

    invoke-static {v1, v2, v8, v9}, Lcom/geely/drivemem/ui/DailyStatsView;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v8, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->energySource:Lcom/geely/drivemem/sensors/EnergySource;

    invoke-static {v1, v8}, Lcom/geely/drivemem/ui/DailyStatsView;->withEnergySourceMark(Ljava/lang/CharSequence;Lcom/geely/drivemem/sensors/EnergySource;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v4

    .line 989
    :goto_0
    const-string v8, "Consumption by speed"

    iget-object v9, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->energySource:Lcom/geely/drivemem/sensors/EnergySource;

    invoke-static {v8, v9}, Lcom/geely/drivemem/ui/DailyStatsView;->withEnergySourceMark(Ljava/lang/CharSequence;Lcom/geely/drivemem/sensors/EnergySource;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 990
    iget-object v9, p0, Lcom/geely/drivemem/ui/DailyStatsView;->consumptionCard:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v8}, Lcom/geely/drivemem/ui/DailyStatsView;->createHeroView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 991
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->consumptionCard:Landroid/widget/LinearLayout;

    const/16 v8, 0xa

    invoke-static {v1, v0, v8}, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V

    .line 1010
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->consumptionCard:Landroid/widget/LinearLayout;

    iget-object v9, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->energySource:Lcom/geely/drivemem/sensors/EnergySource;

    sget-object v10, Lcom/geely/drivemem/sensors/EnergySource;->ESTIMATED:Lcom/geely/drivemem/sensors/EnergySource;

    if-eq v9, v10, :cond_2

    iget-object v9, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->energySource:Lcom/geely/drivemem/sensors/EnergySource;

    sget-object v10, Lcom/geely/drivemem/sensors/EnergySource;->MIXED:Lcom/geely/drivemem/sensors/EnergySource;

    if-ne v9, v10, :cond_1

    goto :goto_1

    .line 1012
    :cond_1
    iget-wide v9, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->efficiencyKwh100km:D

    invoke-direct {p0, v0, p2, v9, v10}, Lcom/geely/drivemem/ui/DailyStatsView;->buildSpeedBucketChart(Landroid/content/Context;[Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;D)Landroid/view/View;

    move-result-object p2

    goto :goto_2

    .line 1011
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/geely/drivemem/ui/DailyStatsView;->buildSpeedBucketUnavailable(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    .line 1010
    :goto_2
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1013
    iget-object p2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->consumptionCard:Landroid/widget/LinearLayout;

    const/16 v1, 0xe

    invoke-static {p2, v0, v1}, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V

    .line 1017
    iget-wide v9, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->dischargeKwh:D

    cmpl-double p2, v9, v6

    const/4 v1, 0x0

    if-lez p2, :cond_3

    move p2, v3

    goto :goto_3

    :cond_3
    move p2, v1

    .line 1018
    :goto_3
    iget-wide v9, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->regenKwh:D

    cmpl-double v9, v9, v6

    if-lez v9, :cond_4

    goto :goto_4

    :cond_4
    move v3, v1

    .line 1021
    :goto_4
    iget-wide v9, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->netKwh:D

    cmpl-double v1, v9, v6

    const v6, 0x3f2e147b    # 0.68f

    const-string v7, "kWh"

    if-lez v1, :cond_5

    .line 1022
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v9, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->netKwh:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v1, v5, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v7, v6}, Lcom/geely/drivemem/ui/DailyStatsView;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_5

    :cond_5
    if-eqz p2, :cond_6

    .line 1024
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v9, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->dischargeKwh:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v1, v5, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v7, v6}, Lcom/geely/drivemem/ui/DailyStatsView;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_5

    :cond_6
    if-eqz v3, :cond_7

    .line 1026
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v9, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->netKwh:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v1, v5, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v7, v6}, Lcom/geely/drivemem/ui/DailyStatsView;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_5

    :cond_7
    move-object v1, v4

    :goto_5
    if-eqz p2, :cond_8

    .line 1031
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v10, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->dischargeKwh:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v5, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v7, v6}, Lcom/geely/drivemem/ui/DailyStatsView;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_6

    :cond_8
    move-object v2, v4

    :goto_6
    if-eqz v3, :cond_9

    .line 1034
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v9, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->regenKwh:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v9, "+%.1f"

    invoke-static {v4, v9, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/geely/drivemem/util/Style;->COOL:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5, v7, v6}, Lcom/geely/drivemem/ui/DailyStatsView;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1040
    :cond_9
    iget-object v5, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->energySource:Lcom/geely/drivemem/sensors/EnergySource;

    sget-object v6, Lcom/geely/drivemem/sensors/EnergySource;->ESTIMATED:Lcom/geely/drivemem/sensors/EnergySource;

    if-eq v5, v6, :cond_a

    iget-object v5, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->energySource:Lcom/geely/drivemem/sensors/EnergySource;

    sget-object v6, Lcom/geely/drivemem/sensors/EnergySource;->MIXED:Lcom/geely/drivemem/sensors/EnergySource;

    if-ne v5, v6, :cond_c

    .line 1041
    :cond_a
    iget-object v5, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->energySource:Lcom/geely/drivemem/sensors/EnergySource;

    invoke-static {v1, v5}, Lcom/geely/drivemem/ui/DailyStatsView;->withEnergySourceMark(Ljava/lang/CharSequence;Lcom/geely/drivemem/sensors/EnergySource;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz p2, :cond_b

    .line 1042
    iget-object p2, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->energySource:Lcom/geely/drivemem/sensors/EnergySource;

    invoke-static {v2, p2}, Lcom/geely/drivemem/ui/DailyStatsView;->withEnergySourceMark(Ljava/lang/CharSequence;Lcom/geely/drivemem/sensors/EnergySource;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_b
    if-eqz v3, :cond_c

    .line 1043
    iget-object p1, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->energySource:Lcom/geely/drivemem/sensors/EnergySource;

    invoke-static {v4, p1}, Lcom/geely/drivemem/ui/DailyStatsView;->withEnergySourceMark(Ljava/lang/CharSequence;Lcom/geely/drivemem/sensors/EnergySource;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1046
    :cond_c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1047
    const-string p2, "Net"

    invoke-direct {p0, v0, p2, v1}, Lcom/geely/drivemem/ui/DailyStatsView;->metricChip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    const-string p2, "Spent"

    invoke-direct {p0, v0, p2, v2}, Lcom/geely/drivemem/ui/DailyStatsView;->metricChip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1049
    const-string p2, "Regen"

    invoke-direct {p0, v0, p2, v4}, Lcom/geely/drivemem/ui/DailyStatsView;->metricChip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    iget-object p2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->consumptionCard:Landroid/widget/LinearLayout;

    invoke-static {v0, p2, p1, v8}, Lcom/geely/drivemem/ui/DailyStatsView;->distributeInPairs(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;I)V

    return-void
.end method

.method private renderHourlyChart(Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;)V
    .locals 18

    move-object/from16 v0, p0

    .line 887
    iget-object v1, v0, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyChart:Lcom/github/mikephil/charting/charts/BarChart;

    if-nez v1, :cond_0

    return-void

    .line 888
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 889
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    const-wide/16 v7, 0x0

    :goto_0
    const/16 v9, 0x18

    const/4 v10, 0x1

    if-ge v6, v9, :cond_2

    move-object/from16 v9, p1

    .line 892
    iget-object v11, v9, Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;->km:[[D

    aget-object v11, v11, v6

    .line 893
    array-length v12, v11

    move v13, v5

    :goto_1
    if-ge v13, v12, :cond_1

    aget-wide v14, v11, v13

    add-double/2addr v7, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 894
    :cond_1
    new-instance v12, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v13, v6

    aget-wide v14, v11, v5

    double-to-float v14, v14

    aget-wide v3, v11, v10

    double-to-float v3, v3

    const/4 v4, 0x2

    move/from16 v16, v6

    aget-wide v5, v11, v4

    double-to-float v5, v5

    const/4 v6, 0x3

    move/from16 v17, v5

    aget-wide v4, v11, v6

    double-to-float v4, v4

    const/4 v5, 0x4

    new-array v5, v5, [F

    const/4 v11, 0x0

    aput v14, v5, v11

    aput v3, v5, v10

    const/4 v3, 0x2

    aput v17, v5, v3

    aput v4, v5, v6

    invoke-direct {v12, v13, v5}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(F[F)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v16, 0x1

    const/4 v5, 0x0

    goto :goto_0

    .line 898
    :cond_2
    new-instance v3, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v4, ""

    invoke-direct {v3, v1, v4}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 899
    invoke-static {}, Lcom/geely/drivemem/ui/DailyStatsView;->hourlySpeedColors()[I

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    const/4 v1, 0x0

    .line 900
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/data/BarDataSet;->setDrawValues(Z)V

    .line 901
    new-instance v4, Lcom/github/mikephil/charting/data/BarData;

    new-array v5, v10, [Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    aput-object v3, v5, v1

    invoke-direct {v4, v5}, Lcom/github/mikephil/charting/data/BarData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V

    const v3, 0x3f3851ec    # 0.72f

    .line 902
    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/data/BarData;->setBarWidth(F)V

    .line 903
    iget-object v3, v0, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v3

    new-instance v5, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;

    invoke-direct {v5, v2}, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 904
    iget-object v2, v0, Lcom/geely/drivemem/ui/DailyStatsView;->hourlySummary:Landroid/widget/TextView;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%.1f"

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "km"

    const v6, 0x3f2e147b    # 0.68f

    const/4 v9, 0x0

    invoke-static {v3, v9, v5, v6}, Lcom/geely/drivemem/ui/DailyStatsView;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    iget-object v2, v0, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyEmptyState:Landroid/widget/TextView;

    const-wide/16 v5, 0x0

    cmpl-double v3, v7, v5

    if-lez v3, :cond_3

    const/16 v5, 0x8

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-lez v3, :cond_4

    .line 907
    iget-object v1, v0, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->resetAxisMaximum()V

    goto :goto_3

    .line 908
    :cond_4
    iget-object v1, v0, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 909
    :goto_3
    iget-object v1, v0, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 910
    iget-object v1, v0, Lcom/geely/drivemem/ui/DailyStatsView;->hourlyChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    return-void
.end method

.method private renderOverview(Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;)V
    .locals 4

    .line 869
    iget-object v0, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->displayDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->displayDate:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->navDateLabel:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->displayDate:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->displayDate:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->navDateLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    :goto_0
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->date:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->getSpeedBucketEfficiency(Landroid/content/Context;Ljava/lang/String;)[Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/geely/drivemem/ui/DailyStatsView;->renderConsumptionCard(Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;[Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;)V

    .line 877
    invoke-direct {p0, p1}, Lcom/geely/drivemem/ui/DailyStatsView;->renderBatteryCard(Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;)V

    .line 878
    invoke-direct {p0, p1}, Lcom/geely/drivemem/ui/DailyStatsView;->renderTimeCard(Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;)V

    .line 879
    invoke-direct {p0, p1}, Lcom/geely/drivemem/ui/DailyStatsView;->renderAltitudeCard(Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;)V

    .line 882
    invoke-direct {p0, p1}, Lcom/geely/drivemem/ui/DailyStatsView;->renderSessions(Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;)V

    .line 883
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->date:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->getHourlySpeedData(Landroid/content/Context;Ljava/lang/String;)Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/geely/drivemem/ui/DailyStatsView;->renderHourlyChart(Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;)V

    return-void
.end method

.method private renderPeriodCards(I)V
    .locals 7

    .line 702
    iput p1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodSelectedIdx:I

    .line 703
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodWindow:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;

    .line 705
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->navDateLabel:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;->periodLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->navPrevBtn:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 707
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->navPrevBtn:Landroid/widget/TextView;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3eb33333    # 0.35f

    if-lez p1, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 708
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->navNextBtn:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodWindow:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    if-ge p1, v6, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 709
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->navNextBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodWindow:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge p1, v2, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 714
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;->days:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 715
    iget-object v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;->days:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;

    iget-object v2, v2, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->date:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 716
    :cond_4
    iget-object v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;->totals:Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;

    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->getSpeedBucketEfficiency(Landroid/content/Context;Ljava/util/List;)[Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/geely/drivemem/ui/DailyStatsView;->renderConsumptionCard(Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;[Lcom/geely/drivemem/sensors/DailyStatsProvider$SpeedBucket;)V

    .line 717
    iget-object v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;->totals:Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;

    invoke-direct {p0, v1}, Lcom/geely/drivemem/ui/DailyStatsView;->renderBatteryCard(Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;)V

    .line 718
    iget-object v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;->totals:Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;

    invoke-direct {p0, v1}, Lcom/geely/drivemem/ui/DailyStatsView;->renderTimeCard(Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;)V

    .line 719
    iget-object v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;->totals:Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;

    invoke-direct {p0, v1}, Lcom/geely/drivemem/ui/DailyStatsView;->renderAltitudeCard(Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;)V

    .line 720
    invoke-direct {p0, v0}, Lcom/geely/drivemem/ui/DailyStatsView;->renderPeriodSessions(Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;)V

    .line 721
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->getHourlySpeedData(Landroid/content/Context;Ljava/util/List;)Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/geely/drivemem/ui/DailyStatsView;->renderHourlyChart(Lcom/geely/drivemem/sensors/DailyStatsProvider$HourlySpeedData;)V

    return-void
.end method

.method private renderPeriodSessions(Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;)V
    .locals 12

    .line 765
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 766
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->sessionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 768
    iget-object v1, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;->totals:Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;

    iget-object v1, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->sessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;

    .line 769
    invoke-virtual {v6}, Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;->isValet()Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 770
    :cond_0
    invoke-virtual {v6}, Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;->isTrip()Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 773
    :cond_2
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->sessionsSummary:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    if-ne v3, v7, :cond_3

    const-string v3, " trip"

    goto :goto_1

    :cond_3
    const-string v3, " trips"

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " \u00b7 "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne v5, v7, :cond_4

    .line 774
    const-string v5, " charge"

    goto :goto_2

    :cond_4
    const-string v5, " charges"

    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-lez v4, :cond_5

    .line 775
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " valet"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    const-string v4, ""

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 773
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    new-instance v1, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;->days:Ljava/util/List;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 778
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 780
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide v5, 0x1cf7c5800L

    sub-long/2addr v3, v5

    .line 782
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v2

    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;

    .line 783
    iget-wide v8, v5, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->distanceKm:D

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpl-double v6, v8, v10

    if-gtz v6, :cond_7

    iget v6, v5, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->chargeCount:I

    if-lez v6, :cond_6

    .line 787
    :cond_7
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->sessionsContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v5}, Lcom/geely/drivemem/ui/DailyStatsView;->periodDayHeader(Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 789
    iget-object v1, v5, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->sessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v6, 0xa

    if-eqz v1, :cond_9

    .line 790
    iget-object v1, v5, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->date:Ljava/lang/String;

    invoke-static {v1}, Lcom/geely/drivemem/ui/DailyStatsView;->parseDayMs(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_8

    cmp-long v1, v8, v3

    if-gez v1, :cond_8

    .line 792
    const-string v1, "Details unavailable \u2014 older than 90 days"

    goto :goto_5

    .line 793
    :cond_8
    const-string v1, "No session details for this day."

    .line 794
    :goto_5
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 795
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    sget v1, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 797
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x1e

    .line 798
    invoke-static {v0, v1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v1

    const/4 v8, 0x2

    invoke-static {v0, v8}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v0, v6}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v1, v8, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 799
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->sessionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_7

    .line 803
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->sessions:Ljava/util/List;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 804
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 805
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;

    .line 806
    invoke-direct {p0, v5}, Lcom/geely/drivemem/ui/DailyStatsView;->buildSessionCard(Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;)Landroid/view/View;

    move-result-object v5

    .line 807
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v9, 0x6

    .line 809
    invoke-static {v0, v9}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 810
    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 811
    iget-object v8, p0, Lcom/geely/drivemem/ui/DailyStatsView;->sessionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 813
    :cond_a
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->sessionsContainer:Landroid/widget/LinearLayout;

    invoke-static {v1, v0, v6}, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V

    :goto_7
    move v1, v7

    goto/16 :goto_4

    :cond_b
    if-nez v1, :cond_c

    .line 817
    const-string p1, "No trips or charges recorded in this period."

    invoke-static {v0, p1}, Lcom/geely/drivemem/util/Style;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v1, 0x14

    .line 818
    invoke-static {v0, v1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v0, v1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v2, v3, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 819
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->sessionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_c
    return-void
.end method

.method private renderSessions(Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;)V
    .locals 10

    .line 1414
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1415
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->sessionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1419
    iget-object v1, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->sessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;

    .line 1420
    invoke-virtual {v6}, Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;->isValet()Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1421
    :cond_0
    invoke-virtual {v6}, Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;->isTrip()Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1424
    :cond_2
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->sessionsSummary:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    if-ne v3, v7, :cond_3

    const-string v3, " trip"

    goto :goto_1

    :cond_3
    const-string v3, " trips"

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " \u00b7 "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne v5, v7, :cond_4

    .line 1425
    const-string v5, " charge"

    goto :goto_2

    :cond_4
    const-string v5, " charges"

    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-lez v4, :cond_5

    .line 1426
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " valet"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    const-string v4, ""

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1424
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1427
    iget-object v1, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->sessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1428
    const-string p1, "No trips or charges recorded on this date."

    invoke-static {v0, p1}, Lcom/geely/drivemem/util/Style;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v1, 0x14

    .line 1429
    invoke-static {v0, v1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v0, v1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v2, v3, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1430
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->sessionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    .line 1435
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->sessions:Ljava/util/List;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1436
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1442
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_9

    .line 1443
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;

    .line 1444
    invoke-direct {p0, p1}, Lcom/geely/drivemem/ui/DailyStatsView;->buildSessionCard(Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;)Landroid/view/View;

    move-result-object v3

    .line 1445
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1447
    iget-object v4, p0, Lcom/geely/drivemem/ui/DailyStatsView;->sessionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1451
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v7

    if-ge v2, v3, :cond_8

    .line 1452
    iget-object v3, p0, Lcom/geely/drivemem/ui/DailyStatsView;->sessionsContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x4

    invoke-static {v3, v0, v4}, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V

    .line 1453
    iget-wide v5, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;->startMs:J

    add-int/lit8 p1, v2, 0x1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;

    iget-wide v8, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;->endMs:J

    sub-long/2addr v5, v8

    .line 1454
    invoke-direct {p0, v5, v6}, Lcom/geely/drivemem/ui/DailyStatsView;->buildGapRow(J)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1455
    iget-object v3, p0, Lcom/geely/drivemem/ui/DailyStatsView;->sessionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1456
    :cond_7
    iget-object p1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->sessionsContainer:Landroid/widget/LinearLayout;

    invoke-static {p1, v0, v4}, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method private renderTimeCard(Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;)V
    .locals 9

    .line 1094
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1095
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->timeCard:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1098
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1099
    const-string v2, "Time & Speed"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41780000    # 15.5f

    .line 1101
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1102
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1103
    iget-object v2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->timeCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1104
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->timeCard:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V

    .line 1108
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v4, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->distanceKm:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "%.1f"

    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "km"

    const v4, 0x3ecccccd    # 0.4f

    invoke-static {v1, v3, v2, v4}, Lcom/geely/drivemem/ui/DailyStatsView;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1109
    iget-object v2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->timeCard:Landroid/widget/LinearLayout;

    const-string v4, "Total Distance"

    invoke-direct {p0, v0, v1, v4}, Lcom/geely/drivemem/ui/DailyStatsView;->createHeroView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1110
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->timeCard:Landroid/widget/LinearLayout;

    const/16 v2, 0xe

    invoke-static {v1, v0, v2}, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V

    .line 1112
    iget-wide v1, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->drivingMinutes:D

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    .line 1113
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-wide/16 v5, 0x3c

    div-long v7, v1, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    rem-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v7, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%dh %02dm"

    invoke-static {v4, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1114
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v4, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->avgSpeedKmh:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v4, "%.0f"

    invoke-static {v2, v4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "km/h"

    const v4, 0x3f2e147b    # 0.68f

    invoke-static {p1, v3, v2, v4}, Lcom/geely/drivemem/ui/DailyStatsView;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1117
    const-string v3, "Time"

    invoke-direct {p0, v0, v3, v1}, Lcom/geely/drivemem/ui/DailyStatsView;->metricChip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    const-string v1, "Avg Speed"

    invoke-direct {p0, v0, v1, p1}, Lcom/geely/drivemem/ui/DailyStatsView;->metricChip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1119
    iget-object p1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->timeCard:Landroid/widget/LinearLayout;

    const/16 v1, 0xa

    invoke-static {v0, p1, v2, v1}, Lcom/geely/drivemem/ui/DailyStatsView;->distributeInPairs(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;I)V

    return-void
.end method

.method private sectionCaption(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 1

    .line 962
    invoke-direct {p0, p1}, Lcom/geely/drivemem/ui/DailyStatsView;->sectionSummary(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    .line 963
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x4

    .line 964
    invoke-static {p1, p2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1, p2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method private sectionHeading(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)Landroid/view/View;
    .locals 5

    .line 948
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x10

    .line 949
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 950
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 951
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 952
    sget p2, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41800000    # 16.0f

    .line 953
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p2, 0x0

    const/4 v2, 0x1

    .line 954
    invoke-virtual {v1, p2, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 955
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {p2, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p2, 0xc

    .line 956
    invoke-static {p1, p2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p3, p1, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 957
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private sectionSummary(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 1

    .line 941
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 942
    sget p1, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41580000    # 13.5f

    .line 943
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-object v0
.end method

.method private selectIndex(IZ)V
    .locals 7

    if-ltz p1, :cond_9

    .line 539
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->days:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto/16 :goto_6

    .line 540
    :cond_0
    iput p1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->selectedIdx:I

    .line 541
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->days:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayItem;

    .line 544
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->navPrevBtn:Landroid/widget/TextView;

    iget v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->selectedIdx:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 545
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->navPrevBtn:Landroid/widget/TextView;

    iget v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->selectedIdx:I

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3eb33333    # 0.35f

    if-lez v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v5

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 546
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->navNextBtn:Landroid/widget/TextView;

    iget v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->selectedIdx:I

    iget-object v6, p0, Lcom/geely/drivemem/ui/DailyStatsView;->days:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    if-ge v1, v6, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 547
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->navNextBtn:Landroid/widget/TextView;

    iget v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->selectedIdx:I

    iget-object v6, p0, Lcom/geely/drivemem/ui/DailyStatsView;->days:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    if-ge v1, v6, :cond_4

    goto :goto_3

    :cond_4
    move v4, v5

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 549
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 550
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarDataSet;

    if-eqz v0, :cond_8

    .line 552
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 553
    :goto_4
    iget-object v4, p0, Lcom/geely/drivemem/ui/DailyStatsView;->days:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 554
    iget v4, p0, Lcom/geely/drivemem/ui/DailyStatsView;->selectedIdx:I

    if-ne v2, v4, :cond_5

    sget v4, Lcom/geely/drivemem/util/Style;->ACCENT:I

    goto :goto_5

    :cond_5
    invoke-direct {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->tileBarColor()I

    move-result v4

    :goto_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 556
    :cond_6
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors(Ljava/util/List;)V

    if-eqz p2, :cond_7

    .line 558
    iget-object p2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    iget v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->selectedIdx:I

    int-to-float v0, v0

    invoke-virtual {p2, v0, v3}, Lcom/github/mikephil/charting/charts/BarChart;->highlightValue(FI)V

    .line 560
    :cond_7
    iget-object p2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 565
    :cond_8
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p1, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayItem;->date:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->getDayOverview(Landroid/content/Context;Ljava/lang/String;)Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;

    move-result-object p1

    .line 566
    invoke-direct {p0, p1}, Lcom/geely/drivemem/ui/DailyStatsView;->renderOverview(Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;)V

    :cond_9
    :goto_6
    return-void
.end method

.method private selectPeriodIndex(IZ)V
    .locals 5

    if-ltz p1, :cond_5

    .line 682
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodWindow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 684
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarDataSet;

    if-eqz v0, :cond_4

    .line 686
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 687
    :goto_0
    iget-object v4, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodWindow:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    if-ne v3, p1, :cond_1

    .line 688
    sget v4, Lcom/geely/drivemem/util/Style;->ACCENT:I

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->tileBarColor()I

    move-result v4

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 690
    :cond_2
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors(Ljava/util/List;)V

    if-eqz p2, :cond_3

    .line 691
    iget-object p2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    int-to-float v0, p1

    invoke-virtual {p2, v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->highlightValue(FI)V

    .line 692
    :cond_3
    iget-object p2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 695
    :cond_4
    invoke-direct {p0, p1}, Lcom/geely/drivemem/ui/DailyStatsView;->renderPeriodCards(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private sessionDivider(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 1498
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1499
    invoke-static {}, Lcom/geely/drivemem/util/Style;->cardFillColor()I

    move-result v1

    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    const v3, 0x3e3851ec    # 0.18f

    invoke-static {v1, v2, v3}, Lcom/geely/drivemem/util/Style;->blend(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1500
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x1

    .line 1501
    invoke-static {p1, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p1

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1500
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static sessionTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .line 1775
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1776
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "  \u00b7  "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x3f6b851f    # 0.92f

    invoke-static {v0, p0, p1}, Lcom/geely/drivemem/ui/DailyStatsView;->appendUnit(Landroid/text/SpannableStringBuilder;Ljava/lang/String;F)V

    return-object v0
.end method

.method private setNavIcon(Landroid/widget/TextView;IZ)V
    .locals 3

    .line 1360
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1361
    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/16 v1, 0x12

    .line 1362
    invoke-static {v0, v1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    .line 1363
    invoke-virtual {p2, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1364
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p3, :cond_1

    move-object p2, v1

    .line 1365
    :cond_1
    invoke-virtual {p1, v2, v1, p2, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/16 p2, 0x8

    .line 1366
    invoke-static {v0, p2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    return-void
.end method

.method private setPeriod(Lcom/geely/drivemem/ui/DailyStatsView$Period;)V
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->period:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    if-ne v0, p1, :cond_0

    return-void

    .line 630
    :cond_0
    iput-object p1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->period:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    .line 631
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodDropdownLabel:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/geely/drivemem/ui/DailyStatsView;->periodDisplayName(Lcom/geely/drivemem/ui/DailyStatsView$Period;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    sget-object v0, Lcom/geely/drivemem/ui/DailyStatsView$Period;->DAY:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    if-ne p1, v0, :cond_1

    .line 634
    invoke-direct {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->updateChartData()V

    .line 635
    iget p1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->selectedIdx:I

    if-ltz p1, :cond_4

    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->days:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    iget p1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->selectedIdx:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/geely/drivemem/ui/DailyStatsView;->selectIndex(IZ)V

    goto :goto_1

    .line 637
    :cond_1
    iget-object p1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodAnchorDate:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 638
    iget p1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->selectedIdx:I

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->days:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 639
    iget-object p1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->days:Ljava/util/List;

    iget v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->selectedIdx:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayItem;

    iget-object p1, p1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayItem;->date:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->todayDateStr()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodAnchorDate:Ljava/lang/String;

    :cond_3
    const/4 p1, -0x1

    .line 641
    iput p1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->periodSelectedIdx:I

    .line 642
    invoke-direct {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->loadPeriod()V

    :cond_4
    :goto_1
    return-void
.end method

.method private showPeriodMenu(Landroid/view/View;)V
    .locals 13

    .line 597
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 598
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 599
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 600
    sget v3, Lcom/geely/drivemem/util/Style;->CARD:I

    invoke-static {v3, v0}, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x6

    .line 601
    invoke-static {v0, v3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v3

    .line 602
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 604
    new-instance v3, Landroid/widget/PopupWindow;

    const/16 v4, 0xc8

    .line 605
    invoke-static {v0, v4}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, -0x2

    invoke-direct {v3, v1, v4, v5, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 606
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const/16 v4, 0x8

    .line 607
    invoke-static {v0, v4}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 609
    invoke-static {}, Lcom/geely/drivemem/ui/DailyStatsView$Period;->values()[Lcom/geely/drivemem/ui/DailyStatsView$Period;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_2

    aget-object v9, v5, v8

    .line 610
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 611
    invoke-static {v9}, Lcom/geely/drivemem/ui/DailyStatsView;->periodDisplayName(Lcom/geely/drivemem/ui/DailyStatsView$Period;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v11, 0x41780000    # 15.5f

    .line 612
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 613
    iget-object v11, p0, Lcom/geely/drivemem/ui/DailyStatsView;->period:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    if-ne v9, v11, :cond_0

    move v11, v2

    goto :goto_1

    :cond_0
    move v11, v7

    :goto_1
    const/4 v12, 0x0

    .line 614
    invoke-virtual {v10, v12, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    if-eqz v11, :cond_1

    .line 615
    sget v11, Lcom/geely/drivemem/util/Style;->ACCENT:I

    goto :goto_2

    :cond_1
    sget v11, Lcom/geely/drivemem/util/Style;->TEXT:I

    :goto_2
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v11, 0xe

    .line 616
    invoke-static {v0, v11}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v11

    .line 617
    invoke-virtual {v10, v11, v11, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 618
    new-instance v11, Lcom/geely/drivemem/ui/DailyStatsView$$ExternalSyntheticLambda1;

    invoke-direct {v11, p0, v3, v9}, Lcom/geely/drivemem/ui/DailyStatsView$$ExternalSyntheticLambda1;-><init>(Lcom/geely/drivemem/ui/DailyStatsView;Landroid/widget/PopupWindow;Lcom/geely/drivemem/ui/DailyStatsView$Period;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 625
    :cond_2
    invoke-static {v0, v4}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v3, p1, v7, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method private speedLegendItem(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
    .locals 4

    .line 922
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x10

    .line 923
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v1, 0x12

    .line 924
    invoke-static {p1, v1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 925
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 926
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 927
    invoke-virtual {v2, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 p3, 0x3

    .line 928
    invoke-static {p1, p3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v2, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 929
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 930
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p1, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {p3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x6

    .line 931
    invoke-static {p1, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v2

    iput v2, p3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 932
    invoke-virtual {v0, v1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 933
    invoke-direct {p0, p1}, Lcom/geely/drivemem/ui/DailyStatsView;->sectionSummary(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object p1

    .line 934
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 935
    sget p2, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 936
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private tileBarColor()I
    .locals 3

    .line 535
    sget v0, Lcom/geely/drivemem/util/Style;->CARD_HI:I

    sget v1, Lcom/geely/drivemem/util/Style;->ACCENT:I

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-static {v0, v1, v2}, Lcom/geely/drivemem/util/Style;->blend(IIF)I

    move-result v0

    return v0
.end method

.method private updateChartData()V
    .locals 5

    .line 466
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->days:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 467
    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->days:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [D

    const/4 v2, 0x0

    .line 468
    :goto_0
    iget-object v3, p0, Lcom/geely/drivemem/ui/DailyStatsView;->days:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 469
    iget-object v3, p0, Lcom/geely/drivemem/ui/DailyStatsView;->days:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayItem;

    iget-object v3, v3, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayItem;->shortLabel:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 470
    iget-object v3, p0, Lcom/geely/drivemem/ui/DailyStatsView;->days:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayItem;

    iget-wide v3, v3, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayItem;->km:D

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    :cond_0
    iget v2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->selectedIdx:I

    invoke-direct {p0, v0, v1, v2}, Lcom/geely/drivemem/ui/DailyStatsView;->renderBarChart([Ljava/lang/String;[DI)V

    return-void
.end method

.method private static valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;
    .locals 0

    .line 1400
    invoke-static {p0, p1, p2, p3}, Lcom/geely/drivemem/util/Style;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static weekChartLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 739
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 740
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x3

    .line 741
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method static withEnergySourceMark(Ljava/lang/CharSequence;Lcom/geely/drivemem/sensors/EnergySource;)Ljava/lang/CharSequence;
    .locals 1

    .line 730
    sget-object v0, Lcom/geely/drivemem/sensors/EnergySource;->ESTIMATED:Lcom/geely/drivemem/sensors/EnergySource;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/geely/drivemem/sensors/EnergySource;->MIXED:Lcom/geely/drivemem/sensors/EnergySource;

    if-eq p1, v0, :cond_0

    return-object p0

    .line 731
    :cond_0
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 p0, 0x20

    .line 732
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 733
    const-string p0, "~"

    const v0, 0x3f59999a    # 0.85f

    invoke-static {p1, p0, v0}, Lcom/geely/drivemem/util/Style;->appendUnit(Landroid/text/SpannableStringBuilder;Ljava/lang/String;F)V

    return-object p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 92
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 93
    const-string v0, "telemetry.tick"

    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->tickListener:Lcom/geely/drivemem/car/EntityBus$Listener;

    invoke-static {v0, v1}, Lcom/geely/drivemem/car/EntityBus;->subscribe(Ljava/lang/String;Lcom/geely/drivemem/car/EntityBus$Listener;)V

    .line 94
    const-string v0, "charge.cost_updated"

    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->tickListener:Lcom/geely/drivemem/car/EntityBus$Listener;

    invoke-static {v0, v1}, Lcom/geely/drivemem/car/EntityBus;->subscribe(Ljava/lang/String;Lcom/geely/drivemem/car/EntityBus$Listener;)V

    .line 95
    const-string v0, "charge.completed"

    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->tickListener:Lcom/geely/drivemem/car/EntityBus$Listener;

    invoke-static {v0, v1}, Lcom/geely/drivemem/car/EntityBus;->subscribe(Ljava/lang/String;Lcom/geely/drivemem/car/EntityBus$Listener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 100
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 101
    const-string v0, "telemetry.tick"

    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->tickListener:Lcom/geely/drivemem/car/EntityBus$Listener;

    invoke-static {v0, v1}, Lcom/geely/drivemem/car/EntityBus;->unsubscribe(Ljava/lang/String;Lcom/geely/drivemem/car/EntityBus$Listener;)V

    .line 102
    const-string v0, "charge.cost_updated"

    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->tickListener:Lcom/geely/drivemem/car/EntityBus$Listener;

    invoke-static {v0, v1}, Lcom/geely/drivemem/car/EntityBus;->unsubscribe(Ljava/lang/String;Lcom/geely/drivemem/car/EntityBus$Listener;)V

    .line 103
    const-string v0, "charge.completed"

    iget-object v1, p0, Lcom/geely/drivemem/ui/DailyStatsView;->tickListener:Lcom/geely/drivemem/car/EntityBus$Listener;

    invoke-static {v0, v1}, Lcom/geely/drivemem/car/EntityBus;->unsubscribe(Ljava/lang/String;Lcom/geely/drivemem/car/EntityBus$Listener;)V

    return-void
.end method

.method public refresh()V
    .locals 3

    .line 402
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->getRecentDays(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->days:Ljava/util/List;

    .line 403
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 406
    :cond_0
    iget v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->selectedIdx:I

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/geely/drivemem/ui/DailyStatsView;->days:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->days:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->selectedIdx:I

    .line 410
    :cond_2
    invoke-direct {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->updateChartData()V

    .line 411
    iget v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->selectedIdx:I

    invoke-direct {p0, v0, v1}, Lcom/geely/drivemem/ui/DailyStatsView;->selectIndex(IZ)V

    .line 416
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView;->period:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    sget-object v1, Lcom/geely/drivemem/ui/DailyStatsView$Period;->DAY:Lcom/geely/drivemem/ui/DailyStatsView$Period;

    if-eq v0, v1, :cond_3

    invoke-direct {p0}, Lcom/geely/drivemem/ui/DailyStatsView;->loadPeriod()V

    :cond_3
    return-void
.end method
