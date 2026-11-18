.class public Lcom/geely/drivemem/ui/ComfortActivity;
.super Landroid/app/Activity;
.source "ComfortActivity.java"

.field private final static AUTO_CHECK_GAP_MS:J = 21600000L

.field private final static MODE_APPS:I = 4

.field private final static MODE_CHARGE:I = 2

.field private final static MODE_DAILY:I = 1

.field private final static MODE_TRENDS:I = 3

.field private static lastAutoCheckMs:J

.field private appsContainer:Landroid/widget/FrameLayout;

.field private appsDockIcon:Landroid/widget/ImageView;

.field private appsView:Lcom/geely/drivemem/ui/AppsView;

.field private chargeDockIcon:Landroid/widget/ImageView;

.field private chargeStatsContainer:Landroid/widget/FrameLayout;

.field private chargeStatsView:Lcom/geely/drivemem/ui/ChargeStatsView;

.field private dailyStatsView:Lcom/geely/drivemem/ui/DailyStatsView;

.field private mode:I

.field private statsContainer:Landroid/widget/FrameLayout;

.field private statsDockIcon:Landroid/widget/ImageView;

.field private themeId:Ljava/lang/String;

.field private themeLight:Z

.field private trendsContainer:Landroid/widget/FrameLayout;

.field private trendsDockIcon:Landroid/widget/ImageView;

.field private trendsView:Lcom/geely/drivemem/ui/TrendsView;

.field private updateAvailable:Z

.field private updateBtn:Landroid/widget/ImageView;

.method static constructor <clinit>()V
  .registers 2
  .prologue
  .line 39
    const-wide/16 v0, 0
    sput-wide v0, Lcom/geely/drivemem/ui/ComfortActivity;->lastAutoCheckMs:J
    return-void
.end method

.method public constructor <init>()V
  .registers 2
  .prologue
  .line 22
    invoke-direct { p0 }, Landroid/app/Activity;-><init>()V
  .line 27
    const/4 v0, 0
    iput v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->mode:I
    return-void
.end method

.method static synthetic access$000(Lcom/geely/drivemem/ui/ComfortActivity;I)V
  .registers 2
  .prologue
  .line 22
    invoke-direct { p0, p1 }, Lcom/geely/drivemem/ui/ComfortActivity;->setMode(I)V
    return-void
.end method

.method static synthetic access$100(Lcom/geely/drivemem/ui/ComfortActivity;)V
  .registers 1
  .prologue
  .line 22
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/ComfortActivity;->cycleAppearance()V
    return-void
.end method

.method static synthetic access$200(Lcom/geely/drivemem/ui/ComfortActivity;Lcom/geely/drivemem/net/OtaUpdater$Info;)V
  .registers 2
  .prologue
  .line 22
    invoke-direct { p0, p1 }, Lcom/geely/drivemem/ui/ComfortActivity;->openOtaDialog(Lcom/geely/drivemem/net/OtaUpdater$Info;)V
    return-void
.end method

.method static synthetic access$302(Lcom/geely/drivemem/ui/ComfortActivity;Z)Z
  .registers 2
  .prologue
  .line 22
    iput-boolean p1, p0, Lcom/geely/drivemem/ui/ComfortActivity;->updateAvailable:Z
    return p1
.end method

.method static synthetic access$400(Lcom/geely/drivemem/ui/ComfortActivity;)V
  .registers 1
  .prologue
  .line 22
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/ComfortActivity;->refreshUpdateButton()V
    return-void
.end method

.method static synthetic access$500(Lcom/geely/drivemem/ui/ComfortActivity;)V
  .registers 1
  .prologue
  .line 22
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/ComfortActivity;->refreshCurrent()V
    return-void
.end method

