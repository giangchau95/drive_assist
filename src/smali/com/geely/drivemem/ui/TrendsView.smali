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

.field private final priceHead:Landroid/widget/TextView;

.field private volatile token:I

.field private final ui:Landroid/os/Handler;

.method static constructor <clinit>()V
  .registers 3
  .prologue
  .line 43
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
  .line 46
    invoke-direct { p0, p1, p2 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .line 31
    const/4 v0, 2
    iput v0, p0, Lcom/geely/drivemem/ui/TrendsView;->period:I
  .line 32
    new-instance v0, Landroid/os/Handler;
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->ui:Landroid/os/Handler;
  .line 47
    const/4 v0, 1
    invoke-virtual { p0, v0 }, Lcom/geely/drivemem/ui/TrendsView;->setOrientation(I)V
  .line 49
    const-string v0, "TRENDS"
    const/high16 v1, 0x41880000
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    const/4 v3, 1
    invoke-static { p1, v0, v1, v2, v3 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v0
  .line 50
    const v1, 1025758986
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setLetterSpacing(F)V
  .line 51
    invoke-virtual { p0, v0 }, Lcom/geely/drivemem/ui/TrendsView;->addView(Landroid/view/View;)V
  .line 52
    new-instance v0, Landroid/widget/LinearLayout;
    invoke-direct { v0, p1 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->periodRow:Landroid/widget/LinearLayout;
  .line 53
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->periodRow:Landroid/widget/LinearLayout;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 54
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->periodRow:Landroid/widget/LinearLayout;
    const/16 v1, 16
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setGravity(I)V
  .line 55
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, -1
    const/4 v2, -2
    invoke-direct { v0, v1, v2 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 56
    const/16 v1, 14
    invoke-static { p1, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
  .line 57
    const/16 v1, 16
    invoke-static { p1, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
  .line 58
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView;->periodRow:Landroid/widget/LinearLayout;
    invoke-virtual { p0, v1, v0 }, Lcom/geely/drivemem/ui/TrendsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 60
    new-instance v7, Landroid/widget/LinearLayout;
    invoke-direct { v7, p1 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 61
    const/4 v0, 0
    invoke-virtual { v7, v0 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 62
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, -1
    const/4 v2, -2
    invoke-direct { v0, v1, v2 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 63
    invoke-virtual { p0, v7, v0 }, Lcom/geely/drivemem/ui/TrendsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 65
    const-string v0, "\u2014"
    const/high16 v1, 0x42080000
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT:I
    const/4 v3, 1
    invoke-static { p1, v0, v1, v2, v3 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v0
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->energyHead:Landroid/widget/TextView;
  .line 66
    const-string v0, ""
    const/high16 v1, 0x41800000
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    const/4 v3, 0
    invoke-static { p1, v0, v1, v2, v3 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v0
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->energySub:Landroid/widget/TextView;
  .line 67
    new-instance v0, Lcom/geely/drivemem/ui/BarsView;
    new-instance v1, Lcom/geely/drivemem/ui/TrendsView$1;
    invoke-direct { v1, p0 }, Lcom/geely/drivemem/ui/TrendsView$1;-><init>(Lcom/geely/drivemem/ui/TrendsView;)V
    const-string v2, "No data yet"
    invoke-direct { v0, p1, v1, v2 }, Lcom/geely/drivemem/ui/BarsView;-><init>(Landroid/content/Context;Lcom/geely/drivemem/ui/BarsView$Formatter;Ljava/lang/String;)V
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->energyBars:Lcom/geely/drivemem/ui/BarsView;
  .line 70
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
  .line 72
    const-string v0, "\u2014"
    const/high16 v1, 0x42080000
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT:I
    const/4 v3, 1
    invoke-static { p1, v0, v1, v2, v3 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v0
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->distHead:Landroid/widget/TextView;
  .line 73
    const-string v0, ""
    const/high16 v1, 0x41800000
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    const/4 v3, 0
    invoke-static { p1, v0, v1, v2, v3 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v0
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->distSub:Landroid/widget/TextView;
  .line 74
    new-instance v0, Lcom/geely/drivemem/ui/BarsView;
    new-instance v1, Lcom/geely/drivemem/ui/TrendsView$2;
    invoke-direct { v1, p0 }, Lcom/geely/drivemem/ui/TrendsView$2;-><init>(Lcom/geely/drivemem/ui/TrendsView;)V
    const-string v2, "No data yet"
    invoke-direct { v0, p1, v1, v2 }, Lcom/geely/drivemem/ui/BarsView;-><init>(Landroid/content/Context;Lcom/geely/drivemem/ui/BarsView$Formatter;Ljava/lang/String;)V
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->distBars:Lcom/geely/drivemem/ui/BarsView;
  .line 77
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
  .line 79
    const-string v0, "\u2014"
    const/high16 v1, 0x42080000
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT:I
    const/4 v3, 1
    invoke-static { p1, v0, v1, v2, v3 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v0
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->costHead:Landroid/widget/TextView;
  .line 80
    const-string v0, ""
    const/high16 v1, 0x41800000
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    const/4 v3, 0
    invoke-static { p1, v0, v1, v2, v3 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v0
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->costSub:Landroid/widget/TextView;
  .line 81
    new-instance v0, Lcom/geely/drivemem/ui/BarsView;
    new-instance v1, Lcom/geely/drivemem/ui/TrendsView$3;
    invoke-direct { v1, p0 }, Lcom/geely/drivemem/ui/TrendsView$3;-><init>(Lcom/geely/drivemem/ui/TrendsView;)V
    const-string v2, "No costs entered yet"
    invoke-direct { v0, p1, v1, v2 }, Lcom/geely/drivemem/ui/BarsView;-><init>(Landroid/content/Context;Lcom/geely/drivemem/ui/BarsView$Formatter;Ljava/lang/String;)V
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->costBars:Lcom/geely/drivemem/ui/BarsView;
  .line 84
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
  .line 86
    const-string v0, ""
    const/high16 v1, 0x41700000
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    const/4 v3, 0
    invoke-static { p1, v0, v1, v2, v3 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v0
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->note:Landroid/widget/TextView;
  .line 87
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
  .line 88
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->note:Landroid/widget/TextView;
    invoke-virtual { p0, v0 }, Lcom/geely/drivemem/ui/TrendsView;->addView(Landroid/view/View;)V
  .line 91
    new-instance v0, Landroid/widget/LinearLayout;
    invoke-direct { v0, p1 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 92
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 93
    const/16 v1, 18
    invoke-static { p1, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
  .line 94
    invoke-virtual { v0, v1, v1, v1, v1 }, Landroid/widget/LinearLayout;->setPadding(IIII)V
  .line 95
    invoke-static { }, Lcom/geely/drivemem/util/Style;->cardFillColor()I
    move-result v2
    invoke-static { v2, p1 }, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v2
    invoke-virtual { v0, v2 }, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 96
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -1
    const/4 v4, -2
    invoke-direct { v2, v3, v4 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 97
    const/16 v3, 12
    invoke-static { p1, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
  .line 98
    invoke-virtual { v0, v2 }, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 99
    const-string v2, "Full charge (LFP battery)"
    const/high16 v3, 0x41780000
    sget v4, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    const/4 v5, 1
    invoke-static { p1, v2, v3, v4, v5 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v2
    invoke-virtual { v0, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 100
    const-string v2, "\u2026"
    const/high16 v3, 0x41e00000
    sget v4, Lcom/geely/drivemem/util/Style;->TEXT:I
    const/4 v5, 1
    invoke-static { p1, v2, v3, v4, v5 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v2
    iput-object v2, p0, Lcom/geely/drivemem/ui/TrendsView;->fullHead:Landroid/widget/TextView;
  .line 101
    iget-object v2, p0, Lcom/geely/drivemem/ui/TrendsView;->fullHead:Landroid/widget/TextView;
    const/4 v3, 0
    const/4 v4, 6
    invoke-static { p1, v4 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v4
    const/4 v5, 0
    const/4 v6, 0
    invoke-virtual { v2, v3, v4, v5, v6 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 102
    iget-object v2, p0, Lcom/geely/drivemem/ui/TrendsView;->fullHead:Landroid/widget/TextView;
    invoke-virtual { v0, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 103
    const-string v2, ""
    const/high16 v3, 0x41880000
    sget v4, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    const/4 v5, 0
    invoke-static { p1, v2, v3, v4, v5 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v2
    iput-object v2, p0, Lcom/geely/drivemem/ui/TrendsView;->fullSub:Landroid/widget/TextView;
  .line 104
    iget-object v2, p0, Lcom/geely/drivemem/ui/TrendsView;->fullSub:Landroid/widget/TextView;
    const/4 v3, 0
    const/4 v4, 4
    invoke-static { p1, v4 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v4
    const/4 v5, 0
    const/16 v6, 12
    invoke-static { p1, v6 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v6
    invoke-virtual { v2, v3, v4, v5, v6 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 105
    iget-object v2, p0, Lcom/geely/drivemem/ui/TrendsView;->fullSub:Landroid/widget/TextView;
    invoke-virtual { v0, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 106
    new-instance v2, Landroid/widget/LinearLayout;
    invoke-direct { v2, p1 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    iput-object v2, p0, Lcom/geely/drivemem/ui/TrendsView;->fullBtns:Landroid/widget/LinearLayout;
  .line 107
    iget-object v2, p0, Lcom/geely/drivemem/ui/TrendsView;->fullBtns:Landroid/widget/LinearLayout;
    const/4 v3, 0
    invoke-virtual { v2, v3 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 108
    iget-object v2, p0, Lcom/geely/drivemem/ui/TrendsView;->fullBtns:Landroid/widget/LinearLayout;
    invoke-virtual { v0, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 109
    invoke-virtual { p0, v0 }, Lcom/geely/drivemem/ui/TrendsView;->addView(Landroid/view/View;)V
  .line 112
    new-instance v0, Landroid/widget/LinearLayout;
    invoke-direct { v0, p1 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 113
    const/4 v2, 1
    invoke-virtual { v0, v2 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 114
    invoke-virtual { v0, v1, v1, v1, v1 }, Landroid/widget/LinearLayout;->setPadding(IIII)V
  .line 115
    invoke-static { }, Lcom/geely/drivemem/util/Style;->cardFillColor()I
    move-result v1
    invoke-static { v1, p1 }, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 116
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, -1
    const/4 v3, -2
    invoke-direct { v1, v2, v3 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 117
    const/16 v2, 12
    invoke-static { p1, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
  .line 118
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 119
    const-string v1, "Charging price"
    const/high16 v2, 0x41780000
    sget v3, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    const/4 v4, 1
    invoke-static { p1, v1, v2, v3, v4 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 120
    const-string v1, ""
    const/high16 v2, 0x41e00000
    sget v3, Lcom/geely/drivemem/util/Style;->TEXT:I
    const/4 v4, 1
    invoke-static { p1, v1, v2, v3, v4 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v1
    iput-object v1, p0, Lcom/geely/drivemem/ui/TrendsView;->priceHead:Landroid/widget/TextView;
  .line 121
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView;->priceHead:Landroid/widget/TextView;
    const/4 v2, 0
    const/4 v3, 6
    invoke-static { p1, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
    const/4 v4, 0
    const/4 v5, 0
    invoke-virtual { v1, v2, v3, v4, v5 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 122
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView;->priceHead:Landroid/widget/TextView;
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 123
    const-string v1, "AC sessions are costed automatically. For DC fast charging the price depends on the provider: open Charging history and enter the price per kWh (or the total) for each DC session."
    const/high16 v2, 0x41880000
    sget v3, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    const/4 v4, 0
    invoke-static { p1, v1, v2, v3, v4 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v1
  .line 125
    const/4 v2, 0
    const/4 v3, 4
    invoke-static { p1, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
    const/4 v4, 0
    const/16 v5, 12
    invoke-static { p1, v5 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v5
    invoke-virtual { v1, v2, v3, v4, v5 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 126
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 127
    new-instance v1, Landroid/widget/LinearLayout;
    invoke-direct { v1, p1 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 128
    const/4 v2, 0
    invoke-virtual { v1, v2 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 129
    const-string v2, "Change AC price"
    const/4 v3, 0
    new-instance v4, Lcom/geely/drivemem/ui/TrendsView$4;
    invoke-direct { v4, p0 }, Lcom/geely/drivemem/ui/TrendsView$4;-><init>(Lcom/geely/drivemem/ui/TrendsView;)V
    invoke-static { p1, v2, v3, v4 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v2
    invoke-virtual { v1, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 132
    const/16 v2, 12
    invoke-static { v1, p1, v2 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 133
    const-string v2, "Recalculate all AC sessions"
    const/4 v3, 0
    new-instance v4, Lcom/geely/drivemem/ui/TrendsView$5;
    invoke-direct { v4, p0 }, Lcom/geely/drivemem/ui/TrendsView$5;-><init>(Lcom/geely/drivemem/ui/TrendsView;)V
    invoke-static { p1, v2, v3, v4 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v2
    invoke-virtual { v1, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 136
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 137
    invoke-virtual { p0, v0 }, Lcom/geely/drivemem/ui/TrendsView;->addView(Landroid/view/View;)V
  .line 138
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/TrendsView;->showPrice()V
  .line 140
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/TrendsView;->buildPeriodRow()V
  .line 141
    return-void
.end method

.method static synthetic access$000(D)Ljava/lang/String;
  .registers 4
  .prologue
  .line 29
    invoke-static { p0, p1 }, Lcom/geely/drivemem/ui/TrendsView;->compactVnd(D)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method static synthetic access$100(Lcom/geely/drivemem/ui/TrendsView;)V
  .registers 1
  .prologue
  .line 29
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/TrendsView;->editAcPrice()V
    return-void
.end method

.method static synthetic access$1000(Lcom/geely/drivemem/ui/TrendsView;Lcom/geely/drivemem/ui/TrendsView$Series;I)V
  .registers 3
  .prologue
  .line 29
    invoke-direct { p0, p1, p2 }, Lcom/geely/drivemem/ui/TrendsView;->show(Lcom/geely/drivemem/ui/TrendsView$Series;I)V
    return-void
.end method

.method static synthetic access$1100(Lcom/geely/drivemem/ui/TrendsView;J)V
  .registers 4
  .prologue
  .line 29
    invoke-direct { p0, p1, p2 }, Lcom/geely/drivemem/ui/TrendsView;->showFull(J)V
    return-void
.end method

.method static synthetic access$1200(Lcom/geely/drivemem/ui/TrendsView;J)V
  .registers 4
  .prologue
  .line 29
    invoke-direct { p0, p1, p2 }, Lcom/geely/drivemem/ui/TrendsView;->pickDate(J)V
    return-void
.end method

.method static synthetic access$200(Lcom/geely/drivemem/ui/TrendsView;)V
  .registers 1
  .prologue
  .line 29
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/TrendsView;->confirmRecalc()V
    return-void
.end method

.method static synthetic access$300(Lcom/geely/drivemem/ui/TrendsView;)V
  .registers 1
  .prologue
  .line 29
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/TrendsView;->showPrice()V
    return-void
.end method

.method static synthetic access$400(Lcom/geely/drivemem/ui/TrendsView;)Landroid/os/Handler;
  .registers 2
  .prologue
  .line 29
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->ui:Landroid/os/Handler;
    return-object v0
.end method

.method static synthetic access$500(Lcom/geely/drivemem/ui/TrendsView;)I
  .registers 2
  .prologue
  .line 29
    iget v0, p0, Lcom/geely/drivemem/ui/TrendsView;->period:I
    return v0
.end method

.method static synthetic access$502(Lcom/geely/drivemem/ui/TrendsView;I)I
  .registers 2
  .prologue
  .line 29
    iput p1, p0, Lcom/geely/drivemem/ui/TrendsView;->period:I
    return p1
.end method

.method static synthetic access$600(Lcom/geely/drivemem/ui/TrendsView;)V
  .registers 1
  .prologue
  .line 29
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/TrendsView;->buildPeriodRow()V
    return-void
.end method

.method static synthetic access$800(Lcom/geely/drivemem/ui/TrendsView;Landroid/content/Context;I)Lcom/geely/drivemem/ui/TrendsView$Series;
  .registers 4
  .prologue
  .line 29
    invoke-direct { p0, p1, p2 }, Lcom/geely/drivemem/ui/TrendsView;->load(Landroid/content/Context;I)Lcom/geely/drivemem/ui/TrendsView$Series;
    move-result-object v0
    return-object v0
.end method

.method static synthetic access$900(Lcom/geely/drivemem/ui/TrendsView;)I
  .registers 2
  .prologue
  .line 29
    iget v0, p0, Lcom/geely/drivemem/ui/TrendsView;->token:I
    return v0
.end method

.method private static add(Lcom/geely/drivemem/ui/TrendsView$Series;Ljava/lang/String;Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;)V
  .registers 9
  .prologue
    const-wide/16 v4, 0
  .line 287
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$Series;->labels:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 288
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$Series;->energy:Ljava/util/List;
    iget-wide v2, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->netKwh:D
    invoke-static { v4, v5, v2, v3 }, Ljava/lang/Math;->max(DD)D
    move-result-wide v2
    invoke-static { v2, v3 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v1
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 289
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$Series;->dist:Ljava/util/List;
    iget-wide v2, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->distanceKm:D
    invoke-static { v2, v3 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v1
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 290
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$Series;->cost:Ljava/util/List;
    iget-wide v2, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->chargeCost:D
    invoke-static { v2, v3 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v1
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 291
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$Series;->eff:Ljava/util/List;
    iget-wide v2, p2, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->efficiencyKwh100km:D
    invoke-static { v2, v3 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v1
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 292
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
  .line 293
    return-void
.end method

.method private static anyPositive([D)Z
  .registers 9
  .prologue
    const/4 v0, 0
  .line 352
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
  .line 296
    invoke-interface { p0 }, Ljava/util/List;->size()I
    move-result v0
    new-array v2, v0, [D
  .line 297
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
  .line 298
    return-object v2
.end method

.method private buildPeriodRow()V
  .registers 10
  .prologue
    const/4 v8, 3
    const/4 v1, 1
    const/4 v2, 0
  .line 226
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/TrendsView;->getContext()Landroid/content/Context;
    move-result-object v4
  .line 227
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->periodRow:Landroid/widget/LinearLayout;
    invoke-virtual { v0 }, Landroid/widget/LinearLayout;->removeAllViews()V
  .line 228
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
  .line 229
    if-ge v3, v8, :L3
  .line 231
    aget-object v6, v5, v3
    iget v0, p0, Lcom/geely/drivemem/ui/TrendsView;->period:I
    if-ne v0, v3, :L2
    move v0, v1
  :L1
    new-instance v7, Lcom/geely/drivemem/ui/TrendsView$8;
    invoke-direct { v7, p0, v3 }, Lcom/geely/drivemem/ui/TrendsView$8;-><init>(Lcom/geely/drivemem/ui/TrendsView;I)V
    invoke-static { v4, v6, v0, v7 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v0
  .line 239
    iget-object v6, p0, Lcom/geely/drivemem/ui/TrendsView;->periodRow:Landroid/widget/LinearLayout;
    invoke-virtual { v6, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 240
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->periodRow:Landroid/widget/LinearLayout;
    const/16 v6, 10
    invoke-static { v0, v4, v6 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 229
    add-int/lit8 v0, v3, 1
    move v3, v0
    goto :L0
  :L2
    move v0, v2
  .line 231
    goto :L1
  :L3
  .line 242
    iget v0, p0, Lcom/geely/drivemem/ui/TrendsView;->period:I
    if-nez v0, :L5
    const-string v0, "last 14 days"
  :L4
    const/high16 v1, 0x41880000
    sget v3, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-static { v4, v0, v1, v3, v2 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v0
  .line 243
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView;->periodRow:Landroid/widget/LinearLayout;
    invoke-virtual { v1, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 244
    return-void
  :L5
  .line 242
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
  .line 198
    new-instance v0, Landroid/widget/LinearLayout;
    invoke-direct { v0, p1 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 199
    invoke-virtual { v0, v5 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 200
    const/16 v1, 18
    invoke-static { p1, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
  .line 201
    invoke-virtual { v0, v1, v1, v1, v1 }, Landroid/widget/LinearLayout;->setPadding(IIII)V
  .line 202
    invoke-static { }, Lcom/geely/drivemem/util/Style;->cardFillColor()I
    move-result v1
    invoke-static { v1, p1 }, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 203
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, -2
    const/high16 v3, 0x3f800000
    invoke-direct { v1, v4, v2, v3 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
  .line 204
    if-eqz p6, :L0
    const/16 v2, 12
    invoke-static { p1, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
  :L0
  .line 205
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 206
    const/high16 v1, 0x41780000
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-static { p1, p2, v1, v2, v5 }, Lcom/geely/drivemem/ui/TrendsView;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 207
    const/4 v1, 6
    invoke-static { p1, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
    invoke-virtual { p3, v4, v1, v4, v4 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 208
    invoke-virtual { v0, p3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 209
    const/4 v1, 2
    invoke-static { p1, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
    const/16 v2, 8
    invoke-static { p1, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
    invoke-virtual { p4, v4, v1, v4, v2 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 210
    invoke-virtual { v0, p4 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 211
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, -1
    const/16 v3, 230
    invoke-static { p1, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
    invoke-direct { v1, v2, v3 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual { v0, p5, v1 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 212
    return-object v0
.end method

.method private static compactVnd(D)Ljava/lang/String;
  .registers 12
  .prologue
    const-wide v8, 4696837146684686336L
    const-wide v4, 4652007308841189376L
    const/4 v2, 1
    const/4 v6, 0
  .line 216
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
  .line 218
    return-object v0
  :L1
  .line 217
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
  .line 218
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

.method private confirmRecalc()V
  .registers 7
  .prologue
  .line 170
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/TrendsView;->getContext()Landroid/content/Context;
    move-result-object v0
  .line 171
    new-instance v1, Landroid/app/AlertDialog$Builder;
    invoke-direct { v1, v0 }, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    const-string v2, "Recalculate AC sessions?"
  .line 172
    invoke-virtual { v1, v2 }, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    move-result-object v1
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "The cost of every finished AC session will be replaced by kWh \u00d7 "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
  .line 174
    invoke-static { v0 }, Lcom/geely/drivemem/util/AutoCost;->acPrice(Landroid/content/Context;)J
    move-result-wide v4
    long-to-double v4, v4
    invoke-static { v4, v5 }, Lcom/geely/drivemem/ui/TrendsView;->fullVnd(D)Ljava/lang/String;
    move-result-object v3
    const-string v4, " \u0111"
    const-string v5, " \u0111"
    invoke-virtual { v3, v4, v5 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, ". Costs you typed by hand for AC sessions will be overwritten. DC sessions are not touched."
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
  .line 173
    invoke-virtual { v1, v2 }, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    move-result-object v1
    const/high16 v2, 0x1040000
    const/4 v3, 0
  .line 175
    invoke-virtual { v1, v2, v3 }, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    move-result-object v1
    const-string v2, "Recalculate"
    new-instance v3, Lcom/geely/drivemem/ui/TrendsView$7;
    invoke-direct { v3, p0, v0 }, Lcom/geely/drivemem/ui/TrendsView$7;-><init>(Lcom/geely/drivemem/ui/TrendsView;Landroid/content/Context;)V
  .line 176
    invoke-virtual { v1, v2, v3 }, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    move-result-object v0
  .line 185
    invoke-virtual { v0 }, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
  .line 186
    return-void
.end method

.method private static delta([DLjava/lang/String;IZ)Ljava/lang/String;
  .registers 13
  .prologue
    const/4 v8, 2
    const-wide/16 v6, 0
  .line 355
    array-length v0, p0
  .line 356
    if-ge v0, v8, :L1
    const-string v0, ""
  :L0
  .line 362
    return-object v0
  :L1
  .line 357
    add-int/lit8 v1, v0, -2
    aget-wide v2, p0, v1
    add-int/lit8 v0, v0, -1
    aget-wide v4, p0, v0
  .line 358
    if-nez p2, :L3
    const-string v0, "yesterday"
    move-object v1, v0
  :L2
  .line 359
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
  .line 358
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
  .line 359
    const-string v0, ""
    goto :L0
  :L5
  .line 360
    sub-double/2addr v4, v2
    div-double v2, v4, v2
    const-wide/high16 v4, 0x4059000000000000L
    mul-double/2addr v2, v4
  .line 361
    const-wide/high16 v4, 0x3fe0000000000000L
    cmpl-double v0, v2, v4
    if-lez v0, :L7
    const-string v0, "\u25b2 "
  :L6
  .line 362
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
  .line 361
    const-wide/high16 v4, 0xbfe0000000000000L
    cmpg-double v0, v2, v4
    if-gez v0, :L8
    const-string v0, "\u25bc "
    goto :L6
  :L8
    const-string v0, ""
    goto :L6
.end method

.method private editAcPrice()V
  .registers 6
  .prologue
  .line 148
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/TrendsView;->getContext()Landroid/content/Context;
    move-result-object v0
  .line 149
    new-instance v1, Landroid/widget/EditText;
    invoke-direct { v1, v0 }, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V
  .line 150
    const/4 v2, 2
    invoke-virtual { v1, v2 }, Landroid/widget/EditText;->setInputType(I)V
  .line 151
    invoke-static { v0 }, Lcom/geely/drivemem/util/AutoCost;->acPrice(Landroid/content/Context;)J
    move-result-wide v2
    invoke-static { v2, v3 }, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
  .line 152
    const/4 v2, 1
    invoke-virtual { v1, v2 }, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V
  .line 153
    new-instance v2, Landroid/app/AlertDialog$Builder;
    invoke-direct { v2, v0 }, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    const-string v3, "AC price (VND per kWh)"
  .line 154
    invoke-virtual { v2, v3 }, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    move-result-object v2
  .line 155
    invoke-virtual { v2, v1 }, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    move-result-object v2
    const/high16 v3, 0x1040000
    const/4 v4, 0
  .line 156
    invoke-virtual { v2, v3, v4 }, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    move-result-object v2
    const v3, 17039370
    new-instance v4, Lcom/geely/drivemem/ui/TrendsView$6;
    invoke-direct { v4, p0, v1, v0 }, Lcom/geely/drivemem/ui/TrendsView$6;-><init>(Lcom/geely/drivemem/ui/TrendsView;Landroid/widget/EditText;Landroid/content/Context;)V
  .line 157
    invoke-virtual { v2, v3, v4 }, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    move-result-object v0
  .line 166
    invoke-virtual { v0 }, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
  .line 167
    return-void
.end method

.method private static fullVnd(D)Ljava/lang/String;
  .registers 8
  .prologue
  .line 222
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
  .line 255
    const-string v0, "-"
    invoke-virtual { p0, v0 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v0
  .line 256
    const/4 v1, 1
    aget-object v1, v0, v1
    invoke-static { v1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v1
    const/4 v2, 2
    aget-object v2, v0, v2
    invoke-static { v2 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v2
  .line 257
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
  .line 259
    return-object p0
  :L2
  .line 258
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
  .line 259
    move-exception v0
    goto :L1
.end method

.method private load(Landroid/content/Context;I)Lcom/geely/drivemem/ui/TrendsView$Series;
  .registers 9
  .prologue
  .line 263
    new-instance v3, Lcom/geely/drivemem/ui/TrendsView$Series;
    const/4 v0, 0
    invoke-direct { v3, v0 }, Lcom/geely/drivemem/ui/TrendsView$Series;-><init>(Lcom/geely/drivemem/ui/TrendsView$1;)V
  .line 264
    invoke-static { }, Lcom/geely/drivemem/sensors/DailyStatsProvider;->todayDateStr()Ljava/lang/String;
    move-result-object v2
  .line 265
    if-nez p2, :L1
  .line 266
    invoke-static { }, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
    move-result-object v2
  .line 267
    const/16 v0, 13
    move v1, v0
  :L0
    if-ltz v1, :L7
  .line 268
    invoke-virtual { v2 }, Ljava/util/Calendar;->clone()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/Calendar;
  .line 269
    const/4 v4, 5
    neg-int v5, v1
    invoke-virtual { v0, v4, v5 }, Ljava/util/Calendar;->add(II)V
  .line 270
    sget-object v4, Lcom/geely/drivemem/ui/TrendsView;->DAY:Ljava/text/SimpleDateFormat;
    invoke-virtual { v0 }, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    move-result-object v0
    invoke-virtual { v4, v0 }, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object v0
  .line 271
    invoke-static { p1, v0 }, Lcom/geely/drivemem/sensors/DailyStatsProvider;->getDayOverview(Landroid/content/Context;Ljava/lang/String;)Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;
    move-result-object v4
  .line 272
    invoke-static { v0, p2 }, Lcom/geely/drivemem/ui/TrendsView;->label(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v0
    invoke-static { v3, v0, v4 }, Lcom/geely/drivemem/ui/TrendsView;->add(Lcom/geely/drivemem/ui/TrendsView$Series;Ljava/lang/String;Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;)V
  .line 267
    add-int/lit8 v0, v1, -1
    move v1, v0
    goto :L0
  :L1
  .line 275
    const/4 v0, 1
    if-ne p2, v0, :L5
  .line 276
    const/16 v0, 8
    invoke-static { p1, v2, v0 }, Lcom/geely/drivemem/sensors/DailyStatsProvider;->recentWeeks(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    move-result-object v0
  :L2
  .line 278
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v4
  :L3
    invoke-interface { v4 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L7
    invoke-interface { v4 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;
  .line 279
    iget-object v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;->days:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->isEmpty()Z
    move-result v1
    if-eqz v1, :L6
    move-object v1, v2
  :L4
  .line 280
    invoke-static { v1, p2 }, Lcom/geely/drivemem/ui/TrendsView;->label(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v1
    iget-object v0, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;->totals:Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;
    invoke-static { v3, v1, v0 }, Lcom/geely/drivemem/ui/TrendsView;->add(Lcom/geely/drivemem/ui/TrendsView$Series;Ljava/lang/String;Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;)V
    goto :L3
  :L5
  .line 277
    const/4 v0, 6
    invoke-static { p1, v2, v0 }, Lcom/geely/drivemem/sensors/DailyStatsProvider;->recentMonths(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    move-result-object v0
    goto :L2
  :L6
  .line 279
    iget-object v1, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;->days:Ljava/util/List;
    const/4 v5, 0
    invoke-interface { v1, v5 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;
    iget-object v1, v1, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->date:Ljava/lang/String;
    goto :L4
  :L7
  .line 283
    return-object v3
.end method

.method private pickDate(J)V
  .registers 10
  .prologue
  .line 395
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/TrendsView;->getContext()Landroid/content/Context;
    move-result-object v1
  .line 396
    invoke-static { }, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
    move-result-object v5
  .line 397
    new-instance v0, Landroid/app/DatePickerDialog;
    new-instance v2, Lcom/geely/drivemem/ui/TrendsView$12;
    invoke-direct { v2, p0, v1 }, Lcom/geely/drivemem/ui/TrendsView$12;-><init>(Lcom/geely/drivemem/ui/TrendsView;Landroid/content/Context;)V
    const/4 v3, 1
  .line 406
    invoke-virtual { v5, v3 }, Ljava/util/Calendar;->get(I)I
    move-result v3
    const/4 v4, 2
    invoke-virtual { v5, v4 }, Ljava/util/Calendar;->get(I)I
    move-result v4
    const/4 v6, 5
    invoke-virtual { v5, v6 }, Ljava/util/Calendar;->get(I)I
    move-result v5
    invoke-direct/range { v0 .. v5 }, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
  .line 407
    invoke-virtual { v0 }, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;
    move-result-object v1
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    invoke-virtual { v1, v2, v3 }, Landroid/widget/DatePicker;->setMaxDate(J)V
  .line 408
    invoke-virtual { v0 }, Landroid/app/DatePickerDialog;->show()V
  .line 409
    return-void
.end method

.method private show(Lcom/geely/drivemem/ui/TrendsView$Series;I)V
  .registers 15
  .prologue
  .line 329
    iget-object v0, p1, Lcom/geely/drivemem/ui/TrendsView$Series;->energy:Ljava/util/List;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/TrendsView;->arr(Ljava/util/List;)[D
    move-result-object v1
    iget-object v0, p1, Lcom/geely/drivemem/ui/TrendsView$Series;->dist:Ljava/util/List;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/TrendsView;->arr(Ljava/util/List;)[D
    move-result-object v2
    iget-object v0, p1, Lcom/geely/drivemem/ui/TrendsView$Series;->cost:Ljava/util/List;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/TrendsView;->arr(Ljava/util/List;)[D
    move-result-object v3
  .line 330
    iget-object v0, p1, Lcom/geely/drivemem/ui/TrendsView$Series;->labels:Ljava/util/List;
    const/4 v4, 0
    new-array v4, v4, [Ljava/lang/String;
    invoke-interface { v0, v4 }, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Ljava/lang/String;
  .line 331
    iget-object v4, p0, Lcom/geely/drivemem/ui/TrendsView;->energyBars:Lcom/geely/drivemem/ui/BarsView;
    invoke-virtual { v4, v1, v0 }, Lcom/geely/drivemem/ui/BarsView;->setData([D[Ljava/lang/String;)V
  .line 332
    iget-object v4, p0, Lcom/geely/drivemem/ui/TrendsView;->distBars:Lcom/geely/drivemem/ui/BarsView;
    invoke-virtual { v4, v2, v0 }, Lcom/geely/drivemem/ui/BarsView;->setData([D[Ljava/lang/String;)V
  .line 333
    iget-object v4, p0, Lcom/geely/drivemem/ui/TrendsView;->costBars:Lcom/geely/drivemem/ui/BarsView;
    invoke-virtual { v4, v3, v0 }, Lcom/geely/drivemem/ui/BarsView;->setData([D[Ljava/lang/String;)V
  .line 334
    array-length v4, v1
  .line 335
    if-nez p2, :L7
    const-string v0, "today"
  :L0
  .line 336
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
  .line 337
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
  .line 338
    iget-object v5, p0, Lcom/geely/drivemem/ui/TrendsView;->costHead:Landroid/widget/TextView;
    add-int/lit8 v0, v4, -1
    aget-wide v6, v3, v0
    const-wide/16 v8, 0
    cmpl-double v0, v6, v8
    if-lez v0, :L8
    add-int/lit8 v0, v4, -1
    aget-wide v6, v3, v0
    invoke-static { v6, v7 }, Lcom/geely/drivemem/ui/TrendsView;->fullVnd(D)Ljava/lang/String;
    move-result-object v0
  :L1
    invoke-virtual { v5, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 339
    iget-object v0, p1, Lcom/geely/drivemem/ui/TrendsView$Series;->eff:Ljava/util/List;
    add-int/lit8 v5, v4, -1
    invoke-interface { v0, v5 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Double;
    invoke-virtual { v0 }, Ljava/lang/Double;->doubleValue()D
    move-result-wide v6
  .line 340
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
    if-lez v0, :L9
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
  .line 341
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->energySub:Landroid/widget/TextView;
    sget v1, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 342
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->distSub:Landroid/widget/TextView;
    const-string v1, "%.0f km"
    const/4 v5, 0
    invoke-static { v2, v1, p2, v5 }, Lcom/geely/drivemem/ui/TrendsView;->delta([DLjava/lang/String;IZ)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 343
    add-int/lit8 v0, v4, -1
    aget-wide v0, v3, v0
    const-wide/16 v6, 0
    cmpl-double v0, v0, v6
    if-lez v0, :L10
    add-int/lit8 v0, v4, -1
    aget-wide v0, v2, v0
    const-wide/high16 v6, 0x3ff0000000000000L
    cmpl-double v0, v0, v6
    if-ltz v0, :L10
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    const-string v1, "%,.0f \u0111/km"
    const/4 v5, 1
    new-array v5, v5, [Ljava/lang/Object;
    const/4 v6, 0
    add-int/lit8 v7, v4, -1
    aget-wide v8, v3, v7
    add-int/lit8 v7, v4, -1
    aget-wide v10, v2, v7
    div-double/2addr v8, v10
    invoke-static { v8, v9 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v2
    aput-object v2, v5, v6
    invoke-static { v0, v1, v5 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
  :L3
  .line 344
    const/4 v1, 0
    const/4 v2, 1
    invoke-static { v3, v1, p2, v2 }, Lcom/geely/drivemem/ui/TrendsView;->delta([DLjava/lang/String;IZ)Ljava/lang/String;
    move-result-object v1
  .line 345
    iget-object v2, p0, Lcom/geely/drivemem/ui/TrendsView;->costSub:Landroid/widget/TextView;
    add-int/lit8 v4, v4, -1
    aget-wide v4, v3, v4
    const-wide/16 v6, 0
    cmpl-double v4, v4, v6
    if-gtz v4, :L4
    invoke-static { v3 }, Lcom/geely/drivemem/ui/TrendsView;->anyPositive([D)Z
    move-result v3
    if-eqz v3, :L13
  :L4
  .line 346
    invoke-virtual { v1 }, Ljava/lang/String;->isEmpty()Z
    move-result v3
    if-eqz v3, :L11
  :L5
  .line 345
    invoke-virtual { v2, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 348
    iget-object v1, p0, Lcom/geely/drivemem/ui/TrendsView;->note:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    iget-boolean v0, p1, Lcom/geely/drivemem/ui/TrendsView$Series;->estimated:Z
    if-eqz v0, :L14
    const-string v0, "Electricity is estimated from the battery percentage (~). "
  :L6
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v2, "The last bar is the current "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
  .line 349
    invoke-static { p2 }, Lcom/geely/drivemem/ui/TrendsView;->unitName(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v2, ", still in progress."
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 348
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 350
    return-void
  :L7
  .line 335
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
  :L8
  .line 338
    const-string v0, "\u2014"
    goto/16 :L1
  :L9
  .line 340
    const-string v0, ""
    goto/16 :L2
  :L10
  .line 343
    const-string v0, ""
    goto :L3
  :L11
  .line 346
    invoke-virtual { v0 }, Ljava/lang/String;->isEmpty()Z
    move-result v3
    if-eqz v3, :L12
    move-object v0, v1
    goto :L5
  :L12
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v3, "  \u00b7  "
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    goto :L5
  :L13
  .line 347
    const-string v0, "No charging costs yet"
    goto :L5
  :L14
  .line 348
    const-string v0, ""
    goto :L6
.end method

.method private showFull(J)V
  .registers 12
  .prologue
    const/4 v2, 0
  .line 367
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/TrendsView;->getContext()Landroid/content/Context;
    move-result-object v3
  .line 368
    invoke-static { v3 }, Lcom/geely/drivemem/util/FullCharge;->intervalDays(Landroid/content/Context;)I
    move-result v4
  .line 369
    invoke-static { v3, p1, p2 }, Lcom/geely/drivemem/util/FullCharge;->baseMs(Landroid/content/Context;J)J
    move-result-wide v0
  .line 370
    invoke-static { v0, v1 }, Lcom/geely/drivemem/util/FullCharge;->daysSince(J)I
    move-result v5
  .line 371
    if-lt v5, v4, :L5
    const/4 v0, 1
    move v1, v0
  :L0
  .line 372
    const-wide/16 v6, 0
    cmp-long v0, p1, v6
    if-lez v0, :L7
  .line 373
    iget-object v6, p0, Lcom/geely/drivemem/ui/TrendsView;->fullHead:Landroid/widget/TextView;
    if-nez v5, :L6
    const-string v0, "Charged to 100% today"
  :L1
    invoke-virtual { v6, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 374
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
  .line 380
    iget-object v5, p0, Lcom/geely/drivemem/ui/TrendsView;->fullHead:Landroid/widget/TextView;
    if-eqz v1, :L8
    const-string v0, "#FF9F0A"
    invoke-static { v0 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v0
  :L3
    invoke-virtual { v5, v0 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 381
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->fullBtns:Landroid/widget/LinearLayout;
    invoke-virtual { v0 }, Landroid/widget/LinearLayout;->removeAllViews()V
  .line 382
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
    new-instance v4, Lcom/geely/drivemem/ui/TrendsView$10;
    invoke-direct { v4, p0, v3, p1, p2 }, Lcom/geely/drivemem/ui/TrendsView$10;-><init>(Lcom/geely/drivemem/ui/TrendsView;Landroid/content/Context;J)V
    invoke-static { v3, v0, v2, v4 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v0
    invoke-virtual { v1, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 388
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->fullBtns:Landroid/widget/LinearLayout;
    const/16 v1, 12
    invoke-static { v0, v3, v1 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 389
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->fullBtns:Landroid/widget/LinearLayout;
    const-string v1, "I charged to 100% on\u2026"
    new-instance v4, Lcom/geely/drivemem/ui/TrendsView$11;
    invoke-direct { v4, p0, p1, p2 }, Lcom/geely/drivemem/ui/TrendsView$11;-><init>(Lcom/geely/drivemem/ui/TrendsView;J)V
    invoke-static { v3, v1, v2, v4 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 392
    return-void
  :L5
    move v1, v2
  .line 371
    goto/16 :L0
  :L6
  .line 373
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
  .line 376
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->fullHead:Landroid/widget/TextView;
    const-string v6, "No 100% charge recorded yet"
    invoke-virtual { v0, v6 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 377
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
  .line 380
    const-string v0, "#30D158"
    invoke-static { v0 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v0
    goto/16 :L3
  :L9
  .line 382
    const-string v0, "30"
    goto :L4
.end method

.method private showPrice()V
  .registers 6
  .prologue
  .line 144
    iget-object v0, p0, Lcom/geely/drivemem/ui/TrendsView;->priceHead:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "AC: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/TrendsView;->getContext()Landroid/content/Context;
    move-result-object v2
    invoke-static { v2 }, Lcom/geely/drivemem/util/AutoCost;->acPrice(Landroid/content/Context;)J
    move-result-wide v2
    long-to-double v2, v2
    invoke-static { v2, v3 }, Lcom/geely/drivemem/ui/TrendsView;->fullVnd(D)Ljava/lang/String;
    move-result-object v2
    const-string v3, " \u0111"
    const-string v4, " \u0111/kWh"
    invoke-virtual { v2, v3, v4 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 145
    return-void
.end method

.method private static text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
  .registers 7
  .prologue
  .line 189
    new-instance v0, Landroid/widget/TextView;
    invoke-direct { v0, p0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 190
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 191
    invoke-virtual { v0, p2 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 192
    invoke-virtual { v0, p3 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 193
    if-eqz p4, :L0
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  :L0
  .line 194
    return-object v0
.end method

.method private static unitName(I)Ljava/lang/String;
  .registers 2
  .prologue
  .line 326
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
  .line 302
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/TrendsView;->getContext()Landroid/content/Context;
    move-result-object v0
  .line 303
    iget v1, p0, Lcom/geely/drivemem/ui/TrendsView;->token:I
    add-int/lit8 v1, v1, 1
    iput v1, p0, Lcom/geely/drivemem/ui/TrendsView;->token:I
  .line 304
    iget v2, p0, Lcom/geely/drivemem/ui/TrendsView;->period:I
  .line 305
    iget-object v3, p0, Lcom/geely/drivemem/ui/TrendsView;->energyHead:Landroid/widget/TextView;
    const-string v4, "\u2026"
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 306
    iget-object v3, p0, Lcom/geely/drivemem/ui/TrendsView;->distHead:Landroid/widget/TextView;
    const-string v4, "\u2026"
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 307
    iget-object v3, p0, Lcom/geely/drivemem/ui/TrendsView;->costHead:Landroid/widget/TextView;
    const-string v4, "\u2026"
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 308
    new-instance v3, Ljava/lang/Thread;
    new-instance v4, Lcom/geely/drivemem/ui/TrendsView$9;
    invoke-direct { v4, p0, v0, v2, v1 }, Lcom/geely/drivemem/ui/TrendsView$9;-><init>(Lcom/geely/drivemem/ui/TrendsView;Landroid/content/Context;II)V
    const-string v0, "trends-load"
    invoke-direct { v3, v4, v0 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 323
    invoke-virtual { v3 }, Ljava/lang/Thread;->start()V
  .line 324
    return-void
.end method
