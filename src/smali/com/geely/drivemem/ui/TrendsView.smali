.class public Lcom/geely/drivemem/ui/TrendsView;
.super Landroid/widget/LinearLayout;
.source "TrendsView.java"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/geely/drivemem/ui/TrendsView$Series;
  }
.end annotation

.field private final static DAY:Ljava/text/SimpleDateFormat;

.field private final static P_DAY:I = 0

.field private final static P_MONTH:I = 2

.field private final static P_WEEK:I = 1

.field private final costBars:Lcom/geely/drivemem/ui/BarsView;

.field private final costHead:Landroid/widget/TextView;

.field private final costSub:Landroid/widget/TextView;

.field private final distBars:Lcom/geely/drivemem/ui/BarsView;

.field private final distHead:Landroid/widget/TextView;

.field private final distSub:Landroid/widget/TextView;

.field private final energyBars:Lcom/geely/drivemem/ui/BarsView;

.field private final energyHead:Landroid/widget/TextView;

.field private final energySub:Landroid/widget/TextView;

.field private final fullBtns:Landroid/widget/LinearLayout;

.field private final fullHead:Landroid/widget/TextView;

.field private final fullSub:Landroid/widget/TextView;

.field private final note:Landroid/widget/TextView;

.field private period:I

.field private final periodRow:Landroid/widget/LinearLayout;

.field private volatile token:I

.field private final ui:Landroid/os/Handler;