.method private appearanceButton()Landroid/widget/ImageView;
  .registers 15
  .prologue
  .line 217
    invoke-static { p0 }, Lcom/geely/drivemem/util/Style;->appearance(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v1
  .line 218
    const/16 v0, 40
    invoke-static { p0, v0 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v7
  .line 219
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static { v7, v7, v0 }, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v8
  .line 220
    new-instance v0, Landroid/graphics/Canvas;
    invoke-direct { v0, v8 }, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
  .line 221
    new-instance v5, Landroid/graphics/Paint;
    const/4 v2, 1
    invoke-direct { v5, v2 }, Landroid/graphics/Paint;-><init>(I)V
  .line 222
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-virtual { v5, v2 }, Landroid/graphics/Paint;->setColor(I)V
  .line 223
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
    invoke-virtual { v5, v2 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 224
    int-to-float v2, v7
    const v3, 1034147594
    mul-float/2addr v2, v3
    invoke-virtual { v5, v2 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 225
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;
    invoke-virtual { v5, v2 }, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V
  .line 226
    int-to-float v2, v7
    const/high16 v3, 0x40000000
    div-float v9, v2, v3
  .line 227
    const-string v2, "light"
    invoke-virtual { v2, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L1
  .line 228
    int-to-float v1, v7
    const v2, 1043207291
    mul-float/2addr v1, v2
    invoke-virtual { v0, v9, v9, v1, v5 }, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
  .line 229
    const/4 v1, 0
    move v6, v1
  :L0
    const/16 v1, 8
    if-ge v6, v1, :L2
  .line 230
    const-wide v2, 4605249457297304856L
    int-to-double v10, v6
    mul-double/2addr v10, v2
  .line 231
    invoke-static { v10, v11 }, Ljava/lang/Math;->cos(D)D
    move-result-wide v2
    double-to-float v1, v2
    int-to-float v2, v7
    mul-float/2addr v1, v2
    const v2, 1049582633
    mul-float/2addr v1, v2
    add-float/2addr v1, v9
    invoke-static { v10, v11 }, Ljava/lang/Math;->sin(D)D
    move-result-wide v2
    double-to-float v2, v2
    int-to-float v3, v7
    mul-float/2addr v2, v3
    const v3, 1049582633
    mul-float/2addr v2, v3
    add-float/2addr v2, v9
  .line 232
    invoke-static { v10, v11 }, Ljava/lang/Math;->cos(D)D
    move-result-wide v12
    double-to-float v3, v12
    int-to-float v4, v7
    mul-float/2addr v3, v4
    const v4, 1053609165
    mul-float/2addr v3, v4
    add-float/2addr v3, v9
    invoke-static { v10, v11 }, Ljava/lang/Math;->sin(D)D
    move-result-wide v10
    double-to-float v4, v10
    int-to-float v10, v7
    mul-float/2addr v4, v10
    const v10, 1053609165
    mul-float/2addr v4, v10
    add-float/2addr v4, v9
  .line 231
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
  .line 229
    add-int/lit8 v1, v6, 1
    move v6, v1
    goto :L0
  :L1
  .line 234
    const-string v2, "auto"
    invoke-virtual { v2, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L3
  .line 235
    int-to-float v1, v7
    const v2, 1051595899
    mul-float/2addr v2, v1
  .line 236
    invoke-virtual { v0, v9, v9, v2, v5 }, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
  .line 237
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 238
    new-instance v1, Landroid/graphics/RectF;
    sub-float v3, v9, v2
    sub-float v4, v9, v2
    add-float v6, v9, v2
    add-float/2addr v2, v9
    invoke-direct { v1, v3, v4, v6, v2 }, Landroid/graphics/RectF;-><init>(FFFF)V
  .line 239
    const/high16 v2, 0x42b40000
    const/high16 v3, 0x43340000
    const/4 v4, 1
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
  :L2
  .line 249
    new-instance v0, Landroid/widget/ImageView;
    invoke-direct { v0, p0 }, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
  .line 250
    invoke-virtual { v0, v8 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
  .line 251
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 62
    invoke-static { p0, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
    const/16 v3, 62
    invoke-static { p0, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
    invoke-direct { v1, v2, v3 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 252
    const/4 v2, 1
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
  .line 253
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 254
    const/16 v1, 11
    invoke-static { p0, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
  .line 255
    invoke-virtual { v0, v1, v1, v1, v1 }, Landroid/widget/ImageView;->setPadding(IIII)V
  .line 256
    return-object v0
  :L3
  .line 241
    new-instance v1, Landroid/graphics/Path;
    invoke-direct { v1 }, Landroid/graphics/Path;-><init>()V
  .line 242
    int-to-float v2, v7
    const v3, 1050924810
    mul-float/2addr v2, v3
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;
    invoke-virtual { v1, v9, v9, v2, v3 }, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V
  .line 243
    new-instance v2, Landroid/graphics/Path;
    invoke-direct { v2 }, Landroid/graphics/Path;-><init>()V
  .line 244
    int-to-float v3, v7
    const v4, 1043207291
    mul-float/2addr v3, v4
    add-float/2addr v3, v9
    int-to-float v4, v7
    const v6, 1039516303
    mul-float/2addr v4, v6
    sub-float v4, v9, v4
    int-to-float v6, v7
    const v7, 1049582633
    mul-float/2addr v6, v7
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;
    invoke-virtual { v2, v3, v4, v6, v7 }, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V
  .line 245
    sget-object v3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;
    invoke-virtual { v1, v2, v3 }, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z
  .line 246
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
    invoke-virtual { v5, v2 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 247
    invoke-virtual { v0, v1, v5 }, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    goto :L2
.end method

.method private appsIcon()Landroid/graphics/Bitmap;
  .registers 15
  .prologue
  .line 177
    const/16 v0, 38
    invoke-static { p0, v0 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v0
  .line 178
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static { v0, v0, v1 }, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v2
  .line 179
    new-instance v3, Landroid/graphics/Canvas;
    invoke-direct { v3, v2 }, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
  .line 180
    new-instance v4, Landroid/graphics/Paint;
    const/4 v1, 1
    invoke-direct { v4, v1 }, Landroid/graphics/Paint;-><init>(I)V
  .line 181
    const/4 v1, -1
    invoke-virtual { v4, v1 }, Landroid/graphics/Paint;->setColor(I)V
  .line 182
    int-to-float v1, v0
    const v5, 1034147594
    mul-float/2addr v5, v1
    int-to-float v1, v0
    const/high16 v6, 0x40400000
    mul-float/2addr v6, v5
    sub-float/2addr v1, v6
    mul-int/lit8 v6, v0, 2
    int-to-float v6, v6
    const v7, 1034147594
    mul-float/2addr v6, v7
    sub-float/2addr v1, v6
    const/high16 v6, 0x40000000
    div-float v6, v1, v6
    int-to-float v1, v0
    const v7, 1034147594
    mul-float/2addr v7, v1
  .line 183
    int-to-float v0, v0
    const v1, 1035489772
    mul-float v8, v0, v1
  .line 184
    const/4 v0, 0
    move v1, v0
  :L0
    const/4 v0, 2
    if-ge v1, v0, :L3
    const/4 v0, 0
  :L1
    const/4 v9, 2
    if-ge v0, v9, :L2
  .line 185
    const/high16 v9, 0x3f000000
    mul-float/2addr v9, v5
    add-float/2addr v9, v7
    int-to-float v10, v1
    add-float v11, v6, v5
    mul-float/2addr v10, v11
    add-float/2addr v9, v10
    const/high16 v10, 0x3f000000
    mul-float/2addr v10, v5
    add-float/2addr v10, v7
    int-to-float v11, v0
    add-float v12, v6, v5
    mul-float/2addr v11, v12
    add-float/2addr v10, v11
  .line 186
    new-instance v11, Landroid/graphics/RectF;
    add-float v12, v9, v6
    add-float v13, v10, v6
    invoke-direct { v11, v9, v10, v12, v13 }, Landroid/graphics/RectF;-><init>(FFFF)V
    invoke-virtual { v3, v11, v8, v8, v4 }, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
  .line 184
    add-int/lit8 v0, v0, 1
    goto :L1
  :L2
    add-int/lit8 v0, v1, 1
    move v1, v0
    goto :L0
  :L3
  .line 188
    return-object v2
.end method

.method private autoCheck()V
  .registers 7
  .prologue
  .line 309
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
  .line 310
    sget-wide v2, Lcom/geely/drivemem/ui/ComfortActivity;->lastAutoCheckMs:J
    sub-long v2, v0, v2
    const-wide/32 v4, 21600000
    cmp-long v2, v2, v4
    if-ltz v2, :L0
    invoke-static { }, Lcom/geely/drivemem/state/CarState;->isParked()Z
    move-result v2
    if-nez v2, :L1
  :L0
  .line 324
    return-void
  :L1
  .line 311
    sput-wide v0, Lcom/geely/drivemem/ui/ComfortActivity;->lastAutoCheckMs:J
  .line 312
    new-instance v0, Lcom/geely/drivemem/ui/ComfortActivity$8;
    invoke-direct { v0, p0 }, Lcom/geely/drivemem/ui/ComfortActivity$8;-><init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
    invoke-static { p0, v0 }, Lcom/geely/drivemem/net/OtaUpdater;->check(Landroid/content/Context;Lcom/geely/drivemem/net/OtaUpdater$Callback;)V
    goto :L0
.end method

.method private cycleAppearance()V
  .registers 3
  .prologue
  .line 260
    invoke-static { p0 }, Lcom/geely/drivemem/util/Style;->appearance(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v0
  .line 261
    const-string v1, "auto"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L2
    const-string v0, "light"
  :L0
  .line 262
    invoke-static { p0, v0 }, Lcom/geely/drivemem/util/Style;->setAppearance(Landroid/content/Context;Ljava/lang/String;)V
  .line 263
    const-string v1, "auto"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L4
    const-string v0, "Appearance: follow system"
  :L1
  .line 264
    const/4 v1, 0
  .line 263
    invoke-static { p0, v0, v1 }, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
  .line 264
    invoke-virtual { v0 }, Landroid/widget/Toast;->show()V
  .line 265
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/ComfortActivity;->recreate()V
  .line 266
    return-void
  :L2
  .line 261
    const-string v1, "light"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L3
    const-string v0, "dark"
    goto :L0
  :L3
    const-string v0, "auto"
    goto :L0
  :L4
  .line 264
    const-string v1, "light"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
    const-string v0, "Appearance: light"
    goto :L1
  :L5
    const-string v0, "Appearance: dark"
    goto :L1
.end method

.method private dockButton(ILandroid/view/View$OnClickListener;)Landroid/widget/ImageView;
  .registers 6
  .prologue
  .line 327
    new-instance v0, Landroid/widget/ImageView;
    invoke-direct { v0, p0 }, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
  .line 328
    if-eqz p1, :L0
    invoke-virtual { v0, p1 }, Landroid/widget/ImageView;->setImageResource(I)V
  :L0
  .line 329
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
  .line 330
    const/16 v1, 12
    invoke-static { p0, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
  .line 331
    invoke-virtual { v0, v1, v1, v1, v1 }, Landroid/widget/ImageView;->setPadding(IIII)V
  .line 332
    const/16 v1, 62
    invoke-static { p0, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
  .line 333
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct { v2, v1, v1 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 334
    const/4 v1, 1
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
  .line 335
    invoke-virtual { v0, v2 }, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 336
    invoke-virtual { v0, p2 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 337
    return-object v0
.end method

.method private openOtaDialog(Lcom/geely/drivemem/net/OtaUpdater$Info;)V
  .registers 3
  .prologue
  .line 300
    new-instance v0, Lcom/geely/drivemem/ui/ComfortActivity$7;
    invoke-direct { v0, p0 }, Lcom/geely/drivemem/ui/ComfortActivity$7;-><init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
    invoke-static { p0, p1, v0 }, Lcom/geely/drivemem/ui/OtaDialog;->show(Landroid/app/Activity;Lcom/geely/drivemem/net/OtaUpdater$Info;Lcom/geely/drivemem/ui/OtaDialog$Listener;)Landroid/app/AlertDialog;
  .line 306
    return-void
.end method

.method private refreshCurrent()V
  .registers 3
  .prologue
  .line 341
    iget v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->mode:I
    const/4 v1, 1
    if-ne v0, v1, :L1
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->dailyStatsView:Lcom/geely/drivemem/ui/DailyStatsView;
    invoke-virtual { v0 }, Lcom/geely/drivemem/ui/DailyStatsView;->refresh()V
  :L0
  .line 345
    return-void
  :L1
  .line 342
    iget v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->mode:I
    const/4 v1, 3
    if-ne v0, v1, :L2
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->trendsView:Lcom/geely/drivemem/ui/TrendsView;
    invoke-virtual { v0 }, Lcom/geely/drivemem/ui/TrendsView;->refresh()V
    goto :L0
  :L2
  .line 343
    iget v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->mode:I
    const/4 v1, 4
    if-ne v0, v1, :L3
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->appsView:Lcom/geely/drivemem/ui/AppsView;
    invoke-virtual { v0 }, Lcom/geely/drivemem/ui/AppsView;->refresh()V
    goto :L0
  :L3
  .line 344
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeStatsView:Lcom/geely/drivemem/ui/ChargeStatsView;
    invoke-virtual { v0 }, Lcom/geely/drivemem/ui/ChargeStatsView;->refresh()V
    goto :L0
.end method

.method private refreshUpdateButton()V
  .registers 3
  .prologue
  .line 294
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->updateBtn:Landroid/widget/ImageView;
    if-nez v0, :L1
  :L0
  .line 297
    return-void
  :L1
  .line 295
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/ComfortActivity;->updateButton()Landroid/widget/ImageView;
    move-result-object v0
  .line 296
    iget-object v1, p0, Lcom/geely/drivemem/ui/ComfortActivity;->updateBtn:Landroid/widget/ImageView;
    invoke-virtual { v0 }, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    invoke-virtual { v1, v0 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    goto :L0
.end method

.method private setMode(I)V
  .registers 9
  .prologue
    const/4 v6, 3
    const/4 v5, 2
    const/16 v2, 8
    const/4 v3, 1
    const/4 v1, 0
  .line 348
    iget v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->mode:I
    if-ne v0, p1, :L1
  :L0
  .line 359
    return-void
  :L1
  .line 349
    iput p1, p0, Lcom/geely/drivemem/ui/ComfortActivity;->mode:I
  .line 350
    iget-object v4, p0, Lcom/geely/drivemem/ui/ComfortActivity;->statsContainer:Landroid/widget/FrameLayout;
    if-ne p1, v3, :L10
    move v0, v1
  :L2
    invoke-virtual { v4, v0 }, Landroid/widget/FrameLayout;->setVisibility(I)V
  .line 351
    iget-object v4, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeStatsContainer:Landroid/widget/FrameLayout;
    if-ne p1, v5, :L11
    move v0, v1
  :L3
    invoke-virtual { v4, v0 }, Landroid/widget/FrameLayout;->setVisibility(I)V
  .line 352
    iget-object v4, p0, Lcom/geely/drivemem/ui/ComfortActivity;->trendsContainer:Landroid/widget/FrameLayout;
    if-ne p1, v6, :L12
    move v0, v1
  :L4
    invoke-virtual { v4, v0 }, Landroid/widget/FrameLayout;->setVisibility(I)V
  .line 353
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->appsContainer:Landroid/widget/FrameLayout;
    const/4 v4, 4
    if-ne p1, v4, :L5
    move v2, v1
  :L5
    invoke-virtual { v0, v2 }, Landroid/widget/FrameLayout;->setVisibility(I)V
  .line 354
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/ComfortActivity;->refreshCurrent()V
  .line 355
    iget-object v2, p0, Lcom/geely/drivemem/ui/ComfortActivity;->appsDockIcon:Landroid/widget/ImageView;
    const/4 v0, 4
    if-ne p1, v0, :L13
    move v0, v3
  :L6
    invoke-direct { p0, v2, v0 }, Lcom/geely/drivemem/ui/ComfortActivity;->styleDock(Landroid/widget/ImageView;Z)V
  .line 356
    iget-object v2, p0, Lcom/geely/drivemem/ui/ComfortActivity;->trendsDockIcon:Landroid/widget/ImageView;
    if-ne p1, v6, :L14
    move v0, v3
  :L7
    invoke-direct { p0, v2, v0 }, Lcom/geely/drivemem/ui/ComfortActivity;->styleDock(Landroid/widget/ImageView;Z)V
  .line 357
    iget-object v2, p0, Lcom/geely/drivemem/ui/ComfortActivity;->statsDockIcon:Landroid/widget/ImageView;
    if-ne p1, v3, :L15
    move v0, v3
  :L8
    invoke-direct { p0, v2, v0 }, Lcom/geely/drivemem/ui/ComfortActivity;->styleDock(Landroid/widget/ImageView;Z)V
  .line 358
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeDockIcon:Landroid/widget/ImageView;
    if-ne p1, v5, :L16
  :L9
    invoke-direct { p0, v0, v3 }, Lcom/geely/drivemem/ui/ComfortActivity;->styleDock(Landroid/widget/ImageView;Z)V
    goto :L0
  :L10
    move v0, v2
  .line 350
    goto :L2
  :L11
    move v0, v2
  .line 351
    goto :L3
  :L12
    move v0, v2
  .line 352
    goto :L4
  :L13
    move v0, v1
  .line 355
    goto :L6
  :L14
    move v0, v1
  .line 356
    goto :L7
  :L15
    move v0, v1
  .line 357
    goto :L8
  :L16
    move v3, v1
  .line 358
    goto :L9
.end method

.method private styleDock(Landroid/widget/ImageView;Z)V
  .registers 6
  .prologue
  .line 363
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;
    invoke-direct { v1 }, Landroid/graphics/drawable/GradientDrawable;-><init>()V
  .line 364
    const/16 v0, 20
    invoke-static { p0, v0 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v0
    int-to-float v0, v0
    invoke-virtual { v1, v0 }, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V
  .line 365
    if-eqz p2, :L2
    sget v0, Lcom/geely/drivemem/util/Style;->ACCENT:I
    const v2, 16777215
    and-int/2addr v0, v2
    const/high16 v2, 0x33000000
    or-int/2addr v0, v2
  :L0
    invoke-virtual { v1, v0 }, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
  .line 366
    invoke-virtual { p1, v1 }, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 367
    if-eqz p2, :L3
    sget v0, Lcom/geely/drivemem/util/Style;->ACCENT:I
  :L1
    invoke-virtual { p1, v0 }, Landroid/widget/ImageView;->setColorFilter(I)V
  .line 368
    return-void
  :L2
  .line 365
    const/4 v0, 0
    goto :L0
  :L3
  .line 367
    sget v0, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    goto :L1
.end method

.method private trendsIcon()Landroid/graphics/Bitmap;
  .registers 11
  .prologue
    const v9, 1063675494
    const v8, 1045220557
  .line 192
    const/16 v0, 38
    invoke-static { p0, v0 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v0
  .line 193
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static { v0, v0, v1 }, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v1
  .line 194
    new-instance v2, Landroid/graphics/Canvas;
    invoke-direct { v2, v1 }, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
  .line 195
    new-instance v3, Landroid/graphics/Paint;
    const/4 v4, 1
    invoke-direct { v3, v4 }, Landroid/graphics/Paint;-><init>(I)V
  .line 196
    const/4 v4, -1
    invoke-virtual { v3, v4 }, Landroid/graphics/Paint;->setColor(I)V
  .line 197
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
    invoke-virtual { v3, v4 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 198
    int-to-float v4, v0
    const v5, 1034818683
    mul-float/2addr v4, v5
    invoke-virtual { v3, v4 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 199
    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;
    invoke-virtual { v3, v4 }, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V
  .line 200
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;
    invoke-virtual { v3, v4 }, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V
  .line 201
    new-instance v4, Landroid/graphics/Path;
    invoke-direct { v4 }, Landroid/graphics/Path;-><init>()V
  .line 202
    int-to-float v5, v0
    const v6, 1036831949
    mul-float/2addr v5, v6
    int-to-float v6, v0
    const v7, 1060655596
    mul-float/2addr v6, v7
    invoke-virtual { v4, v5, v6 }, Landroid/graphics/Path;->moveTo(FF)V
  .line 203
    int-to-float v5, v0
    const v6, 1052266988
    mul-float/2addr v5, v6
    int-to-float v6, v0
    const v7, 1054951342
    mul-float/2addr v6, v7
    invoke-virtual { v4, v5, v6 }, Landroid/graphics/Path;->lineTo(FF)V
  .line 204
    int-to-float v5, v0
    const v6, 1057971241
    mul-float/2addr v5, v6
    int-to-float v6, v0
    const v7, 1058977874
    mul-float/2addr v6, v7
    invoke-virtual { v4, v5, v6 }, Landroid/graphics/Path;->lineTo(FF)V
  .line 205
    int-to-float v5, v0
    mul-float/2addr v5, v9
    int-to-float v6, v0
    mul-float/2addr v6, v8
    invoke-virtual { v4, v5, v6 }, Landroid/graphics/Path;->lineTo(FF)V
  .line 206
    invoke-virtual { v2, v4, v3 }, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
  .line 207
    invoke-virtual { v4 }, Landroid/graphics/Path;->reset()V
  .line 208
    int-to-float v5, v0
    const v6, 1060320051
    mul-float/2addr v5, v6
    int-to-float v6, v0
    mul-float/2addr v6, v8
    invoke-virtual { v4, v5, v6 }, Landroid/graphics/Path;->moveTo(FF)V
  .line 209
    int-to-float v5, v0
    mul-float/2addr v5, v9
    int-to-float v6, v0
    mul-float/2addr v6, v8
    invoke-virtual { v4, v5, v6 }, Landroid/graphics/Path;->lineTo(FF)V
  .line 210
    int-to-float v5, v0
    mul-float/2addr v5, v9
    int-to-float v0, v0
    const v6, 1053609165
    mul-float/2addr v0, v6
    invoke-virtual { v4, v5, v0 }, Landroid/graphics/Path;->lineTo(FF)V
  .line 211
    invoke-virtual { v2, v4, v3 }, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
  .line 212
    return-object v1
.end method

.method private updateButton()Landroid/widget/ImageView;
  .registers 15
  .prologue
  .line 269
    const/16 v0, 40
    invoke-static { p0, v0 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v12
  .line 270
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static { v12, v12, v0 }, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v13
  .line 271
    new-instance v0, Landroid/graphics/Canvas;
    invoke-direct { v0, v13 }, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
  .line 272
    new-instance v5, Landroid/graphics/Paint;
    const/4 v1, 1
    invoke-direct { v5, v1 }, Landroid/graphics/Paint;-><init>(I)V
  .line 273
    iget-boolean v1, p0, Lcom/geely/drivemem/ui/ComfortActivity;->updateAvailable:Z
    if-eqz v1, :L1
    const v1, -13577896
  :L0
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setColor(I)V
  .line 274
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 275
    int-to-float v1, v12
    const v2, 1035489772
    mul-float/2addr v1, v2
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 276
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V
  .line 277
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V
  .line 278
    int-to-float v1, v12
    const/high16 v2, 0x40000000
    div-float/2addr v1, v2
  .line 279
    int-to-float v2, v12
    const v3, 1041865114
    mul-float/2addr v2, v3
    int-to-float v3, v12
    const v4, 1058977874
    mul-float/2addr v4, v3
    move v3, v1
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
  .line 280
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
  .line 281
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
  .line 282
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
  .line 283
    new-instance v0, Landroid/widget/ImageView;
    invoke-direct { v0, p0 }, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
  .line 284
    invoke-virtual { v0, v13 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
  .line 285
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 62
    invoke-static { p0, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
    const/16 v3, 62
    invoke-static { p0, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
    invoke-direct { v1, v2, v3 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 286
    const/4 v2, 1
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
  .line 287
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 288
    const/16 v1, 11
    invoke-static { p0, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
  .line 289
    invoke-virtual { v0, v1, v1, v1, v1 }, Landroid/widget/ImageView;->setPadding(IIII)V
  .line 290
    return-object v0
  :L1
  .line 273
    sget v1, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    goto/16 :L0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
  .registers 15
  .prologue
  .line 45
    invoke-super { p0, p1 }, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
  .line 46
    invoke-static { p0 }, Lcom/geely/drivemem/util/Style;->load(Landroid/content/Context;)V
  .line 47
    invoke-static { }, Lcom/geely/drivemem/util/Style;->current()Lcom/geely/drivemem/util/Style$Theme;
    move-result-object v0
    iget-object v0, v0, Lcom/geely/drivemem/util/Style$Theme;->id:Ljava/lang/String;
    iput-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->themeId:Ljava/lang/String;
  .line 48
    sget-boolean v0, Lcom/geely/drivemem/util/Style;->LIGHT:Z
    iput-boolean v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->themeLight:Z
  .line 49
    invoke-static { p0 }, Lcom/geely/drivemem/util/Style;->edgeToEdge(Landroid/app/Activity;)V
  .line 51
    new-instance v1, Landroid/widget/FrameLayout;
    invoke-direct { v1, p0 }, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
  .line 52
    invoke-static { }, Lcom/geely/drivemem/util/Style;->screenBg()Landroid/graphics/drawable/GradientDrawable;
    move-result-object v0
    invoke-virtual { v1, v0 }, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 54
    const/16 v0, 84
    invoke-static { p0, v0 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
    const/16 v0, 8
    invoke-static { p0, v0 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
    const/16 v0, 24
    invoke-static { p0, v0 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v0
  .line 55
    add-int v4, v3, v2
    add-int/2addr v0, v4
  .line 56
    const/16 v4, 36
    invoke-static { p0, v4 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v4
    const/16 v5, 32
    invoke-static { p0, v5 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v5
    const/16 v6, 12
    invoke-static { p0, v6 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v6
  .line 58
    new-instance v7, Landroid/widget/FrameLayout;
    invoke-direct { v7, p0 }, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    iput-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->statsContainer:Landroid/widget/FrameLayout;
  .line 59
    iget-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->statsContainer:Landroid/widget/FrameLayout;
    invoke-static { p0 }, Lcom/geely/drivemem/util/Style;->statusBarHeight(Landroid/content/Context;)I
    move-result v8
    add-int/2addr v8, v6
    invoke-virtual { v7, v0, v8, v4, v5 }, Landroid/widget/FrameLayout;->setPadding(IIII)V
  .line 60
    new-instance v7, Landroid/widget/ScrollView;
    invoke-direct { v7, p0 }, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V
  .line 61
    const/4 v8, 0
    invoke-virtual { v7, v8 }, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V
  .line 62
    const/4 v8, 2
    invoke-virtual { v7, v8 }, Landroid/widget/ScrollView;->setOverScrollMode(I)V
  .line 63
    new-instance v8, Lcom/geely/drivemem/ui/DailyStatsView;
    const/4 v9, 0
    invoke-direct { v8, p0, v9 }, Lcom/geely/drivemem/ui/DailyStatsView;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    iput-object v8, p0, Lcom/geely/drivemem/ui/ComfortActivity;->dailyStatsView:Lcom/geely/drivemem/ui/DailyStatsView;
  .line 64
    iget-object v8, p0, Lcom/geely/drivemem/ui/ComfortActivity;->dailyStatsView:Lcom/geely/drivemem/ui/DailyStatsView;
    invoke-virtual { v7, v8 }, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V
  .line 65
    new-instance v8, Landroid/widget/LinearLayout;
    invoke-direct { v8, p0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 66
    const/4 v9, 1
    invoke-virtual { v8, v9 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 67
    new-instance v9, Lcom/geely/drivemem/ui/ChargingBanner;
    invoke-direct { v9, p0 }, Lcom/geely/drivemem/ui/ChargingBanner;-><init>(Landroid/content/Context;)V
    invoke-virtual { v8, v9 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 68
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, -1
    const/4 v11, 0
    const/high16 v12, 0x3f800000
    invoke-direct { v9, v10, v11, v12 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual { v8, v7, v9 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 69
    iget-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->statsContainer:Landroid/widget/FrameLayout;
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;
    const/4 v10, -1
    const/4 v11, -1
    invoke-direct { v9, v10, v11 }, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
    invoke-virtual { v7, v8, v9 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 71
    iget-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->statsContainer:Landroid/widget/FrameLayout;
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;
    const/4 v9, -1
    const/4 v10, -1
    invoke-direct { v8, v9, v10 }, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
    invoke-virtual { v1, v7, v8 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 74
    new-instance v7, Landroid/widget/FrameLayout;
    invoke-direct { v7, p0 }, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    iput-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeStatsContainer:Landroid/widget/FrameLayout;
  .line 75
    iget-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeStatsContainer:Landroid/widget/FrameLayout;
    invoke-static { p0 }, Lcom/geely/drivemem/util/Style;->statusBarHeight(Landroid/content/Context;)I
    move-result v8
    add-int/2addr v8, v6
    invoke-virtual { v7, v0, v8, v4, v5 }, Landroid/widget/FrameLayout;->setPadding(IIII)V
  .line 76
    new-instance v7, Landroid/widget/ScrollView;
    invoke-direct { v7, p0 }, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V
  .line 77
    const/4 v8, 0
    invoke-virtual { v7, v8 }, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V
  .line 78
    const/4 v8, 2
    invoke-virtual { v7, v8 }, Landroid/widget/ScrollView;->setOverScrollMode(I)V
  .line 79
    new-instance v8, Lcom/geely/drivemem/ui/ChargeStatsView;
    const/4 v9, 0
    invoke-direct { v8, p0, v9 }, Lcom/geely/drivemem/ui/ChargeStatsView;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    iput-object v8, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeStatsView:Lcom/geely/drivemem/ui/ChargeStatsView;
  .line 80
    iget-object v8, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeStatsView:Lcom/geely/drivemem/ui/ChargeStatsView;
    invoke-virtual { v7, v8 }, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V
  .line 81
    new-instance v8, Landroid/widget/LinearLayout;
    invoke-direct { v8, p0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 82
    const/4 v9, 1
    invoke-virtual { v8, v9 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 83
    new-instance v9, Lcom/geely/drivemem/ui/ChargingBanner;
    invoke-direct { v9, p0 }, Lcom/geely/drivemem/ui/ChargingBanner;-><init>(Landroid/content/Context;)V
    invoke-virtual { v8, v9 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 84
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, -1
    const/4 v11, 0
    const/high16 v12, 0x3f800000
    invoke-direct { v9, v10, v11, v12 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual { v8, v7, v9 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 85
    iget-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeStatsContainer:Landroid/widget/FrameLayout;
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;
    const/4 v10, -1
    const/4 v11, -1
    invoke-direct { v9, v10, v11 }, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
    invoke-virtual { v7, v8, v9 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 87
    iget-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeStatsContainer:Landroid/widget/FrameLayout;
    const/16 v8, 8
    invoke-virtual { v7, v8 }, Landroid/widget/FrameLayout;->setVisibility(I)V
  .line 88
    iget-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeStatsContainer:Landroid/widget/FrameLayout;
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;
    const/4 v9, -1
    const/4 v10, -1
    invoke-direct { v8, v9, v10 }, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
    invoke-virtual { v1, v7, v8 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 91
    new-instance v7, Landroid/widget/FrameLayout;
    invoke-direct { v7, p0 }, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    iput-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->trendsContainer:Landroid/widget/FrameLayout;
  .line 92
    iget-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->trendsContainer:Landroid/widget/FrameLayout;
    invoke-static { p0 }, Lcom/geely/drivemem/util/Style;->statusBarHeight(Landroid/content/Context;)I
    move-result v8
    add-int/2addr v8, v6
    invoke-virtual { v7, v0, v8, v4, v5 }, Landroid/widget/FrameLayout;->setPadding(IIII)V
  .line 93
    new-instance v7, Landroid/widget/ScrollView;
    invoke-direct { v7, p0 }, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V
  .line 94
    const/4 v8, 0
    invoke-virtual { v7, v8 }, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V
  .line 95
    const/4 v8, 2
    invoke-virtual { v7, v8 }, Landroid/widget/ScrollView;->setOverScrollMode(I)V
  .line 96
    new-instance v8, Lcom/geely/drivemem/ui/TrendsView;
    const/4 v9, 0
    invoke-direct { v8, p0, v9 }, Lcom/geely/drivemem/ui/TrendsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    iput-object v8, p0, Lcom/geely/drivemem/ui/ComfortActivity;->trendsView:Lcom/geely/drivemem/ui/TrendsView;
  .line 97
    iget-object v8, p0, Lcom/geely/drivemem/ui/ComfortActivity;->trendsView:Lcom/geely/drivemem/ui/TrendsView;
    invoke-virtual { v7, v8 }, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V
  .line 98
    new-instance v8, Landroid/widget/LinearLayout;
    invoke-direct { v8, p0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 99
    const/4 v9, 1
    invoke-virtual { v8, v9 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 100
    new-instance v9, Lcom/geely/drivemem/ui/ChargingBanner;
    invoke-direct { v9, p0 }, Lcom/geely/drivemem/ui/ChargingBanner;-><init>(Landroid/content/Context;)V
    invoke-virtual { v8, v9 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 101
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, -1
    const/4 v11, 0
    const/high16 v12, 0x3f800000
    invoke-direct { v9, v10, v11, v12 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual { v8, v7, v9 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 102
    iget-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->trendsContainer:Landroid/widget/FrameLayout;
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;
    const/4 v10, -1
    const/4 v11, -1
    invoke-direct { v9, v10, v11 }, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
    invoke-virtual { v7, v8, v9 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 104
    iget-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->trendsContainer:Landroid/widget/FrameLayout;
    const/16 v8, 8
    invoke-virtual { v7, v8 }, Landroid/widget/FrameLayout;->setVisibility(I)V
  .line 105
    iget-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->trendsContainer:Landroid/widget/FrameLayout;
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;
    const/4 v9, -1
    const/4 v10, -1
    invoke-direct { v8, v9, v10 }, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
    invoke-virtual { v1, v7, v8 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 108
    new-instance v7, Landroid/widget/FrameLayout;
    invoke-direct { v7, p0 }, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    iput-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->appsContainer:Landroid/widget/FrameLayout;
  .line 109
    iget-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->appsContainer:Landroid/widget/FrameLayout;
    invoke-static { p0 }, Lcom/geely/drivemem/util/Style;->statusBarHeight(Landroid/content/Context;)I
    move-result v8
    add-int/2addr v8, v6
    invoke-virtual { v7, v0, v8, v4, v5 }, Landroid/widget/FrameLayout;->setPadding(IIII)V
  .line 110
    new-instance v0, Landroid/widget/ScrollView;
    invoke-direct { v0, p0 }, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V
  .line 111
    const/4 v4, 0
    invoke-virtual { v0, v4 }, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V
  .line 112
    const/4 v4, 2
    invoke-virtual { v0, v4 }, Landroid/widget/ScrollView;->setOverScrollMode(I)V
  .line 113
    new-instance v4, Lcom/geely/drivemem/ui/AppsView;
    const/4 v7, 0
    invoke-direct { v4, p0, v7 }, Lcom/geely/drivemem/ui/AppsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    iput-object v4, p0, Lcom/geely/drivemem/ui/ComfortActivity;->appsView:Lcom/geely/drivemem/ui/AppsView;
  .line 114
    iget-object v4, p0, Lcom/geely/drivemem/ui/ComfortActivity;->appsView:Lcom/geely/drivemem/ui/AppsView;
    invoke-virtual { v0, v4 }, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V
  .line 115
    iget-object v4, p0, Lcom/geely/drivemem/ui/ComfortActivity;->appsContainer:Landroid/widget/FrameLayout;
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;
    const/4 v8, -1
    const/4 v9, -1
    invoke-direct { v7, v8, v9 }, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
    invoke-virtual { v4, v0, v7 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 117
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->appsContainer:Landroid/widget/FrameLayout;
    const/16 v4, 8
    invoke-virtual { v0, v4 }, Landroid/widget/FrameLayout;->setVisibility(I)V
  .line 118
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->appsContainer:Landroid/widget/FrameLayout;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;
    const/4 v7, -1
    const/4 v8, -1
    invoke-direct { v4, v7, v8 }, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
    invoke-virtual { v1, v0, v4 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 121
    new-instance v4, Landroid/widget/LinearLayout;
    invoke-direct { v4, p0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 122
    const/4 v0, 1
    invoke-virtual { v4, v0 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 123
    const/16 v0, 17
    invoke-virtual { v4, v0 }, Landroid/widget/LinearLayout;->setGravity(I)V
  .line 124
    invoke-static { }, Lcom/geely/drivemem/util/Style;->cardFillColor()I
    move-result v0
    invoke-static { v0, p0 }, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v0
    invoke-virtual { v4, v0 }, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 125
    sget v0, Lcom/geely/drivemem/R$drawable;->ic_chart_bar:I
    new-instance v7, Lcom/geely/drivemem/ui/ComfortActivity$1;
    invoke-direct { v7, p0 }, Lcom/geely/drivemem/ui/ComfortActivity$1;-><init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
    invoke-direct { p0, v0, v7 }, Lcom/geely/drivemem/ui/ComfortActivity;->dockButton(ILandroid/view/View$OnClickListener;)Landroid/widget/ImageView;
    move-result-object v0
    iput-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->statsDockIcon:Landroid/widget/ImageView;
  .line 128
    sget v0, Lcom/geely/drivemem/R$drawable;->ic_ev_station:I
    new-instance v7, Lcom/geely/drivemem/ui/ComfortActivity$2;
    invoke-direct { v7, p0 }, Lcom/geely/drivemem/ui/ComfortActivity$2;-><init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
    invoke-direct { p0, v0, v7 }, Lcom/geely/drivemem/ui/ComfortActivity;->dockButton(ILandroid/view/View$OnClickListener;)Landroid/widget/ImageView;
    move-result-object v0
    iput-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeDockIcon:Landroid/widget/ImageView;
  .line 131
    const/4 v0, 0
    new-instance v7, Lcom/geely/drivemem/ui/ComfortActivity$3;
    invoke-direct { v7, p0 }, Lcom/geely/drivemem/ui/ComfortActivity$3;-><init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
    invoke-direct { p0, v0, v7 }, Lcom/geely/drivemem/ui/ComfortActivity;->dockButton(ILandroid/view/View$OnClickListener;)Landroid/widget/ImageView;
    move-result-object v0
    iput-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->trendsDockIcon:Landroid/widget/ImageView;
  .line 134
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->trendsDockIcon:Landroid/widget/ImageView;
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/ComfortActivity;->trendsIcon()Landroid/graphics/Bitmap;
    move-result-object v7
    invoke-virtual { v0, v7 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
  .line 135
    const/4 v0, 0
    new-instance v7, Lcom/geely/drivemem/ui/ComfortActivity$4;
    invoke-direct { v7, p0 }, Lcom/geely/drivemem/ui/ComfortActivity$4;-><init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
    invoke-direct { p0, v0, v7 }, Lcom/geely/drivemem/ui/ComfortActivity;->dockButton(ILandroid/view/View$OnClickListener;)Landroid/widget/ImageView;
    move-result-object v0
    iput-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->appsDockIcon:Landroid/widget/ImageView;
  .line 138
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->appsDockIcon:Landroid/widget/ImageView;
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/ComfortActivity;->appsIcon()Landroid/graphics/Bitmap;
    move-result-object v7
    invoke-virtual { v0, v7 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
  .line 139
    iget-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->statsDockIcon:Landroid/widget/ImageView;
    iget v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->mode:I
    const/4 v8, 1
    if-ne v0, v8, :L4
    const/4 v0, 1
  :L0
    invoke-direct { p0, v7, v0 }, Lcom/geely/drivemem/ui/ComfortActivity;->styleDock(Landroid/widget/ImageView;Z)V
  .line 140
    iget-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeDockIcon:Landroid/widget/ImageView;
    iget v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->mode:I
    const/4 v8, 2
    if-ne v0, v8, :L5
    const/4 v0, 1
  :L1
    invoke-direct { p0, v7, v0 }, Lcom/geely/drivemem/ui/ComfortActivity;->styleDock(Landroid/widget/ImageView;Z)V
  .line 141
    iget-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->trendsDockIcon:Landroid/widget/ImageView;
    iget v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->mode:I
    const/4 v8, 3
    if-ne v0, v8, :L6
    const/4 v0, 1
  :L2
    invoke-direct { p0, v7, v0 }, Lcom/geely/drivemem/ui/ComfortActivity;->styleDock(Landroid/widget/ImageView;Z)V
  .line 142
    iget-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->appsDockIcon:Landroid/widget/ImageView;
    iget v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->mode:I
    const/4 v8, 4
    if-ne v0, v8, :L7
    const/4 v0, 1
  :L3
    invoke-direct { p0, v7, v0 }, Lcom/geely/drivemem/ui/ComfortActivity;->styleDock(Landroid/widget/ImageView;Z)V
  .line 143
    new-instance v0, Landroid/view/View;
    invoke-direct { v0, p0 }, Landroid/view/View;-><init>(Landroid/content/Context;)V
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0
    const/4 v9, 0
    const/high16 v10, 0x3f800000
    invoke-direct { v7, v8, v9, v10 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual { v4, v0, v7 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 144
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->statsDockIcon:Landroid/widget/ImageView;
    invoke-virtual { v4, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 145
    const/16 v0, 14
    invoke-static { v4, p0, v0 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 146
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeDockIcon:Landroid/widget/ImageView;
    invoke-virtual { v4, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 147
    const/16 v0, 14
    invoke-static { v4, p0, v0 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 148
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->trendsDockIcon:Landroid/widget/ImageView;
    invoke-virtual { v4, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 149
    const/16 v0, 14
    invoke-static { v4, p0, v0 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 150
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->appsDockIcon:Landroid/widget/ImageView;
    invoke-virtual { v4, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 151
    new-instance v0, Landroid/view/View;
    invoke-direct { v0, p0 }, Landroid/view/View;-><init>(Landroid/content/Context;)V
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0
    const/4 v9, 0
    const/high16 v10, 0x3f800000
    invoke-direct { v7, v8, v9, v10 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual { v4, v0, v7 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 152
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/ComfortActivity;->appearanceButton()Landroid/widget/ImageView;
    move-result-object v0
  .line 153
    new-instance v7, Lcom/geely/drivemem/ui/ComfortActivity$5;
    invoke-direct { v7, p0 }, Lcom/geely/drivemem/ui/ComfortActivity$5;-><init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
    invoke-virtual { v0, v7 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 156
    invoke-virtual { v4, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 157
    const/16 v0, 14
    invoke-static { v4, p0, v0 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 158
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/ComfortActivity;->updateButton()Landroid/widget/ImageView;
    move-result-object v0
    iput-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->updateBtn:Landroid/widget/ImageView;
  .line 159
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->updateBtn:Landroid/widget/ImageView;
    new-instance v7, Lcom/geely/drivemem/ui/ComfortActivity$6;
    invoke-direct { v7, p0 }, Lcom/geely/drivemem/ui/ComfortActivity$6;-><init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
    invoke-virtual { v0, v7 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 162
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->updateBtn:Landroid/widget/ImageView;
    invoke-virtual { v4, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 163
    const/16 v0, 14
    invoke-static { v4, p0, v0 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 164
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;
    const/4 v7, -1
    const v8, 8388611
    invoke-direct { v0, v2, v7, v8 }, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V
  .line 166
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I
  .line 167
    invoke-static { p0 }, Lcom/geely/drivemem/util/Style;->statusBarHeight(Landroid/content/Context;)I
    move-result v2
    add-int/2addr v2, v6
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I
  .line 168
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
  .line 169
    invoke-virtual { v1, v4, v0 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 171
    invoke-virtual { p0, v1 }, Lcom/geely/drivemem/ui/ComfortActivity;->setContentView(Landroid/view/View;)V
  .line 172
    invoke-static { p0 }, Lcom/geely/drivemem/util/FullCharge;->touch(Landroid/content/Context;)V
  .line 173
    const/4 v0, 1
    invoke-direct { p0, v0 }, Lcom/geely/drivemem/ui/ComfortActivity;->setMode(I)V
  .line 174
    return-void
  :L4
  .line 139
    const/4 v0, 0
    goto/16 :L0
  :L5
  .line 140
    const/4 v0, 0
    goto/16 :L1
  :L6
  .line 141
    const/4 v0, 0
    goto/16 :L2
  :L7
  .line 142
    const/4 v0, 0
    goto/16 :L3
.end method

.method protected onResume()V
  .catch Ljava/lang/Throwable; { :L2 .. :L3 } :L4
  .registers 5
  .prologue
  .line 371
    invoke-super { p0 }, Landroid/app/Activity;->onResume()V
  .line 372
    invoke-static { p0 }, Lcom/geely/drivemem/util/Style;->load(Landroid/content/Context;)V
  .line 373
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
  .line 388
    return-void
  :L2
  .line 375
    invoke-static { p0 }, Lcom/geely/drivemem/util/BootReceiver;->scheduleWatchdog(Landroid/content/Context;)V
  .line 376
    invoke-static { p0 }, Lcom/geely/drivemem/util/BootReceiver;->ensureAll(Landroid/content/Context;)V
  :L3
  .line 378
    new-instance v0, Ljava/lang/Thread;
    new-instance v1, Lcom/geely/drivemem/ui/ComfortActivity$9;
    invoke-direct { v1, p0 }, Lcom/geely/drivemem/ui/ComfortActivity$9;-><init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
    const-string v2, "autocost"
    invoke-direct { v0, v1, v2 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 383
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
  .line 384
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/ComfortActivity;->autoCheck()V
  .line 385
    new-instance v0, Lcom/geely/drivemem/ui/ComfortActivity$10;
    invoke-direct { v0, p0 }, Lcom/geely/drivemem/ui/ComfortActivity$10;-><init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
    invoke-static { p0, v0 }, Lcom/geely/drivemem/ui/MonthlySummary;->check(Landroid/app/Activity;Ljava/lang/Runnable;)V
    goto :L1
  :L4
  .line 377
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
.end method
