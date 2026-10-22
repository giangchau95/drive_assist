.class public Lcom/geely/drivemem/ui/ComfortActivity;
.super Landroid/app/Activity;
.source "ComfortActivity.java"

.field private final static AUTO_CHECK_GAP_MS:J = 21600000L

.field private final static MODE_CHARGE:I = 2

.field private final static MODE_DAILY:I = 1

.field private static lastAutoCheckMs:J

.field private chargeDockIcon:Landroid/widget/ImageView;

.field private chargeStatsContainer:Landroid/widget/FrameLayout;

.field private chargeStatsView:Lcom/geely/drivemem/ui/ChargeStatsView;

.field private dailyStatsView:Lcom/geely/drivemem/ui/DailyStatsView;

.field private mode:I

.field private statsContainer:Landroid/widget/FrameLayout;

.field private statsDockIcon:Landroid/widget/ImageView;

.field private themeId:Ljava/lang/String;

.field private themeLight:Z

.field private updateAvailable:Z

.field private updateBtn:Landroid/widget/ImageView;

.method static constructor <clinit>()V
  .registers 2
  .prologue
  .line 32
    const-wide/16 v0, 0
    sput-wide v0, Lcom/geely/drivemem/ui/ComfortActivity;->lastAutoCheckMs:J
    return-void
.end method

.method public constructor <init>()V
  .registers 2
  .prologue
  .line 21
    invoke-direct { p0 }, Landroid/app/Activity;-><init>()V
  .line 24
    const/4 v0, 0
    iput v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->mode:I
    return-void
.end method

.method static synthetic access$000(Lcom/geely/drivemem/ui/ComfortActivity;I)V
  .registers 2
  .prologue
  .line 21
    invoke-direct { p0, p1 }, Lcom/geely/drivemem/ui/ComfortActivity;->setMode(I)V
    return-void
.end method

.method static synthetic access$100(Lcom/geely/drivemem/ui/ComfortActivity;Lcom/geely/drivemem/net/OtaUpdater$Info;)V
  .registers 2
  .prologue
  .line 21
    invoke-direct { p0, p1 }, Lcom/geely/drivemem/ui/ComfortActivity;->openOtaDialog(Lcom/geely/drivemem/net/OtaUpdater$Info;)V
    return-void
.end method

.method static synthetic access$202(Lcom/geely/drivemem/ui/ComfortActivity;Z)Z
  .registers 2
  .prologue
  .line 21
    iput-boolean p1, p0, Lcom/geely/drivemem/ui/ComfortActivity;->updateAvailable:Z
    return p1
.end method

.method static synthetic access$300(Lcom/geely/drivemem/ui/ComfortActivity;)V
  .registers 1
  .prologue
  .line 21
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/ComfortActivity;->refreshUpdateButton()V
    return-void
.end method

.method private autoCheck()V
  .registers 7
  .prologue
  .line 149
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
  .line 150
    sget-wide v2, Lcom/geely/drivemem/ui/ComfortActivity;->lastAutoCheckMs:J
    sub-long v2, v0, v2
    const-wide/32 v4, 21600000
    cmp-long v2, v2, v4
    if-ltz v2, :L0
    invoke-static { }, Lcom/geely/drivemem/state/CarState;->isParked()Z
    move-result v2
    if-nez v2, :L1
  :L0
  .line 160
    return-void
  :L1
  .line 151
    sput-wide v0, Lcom/geely/drivemem/ui/ComfortActivity;->lastAutoCheckMs:J
  .line 152
    new-instance v0, Lcom/geely/drivemem/ui/ComfortActivity$5;
    invoke-direct { v0, p0 }, Lcom/geely/drivemem/ui/ComfortActivity$5;-><init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
    invoke-static { p0, v0 }, Lcom/geely/drivemem/net/OtaUpdater;->check(Landroid/content/Context;Lcom/geely/drivemem/net/OtaUpdater$Callback;)V
    goto :L0
.end method