.method static constructor <clinit>()V
  .registers 3
  .prologue
  .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;
    const-string v1, "yyyy-MM-dd"
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-direct { v0, v1, v2 }, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    sput-object v0, Lcom/geely/drivemem/ui/TrendsView;->DAY:Ljava/text/SimpleDateFormat;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 11
  .prologue
  .line 44
    invoke-direct { p0, p1, p2 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .line 30
    const/4 v0, 2
    iput v0, p0, Lcom/geely/drivemem/ui/TrendsView;->period:I
  .line 31
    new-instance v0, Landroid/os/Handler;
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->ui:Landroid/os/Handler;
  .line 45
    const/4 v0, 1
    invoke-virtual { p0, v0 }, Lcom/geely/drivemem/ui/TrendsView;->setOrientation(I)V
  .line 47
    const-string v0, "TRENDS"
    const/high16 v1, 0x41880000
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    const/4 v3, 1
    invoke-static { p1, v0, v1, v2, v3 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v0
  .line 48
    const v1, 1025758986
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setLetterSpacing(F)V
  .line 49
    invoke-virtual { p0, v0 }, Lcom/geely/drivemem/ui/TrendsView;->addView(Landroid/view/View;)V
  .line 50
    new-instance v0, Landroid/widget/LinearLayout;
    invoke-direct { v0, p1 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->periodRow:Landroid/widget/LinearLayout;
  .line 51
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->periodRow:Landroid/widget/LinearLayout;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 52
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->periodRow:Landroid/widget/LinearLayout;
    const/16 v1, 16
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setGravity(I)V
  .line 53
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, -1
    const/4 v2, -2
    invoke-direct { v0, v1, v2 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 54
    const/16 v1, 14
    invoke-static { p1, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
  .line 55
    const/16 v1, 16
    invoke-static { p1, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
  .line 56
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView;->periodRow:Landroid/widget/LinearLayout;
    invoke-virtual { p0, v1, v0 }, Lcom/geely/drivemem/ui/TrendsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 58
    new-instance v7, Landroid/widget/LinearLayout;
    invoke-direct { v7, p1 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 59
    const/4 v0, 0
    invoke-virtual { v7, v0 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 60
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, -1
    const/4 v2, -2
    invoke-direct { v0, v1, v2 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 61
    invoke-virtual { p0, v7, v0 }, Lcom/geely/drivemem/ui/TrendsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 63
    const-string v0, "\u2014"
    const/high16 v1, 0x42080000
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT:I
    const/4 v3, 1
    invoke-static { p1, v0, v1, v2, v3 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v0
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->energyHead:Landroid/widget/TextView;
  .line 64
    const-string v0, ""
    const/high16 v1, 0x41800000
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    const/4 v3, 0
    invoke-static { p1, v0, v1, v2, v3 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v0
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->energySub:Landroid/widget/TextView;
  .line 65
    new-instance v0, Lcom/geely/drivemem/ui/BarsView;
    new-instance v1, Lcom/geely/drivemem/ui/TrendsView$1;
    invoke-direct { v1, p0 }, Lcom/geely/drivemem/ui/TrendsView$1;-><init>(Lcom/geely/drivemem/ui/TrendsView;)V
    const-string v2, "No data yet"
    invoke-direct { v0, p1, v1, v2 }, Lcom/geely/drivemem/ui/BarsView;-><init>(Landroid/content/Context;Lcom/geely/drivemem/ui/BarsView$Formatter;Ljava/lang/String;)V
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->energyBars:Lcom/geely/drivemem/ui/BarsView;
  .line 68
    const-string v2, "Electricity used"
    iget-object v3, p0, Lcom/geely/drivemem/ui/TrendsView;->energyHead:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/geely/drivemem/ui/TrendsView;->energySub:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/geely/drivemem/ui/TrendsView;->energyBars:Lcom/geely/drivemem/ui/BarsView;
    const/4 v6, 1
    move-object v0, p0
    move-object v1, p1
    invoke-direct/range { v0 .. v6 }, Lcom/geely/drivemem/ui/TrendsView;->chartCard(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/geely/drivemem/ui/BarsView;Z)Landroid/widget/LinearLayout;
    move-result-object v0
    invoke-virtual { v7, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 70
    const-string v0, "\u2014"
    const/high16 v1, 0x42080000
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT:I
    const/4 v3, 1
    invoke-static { p1, v0, v1, v2, v3 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v0
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->distHead:Landroid/widget/TextView;
  .line 71
    const-string v0, ""
    const/high16 v1, 0x41800000
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    const/4 v3, 0
    invoke-static { p1, v0, v1, v2, v3 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v0
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->distSub:Landroid/widget/TextView;
  .line 72
    new-instance v0, Lcom/geely/drivemem/ui/BarsView;
    new-instance v1, Lcom/geely/drivemem/ui/TrendsView$2;
    invoke-direct { v1, p0 }, Lcom/geely/drivemem/ui/TrendsView$2;-><init>(Lcom/geely/drivemem/ui/TrendsView;)V
    const-string v2, "No data yet"
    invoke-direct { v0, p1, v1, v2 }, Lcom/geely/drivemem/ui/BarsView;-><init>(Landroid/content/Context;Lcom/geely/drivemem/ui/BarsView$Formatter;Ljava/lang/String;)V
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->distBars:Lcom/geely/drivemem/ui/BarsView;
  .line 75
    const-string v2, "Distance driven"
    iget-object v3, p0, Lcom/geely/drivemem/ui/TrendsView;->distHead:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/geely/drivemem/ui/TrendsView;->distSub:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/geely/drivemem/ui/TrendsView;->distBars:Lcom/geely/drivemem/ui/BarsView;
    const/4 v6, 1
    move-object v0, p0
    move-object v1, p1
    invoke-direct/range { v0 .. v6 }, Lcom/geely/drivemem/ui/TrendsView;->chartCard(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/geely/drivemem/ui/BarsView;Z)Landroid/widget/LinearLayout;
    move-result-object v0
    invoke-virtual { v7, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 77
    const-string v0, "\u2014"
    const/high16 v1, 0x42080000
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT:I
    const/4 v3, 1
    invoke-static { p1, v0, v1, v2, v3 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v0
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->costHead:Landroid/widget/TextView;
  .line 78
    const-string v0, ""
    const/high16 v1, 0x41800000
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    const/4 v3, 0
    invoke-static { p1, v0, v1, v2, v3 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v0
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->costSub:Landroid/widget/TextView;
  .line 79
    new-instance v0, Lcom/geely/drivemem/ui/BarsView;
    new-instance v1, Lcom/geely/drivemem/ui/TrendsView$3;
    invoke-direct { v1, p0 }, Lcom/geely/drivemem/ui/TrendsView$3;-><init>(Lcom/geely/drivemem/ui/TrendsView;)V
    const-string v2, "No costs entered yet"
    invoke-direct { v0, p1, v1, v2 }, Lcom/geely/drivemem/ui/BarsView;-><init>(Landroid/content/Context;Lcom/geely/drivemem/ui/BarsView$Formatter;Ljava/lang/String;)V
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->costBars:Lcom/geely/drivemem/ui/BarsView;
  .line 82
    const-string v2, "Charging cost"
    iget-object v3, p0, Lcom/geely/drivemem/ui/TrendsView;->costHead:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/geely/drivemem/ui/TrendsView;->costSub:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/geely/drivemem/ui/TrendsView;->costBars:Lcom/geely/drivemem/ui/BarsView;
    const/4 v6, 0
    move-object v0, p0
    move-object v1, p1
    invoke-direct/range { v0 .. v6 }, Lcom/geely/drivemem/ui/TrendsView;->chartCard(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/geely/drivemem/ui/BarsView;Z)Landroid/widget/LinearLayout;
    move-result-object v0
    invoke-virtual { v7, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 84
    const-string v0, ""
    const/high16 v1, 0x41700000
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    const/4 v3, 0
    invoke-static { p1, v0, v1, v2, v3 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v0
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->note:Landroid/widget/TextView;
  .line 85
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->note:Landroid/widget/TextView;
    const/4 v1, 4
    invoke-static { p1, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
    const/16 v2, 10
    invoke-static { p1, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
    const/4 v3, 0
    const/4 v4, 4
    invoke-static { p1, v4 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v4
    invoke-virtual { v0, v1, v2, v3, v4 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 86
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->note:Landroid/widget/TextView;
    invoke-virtual { p0, v0 }, Lcom/geely/drivemem/ui/TrendsView;->addView(Landroid/view/View;)V
  .line 89
    new-instance v0, Landroid/widget/LinearLayout;
    invoke-direct { v0, p1 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 90
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 91
    const/16 v1, 18
    invoke-static { p1, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
  .line 92
    invoke-virtual { v0, v1, v1, v1, v1 }, Landroid/widget/LinearLayout;->setPadding(IIII)V
  .line 93
    invoke-static { }, Lcom/geely/drivemem/util/Style;->cardFillColor()I
    move-result v1
    invoke-static { v1, p1 }, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 94
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, -1
    const/4 v3, -2
    invoke-direct { v1, v2, v3 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 95
    const/16 v2, 12
    invoke-static { p1, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
  .line 96
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 97
    const-string v1, "Full charge (LFP battery)"
    const/high16 v2, 0x41780000
    sget v3, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    const/4 v4, 1
    invoke-static { p1, v1, v2, v3, v4 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 98
    const-string v1, "\u2026"
    const/high16 v2, 0x41e00000
    sget v3, Lcom/geely/drivemem/util/Style;->TEXT:I
    const/4 v4, 1
    invoke-static { p1, v1, v2, v3, v4 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v1
    iput-object v1, p0, Lcom/geely/drivemem/ui/TrendsView;->fullHead:Landroid/widget/TextView;
  .line 99
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView;->fullHead:Landroid/widget/TextView;
    const/4 v2, 0
    const/4 v3, 6
    invoke-static { p1, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
    const/4 v4, 0
    const/4 v5, 0
    invoke-virtual { v1, v2, v3, v4, v5 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 100
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView;->fullHead:Landroid/widget/TextView;
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 101
    const-string v1, ""
    const/high16 v2, 0x41880000
    sget v3, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    const/4 v4, 0
    invoke-static { p1, v1, v2, v3, v4 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v1
    iput-object v1, p0, Lcom/geely/drivemem/ui/TrendsView;->fullSub:Landroid/widget/TextView;
  .line 102
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView;->fullSub:Landroid/widget/TextView;
    const/4 v2, 0
    const/4 v3, 4
    invoke-static { p1, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
    const/4 v4, 0
    const/16 v5, 12
    invoke-static { p1, v5 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v5
    invoke-virtual { v1, v2, v3, v4, v5 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 103
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView;->fullSub:Landroid/widget/TextView;
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 104
    new-instance v1, Landroid/widget/LinearLayout;
    invoke-direct { v1, p1 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    iput-object v1, p0, Lcom/geely/drivemem/ui/TrendsView;->fullBtns:Landroid/widget/LinearLayout;
  .line 105
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView;->fullBtns:Landroid/widget/LinearLayout;
    const/4 v2, 0
    invoke-virtual { v1, v2 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 106
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView;->fullBtns:Landroid/widget/LinearLayout;
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 107
    invoke-virtual { p0, v0 }, Lcom/geely/drivemem/ui/TrendsView;->addView(Landroid/view/View;)V
  .line 109
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/TrendsView;->buildPeriodRow()V
  .line 110
    return-void
.end method

.method static synthetic access$000(D)Ljava/lang/String;
  .registers 4
  .prologue
  .line 28
    invoke-static { p0, p1 }, Lcom/geely/drivemem/ui/TrendsView;->compactVnd(D)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method static synthetic access$100(Lcom/geely/drivemem/ui/TrendsView;)I
  .registers 2
  .prologue
  .line 28
    iget v0, p0, Lcom/geely/drivemem/ui/TrendsView;->period:I
    return v0
.end method

.method static synthetic access$102(Lcom/geely/drivemem/ui/TrendsView;I)I
  .registers 2
  .prologue
  .line 28
    iput p1, p0, Lcom/geely/drivemem/ui/TrendsView;->period:I
    return p1
.end method

.method static synthetic access$200(Lcom/geely/drivemem/ui/TrendsView;)V
  .registers 1
  .prologue
  .line 28
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/TrendsView;->buildPeriodRow()V
    return-void
.end method

.method static synthetic access$400(Lcom/geely/drivemem/ui/TrendsView;Landroid/content/Context;I)Lcom/geely/drivemem/ui/TrendsView$Series;
  .registers 4
  .prologue
  .line 28
    invoke-direct { p0, p1, p2 }, Lcom/geely/drivemem/ui/TrendsView;->load(Landroid/content/Context;I)Lcom/geely/drivemem/ui/TrendsView$Series;
    move-result-object v0
    return-object v0
.end method

.method static synthetic access$500(Lcom/geely/drivemem/ui/TrendsView;)I
  .registers 2
  .prologue
  .line 28
    iget v0, p0, Lcom/geely/drivemem/ui/TrendsView;->token:I
    return v0
.end method

.method static synthetic access$600(Lcom/geely/drivemem/ui/TrendsView;Lcom/geely/drivemem/ui/TrendsView$Series;I)V
  .registers 3
  .prologue
  .line 28
    invoke-direct { p0, p1, p2 }, Lcom/geely/drivemem/ui/TrendsView;->show(Lcom/geely/drivemem/ui/TrendsView$Series;I)V
    return-void
.end method

.method static synthetic access$700(Lcom/geely/drivemem/ui/TrendsView;J)V
  .registers 4
  .prologue
  .line 28
    invoke-direct { p0, p1, p2 }, Lcom/geely/drivemem/ui/TrendsView;->showFull(J)V
    return-void
.end method

.method static synthetic access$800(Lcom/geely/drivemem/ui/TrendsView;)Landroid/os/Handler;
  .registers 2
  .prologue
  .line 28
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->ui:Landroid/os/Handler;
    return-object v0
.end method

.method static synthetic access$900(Lcom/geely/drivemem/ui/TrendsView;J)V
  .registers 4
  .prologue
  .line 28
    invoke-direct { p0, p1, p2 }, Lcom/geely/drivemem/ui/TrendsView;->pickDate(J)V
    return-void
.end method

.method private static add(Lcom/geely/drivemem/ui/TrendsView$Series;Ljava/lang/String;Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;)V
  .registers 9
  .prologue
    const-wide/16 v4, 0
  .line 211
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$Series;->labels:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 212
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$Series;->energy:Ljava/util/List;
    iget-wide v2, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->netKwh:D
    invoke-static { v4, v5, v2, v3 }, Ljava/lang/Math;->max(DD)D
    move-result-wide v2
    invoke-static { v2, v3 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v1
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 213
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$Series;->dist:Ljava/util/List;
    iget-wide v2, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->distanceKm:D
    invoke-static { v2, v3 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v1
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 214
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$Series;->cost:Ljava/util/List;
    iget-wide v2, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->chargeCost:D
    invoke-static { v2, v3 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v1
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 215
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$Series;->eff:Ljava/util/List;
    iget-wide v2, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->efficiencyKwh100km:D
    invoke-static { v2, v3 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v1
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 216
    iget-wide v0, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->netKwh:D
    cmpl-double v0, v0, v4
    if-eqz v0, :L0
    iget-object v0, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->energySource:Lcom/geely/drivemem/sensors/EnergySource;
    if-eqz v0, :L0
    iget-object v0, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->energySource:Lcom/geely/drivemem/sensors/EnergySource;
    sget-object v1, Lcom/geely/drivemem/sensors/EnergySource;->MEASURED:Lcom/geely/drivemem/sensors/EnergySource;
    if-eq v0, v1, :L0
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/geely/drivemem/ui/TrendsView$Series;->estimated:Z
  :L0
  .line 217
    return-void
.end method

.method private static anyPositive([D)Z
  .registers 9
  .prologue
    const/4 v0, 0
  .line 271
    array-length v2, p0
    move v1, v0
  :L0
    if-ge v1, v2, :L1
    aget-wide v4, p0, v1
    const-wide/16 v6, 0
    cmpl-double v3, v4, v6
    if-lez v3, :L2
    const/4 v0, 1
  :L1
    return v0
  :L2
    add-int/lit8 v1, v1, 1
    goto :L0
.end method

.method private static arr(Ljava/util/List;)[D
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List",
      "<",
      "Ljava/lang/Double;",
      ">;)[D"
    }
  .end annotation
  .registers 7
  .prologue
  .line 220
    invoke-interface { p0 }, Ljava/util/List;->size()I
    move-result v0
    new-array v2, v0, [D
  .line 221
    const/4 v0, 0
    move v1, v0
  :L0
    array-length v0, v2
    if-ge v1, v0, :L1
    invoke-interface { p0, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Double;
    invoke-virtual { v0 }, Ljava/lang/Double;->doubleValue()D
    move-result-wide v4
    aput-wide v4, v2, v1
    add-int/lit8 v0, v1, 1
    move v1, v0
    goto :L0
  :L1
  .line 222
    return-object v2
.end method

.method private buildPeriodRow()V
  .registers 10
  .prologue
    const/4 v8, 3
    const/4 v1, 1
    const/4 v2, 0
  .line 150
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/TrendsView;->getContext()Landroid/content/Context;
    move-result-object v4
  .line 151
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->periodRow:Landroid/widget/LinearLayout;
    invoke-virtual { v0 }, Landroid/widget/LinearLayout;->removeAllViews()V
  .line 152
    new-array v5, v8, [Ljava/lang/String;
    const-string v0, "Day"
    aput-object v0, v5, v2
    const-string v0, "Week"
    aput-object v0, v5, v1
    const/4 v0, 2
    const-string v3, "Month"
    aput-object v3, v5, v0
    move v3, v2
  :L0
  .line 153
    if-ge v3, v8, :L3
  .line 155
    aget-object v6, v5, v3
    iget v0, p0, Lcom/geely/drivemem/ui/TrendsView;->period:I
    if-ne v0, v3, :L2
    move v0, v1
  :L1
    new-instance v7, Lcom/geely/drivemem/ui/TrendsView$4;
    invoke-direct { v7, p0, v3 }, Lcom/geely/drivemem/ui/TrendsView$4;-><init>(Lcom/geely/drivemem/ui/TrendsView;I)V
    invoke-static { v4, v6, v0, v7 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v0
  .line 163
    iget-object v6, p0, Lcom/geely/drivemem/ui/TrendsView;->periodRow:Landroid/widget/LinearLayout;
    invoke-virtual { v6, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 164
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->periodRow:Landroid/widget/LinearLayout;
    const/16 v6, 10
    invoke-static { v0, v4, v6 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 153
    add-int/lit8 v0, v3, 1
    move v3, v0
    goto :L0
  :L2
    move v0, v2
  .line 155
    goto :L1
  :L3
  .line 166
    iget v0, p0, Lcom/geely/drivemem/ui/TrendsView;->period:I
    if-nez v0, :L5
    const-string v0, "last 14 days"
  :L4
    const/high16 v1, 0x41880000
    sget v3, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-static { v4, v0, v1, v3, v2 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v0
  .line 167
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView;->periodRow:Landroid/widget/LinearLayout;
    invoke-virtual { v1, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 168
    return-void
  :L5
  .line 166
    iget v0, p0, Lcom/geely/drivemem/ui/TrendsView;->period:I
    if-ne v0, v1, :L6
    const-string v0, "last 8 weeks"
    goto :L4
  :L6
    const-string v0, "last 6 months"
    goto :L4
.end method

.method private chartCard(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/geely/drivemem/ui/BarsView;Z)Landroid/widget/LinearLayout;
  .registers 13
  .prologue
    const/4 v5, 1
    const/4 v4, 0
  .line 122
    new-instance v0, Landroid/widget/LinearLayout;
    invoke-direct { v0, p1 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 123
    invoke-virtual { v0, v5 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 124
    const/16 v1, 18
    invoke-static { p1, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
  .line 125
    invoke-virtual { v0, v1, v1, v1, v1 }, Landroid/widget/LinearLayout;->setPadding(IIII)V
  .line 126
    invoke-static { }, Lcom/geely/drivemem/util/Style;->cardFillColor()I
    move-result v1
    invoke-static { v1, p1 }, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 127
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, -2
    const/high16 v3, 0x3f800000
    invoke-direct { v1, v4, v2, v3 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
  .line 128
    if-eqz p6, :L0
    const/16 v2, 12
    invoke-static { p1, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
  :L0
  .line 129
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 130
    const/high16 v1, 0x41780000
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-static { p1, p2, v1, v2, v5 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 131
    const/4 v1, 6
    invoke-static { p1, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
    invoke-virtual { p3, v4, v1, v4, v4 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 132
    invoke-virtual { v0, p3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 133
    const/4 v1, 2
    invoke-static { p1, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
    const/16 v2, 8
    invoke-static { p1, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
    invoke-virtual { p4, v4, v1, v4, v2 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 134
    invoke-virtual { v0, p4 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 135
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, -1
    const/16 v3, 230
    invoke-static { p1, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
    invoke-direct { v1, v2, v3 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual { v0, p5, v1 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 136
    return-object v0
.end method

.method private static compactVnd(D)Ljava/lang/String;
  .registers 12
  .prologue
    const-wide v8, 4696837146684686336L
    const-wide v4, 4652007308841189376L
    const/4 v2, 1
    const/4 v6, 0
  .line 140
    cmpl-double v0, p0, v8
    if-ltz v0, :L1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    const-string v1, "%.1fM"
    new-array v2, v2, [Ljava/lang/Object;
    div-double v4, p0, v8
    invoke-static { v4, v5 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v3
    aput-object v3, v2, v6
    invoke-static { v0, v1, v2 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
  :L0
  .line 142
    return-object v0
  :L1
  .line 141
    cmpl-double v0, p0, v4
    if-ltz v0, :L2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    const-string v1, "%.0fk"
    new-array v2, v2, [Ljava/lang/Object;
    div-double v4, p0, v4
    invoke-static { v4, v5 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v3
    aput-object v3, v2, v6
    invoke-static { v0, v1, v2 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    goto :L0
  :L2
  .line 142
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    const-string v1, "%.0f"
    new-array v2, v2, [Ljava/lang/Object;
    invoke-static { p0, p1 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v3
    aput-object v3, v2, v6
    invoke-static { v0, v1, v2 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    goto :L0
.end method

.method private static delta([DLjava/lang/String;IZ)Ljava/lang/String;
  .registers 13
  .prologue
    const/4 v8, 2
    const-wide/16 v6, 0
  .line 274
    array-length v0, p0
  .line 275
    if-ge v0, v8, :L1
    const-string v0, ""
  :L0
  .line 281
    return-object v0
  :L1
  .line 276
    add-int/lit8 v1, v0, -2
    aget-wide v2, p0, v1
    add-int/lit8 v0, v0, -1
    aget-wide v4, p0, v0
  .line 277
    if-nez p2, :L3
    const-string v0, "yesterday"
    move-object v1, v0
  :L2
  .line 278
    cmpg-double v0, v2, v6
    if-gtz v0, :L5
    cmpl-double v0, v4, v6
    if-lez v0, :L4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "no data "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    goto :L0
  :L3
  .line 277
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "last "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-static { p2 }, Lcom/geely/drivemem/ui/TrendsView;->unitName(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    move-object v1, v0
    goto :L2
  :L4
  .line 278
    const-string v0, ""
    goto :L0
  :L5
  .line 279
    sub-double/2addr v4, v2
    div-double v2, v4, v2
    const-wide/high16 v4, 0x4059000000000000L
    mul-double/2addr v2, v4
  .line 280
    const-wide/high16 v4, 0x3fe0000000000000L
    cmpl-double v0, v2, v4
    if-lez v0, :L7
    const-string v0, "\u25b2 "
  :L6
  .line 281
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
    const-string v5, "%s%.0f%% vs %s"
    const/4 v6, 3
    new-array v6, v6, [Ljava/lang/Object;
    const/4 v7, 0
    aput-object v0, v6, v7
    const/4 v0, 1
    invoke-static { v2, v3 }, Ljava/lang/Math;->abs(D)D
    move-result-wide v2
    invoke-static { v2, v3 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v2
    aput-object v2, v6, v0
    aput-object v1, v6, v8
    invoke-static { v4, v5, v6 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    goto :L0
  :L7
  .line 280
    const-wide/high16 v4, 0xbfe0000000000000L
    cmpg-double v0, v2, v4
    if-gez v0, :L8
    const-string v0, "\u25bc "
    goto :L6
  :L8
    const-string v0, ""
    goto :L6
.end method

.method private static fullVnd(D)Ljava/lang/String;
  .registers 8
  .prologue
  .line 146
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    const-string v1, "%,.0f \u0111"
    const/4 v2, 1
    new-array v2, v2, [Ljava/lang/Object;
    const/4 v3, 0
    invoke-static { p0, p1 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v4
    aput-object v4, v2, v3
    invoke-static { v0, v1, v2 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method private static label(Ljava/lang/String;I)Ljava/lang/String;
  .catch Ljava/lang/Throwable; { :L0 .. :L3 } :L4
  .registers 6
  .prologue
    const/4 v3, 2
  :L0
  .line 179
    const-string v0, "-"
    invoke-virtual { p0, v0 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v0
  .line 180
    const/4 v1, 1
    aget-object v1, v0, v1
    invoke-static { v1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v1
    const/4 v2, 2
    aget-object v2, v0, v2
    invoke-static { v2 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v2
  .line 181
    if-ne p1, v3, :L2
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, "/"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    const/4 v2, 0
    aget-object v0, v0, v2
    const/4 v2, 2
    invoke-virtual { v0, v2 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
  :L1
  .line 183
    return-object p0
  :L2
  .line 182
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v2, "/"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L3
    move-result-object p0
    goto :L1
  :L4
  .line 183
    move-exception v0
    goto :L1
.end method

.method private load(Landroid/content/Context;I)Lcom/geely/drivemem/ui/TrendsView$Series;
  .registers 9
  .prologue
  .line 187
    new-instance v3, Lcom/geely/drivemem/ui/TrendsView$Series;
    const/4 v0, 0
    invoke-direct { v3, v0 }, Lcom/geely/drivemem/ui/TrendsView$Series;-><init>(Lcom/geely/drivemem/ui/TrendsView$1;)V
  .line 188
    invoke-static { }, Lcom/geely/drivemem/sensors/DailyStatsProvider;->todayDateStr()Ljava/lang/String;
    move-result-object v2
  .line 189
    if-nez p2, :L1
  .line 190
    invoke-static { }, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
    move-result-object v2
  .line 191
    const/16 v0, 13
    move v1, v0
  :L0
    if-ltz v1, :L7
  .line 192
    invoke-virtual { v2 }, Ljava/util/Calendar;->clone()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/Calendar;
  .line 193
    const/4 v4, 5
    neg-int v5, v1
    invoke-virtual { v0, v4, v5 }, Ljava/util/Calendar;->add(II)V
  .line 194
    sget-object v4, Lcom/geely/drivemem/ui/TrendsView;->DAY:Ljava/text/SimpleDateFormat;
    invoke-virtual { v0 }, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    move-result-object v0
    invoke-virtual { v4, v0 }, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object v0
  .line 195
    invoke-static { p1, v0 }, Lcom/geely/drivemem/sensors/DailyStatsProvider;->getDayOverview(Landroid/content/Context;Ljava/lang/String;)Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;
    move-result-object v4
  .line 196
    invoke-static { v0, p2 }, Lcom/geely/drivemem/ui/TrendsView;->label(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v0
    invoke-static { v3, v0, v4 }, Lcom/geely/drivemem/ui/TrendsView;->add(Lcom/geely/drivemem/ui/TrendsView$Series;Ljava/lang/String;Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;)V
  .line 191
    add-int/lit8 v0, v1, -1
    move v1, v0
    goto :L0
  :L1
  .line 199
    const/4 v0, 1
    if-ne p2, v0, :L5
  .line 200
    const/16 v0, 8
    invoke-static { p1, v2, v0 }, Lcom/geely/drivemem/sensors/DailyStatsProvider;->recentWeeks(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    move-result-object v0
  :L2
  .line 202
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v4
  :L3
    invoke-interface { v4 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L7
    invoke-interface { v4 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;
  .line 203
    iget-object v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;->days:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->isEmpty()Z
    move-result v1
    if-eqz v1, :L6
    move-object v1, v2
  :L4
  .line 204
    invoke-static { v1, p2 }, Lcom/geely/drivemem/ui/TrendsView;->label(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v1
    iget-object v0, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;->totals:Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;
    invoke-static { v3, v1, v0 }, Lcom/geely/drivemem/ui/TrendsView;->add(Lcom/geely/drivemem/ui/TrendsView$Series;Ljava/lang/String;Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;)V
    goto :L3
  :L5
  .line 201
    const/4 v0, 6
    invoke-static { p1, v2, v0 }, Lcom/geely/drivemem/sensors/DailyStatsProvider;->recentMonths(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    move-result-object v0
    goto :L2
  :L6
  .line 203
    iget-object v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;->days:Ljava/util/List;
    const/4 v5, 0
    invoke-interface { v1, v5 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;
    iget-object v1, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->date:Ljava/lang/String;
    goto :L4
  :L7
  .line 207
    return-object v3
.end method

.method private pickDate(J)V
  .registers 10
  .prologue
  .line 314
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/TrendsView;->getContext()Landroid/content/Context;
    move-result-object v1
  .line 315
    invoke-static { }, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
    move-result-object v5
  .line 316
    new-instance v0, Landroid/app/DatePickerDialog;
    new-instance v2, Lcom/geely/drivemem/ui/TrendsView$8;
    invoke-direct { v2, p0, v1 }, Lcom/geely/drivemem/ui/TrendsView$8;-><init>(Lcom/geely/drivemem/ui/TrendsView;Landroid/content/Context;)V
    const/4 v3, 1
  .line 325
    invoke-virtual { v5, v3 }, Ljava/util/Calendar;->get(I)I
    move-result v3
    const/4 v4, 2
    invoke-virtual { v5, v4 }, Ljava/util/Calendar;->get(I)I
    move-result v4
    const/4 v6, 5
    invoke-virtual { v5, v6 }, Ljava/util/Calendar;->get(I)I
    move-result v5
    invoke-direct/range { v0 .. v5 }, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
  .line 326
    invoke-virtual { v0 }, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;
    move-result-object v1
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    invoke-virtual { v1, v2, v3 }, Landroid/widget/DatePicker;->setMaxDate(J)V
  .line 327
    invoke-virtual { v0 }, Landroid/app/DatePickerDialog;->show()V
  .line 328
    return-void
.end method

.method private show(Lcom/geely/drivemem/ui/TrendsView$Series;I)V
  .registers 15
  .prologue
  .line 252
    iget-object v0, p1, Lcom/geely/drivemem/ui/TrendsView$Series;->energy:Ljava/util/List;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/TrendsView;->arr(Ljava/util/List;)[D
    move-result-object v1
    iget-object v0, p1, Lcom/geely/drivemem/ui/TrendsView$Series;->dist:Ljava/util/List;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/TrendsView;->arr(Ljava/util/List;)[D
    move-result-object v2
    iget-object v0, p1, Lcom/geely/drivemem/ui/TrendsView$Series;->cost:Ljava/util/List;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/TrendsView;->arr(Ljava/util/List;)[D
    move-result-object v3
  .line 253
    iget-object v0, p1, Lcom/geely/drivemem/ui/TrendsView$Series;->labels:Ljava/util/List;
    const/4 v4, 0
    new-array v4, v4, [Ljava/lang/String;
    invoke-interface { v0, v4 }, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Ljava/lang/String;
  .line 254
    iget-object v4, p0, Lcom/geely/drivemem/ui/TrendsView;->energyBars:Lcom/geely/drivemem/ui/BarsView;
    invoke-virtual { v4, v1, v0 }, Lcom/geely/drivemem/ui/BarsView;->setData([D[Ljava/lang/String;)V
  .line 255
    iget-object v4, p0, Lcom/geely/drivemem/ui/TrendsView;->distBars:Lcom/geely/drivemem/ui/BarsView;
    invoke-virtual { v4, v2, v0 }, Lcom/geely/drivemem/ui/BarsView;->setData([D[Ljava/lang/String;)V
  .line 256
    iget-object v4, p0, Lcom/geely/drivemem/ui/TrendsView;->costBars:Lcom/geely/drivemem/ui/BarsView;
    invoke-virtual { v4, v3, v0 }, Lcom/geely/drivemem/ui/BarsView;->setData([D[Ljava/lang/String;)V
  .line 257
    array-length v4, v1
  .line 258
    if-nez p2, :L6
    const-string v0, "today"
  :L0
  .line 259
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->energyHead:Landroid/widget/TextView;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;
    const-string v6, "%.1f kWh"
    const/4 v7, 1
    new-array v7, v7, [Ljava/lang/Object;
    const/4 v8, 0
    add-int/lit8 v9, v4, -1
    aget-wide v10, v1, v9
    invoke-static { v10, v11 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v9
    aput-object v9, v7, v8
    invoke-static { v5, v6, v7 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v0, v5 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 260
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->distHead:Landroid/widget/TextView;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;
    const-string v6, "%.0f km"
    const/4 v7, 1
    new-array v7, v7, [Ljava/lang/Object;
    const/4 v8, 0
    add-int/lit8 v9, v4, -1
    aget-wide v10, v2, v9
    invoke-static { v10, v11 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v9
    aput-object v9, v7, v8
    invoke-static { v5, v6, v7 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v0, v5 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 261
    iget-object v5, p0, Lcom/geely/drivemem/ui/TrendsView;->costHead:Landroid/widget/TextView;
    add-int/lit8 v0, v4, -1
    aget-wide v6, v3, v0
    const-wide/16 v8, 0
    cmpl-double v0, v6, v8
    if-lez v0, :L7
    add-int/lit8 v0, v4, -1
    aget-wide v6, v3, v0
    invoke-static { v6, v7 }, Lcom/geely/drivemem/ui/TrendsView;->fullVnd(D)Ljava/lang/String;
    move-result-object v0
  :L1
    invoke-virtual { v5, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 262
    iget-object v0, p1, Lcom/geely/drivemem/ui/TrendsView$Series;->eff:Ljava/util/List;
    add-int/lit8 v5, v4, -1
    invoke-interface { v0, v5 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Double;
    invoke-virtual { v0 }, Ljava/lang/Double;->doubleValue()D
    move-result-wide v6
  .line 263
    iget-object v5, p0, Lcom/geely/drivemem/ui/TrendsView;->energySub:Landroid/widget/TextView;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "%.1f kWh"
    const/4 v9, 1
    invoke-static { v1, v8, p2, v9 }, Lcom/geely/drivemem/ui/TrendsView;->delta([DLjava/lang/String;IZ)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-wide/16 v8, 0
    cmpl-double v0, v6, v8
    if-lez v0, :L8
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "  \u00b7  "
    invoke-virtual { v0, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;
    const-string v9, "%.1f kWh/100 km"
    const/4 v10, 1
    new-array v10, v10, [Ljava/lang/Object;
    const/4 v11, 0
    invoke-static { v6, v7 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v6
    aput-object v6, v10, v11
    invoke-static { v8, v9, v10 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v6
    invoke-virtual { v0, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  :L2
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v5, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 264
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->energySub:Landroid/widget/TextView;
    sget v1, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 265
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->distSub:Landroid/widget/TextView;
    const-string v1, "%.0f km"
    const/4 v5, 0
    invoke-static { v2, v1, p2, v5 }, Lcom/geely/drivemem/ui/TrendsView;->delta([DLjava/lang/String;IZ)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 266
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView;->costSub:Landroid/widget/TextView;
    add-int/lit8 v0, v4, -1
    aget-wide v4, v3, v0
    const-wide/16 v6, 0
    cmpl-double v0, v4, v6
    if-gtz v0, :L3
    invoke-static { v3 }, Lcom/geely/drivemem/ui/TrendsView;->anyPositive([D)Z
    move-result v0
    if-eqz v0, :L9
  :L3
    const/4 v0, 0
    const/4 v2, 1
    invoke-static { v3, v0, p2, v2 }, Lcom/geely/drivemem/ui/TrendsView;->delta([DLjava/lang/String;IZ)Ljava/lang/String;
    move-result-object v0
  :L4
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 267
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView;->note:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    iget-boolean v0, p1, Lcom/geely/drivemem/ui/TrendsView$Series;->estimated:Z
    if-eqz v0, :L10
    const-string v0, "Electricity is estimated from the battery percentage (~). "
  :L5
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v2, "The last bar is the current "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
  .line 268
    invoke-static { p2 }, Lcom/geely/drivemem/ui/TrendsView;->unitName(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v2, ", still in progress."
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 267
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 269
    return-void
  :L6
  .line 258
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "this "
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-static { p2 }, Lcom/geely/drivemem/ui/TrendsView;->unitName(I)Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto/16 :L0
  :L7
  .line 261
    const-string v0, "\u2014"
    goto/16 :L1
  :L8
  .line 263
    const-string v0, ""
    goto/16 :L2
  :L9
  .line 266
    const-string v0, "Enter costs in Charging history"
    goto :L4
  :L10
  .line 267
    const-string v0, ""
    goto :L5
.end method

.method private showFull(J)V
  .registers 12
  .prologue
    const/4 v2, 0
  .line 286
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/TrendsView;->getContext()Landroid/content/Context;
    move-result-object v3
  .line 287
    invoke-static { v3 }, Lcom/geely/drivemem/util/FullCharge;->intervalDays(Landroid/content/Context;)I
    move-result v4
  .line 288
    invoke-static { v3, p1, p2 }, Lcom/geely/drivemem/util/FullCharge;->baseMs(Landroid/content/Context;J)J
    move-result-wide v0
  .line 289
    invoke-static { v0, v1 }, Lcom/geely/drivemem/util/FullCharge;->daysSince(J)I
    move-result v5
  .line 290
    if-lt v5, v4, :L5
    const/4 v0, 1
    move v1, v0
  :L0
  .line 291
    const-wide/16 v6, 0
    cmp-long v0, p1, v6
    if-lez v0, :L7
  .line 292
    iget-object v6, p0, Lcom/geely/drivemem/ui/TrendsView;->fullHead:Landroid/widget/TextView;
    if-nez v5, :L6
    const-string v0, "Charged to 100% today"
  :L1
    invoke-virtual { v6, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 293
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->fullSub:Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "Last full charge: "
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-static { p1, p2 }, Lcom/geely/drivemem/util/FullCharge;->dateText(J)Ljava/lang/String;
    move-result-object v6
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, ". Goal: at least every "
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, " days."
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v0, v5 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L2
  .line 299
    iget-object v5, p0, Lcom/geely/drivemem/ui/TrendsView;->fullHead:Landroid/widget/TextView;
    if-eqz v1, :L8
    const-string v0, "#FF9F0A"
    invoke-static { v0 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v0
  :L3
    invoke-virtual { v5, v0 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 300
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->fullBtns:Landroid/widget/LinearLayout;
    invoke-virtual { v0 }, Landroid/widget/LinearLayout;->removeAllViews()V
  .line 301
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView;->fullBtns:Landroid/widget/LinearLayout;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "Goal: every "
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v5, " days  \u2192  "
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    const/16 v0, 30
    if-ne v4, v0, :L9
    const-string v0, "15"
  :L4
    invoke-virtual { v5, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    new-instance v4, Lcom/geely/drivemem/ui/TrendsView$6;
    invoke-direct { v4, p0, v3, p1, p2 }, Lcom/geely/drivemem/ui/TrendsView$6;-><init>(Lcom/geely/drivemem/ui/TrendsView;Landroid/content/Context;J)V
    invoke-static { v3, v0, v2, v4 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v0
    invoke-virtual { v1, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 307
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->fullBtns:Landroid/widget/LinearLayout;
    const/16 v1, 12
    invoke-static { v0, v3, v1 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 308
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->fullBtns:Landroid/widget/LinearLayout;
    const-string v1, "I charged to 100% on\u2026"
    new-instance v4, Lcom/geely/drivemem/ui/TrendsView$7;
    invoke-direct { v4, p0, p1, p2 }, Lcom/geely/drivemem/ui/TrendsView$7;-><init>(Lcom/geely/drivemem/ui/TrendsView;J)V
    invoke-static { v3, v1, v2, v4 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 311
    return-void
  :L5
    move v1, v2
  .line 290
    goto/16 :L0
  :L6
  .line 292
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v5, " days since the last 100% charge"
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    goto/16 :L1
  :L7
  .line 295
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->fullHead:Landroid/widget/TextView;
    const-string v6, "No 100% charge recorded yet"
    invoke-virtual { v0, v6 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 296
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->fullSub:Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "Counting from the first run ("
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual { v6, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, " days ago). Goal: at least every "
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, " days. If you charged to 100% before, set the date below."
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v0, v5 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto/16 :L2
  :L8
  .line 299
    const-string v0, "#30D158"
    invoke-static { v0 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v0
    goto/16 :L3
  :L9
  .line 301
    const-string v0, "30"
    goto :L4
.end method

.method private static text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
  .registers 7
  .prologue
  .line 113
    new-instance v0, Landroid/widget/TextView;
    invoke-direct { v0, p0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 114
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 115
    invoke-virtual { v0, p2 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 116
    invoke-virtual { v0, p3 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 117
    if-eqz p4, :L0
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  :L0
  .line 118
    return-object v0
.end method

.method private static unitName(I)Ljava/lang/String;
  .registers 2
  .prologue
  .line 249
    if-nez p0, :L1
    const-string v0, "day"
  :L0
    return-object v0
  :L1
    const/4 v0, 1
    if-ne p0, v0, :L2
    const-string v0, "week"
    goto :L0
  :L2
    const-string v0, "month"
    goto :L0
.end method

.method public refresh()V
  .registers 6
  .prologue
  .line 226
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/TrendsView;->getContext()Landroid/content/Context;
    move-result-object v0
  .line 227
    iget v1, p0, Lcom/geely/drivemem/ui/TrendsView;->token:I
    add-int/lit8 v1, v1, 1
    iput v1, p0, Lcom/geely/drivemem/ui/TrendsView;->token:I
  .line 228
    iget v2, p0, Lcom/geely/drivemem/ui/TrendsView;->period:I
  .line 229
    iget-object v3, p0, Lcom/geely/drivemem/ui/TrendsView;->energyHead:Landroid/widget/TextView;
    const-string v4, "\u2026"
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 230
    iget-object v3, p0, Lcom/geely/drivemem/ui/TrendsView;->distHead:Landroid/widget/TextView;
    const-string v4, "\u2026"
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 231
    iget-object v3, p0, Lcom/geely/drivemem/ui/TrendsView;->costHead:Landroid/widget/TextView;
    const-string v4, "\u2026"
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 232
    new-instance v3, Ljava/lang/Thread;
    new-instance v4, Lcom/geely/drivemem/ui/TrendsView$5;
    invoke-direct { v4, p0, v0, v2, v1 }, Lcom/geely/drivemem/ui/TrendsView$5;-><init>(Lcom/geely/drivemem/ui/TrendsView;Landroid/content/Context;II)V
    const-string v0, "trends-load"
    invoke-direct { v3, v4, v0 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 246
    invoke-virtual { v3 }, Ljava/lang/Thread;->start()V
  .line 247
    return-void
.end method
