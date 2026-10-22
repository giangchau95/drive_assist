.class public Lcom/geely/drivemem/ui/ChargeStatsView;
.super Landroid/widget/LinearLayout;
.source "ChargeStatsView.java"


# static fields
.field private static final DAY_FMT:Ljava/text/SimpleDateFormat;

.field private static final SHORT_DAY_FMT:Ljava/text/SimpleDateFormat;


# instance fields
.field private final chargeListener:Lcom/geely/drivemem/car/EntityBus$Listener;

.field private chargeSocChart:Lcom/geely/drivemem/ui/ChargeSocChart;

.field private energyBalanceChart:Lcom/geely/drivemem/ui/EnergyBalanceChart;

.field private headerContainer:Landroid/widget/LinearLayout;

.field private kpiContainer:Landroid/widget/LinearLayout;

.field private listContainer:Landroid/widget/LinearLayout;

.field private final onBack:Ljava/lang/Runnable;

.field private periodDays:I

.field private selectedSessionId:J

.field private sessionListScroll:Landroid/widget/ScrollView;

.field private final sessionRows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final visibleSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/geely/drivemem/state/ChargeSession$Summary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1Q2QOFUI6152glQI-M4fhIjQ9Zw(Lcom/geely/drivemem/ui/ChargeStatsView;Landroid/content/Context;ZLjava/io/File;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/geely/drivemem/ui/ChargeStatsView;->lambda$refresh$3(Landroid/content/Context;ZLjava/io/File;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RV8s3GjIkCRkEK_YPDWQVxEwZwA(Lcom/geely/drivemem/ui/ChargeStatsView;Lcom/geely/drivemem/state/ChargeSession$Summary;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/geely/drivemem/ui/ChargeStatsView;->lambda$chargeRow$9(Lcom/geely/drivemem/state/ChargeSession$Summary;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aOqBiRLZ88LvD8KLNVkXhJgzpmw(Lcom/geely/drivemem/ui/ChargeStatsView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/geely/drivemem/ui/ChargeStatsView;->lambda$refresh$4(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e2zu6u6klV17zxSRKd1wj5CwA20(Lcom/geely/drivemem/ui/ChargeStatsView;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/geely/drivemem/ui/ChargeStatsView;->lambda$buildSkeleton$1(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$fB7bgy2JIZ8x2e2UFlSxjzykxVU(Lcom/geely/drivemem/ui/ChargeStatsView;Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/geely/drivemem/ui/ChargeStatsView;->lambda$new$0(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jq7GMfmuLbul4KtDdS11tX0TZn4(Lcom/geely/drivemem/ui/ChargeStatsView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/geely/drivemem/ui/ChargeStatsView;->lambda$sideButton$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$v-7p-ZOqVLtRrOj0hJrk_OGIFiI(Lcom/geely/drivemem/ui/ChargeStatsView;Landroid/content/Context;Lcom/geely/drivemem/state/ChargeSession$Summary;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/geely/drivemem/ui/ChargeStatsView;->lambda$chargeRow$8(Landroid/content/Context;Lcom/geely/drivemem/state/ChargeSession$Summary;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zCy8UBHfdKkICgE4d4BfiXVRluI(Lcom/geely/drivemem/ui/ChargeStatsView;Landroid/content/Context;Lcom/geely/drivemem/state/ChargeSession$Summary;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/geely/drivemem/ui/ChargeStatsView;->lambda$chargeRow$7(Landroid/content/Context;Lcom/geely/drivemem/state/ChargeSession$Summary;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 192
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/geely/drivemem/ui/ChargeStatsView;->DAY_FMT:Ljava/text/SimpleDateFormat;

    .line 194
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d/M"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/geely/drivemem/ui/ChargeStatsView;->SHORT_DAY_FMT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/geely/drivemem/ui/ChargeStatsView;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x1e

    .line 37
    iput v0, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->periodDays:I

    const-wide/16 v0, -0x1

    .line 45
    iput-wide v0, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->selectedSessionId:J

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->visibleSessions:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->sessionRows:Ljava/util/Map;

    .line 49
    new-instance v0, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda0;-><init>(Lcom/geely/drivemem/ui/ChargeStatsView;)V

    iput-object v0, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->chargeListener:Lcom/geely/drivemem/car/EntityBus$Listener;

    .line 59
    iput-object p2, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->onBack:Ljava/lang/Runnable;

    const/4 p2, 0x1

    .line 60
    invoke-virtual {p0, p2}, Lcom/geely/drivemem/ui/ChargeStatsView;->setOrientation(I)V

    const/16 p2, 0x10

    .line 61
    invoke-static {p1, p2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p2

    const/16 v0, 0x20

    .line 62
    invoke-static {p1, v0}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p2, p2, p2, p1}, Lcom/geely/drivemem/ui/ChargeStatsView;->setPadding(IIII)V

    .line 64
    invoke-direct {p0}, Lcom/geely/drivemem/ui/ChargeStatsView;->buildSkeleton()V

    .line 65
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/ChargeStatsView;->refresh()V

    return-void
.end method

.method private buildSkeleton()V
    .locals 15

    .line 83
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/ChargeStatsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->headerContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    .line 87
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 88
    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->headerContainer:Landroid/widget/LinearLayout;

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 89
    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->onBack:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 90
    iget-object v4, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->headerContainer:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/geely/drivemem/util/Style;->backButton(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->headerContainer:Landroid/widget/LinearLayout;

    invoke-static {v1, v0, v3}, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->headerContainer:Landroid/widget/LinearLayout;

    sget v4, Lcom/geely/drivemem/R$string;->charge_stats_title:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/geely/drivemem/util/Style;->header(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->headerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/geely/drivemem/ui/ChargeStatsView;->addView(Landroid/view/View;)V

    .line 97
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->kpiContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    .line 98
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 99
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xc

    .line 101
    invoke-static {v0, v7}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v8

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 102
    iget-object v8, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->kpiContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->kpiContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/geely/drivemem/ui/ChargeStatsView;->addView(Landroid/view/View;)V

    .line 113
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 115
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 116
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 118
    invoke-static {v0, v7}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 119
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0xe

    .line 123
    invoke-static {v0, v9}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v9

    .line 124
    invoke-virtual {v8, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 125
    invoke-static {}, Lcom/geely/drivemem/util/Style;->cardFillColor()I

    move-result v10

    invoke-static {v10, v0}, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 126
    sget v10, Lcom/geely/drivemem/R$string;->charge_sessions_title:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/geely/drivemem/util/Style;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v10

    const/high16 v11, 0x41600000    # 14.0f

    .line 127
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v12, 0x0

    .line 128
    invoke-virtual {v10, v12, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 129
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    new-instance v10, Landroid/widget/ScrollView;

    invoke-direct {v10, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->sessionListScroll:Landroid/widget/ScrollView;

    .line 132
    invoke-virtual {v10, v2}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 133
    iget-object v10, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->sessionListScroll:Landroid/widget/ScrollView;

    const/4 v13, 0x2

    invoke-virtual {v10, v13}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 134
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->listContainer:Landroid/widget/LinearLayout;

    .line 135
    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 136
    iget-object v10, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->sessionListScroll:Landroid/widget/ScrollView;

    iget-object v13, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->listContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v13}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 140
    iget-object v10, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->sessionListScroll:Landroid/widget/ScrollView;

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x154

    .line 141
    invoke-static {v0, v14}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v14

    invoke-direct {v13, v5, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 140
    invoke-virtual {v8, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x42380000    # 46.0f

    invoke-direct {v10, v2, v6, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 144
    invoke-static {v0, v7}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v13

    iput v13, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 145
    invoke-virtual {v1, v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v10, 0x8

    .line 149
    invoke-static {v0, v10}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v8, v9, v9, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 150
    invoke-static {}, Lcom/geely/drivemem/util/Style;->cardFillColor()I

    move-result v9

    invoke-static {v9, v0}, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 151
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 153
    sget v3, Lcom/geely/drivemem/R$string;->charge_soc_chart_title:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/geely/drivemem/util/Style;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    .line 154
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 155
    invoke-virtual {v3, v12, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 156
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v10, v2, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    const-string v3, "AC"

    sget v10, Lcom/geely/drivemem/util/Style;->ACCENT:I

    invoke-direct {p0, v0, v3, v10}, Lcom/geely/drivemem/ui/ChargeStatsView;->legend(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    const-string v3, "DC"

    sget v10, Lcom/geely/drivemem/util/Style;->GOOD:I

    invoke-direct {p0, v0, v3, v10}, Lcom/geely/drivemem/ui/ChargeStatsView;->legend(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    new-instance v3, Lcom/geely/drivemem/ui/ChargeSocChart;

    invoke-direct {v3, v0}, Lcom/geely/drivemem/ui/ChargeSocChart;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->chargeSocChart:Lcom/geely/drivemem/ui/ChargeSocChart;

    .line 162
    new-instance v9, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda10;

    invoke-direct {v9, p0}, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda10;-><init>(Lcom/geely/drivemem/ui/ChargeStatsView;)V

    invoke-virtual {v3, v9}, Lcom/geely/drivemem/ui/ChargeSocChart;->setListener(Lcom/geely/drivemem/ui/ChargeSocChart$Listener;)V

    .line 167
    iget-object v3, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->chargeSocChart:Lcom/geely/drivemem/ui/ChargeSocChart;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 176
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 177
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    new-instance v4, Lcom/geely/drivemem/ui/EnergyBalanceChart;

    invoke-direct {v4, v0}, Lcom/geely/drivemem/ui/EnergyBalanceChart;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->energyBalanceChart:Lcom/geely/drivemem/ui/EnergyBalanceChart;

    .line 181
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 183
    invoke-static {v0, v7}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v0

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 184
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->energyBalanceChart:Lcom/geely/drivemem/ui/EnergyBalanceChart;

    invoke-virtual {v0, v4}, Lcom/geely/drivemem/ui/EnergyBalanceChart;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->energyBalanceChart:Lcom/geely/drivemem/ui/EnergyBalanceChart;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42580000    # 54.0f

    invoke-direct {v0, v2, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-virtual {p0, v1}, Lcom/geely/drivemem/ui/ChargeStatsView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private chargeRow(Lcom/geely/drivemem/state/ChargeSession$Summary;)Landroid/view/View;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/geely/drivemem/ui/ChargeStatsView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 381
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 382
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    .line 389
    invoke-static {v2, v5}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v6

    const/16 v7, 0x18

    .line 390
    invoke-static {v2, v7}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v7

    const/16 v8, 0xa

    .line 391
    invoke-static {v2, v8}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v8

    .line 392
    invoke-virtual {v3, v6, v8, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 393
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 395
    invoke-static {v2, v5}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 396
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    invoke-virtual/range {p1 .. p1}, Lcom/geely/drivemem/state/ChargeSession$Summary;->isDcfc()Z

    move-result v6

    .line 399
    invoke-virtual/range {p1 .. p1}, Lcom/geely/drivemem/state/ChargeSession$Summary;->hasChargeVoltage()Z

    move-result v9

    if-nez v9, :cond_0

    sget v9, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_1

    sget v9, Lcom/geely/drivemem/util/Style;->GOOD:I

    goto :goto_0

    :cond_1
    sget v9, Lcom/geely/drivemem/util/Style;->ACCENT:I

    .line 408
    :goto_0
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x0

    .line 409
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v12, 0x30

    .line 410
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 413
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 414
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 415
    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 416
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v13, v11, v8, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-eqz v6, :cond_2

    .line 423
    sget v15, Lcom/geely/drivemem/R$drawable;->ic_ev_plug_ccs2:I

    goto :goto_1

    :cond_2
    sget v15, Lcom/geely/drivemem/R$drawable;->ic_power_plug:I

    :goto_1
    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 424
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v13, v9, v15}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 425
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0x14

    invoke-static {v2, v15}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v2, v15}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v15

    invoke-direct {v9, v7, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x8

    .line 426
    invoke-static {v2, v7}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v15

    iput v15, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 427
    invoke-virtual {v13, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 433
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 434
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 435
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 436
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 437
    invoke-virtual/range {p1 .. p1}, Lcom/geely/drivemem/state/ChargeSession$Summary;->title()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    sget v15, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v15, 0x41880000    # 17.0f

    .line 439
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v15, 0x0

    .line 440
    invoke-virtual {v13, v15, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 441
    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 442
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 443
    invoke-virtual/range {p1 .. p1}, Lcom/geely/drivemem/state/ChargeSession$Summary;->durationLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    sget v5, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41500000    # 13.0f

    .line 445
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 446
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 448
    invoke-static {v2, v7}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 449
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 451
    invoke-virtual {v12, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 452
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 457
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v7, 0x800015

    .line 458
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 459
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v11, v8, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 461
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 462
    iget v13, v1, Lcom/geely/drivemem/state/ChargeSession$Summary;->socStart:I

    iget v7, v1, Lcom/geely/drivemem/state/ChargeSession$Summary;->socEnd:I

    const v14, 0x3f2e147b    # 0.68f

    invoke-static {v13, v7, v14}, Lcom/geely/drivemem/util/Style;->percentRange(IIF)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 463
    const-string v7, "  "

    invoke-virtual {v12, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 468
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    move-object/from16 v17, v5

    iget-wide v4, v1, Lcom/geely/drivemem/state/ChargeSession$Summary;->kwh:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "+%.1f"

    invoke-static {v13, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "kWh"

    invoke-static {v4, v15, v5, v14, v11}, Lcom/geely/drivemem/util/Style;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;FZ)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 470
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    sget v4, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41980000    # 19.0f

    .line 472
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v5, 0x1

    .line 473
    invoke-virtual {v9, v15, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    move-object/from16 v5, v17

    .line 474
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 475
    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 476
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 478
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 479
    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x50

    .line 480
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 481
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v9, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v10, 0x4

    .line 483
    invoke-static {v2, v10}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v10

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 484
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 494
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v10, 0x10

    .line 495
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 496
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v10, v11, v8, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    new-instance v10, Landroid/view/View;

    invoke-direct {v10, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 498
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v13, 0x1c

    invoke-static {v2, v13}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v13

    invoke-direct {v12, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 501
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 502
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 503
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    move-object/from16 v16, v9

    iget-wide v8, v1, Lcom/geely/drivemem/state/ChargeSession$Summary;->avgPowerW:D

    const-wide v17, 0x408f400000000000L    # 1000.0

    div-double v8, v8, v17

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "%.1f"

    invoke-static {v13, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/geely/drivemem/util/Style;->TEXT:I

    .line 504
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v13, "kW"

    .line 503
    invoke-static {v8, v9, v13, v14}, Lcom/geely/drivemem/util/Style;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v12, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 505
    const-string v8, " avg."

    invoke-static {v12, v8, v14}, Lcom/geely/drivemem/util/Style;->appendUnit(Landroid/text/SpannableStringBuilder;Ljava/lang/String;F)V

    .line 506
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v8, 0x1

    .line 508
    invoke-virtual {v10, v15, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    move-object/from16 v8, v16

    .line 509
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 513
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 514
    sget v10, Lcom/geely/drivemem/R$drawable;->ic_chart_line:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 515
    sget v10, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v10, v12}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 516
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v10, 0x6

    .line 517
    invoke-static {v2, v10}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v10

    .line 518
    invoke-virtual {v9, v10, v10, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 521
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v12, 0x2c

    invoke-static {v2, v12}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v13

    invoke-static {v2, v12}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v12

    invoke-direct {v10, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    new-instance v10, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda5;

    invoke-direct {v10, v2, v1}, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;Lcom/geely/drivemem/state/ChargeSession$Summary;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 530
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 537
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v9, 0x800015

    .line 538
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 539
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v12, -0x2

    invoke-direct {v9, v11, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    iget-object v9, v1, Lcom/geely/drivemem/state/ChargeSession$Summary;->cost:Ljava/lang/Double;

    if-eqz v9, :cond_4

    iget-object v9, v1, Lcom/geely/drivemem/state/ChargeSession$Summary;->cost:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/16 v12, 0x0

    cmpl-double v9, v9, v12

    if-ltz v9, :cond_4

    .line 542
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 543
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 544
    invoke-virtual/range {p1 .. p1}, Lcom/geely/drivemem/state/ChargeSession$Summary;->costLabel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 545
    invoke-virtual/range {p1 .. p1}, Lcom/geely/drivemem/state/ChargeSession$Summary;->costPerKwhLabel()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 546
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/geely/drivemem/state/ChargeSession$Summary;->costPerKwhLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7, v14}, Lcom/geely/drivemem/util/Style;->appendUnit(Landroid/text/SpannableStringBuilder;Ljava/lang/String;F)V

    .line 548
    :cond_3
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    sget v7, Lcom/geely/drivemem/util/Style;->ACCENT:I

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 550
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v4, 0x1

    .line 551
    invoke-virtual {v9, v15, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 552
    new-instance v4, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0, v2, v1}, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda6;-><init>(Lcom/geely/drivemem/ui/ChargeStatsView;Landroid/content/Context;Lcom/geely/drivemem/state/ChargeSession$Summary;)V

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 561
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "+ "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/geely/drivemem/R$string;->charge_cost_label:I

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda7;

    invoke-direct {v7, v0, v2, v1}, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda7;-><init>(Lcom/geely/drivemem/ui/ChargeStatsView;Landroid/content/Context;Lcom/geely/drivemem/state/ChargeSession$Summary;)V

    invoke-static {v2, v4, v11, v7}, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;

    move-result-object v4

    .line 568
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 570
    :goto_2
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 571
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 572
    new-instance v4, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda8;

    invoke-direct {v4, v0, v1}, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda8;-><init>(Lcom/geely/drivemem/ui/ChargeStatsView;Lcom/geely/drivemem/state/ChargeSession$Summary;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    iget-wide v4, v1, Lcom/geely/drivemem/state/ChargeSession$Summary;->id:J

    iget-wide v7, v0, Lcom/geely/drivemem/ui/ChargeStatsView;->selectedSessionId:J

    cmp-long v1, v4, v7

    if-nez v1, :cond_6

    if-eqz v6, :cond_5

    .line 574
    sget v1, Lcom/geely/drivemem/util/Style;->GOOD:I

    goto :goto_3

    :cond_5
    sget v1, Lcom/geely/drivemem/util/Style;->ACCENT:I

    :goto_3
    invoke-static {v1, v2}, Lcom/geely/drivemem/util/Style;->outlinedCard(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    goto :goto_4

    .line 575
    :cond_6
    sget v1, Lcom/geely/drivemem/util/Style;->CARD:I

    invoke-static {v1, v2}, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 573
    :goto_4
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v3
.end method

.method private synthetic lambda$buildSkeleton$1(J)V
    .locals 1

    const/4 v0, 0x1

    .line 162
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/drivemem/ui/ChargeStatsView;->selectSession(JZ)V

    return-void
.end method

.method static synthetic lambda$chargeRow$6(Landroid/content/Context;Lcom/geely/drivemem/state/ChargeSession$Summary;Landroid/view/View;)V
    .locals 0

    .line 523
    invoke-static {}, Lcom/geely/drivemem/state/CarState;->isParked()Z

    move-result p2

    if-nez p2, :cond_0

    .line 524
    sget p1, Lcom/geely/drivemem/R$string;->charge_cost_parked_only:I

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 527
    :cond_0
    invoke-static {p0, p1}, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog;->show(Landroid/content/Context;Lcom/geely/drivemem/state/ChargeSession$Summary;)V

    return-void
.end method

.method private synthetic lambda$chargeRow$7(Landroid/content/Context;Lcom/geely/drivemem/state/ChargeSession$Summary;Landroid/view/View;)V
    .locals 9

    .line 553
    invoke-static {}, Lcom/geely/drivemem/state/CarState;->isParked()Z

    move-result p3

    if-nez p3, :cond_0

    .line 554
    sget p2, Lcom/geely/drivemem/R$string;->charge_cost_parked_only:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 557
    :cond_0
    iget-wide v1, p2, Lcom/geely/drivemem/state/ChargeSession$Summary;->id:J

    iget-wide v3, p2, Lcom/geely/drivemem/state/ChargeSession$Summary;->kwh:D

    iget v5, p2, Lcom/geely/drivemem/state/ChargeSession$Summary;->socStart:I

    iget v6, p2, Lcom/geely/drivemem/state/ChargeSession$Summary;->socEnd:I

    iget-object v7, p2, Lcom/geely/drivemem/state/ChargeSession$Summary;->cost:Ljava/lang/Double;

    new-instance v8, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0}, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda2;-><init>(Lcom/geely/drivemem/ui/ChargeStatsView;)V

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/geely/drivemem/ui/ChargeCostDialog;->show(Landroid/content/Context;JDIILjava/lang/Double;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    return-void
.end method

.method private synthetic lambda$chargeRow$8(Landroid/content/Context;Lcom/geely/drivemem/state/ChargeSession$Summary;)V
    .locals 9

    .line 562
    invoke-static {}, Lcom/geely/drivemem/state/CarState;->isParked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    sget p2, Lcom/geely/drivemem/R$string;->charge_cost_parked_only:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 566
    :cond_0
    iget-wide v1, p2, Lcom/geely/drivemem/state/ChargeSession$Summary;->id:J

    iget-wide v3, p2, Lcom/geely/drivemem/state/ChargeSession$Summary;->kwh:D

    iget v5, p2, Lcom/geely/drivemem/state/ChargeSession$Summary;->socStart:I

    iget v6, p2, Lcom/geely/drivemem/state/ChargeSession$Summary;->socEnd:I

    new-instance v8, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0}, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda2;-><init>(Lcom/geely/drivemem/ui/ChargeStatsView;)V

    const/4 v7, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/geely/drivemem/ui/ChargeCostDialog;->show(Landroid/content/Context;JDIILjava/lang/Double;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    return-void
.end method

.method private synthetic lambda$chargeRow$9(Lcom/geely/drivemem/state/ChargeSession$Summary;Landroid/view/View;)V
    .locals 1

    .line 572
    iget-wide p1, p1, Lcom/geely/drivemem/state/ChargeSession$Summary;->id:J

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/drivemem/ui/ChargeStatsView;->selectSession(JZ)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V
    .locals 0

    .line 50
    new-instance p1, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda2;-><init>(Lcom/geely/drivemem/ui/ChargeStatsView;)V

    invoke-virtual {p0, p1}, Lcom/geely/drivemem/ui/ChargeStatsView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$refresh$2(Ljava/io/File;Landroid/content/Context;ZI)V
    .locals 0

    if-nez p0, :cond_0

    .line 275
    sget p0, Lcom/geely/drivemem/R$string;->charge_export_no_drive:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    .line 277
    :cond_1
    sget p0, Lcom/geely/drivemem/R$string;->charge_export_ok:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 276
    :cond_2
    :goto_0
    sget p0, Lcom/geely/drivemem/R$string;->charge_export_nothing:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    const/4 p2, 0x1

    .line 278
    invoke-static {p1, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$refresh$3(Landroid/content/Context;ZLjava/io/File;I)V
    .locals 1

    .line 274
    new-instance v0, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda9;

    invoke-direct {v0, p3, p1, p2, p4}, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda9;-><init>(Ljava/io/File;Landroid/content/Context;ZI)V

    invoke-virtual {p0, v0}, Lcom/geely/drivemem/ui/ChargeStatsView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$refresh$4(Landroid/content/Context;)V
    .locals 3

    .line 274
    new-instance v0, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda1;-><init>(Lcom/geely/drivemem/ui/ChargeStatsView;Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/File;

    const/4 v2, 0x0

    .line 279
    invoke-static {p1}, Lcom/geely/drivemem/car/CarDb;->file(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    aput-object p1, v1, v2

    .line 274
    invoke-static {v0, v1}, Lcom/geely/drivemem/util/UsbExport;->exportFiles(Lcom/geely/drivemem/util/UsbExport$Callback;[Ljava/io/File;)V

    return-void
.end method

.method private synthetic lambda$sideButton$5(I)V
    .locals 0

    .line 348
    iput p1, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->periodDays:I

    .line 349
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/ChargeStatsView;->refresh()V

    return-void
.end method

.method private legend(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
    .locals 3

    .line 594
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u25cf "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41500000    # 13.0f

    .line 597
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p2, 0xc

    .line 598
    invoke-static {p1, p2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, p2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method private selectSession(JZ)V
    .locals 6

    .line 580
    iput-wide p1, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->selectedSessionId:J

    .line 581
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->sessionRows:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 582
    iget-object v2, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->visibleSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/drivemem/state/ChargeSession$Summary;

    if-eqz v2, :cond_0

    .line 583
    invoke-virtual {v2}, Lcom/geely/drivemem/state/ChargeSession$Summary;->isDcfc()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/geely/drivemem/util/Style;->GOOD:I

    goto :goto_1

    :cond_0
    sget v2, Lcom/geely/drivemem/util/Style;->ACCENT:I

    .line 584
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, p1

    if-nez v1, :cond_1

    .line 585
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/ChargeStatsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/geely/drivemem/util/Style;->outlinedCard(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    goto :goto_2

    .line 586
    :cond_1
    sget v1, Lcom/geely/drivemem/util/Style;->CARD:I

    invoke-virtual {p0}, Lcom/geely/drivemem/ui/ChargeStatsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 584
    :goto_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 588
    :cond_2
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->chargeSocChart:Lcom/geely/drivemem/ui/ChargeSocChart;

    xor-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/geely/drivemem/ui/ChargeSocChart;->select(JZ)V

    .line 589
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->sessionRows:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    .line 590
    iget-object p2, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->sessionListScroll:Landroid/widget/ScrollView;

    const/4 p3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    :cond_3
    return-void
.end method

.method static shortDayLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 338
    :try_start_0
    sget-object v0, Lcom/geely/drivemem/ui/ChargeStatsView;->SHORT_DAY_FMT:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/geely/drivemem/ui/ChargeStatsView;->DAY_FMT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method private sideButton(ILjava/lang/String;)Landroid/view/View;
    .locals 3

    .line 346
    iget v0, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->periodDays:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 347
    :goto_0
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/ChargeStatsView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda3;-><init>(Lcom/geely/drivemem/ui/ChargeStatsView;I)V

    invoke-static {v1, p2, v0, v2}, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;

    move-result-object p1

    .line 351
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method private statTile(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/widget/LinearLayout;
    .locals 6

    .line 357
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/geely/drivemem/ui/ChargeStatsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 358
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 359
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 360
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/geely/drivemem/ui/ChargeStatsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 363
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41d00000    # 26.0f

    .line 365
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x0

    .line 366
    invoke-virtual {v2, p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 367
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 368
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 370
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/geely/drivemem/ui/ChargeStatsView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 371
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    sget p2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41500000    # 13.0f

    .line 373
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 374
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 375
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 70
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 71
    const-string v0, "charge.completed"

    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->chargeListener:Lcom/geely/drivemem/car/EntityBus$Listener;

    invoke-static {v0, v1}, Lcom/geely/drivemem/car/EntityBus;->subscribe(Ljava/lang/String;Lcom/geely/drivemem/car/EntityBus$Listener;)V

    .line 72
    const-string v0, "charge.cost_updated"

    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->chargeListener:Lcom/geely/drivemem/car/EntityBus$Listener;

    invoke-static {v0, v1}, Lcom/geely/drivemem/car/EntityBus;->subscribe(Ljava/lang/String;Lcom/geely/drivemem/car/EntityBus$Listener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 77
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 78
    const-string v0, "charge.completed"

    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->chargeListener:Lcom/geely/drivemem/car/EntityBus$Listener;

    invoke-static {v0, v1}, Lcom/geely/drivemem/car/EntityBus;->unsubscribe(Ljava/lang/String;Lcom/geely/drivemem/car/EntityBus$Listener;)V

    .line 79
    const-string v0, "charge.cost_updated"

    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargeStatsView;->chargeListener:Lcom/geely/drivemem/car/EntityBus$Listener;

    invoke-static {v0, v1}, Lcom/geely/drivemem/car/EntityBus;->unsubscribe(Ljava/lang/String;Lcom/geely/drivemem/car/EntityBus$Listener;)V

    return-void
.end method

.method public refresh()V
    .locals 22

    move-object/from16 v0, p0

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/geely/drivemem/ui/ChargeStatsView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 199
    invoke-static {v1}, Lcom/geely/drivemem/state/ChargeSession;->readLog(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v5, v0, Lcom/geely/drivemem/ui/ChargeStatsView;->periodDays:I

    int-to-long v5, v5

    const-wide/32 v7, 0x5265c00

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    .line 207
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/geely/drivemem/state/ChargeSession$Summary;

    .line 208
    iget-wide v6, v15, Lcom/geely/drivemem/state/ChargeSession$Summary;->startWallMs:J

    cmp-long v6, v6, v3

    if-gez v6, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 210
    iget-wide v6, v15, Lcom/geely/drivemem/state/ChargeSession$Summary;->kwh:D

    add-double/2addr v10, v6

    .line 211
    iget-object v6, v15, Lcom/geely/drivemem/state/ChargeSession$Summary;->cost:Ljava/lang/Double;

    if-eqz v6, :cond_0

    iget-object v6, v15, Lcom/geely/drivemem/state/ChargeSession$Summary;->cost:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v16, 0x0

    cmpl-double v6, v6, v16

    if-ltz v6, :cond_0

    .line 212
    iget-object v6, v15, Lcom/geely/drivemem/state/ChargeSession$Summary;->cost:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v13, v6

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 216
    :cond_2
    iget v5, v0, Lcom/geely/drivemem/ui/ChargeStatsView;->periodDays:I

    invoke-static {v1, v5}, Lcom/geely/drivemem/sensors/OdoStats;->kmSince(Landroid/content/Context;I)D

    move-result-wide v5

    .line 224
    iget-object v7, v0, Lcom/geely/drivemem/ui/ChargeStatsView;->kpiContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 225
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    .line 226
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 227
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 229
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x1

    .line 230
    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v15, 0x14

    .line 231
    invoke-static {v1, v15}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v15

    .line 232
    invoke-virtual {v8, v15, v15, v15, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 233
    sget v15, Lcom/geely/drivemem/util/Style;->CARD:I

    invoke-static {v15, v1}, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 236
    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-wide/from16 v18, v3

    const/4 v3, 0x0

    .line 237
    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 238
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/geely/drivemem/R$string;->charge_ltm_count_label:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v9, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-direct {v0, v3, v4, v9}, Lcom/geely/drivemem/ui/ChargeStatsView;->statTile(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 241
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v9, "%.1f"

    invoke-static {v3, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/geely/drivemem/util/Style;->COOL:I

    .line 242
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v9, "kWh"

    move-object/from16 v20, v2

    const v2, 0x3ecccccd    # 0.4f

    .line 241
    invoke-static {v3, v4, v9, v2}, Lcom/geely/drivemem/util/Style;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "Energy"

    sget v9, Lcom/geely/drivemem/util/Style;->COOL:I

    invoke-direct {v0, v3, v4, v9}, Lcom/geely/drivemem/ui/ChargeStatsView;->statTile(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 243
    const-string v3, "%,.0f \u20ab"

    const-string v4, "\u2014"

    if-lez v12, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    filled-new-array/range {v21 .. v21}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v9, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v4

    .line 244
    :goto_1
    sget v9, Lcom/geely/drivemem/R$string;->charge_stat_total_cost:I

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v21, v4

    sget v4, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-direct {v0, v2, v9, v4}, Lcom/geely/drivemem/ui/ChargeStatsView;->statTile(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 245
    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 249
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0xc

    .line 250
    invoke-static {v1, v9}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v15

    invoke-virtual {v2, v4, v15, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    if-lez v12, :cond_4

    const-wide/16 v16, 0x0

    cmpl-double v4, v10, v16

    if-lez v4, :cond_4

    .line 253
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    div-double v10, v13, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v4, v3, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object/from16 v4, v21

    .line 254
    :goto_2
    sget v10, Lcom/geely/drivemem/R$string;->charge_stat_avg_cost_kwh:I

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-direct {v0, v4, v10, v11}, Lcom/geely/drivemem/ui/ChargeStatsView;->statTile(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-lez v12, :cond_5

    const-wide/16 v10, 0x0

    cmpl-double v4, v5, v10

    if-lez v4, :cond_5

    .line 257
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    div-double/2addr v13, v5

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v13, v10

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v4, v3, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    move-object/from16 v4, v21

    .line 258
    :goto_3
    sget v3, Lcom/geely/drivemem/R$string;->charge_stat_cost_100km:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v10, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-direct {v0, v4, v3, v10}, Lcom/geely/drivemem/ui/ChargeStatsView;->statTile(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%.0f"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    .line 260
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "km"

    const v6, 0x3ecccccd    # 0.4f

    .line 259
    invoke-static {v3, v4, v5, v6}, Lcom/geely/drivemem/util/Style;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "Distance"

    sget v5, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-direct {v0, v3, v4, v5}, Lcom/geely/drivemem/ui/ChargeStatsView;->statTile(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 263
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x40e00000    # 7.0f

    const/4 v4, -0x2

    const/4 v5, 0x0

    invoke-direct {v2, v5, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 264
    invoke-static {v1, v9}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 265
    invoke-virtual {v7, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 268
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 269
    sget v3, Lcom/geely/drivemem/R$string;->charge_period_30d:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1e

    invoke-direct {v0, v5, v3}, Lcom/geely/drivemem/ui/ChargeStatsView;->sideButton(ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v3, 0xa

    .line 270
    invoke-static {v2, v1, v3}, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V

    .line 271
    sget v6, Lcom/geely/drivemem/R$string;->charge_ltm_title:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x16d

    invoke-direct {v0, v8, v6}, Lcom/geely/drivemem/ui/ChargeStatsView;->sideButton(ILjava/lang/String;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 272
    invoke-static {v2, v1, v3}, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V

    .line 273
    sget v3, Lcom/geely/drivemem/R$string;->charge_export:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda4;

    invoke-direct {v6, v0, v1}, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda4;-><init>(Lcom/geely/drivemem/ui/ChargeStatsView;Landroid/content/Context;)V

    const/4 v8, 0x0

    invoke-static {v1, v3, v8, v6}, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;

    move-result-object v3

    .line 280
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v6, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v8, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    iget-object v2, v0, Lcom/geely/drivemem/ui/ChargeStatsView;->kpiContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v2, v20

    .line 291
    invoke-static {v1, v2, v5}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->getEnergyBalanceDays(Landroid/content/Context;Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    .line 292
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayEnergyBalance;

    .line 294
    new-instance v6, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;

    iget-object v7, v5, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayEnergyBalance;->date:Ljava/lang/String;

    invoke-static {v7}, Lcom/geely/drivemem/ui/ChargeStatsView;->shortDayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;-><init>(Ljava/lang/String;)V

    .line 295
    iget-wide v7, v5, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayEnergyBalance;->spentKwh:D

    iput-wide v7, v6, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;->spent:D

    iget-wide v7, v5, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayEnergyBalance;->regenKwh:D

    iput-wide v7, v6, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;->regen:D

    iget-wide v7, v5, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayEnergyBalance;->acKwh:D

    iput-wide v7, v6, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;->ac:D

    iget-wide v7, v5, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayEnergyBalance;->dcKwh:D

    iput-wide v7, v6, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;->dc:D

    .line 296
    iget-object v5, v5, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayEnergyBalance;->energySource:Lcom/geely/drivemem/sensors/EnergySource;

    iput-object v5, v6, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;->energySource:Lcom/geely/drivemem/sensors/EnergySource;

    .line 297
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 299
    :cond_6
    iget-object v3, v0, Lcom/geely/drivemem/ui/ChargeStatsView;->energyBalanceChart:Lcom/geely/drivemem/ui/EnergyBalanceChart;

    invoke-virtual {v3, v4}, Lcom/geely/drivemem/ui/EnergyBalanceChart;->setDays(Ljava/util/List;)V

    .line 300
    iget-object v3, v0, Lcom/geely/drivemem/ui/ChargeStatsView;->energyBalanceChart:Lcom/geely/drivemem/ui/EnergyBalanceChart;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/geely/drivemem/ui/EnergyBalanceChart;->setVisibility(I)V

    .line 306
    iget-object v3, v0, Lcom/geely/drivemem/ui/ChargeStatsView;->listContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 307
    iget-object v3, v0, Lcom/geely/drivemem/ui/ChargeStatsView;->sessionRows:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 308
    iget-object v3, v0, Lcom/geely/drivemem/ui/ChargeStatsView;->visibleSessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 309
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 310
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/geely/drivemem/state/ChargeSession$Summary;

    .line 311
    iget-wide v5, v4, Lcom/geely/drivemem/state/ChargeSession$Summary;->startWallMs:J

    cmp-long v5, v5, v18

    if-ltz v5, :cond_7

    .line 312
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v5, v0, Lcom/geely/drivemem/ui/ChargeStatsView;->visibleSessions:Ljava/util/Map;

    iget-wide v6, v4, Lcom/geely/drivemem/state/ChargeSession$Summary;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 316
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 317
    iget-object v2, v0, Lcom/geely/drivemem/ui/ChargeStatsView;->listContainer:Landroid/widget/LinearLayout;

    sget v4, Lcom/geely/drivemem/R$string;->charge_none:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/geely/drivemem/util/Style;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 318
    iget-object v1, v0, Lcom/geely/drivemem/ui/ChargeStatsView;->chargeSocChart:Lcom/geely/drivemem/ui/ChargeSocChart;

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v3, v4, v5}, Lcom/geely/drivemem/ui/ChargeSocChart;->setSessions(Ljava/util/List;J)V

    return-void

    .line 321
    :cond_9
    iget-object v1, v0, Lcom/geely/drivemem/ui/ChargeStatsView;->visibleSessions:Ljava/util/Map;

    iget-wide v4, v0, Lcom/geely/drivemem/ui/ChargeStatsView;->selectedSessionId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 322
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/drivemem/state/ChargeSession$Summary;

    iget-wide v1, v1, Lcom/geely/drivemem/state/ChargeSession$Summary;->id:J

    iput-wide v1, v0, Lcom/geely/drivemem/ui/ChargeStatsView;->selectedSessionId:J

    .line 324
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 325
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 326
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/geely/drivemem/state/ChargeSession$Summary;

    .line 327
    invoke-direct {v0, v3}, Lcom/geely/drivemem/ui/ChargeStatsView;->chargeRow(Lcom/geely/drivemem/state/ChargeSession$Summary;)Landroid/view/View;

    move-result-object v4

    .line 328
    iget-object v5, v0, Lcom/geely/drivemem/ui/ChargeStatsView;->sessionRows:Ljava/util/Map;

    iget-wide v6, v3, Lcom/geely/drivemem/state/ChargeSession$Summary;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v3, v0, Lcom/geely/drivemem/ui/ChargeStatsView;->listContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 331
    :cond_b
    iget-object v2, v0, Lcom/geely/drivemem/ui/ChargeStatsView;->chargeSocChart:Lcom/geely/drivemem/ui/ChargeSocChart;

    iget-wide v3, v0, Lcom/geely/drivemem/ui/ChargeStatsView;->selectedSessionId:J

    invoke-virtual {v2, v1, v3, v4}, Lcom/geely/drivemem/ui/ChargeSocChart;->setSessions(Ljava/util/List;J)V

    .line 332
    iget-object v1, v0, Lcom/geely/drivemem/ui/ChargeStatsView;->chargeSocChart:Lcom/geely/drivemem/ui/ChargeSocChart;

    iget-wide v2, v0, Lcom/geely/drivemem/ui/ChargeStatsView;->selectedSessionId:J

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/geely/drivemem/ui/ChargeSocChart;->select(JZ)V

    return-void
.end method