.method private dockButton(ILandroid/view/View$OnClickListener;)Landroid/widget/ImageView;
  .registers 6
  .prologue
  .line 163
    new-instance v0, Landroid/widget/ImageView;
    invoke-direct { v0, p0 }, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
  .line 164
    invoke-virtual { v0, p1 }, Landroid/widget/ImageView;->setImageResource(I)V
  .line 165
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
  .line 166
    const/16 v1, 12
    invoke-static { p0, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
  .line 167
    invoke-virtual { v0, v1, v1, v1, v1 }, Landroid/widget/ImageView;->setPadding(IIII)V
  .line 168
    const/16 v1, 62
    invoke-static { p0, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
  .line 169
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct { v2, v1, v1 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 170
    const/4 v1, 1
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
  .line 171
    invoke-virtual { v0, v2 }, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 172
    invoke-virtual { v0, p2 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 173
    return-object v0
.end method

.method private openOtaDialog(Lcom/geely/drivemem/net/OtaUpdater$Info;)V
  .registers 3
  .prologue
  .line 140
    new-instance v0, Lcom/geely/drivemem/ui/ComfortActivity$4;
    invoke-direct { v0, p0 }, Lcom/geely/drivemem/ui/ComfortActivity$4;-><init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
    invoke-static { p0, p1, v0 }, Lcom/geely/drivemem/ui/OtaDialog;->show(Landroid/app/Activity;Lcom/geely/drivemem/net/OtaUpdater$Info;Lcom/geely/drivemem/ui/OtaDialog$Listener;)Landroid/app/AlertDialog;
  .line 146
    return-void
.end method

.method private refreshUpdateButton()V
  .registers 3
  .prologue
  .line 134
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->updateBtn:Landroid/widget/ImageView;
    if-nez v0, :L1
  :L0
  .line 137
    return-void
  :L1
  .line 135
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/ComfortActivity;->updateButton()Landroid/widget/ImageView;
    move-result-object v0
  .line 136
    iget-object v1, p0, Lcom/geely/drivemem/ui/ComfortActivity;->updateBtn:Landroid/widget/ImageView;
    invoke-virtual { v0 }, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    invoke-virtual { v1, v0 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    goto :L0
.end method

.method private setMode(I)V
  .registers 9
  .prologue
    const/16 v6, 18
    const/16 v2, 8
    const/4 v5, 2
    const/4 v4, 1
    const/4 v1, 0
  .line 177
    iget v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->mode:I
    if-ne v0, p1, :L1
  :L0
  .line 186
    return-void
  :L1
  .line 178
    iput p1, p0, Lcom/geely/drivemem/ui/ComfortActivity;->mode:I
  .line 179
    iget-object v3, p0, Lcom/geely/drivemem/ui/ComfortActivity;->statsContainer:Landroid/widget/FrameLayout;
    if-ne p1, v4, :L9
    move v0, v1
  :L2
    invoke-virtual { v3, v0 }, Landroid/widget/FrameLayout;->setVisibility(I)V
  .line 180
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeStatsContainer:Landroid/widget/FrameLayout;
    if-ne p1, v5, :L3
    move v2, v1
  :L3
    invoke-virtual { v0, v2 }, Landroid/widget/FrameLayout;->setVisibility(I)V
  .line 181
    if-ne p1, v4, :L10
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->dailyStatsView:Lcom/geely/drivemem/ui/DailyStatsView;
    invoke-virtual { v0 }, Lcom/geely/drivemem/ui/DailyStatsView;->refresh()V
  :L4
  .line 182
    iget-object v2, p0, Lcom/geely/drivemem/ui/ComfortActivity;->statsDockIcon:Landroid/widget/ImageView;
    if-ne p1, v4, :L11
    sget v0, Lcom/geely/drivemem/util/Style;->CARD_ON:I
  :L5
    invoke-static { v0, p0, v6 }, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;I)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v0
    invoke-virtual { v2, v0 }, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 183
    iget-object v2, p0, Lcom/geely/drivemem/ui/ComfortActivity;->statsDockIcon:Landroid/widget/ImageView;
    if-ne p1, v4, :L12
    sget v0, Lcom/geely/drivemem/util/Style;->CARD_ON:I
    invoke-static { v0 }, Lcom/geely/drivemem/util/Style;->onFill(I)I
    move-result v0
  :L6
    invoke-virtual { v2, v0 }, Landroid/widget/ImageView;->setColorFilter(I)V
  .line 184
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeDockIcon:Landroid/widget/ImageView;
    if-ne p1, v5, :L7
    sget v1, Lcom/geely/drivemem/util/Style;->CARD_ON:I
  :L7
    invoke-static { v1, p0, v6 }, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;I)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 185
    iget-object v1, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeDockIcon:Landroid/widget/ImageView;
    if-ne p1, v5, :L13
    sget v0, Lcom/geely/drivemem/util/Style;->CARD_ON:I
    invoke-static { v0 }, Lcom/geely/drivemem/util/Style;->onFill(I)I
    move-result v0
  :L8
    invoke-virtual { v1, v0 }, Landroid/widget/ImageView;->setColorFilter(I)V
    goto :L0
  :L9
    move v0, v2
  .line 179
    goto :L2
  :L10
  .line 181
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeStatsView:Lcom/geely/drivemem/ui/ChargeStatsView;
    invoke-virtual { v0 }, Lcom/geely/drivemem/ui/ChargeStatsView;->refresh()V
    goto :L4
  :L11
    move v0, v1
  .line 182
    goto :L5
  :L12
  .line 183
    sget v0, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    goto :L6
  :L13
  .line 185
    sget v0, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    goto :L8
.end method

.method private updateButton()Landroid/widget/ImageView;
  .registers 15
  .prologue
  .line 109
    const/16 v0, 40
    invoke-static { p0, v0 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v12
  .line 110
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static { v12, v12, v0 }, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v13
  .line 111
    new-instance v0, Landroid/graphics/Canvas;
    invoke-direct { v0, v13 }, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
  .line 112
    new-instance v5, Landroid/graphics/Paint;
    const/4 v1, 1
    invoke-direct { v5, v1 }, Landroid/graphics/Paint;-><init>(I)V
  .line 113
    iget-boolean v1, p0, Lcom/geely/drivemem/ui/ComfortActivity;->updateAvailable:Z
    if-eqz v1, :L1
    const v1, -13577896
  :L0
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setColor(I)V
  .line 114
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 115
    int-to-float v1, v12
    const v2, 1035489772
    mul-float/2addr v1, v2
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 116
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V
  .line 117
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V
  .line 118
    int-to-float v1, v12
    const/high16 v2, 0x40000000
    div-float/2addr v1, v2
  .line 119
    int-to-float v2, v12
    const v3, 1041865114
    mul-float/2addr v2, v3
    int-to-float v3, v12
    const v4, 1058977874
    mul-float/2addr v4, v3
    move v3, v1
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
  .line 120
    int-to-float v2, v12
    const v3, 1045220557
    mul-float/2addr v2, v3
    sub-float v7, v1, v2
    int-to-float v2, v12
    const v3, 1054280253
    mul-float v8, v2, v3
    int-to-float v2, v12
    const v3, 1058977874
    mul-float v10, v2, v3
    move-object v6, v0
    move v9, v1
    move-object v11, v5
    invoke-virtual/range { v6 .. v11 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
  .line 121
    int-to-float v2, v12
    const v3, 1045220557
    mul-float/2addr v2, v3
    add-float v7, v1, v2
    int-to-float v2, v12
    const v3, 1054280253
    mul-float v8, v2, v3
    int-to-float v2, v12
    const v3, 1058977874
    mul-float v10, v2, v3
    move-object v6, v0
    move v9, v1
    move-object v11, v5
    invoke-virtual/range { v6 .. v11 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
  .line 122
    int-to-float v1, v12
    const v2, 1045220557
    mul-float/2addr v1, v2
    int-to-float v2, v12
    const v3, 1062668861
    mul-float/2addr v2, v3
    int-to-float v3, v12
    const v4, 1061997773
    mul-float/2addr v3, v4
    int-to-float v4, v12
    const v6, 1062668861
    mul-float/2addr v4, v6
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
  .line 123
    new-instance v0, Landroid/widget/ImageView;
    invoke-direct { v0, p0 }, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
  .line 124
    invoke-virtual { v0, v13 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
  .line 125
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 62
    invoke-static { p0, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
    const/16 v3, 62
    invoke-static { p0, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
    invoke-direct { v1, v2, v3 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 126
    const/4 v2, 1
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
  .line 127
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 128
    const/16 v1, 11
    invoke-static { p0, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
  .line 129
    invoke-virtual { v0, v1, v1, v1, v1 }, Landroid/widget/ImageView;->setPadding(IIII)V
  .line 130
    return-object v0
  :L1
  .line 113
    sget v1, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    goto/16 :L0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
  .registers 14
  .prologue
  .line 38
    invoke-super { p0, p1 }, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
  .line 39
    invoke-static { p0 }, Lcom/geely/drivemem/util/Style;->load(Landroid/content/Context;)V
  .line 40
    invoke-static { }, Lcom/geely/drivemem/util/Style;->current()Lcom/geely/drivemem/util/Style$Theme;
    move-result-object v0
    iget-object v0, v0, Lcom/geely/drivemem/util/Style$Theme;->id:Ljava/lang/String;
    iput-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->themeId:Ljava/lang/String;
  .line 41
    sget-boolean v0, Lcom/geely/drivemem/util/Style;->LIGHT:Z
    iput-boolean v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->themeLight:Z
  .line 42
    invoke-static { p0 }, Lcom/geely/drivemem/util/Style;->edgeToEdge(Landroid/app/Activity;)V
  .line 44
    new-instance v0, Landroid/widget/FrameLayout;
    invoke-direct { v0, p0 }, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
  .line 45
    invoke-static { }, Lcom/geely/drivemem/util/Style;->screenBg()Landroid/graphics/drawable/GradientDrawable;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 47
    const/16 v1, 84
    invoke-static { p0, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
    const/16 v2, 8
    invoke-static { p0, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
    const/16 v3, 24
    invoke-static { p0, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
  .line 48
    add-int v4, v2, v1
    add-int/2addr v3, v4
  .line 49
    const/16 v4, 36
    invoke-static { p0, v4 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v4
    const/16 v5, 32
    invoke-static { p0, v5 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v5
    const/16 v6, 12
    invoke-static { p0, v6 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v6
  .line 51
    new-instance v7, Landroid/widget/FrameLayout;
    invoke-direct { v7, p0 }, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    iput-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->statsContainer:Landroid/widget/FrameLayout;
  .line 52
    iget-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->statsContainer:Landroid/widget/FrameLayout;
    invoke-static { p0 }, Lcom/geely/drivemem/util/Style;->statusBarHeight(Landroid/content/Context;)I
    move-result v8
    add-int/2addr v8, v6
    invoke-virtual { v7, v3, v8, v4, v5 }, Landroid/widget/FrameLayout;->setPadding(IIII)V
  .line 53
    new-instance v7, Landroid/widget/ScrollView;
    invoke-direct { v7, p0 }, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V
  .line 54
    const/4 v8, 0
    invoke-virtual { v7, v8 }, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V
  .line 55
    const/4 v8, 2
    invoke-virtual { v7, v8 }, Landroid/widget/ScrollView;->setOverScrollMode(I)V
  .line 56
    new-instance v8, Lcom/geely/drivemem/ui/DailyStatsView;
    const/4 v9, 0
    invoke-direct { v8, p0, v9 }, Lcom/geely/drivemem/ui/DailyStatsView;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    iput-object v8, p0, Lcom/geely/drivemem/ui/ComfortActivity;->dailyStatsView:Lcom/geely/drivemem/ui/DailyStatsView;
  .line 57
    iget-object v8, p0, Lcom/geely/drivemem/ui/ComfortActivity;->dailyStatsView:Lcom/geely/drivemem/ui/DailyStatsView;
    invoke-virtual { v7, v8 }, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V
  .line 58
    iget-object v8, p0, Lcom/geely/drivemem/ui/ComfortActivity;->statsContainer:Landroid/widget/FrameLayout;
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;
    const/4 v10, -1
    const/4 v11, -1
    invoke-direct { v9, v10, v11 }, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
    invoke-virtual { v8, v7, v9 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 60
    iget-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->statsContainer:Landroid/widget/FrameLayout;
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;
    const/4 v9, -1
    const/4 v10, -1
    invoke-direct { v8, v9, v10 }, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
    invoke-virtual { v0, v7, v8 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 63
    new-instance v7, Landroid/widget/FrameLayout;
    invoke-direct { v7, p0 }, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    iput-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeStatsContainer:Landroid/widget/FrameLayout;
  .line 64
    iget-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeStatsContainer:Landroid/widget/FrameLayout;
    invoke-static { p0 }, Lcom/geely/drivemem/util/Style;->statusBarHeight(Landroid/content/Context;)I
    move-result v8
    add-int/2addr v8, v6
    invoke-virtual { v7, v3, v8, v4, v5 }, Landroid/widget/FrameLayout;->setPadding(IIII)V
  .line 65
    new-instance v3, Landroid/widget/ScrollView;
    invoke-direct { v3, p0 }, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V
  .line 66
    const/4 v4, 0
    invoke-virtual { v3, v4 }, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V
  .line 67
    const/4 v4, 2
    invoke-virtual { v3, v4 }, Landroid/widget/ScrollView;->setOverScrollMode(I)V
  .line 68
    new-instance v4, Lcom/geely/drivemem/ui/ChargeStatsView;
    const/4 v7, 0
    invoke-direct { v4, p0, v7 }, Lcom/geely/drivemem/ui/ChargeStatsView;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    iput-object v4, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeStatsView:Lcom/geely/drivemem/ui/ChargeStatsView;
  .line 69
    iget-object v4, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeStatsView:Lcom/geely/drivemem/ui/ChargeStatsView;
    invoke-virtual { v3, v4 }, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V
  .line 70
    iget-object v4, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeStatsContainer:Landroid/widget/FrameLayout;
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;
    const/4 v8, -1
    const/4 v9, -1
    invoke-direct { v7, v8, v9 }, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
    invoke-virtual { v4, v3, v7 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 72
    iget-object v3, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeStatsContainer:Landroid/widget/FrameLayout;
    const/16 v4, 8
    invoke-virtual { v3, v4 }, Landroid/widget/FrameLayout;->setVisibility(I)V
  .line 73
    iget-object v3, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeStatsContainer:Landroid/widget/FrameLayout;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;
    const/4 v7, -1
    const/4 v8, -1
    invoke-direct { v4, v7, v8 }, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
    invoke-virtual { v0, v3, v4 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 76
    new-instance v3, Landroid/widget/LinearLayout;
    invoke-direct { v3, p0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 77
    const/4 v4, 1
    invoke-virtual { v3, v4 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 78
    const/16 v4, 17
    invoke-virtual { v3, v4 }, Landroid/widget/LinearLayout;->setGravity(I)V
  .line 79
    invoke-static { }, Lcom/geely/drivemem/util/Style;->cardFillColor()I
    move-result v4
    invoke-static { v4, p0 }, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v4
    invoke-virtual { v3, v4 }, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 80
    sget v4, Lcom/geely/drivemem/R$drawable;->ic_chart_bar:I
    new-instance v7, Lcom/geely/drivemem/ui/ComfortActivity$1;
    invoke-direct { v7, p0 }, Lcom/geely/drivemem/ui/ComfortActivity$1;-><init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
    invoke-direct { p0, v4, v7 }, Lcom/geely/drivemem/ui/ComfortActivity;->dockButton(ILandroid/view/View$OnClickListener;)Landroid/widget/ImageView;
    move-result-object v4
    iput-object v4, p0, Lcom/geely/drivemem/ui/ComfortActivity;->statsDockIcon:Landroid/widget/ImageView;
  .line 83
    sget v4, Lcom/geely/drivemem/R$drawable;->ic_ev_station:I
    new-instance v7, Lcom/geely/drivemem/ui/ComfortActivity$2;
    invoke-direct { v7, p0 }, Lcom/geely/drivemem/ui/ComfortActivity$2;-><init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
    invoke-direct { p0, v4, v7 }, Lcom/geely/drivemem/ui/ComfortActivity;->dockButton(ILandroid/view/View$OnClickListener;)Landroid/widget/ImageView;
    move-result-object v4
    iput-object v4, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeDockIcon:Landroid/widget/ImageView;
  .line 86
    new-instance v4, Landroid/view/View;
    invoke-direct { v4, p0 }, Landroid/view/View;-><init>(Landroid/content/Context;)V
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0
    const/4 v9, 0
    const/high16 v10, 0x3f800000
    invoke-direct { v7, v8, v9, v10 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual { v3, v4, v7 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 87
    iget-object v4, p0, Lcom/geely/drivemem/ui/ComfortActivity;->statsDockIcon:Landroid/widget/ImageView;
    invoke-virtual { v3, v4 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 88
    const/16 v4, 14
    invoke-static { v3, p0, v4 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 89
    iget-object v4, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeDockIcon:Landroid/widget/ImageView;
    invoke-virtual { v3, v4 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 90
    new-instance v4, Landroid/view/View;
    invoke-direct { v4, p0 }, Landroid/view/View;-><init>(Landroid/content/Context;)V
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0
    const/4 v9, 0
    const/high16 v10, 0x3f800000
    invoke-direct { v7, v8, v9, v10 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual { v3, v4, v7 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 91
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/ComfortActivity;->updateButton()Landroid/widget/ImageView;
    move-result-object v4
    iput-object v4, p0, Lcom/geely/drivemem/ui/ComfortActivity;->updateBtn:Landroid/widget/ImageView;
  .line 92
    iget-object v4, p0, Lcom/geely/drivemem/ui/ComfortActivity;->updateBtn:Landroid/widget/ImageView;
    new-instance v7, Lcom/geely/drivemem/ui/ComfortActivity$3;
    invoke-direct { v7, p0 }, Lcom/geely/drivemem/ui/ComfortActivity$3;-><init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
    invoke-virtual { v4, v7 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 95
    iget-object v4, p0, Lcom/geely/drivemem/ui/ComfortActivity;->updateBtn:Landroid/widget/ImageView;
    invoke-virtual { v3, v4 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 96
    const/16 v4, 14
    invoke-static { v3, p0, v4 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 97
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;
    const/4 v7, -1
    const v8, 8388611
    invoke-direct { v4, v1, v7, v8 }, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V
  .line 99
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I
  .line 100
    invoke-static { p0 }, Lcom/geely/drivemem/util/Style;->statusBarHeight(Landroid/content/Context;)I
    move-result v1
    add-int/2addr v1, v6
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I
  .line 101
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
  .line 102
    invoke-virtual { v0, v3, v4 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 104
    invoke-virtual { p0, v0 }, Lcom/geely/drivemem/ui/ComfortActivity;->setContentView(Landroid/view/View;)V
  .line 105
    const/4 v0, 1
    invoke-direct { p0, v0 }, Lcom/geely/drivemem/ui/ComfortActivity;->setMode(I)V
  .line 106
    return-void
.end method

.method protected onResume()V
  .catch Ljava/lang/Throwable; { :L2 .. :L3 } :L5
  .registers 5
  .prologue
  .line 189
    invoke-super { p0 }, Landroid/app/Activity;->onResume()V
  .line 190
    invoke-static { p0 }, Lcom/geely/drivemem/util/Style;->load(Landroid/content/Context;)V
  .line 191
    invoke-static { }, Lcom/geely/drivemem/util/Style;->current()Lcom/geely/drivemem/util/Style$Theme;
    move-result-object v0
    iget-object v0, v0, Lcom/geely/drivemem/util/Style$Theme;->id:Ljava/lang/String;
    iget-object v1, p0, Lcom/geely/drivemem/ui/ComfortActivity;->themeId:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    sget-boolean v0, Lcom/geely/drivemem/util/Style;->LIGHT:Z
    iget-boolean v1, p0, Lcom/geely/drivemem/ui/ComfortActivity;->themeLight:Z
    if-eq v0, v1, :L2
  :L0
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/ComfortActivity;->recreate()V
  :L1
  .line 198
    return-void
  :L2
  .line 193
    invoke-static { p0 }, Lcom/geely/drivemem/util/BootReceiver;->scheduleWatchdog(Landroid/content/Context;)V
  .line 194
    invoke-static { p0 }, Lcom/geely/drivemem/util/BootReceiver;->ensureAll(Landroid/content/Context;)V
  :L3
  .line 196
    iget v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->mode:I
    const/4 v1, 1
    if-ne v0, v1, :L6
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->dailyStatsView:Lcom/geely/drivemem/ui/DailyStatsView;
    invoke-virtual { v0 }, Lcom/geely/drivemem/ui/DailyStatsView;->refresh()V
  :L4
  .line 197
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/ComfortActivity;->autoCheck()V
    goto :L1
  :L5
  .line 195
    move-exception v0
    const-string v1, "DriveMem"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "resume ensure: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    goto :L3
  :L6
  .line 196
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeStatsView:Lcom/geely/drivemem/ui/ChargeStatsView;
    invoke-virtual { v0 }, Lcom/geely/drivemem/ui/ChargeStatsView;->refresh()V
    goto :L4
.end method
