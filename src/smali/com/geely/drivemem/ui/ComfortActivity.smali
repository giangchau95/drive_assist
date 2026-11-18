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
  .line 244
    invoke-static { p0 }, Lcom/geely/drivemem/util/Style;->appearance(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v1
  .line 245
    const/16 v0, 40
    invoke-static { p0, v0 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v7
  .line 246
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static { v7, v7, v0 }, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v8
  .line 247
    new-instance v0, Landroid/graphics/Canvas;
    invoke-direct { v0, v8 }, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
  .line 248
    new-instance v5, Landroid/graphics/Paint;
    const/4 v2, 1
    invoke-direct { v5, v2 }, Landroid/graphics/Paint;-><init>(I)V
  .line 249
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-virtual { v5, v2 }, Landroid/graphics/Paint;->setColor(I)V
  .line 250
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
    invoke-virtual { v5, v2 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 251
    int-to-float v2, v7
    const v3, 1034147594
    mul-float/2addr v2, v3
    invoke-virtual { v5, v2 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 252
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;
    invoke-virtual { v5, v2 }, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V
  .line 253
    int-to-float v2, v7
    const/high16 v3, 0x40000000
    div-float v9, v2, v3
  .line 254
    const-string v2, "light"
    invoke-virtual { v2, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L1
  .line 255
    int-to-float v1, v7
    const v2, 1043207291
    mul-float/2addr v1, v2
    invoke-virtual { v0, v9, v9, v1, v5 }, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
  .line 256
    const/4 v1, 0
    move v6, v1
  :L0
    const/16 v1, 8
    if-ge v6, v1, :L2
  .line 257
    const-wide v2, 4605249457297304856L
    int-to-double v10, v6
    mul-double/2addr v10, v2
  .line 258
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
  .line 259
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
  .line 258
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
  .line 256
    add-int/lit8 v1, v6, 1
    move v6, v1
    goto :L0
  :L1
  .line 261
    const-string v2, "auto"
    invoke-virtual { v2, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L3
  .line 262
    int-to-float v1, v7
    const v2, 1051595899
    mul-float/2addr v2, v1
  .line 263
    invoke-virtual { v0, v9, v9, v2, v5 }, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
  .line 264
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 265
    new-instance v1, Landroid/graphics/RectF;
    sub-float v3, v9, v2
    sub-float v4, v9, v2
    add-float v6, v9, v2
    add-float/2addr v2, v9
    invoke-direct { v1, v3, v4, v6, v2 }, Landroid/graphics/RectF;-><init>(FFFF)V
  .line 266
    const/high16 v2, 0x42b40000
    const/high16 v3, 0x43340000
    const/4 v4, 1
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
  :L2
  .line 276
    new-instance v0, Landroid/widget/ImageView;
    invoke-direct { v0, p0 }, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
  .line 277
    invoke-virtual { v0, v8 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
  .line 278
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 62
    invoke-static { p0, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
    const/16 v3, 62
    invoke-static { p0, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
    invoke-direct { v1, v2, v3 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 279
    const/4 v2, 1
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
  .line 280
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 281
    const/16 v1, 11
    invoke-static { p0, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
  .line 282
    invoke-virtual { v0, v1, v1, v1, v1 }, Landroid/widget/ImageView;->setPadding(IIII)V
  .line 283
    return-object v0
  :L3
  .line 268
    new-instance v1, Landroid/graphics/Path;
    invoke-direct { v1 }, Landroid/graphics/Path;-><init>()V
  .line 269
    int-to-float v2, v7
    const v3, 1050924810
    mul-float/2addr v2, v3
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;
    invoke-virtual { v1, v9, v9, v2, v3 }, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V
  .line 270
    new-instance v2, Landroid/graphics/Path;
    invoke-direct { v2 }, Landroid/graphics/Path;-><init>()V
  .line 271
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
  .line 272
    sget-object v3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;
    invoke-virtual { v1, v2, v3 }, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z
  .line 273
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
    invoke-virtual { v5, v2 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 274
    invoke-virtual { v0, v1, v5 }, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    goto :L2
.end method

.method private appsIcon()Landroid/graphics/Bitmap;
  .registers 15
  .prologue
  .line 178
    const/16 v0, 38
    invoke-static { p0, v0 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v0
  .line 179
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static { v0, v0, v1 }, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v2
  .line 180
    new-instance v3, Landroid/graphics/Canvas;
    invoke-direct { v3, v2 }, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
  .line 181
    new-instance v4, Landroid/graphics/Paint;
    const/4 v1, 1
    invoke-direct { v4, v1 }, Landroid/graphics/Paint;-><init>(I)V
  .line 182
    const/4 v1, -1
    invoke-virtual { v4, v1 }, Landroid/graphics/Paint;->setColor(I)V
  .line 183
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
  .line 184
    int-to-float v0, v0
    const v1, 1035489772
    mul-float v8, v0, v1
  .line 185
    const/4 v0, 0
    move v1, v0
  :L0
    const/4 v0, 2
    if-ge v1, v0, :L3
    const/4 v0, 0
  :L1
    const/4 v9, 2
    if-ge v0, v9, :L2
  .line 186
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
  .line 187
    new-instance v11, Landroid/graphics/RectF;
    add-float v12, v9, v6
    add-float v13, v10, v6
    invoke-direct { v11, v9, v10, v12, v13 }, Landroid/graphics/RectF;-><init>(FFFF)V
    invoke-virtual { v3, v11, v8, v8, v4 }, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
  .line 185
    add-int/lit8 v0, v0, 1
    goto :L1
  :L2
    add-int/lit8 v0, v1, 1
    move v1, v0
    goto :L0
  :L3
  .line 189
    return-object v2
.end method

.method private autoCheck()V
  .registers 7
  .prologue
  .line 336
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
  .line 337
    sget-wide v2, Lcom/geely/drivemem/ui/ComfortActivity;->lastAutoCheckMs:J
    sub-long v2, v0, v2
    const-wide/32 v4, 21600000
    cmp-long v2, v2, v4
    if-ltz v2, :L0
    invoke-static { }, Lcom/geely/drivemem/state/CarState;->isParked()Z
    move-result v2
    if-nez v2, :L1
  :L0
  .line 351
    return-void
  :L1
  .line 338
    sput-wide v0, Lcom/geely/drivemem/ui/ComfortActivity;->lastAutoCheckMs:J
  .line 339
    new-instance v0, Lcom/geely/drivemem/ui/ComfortActivity$8;
    invoke-direct { v0, p0 }, Lcom/geely/drivemem/ui/ComfortActivity$8;-><init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
    invoke-static { p0, v0 }, Lcom/geely/drivemem/net/OtaUpdater;->check(Landroid/content/Context;Lcom/geely/drivemem/net/OtaUpdater$Callback;)V
    goto :L0
.end method

.method private chargeIcon()Landroid/graphics/Bitmap;
  .registers 16
  .prologue
    const/high16 v14, 0x3f000000
    const v13, 1055957975
    const v12, 1053609165
    const v11, 1045220557
    const v10, 1036831949
  .line 194
    const/16 v0, 38
    invoke-static { p0, v0 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v6
  .line 195
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static { v6, v6, v0 }, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v7
  .line 196
    new-instance v0, Landroid/graphics/Canvas;
    invoke-direct { v0, v7 }, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
  .line 197
    new-instance v5, Landroid/graphics/Paint;
    const/4 v1, 1
    invoke-direct { v5, v1 }, Landroid/graphics/Paint;-><init>(I)V
  .line 198
    const/4 v1, -1
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setColor(I)V
  .line 199
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 200
    int-to-float v1, v6
    const v2, 1034818683
    mul-float/2addr v1, v2
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 201
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V
  .line 202
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V
  .line 203
    new-instance v1, Landroid/graphics/RectF;
    int-to-float v2, v6
    const v3, 1047233823
    mul-float/2addr v2, v3
    int-to-float v3, v6
    const v4, 1034147594
    mul-float/2addr v3, v4
    int-to-float v4, v6
    const v8, 1061494456
    mul-float/2addr v4, v8
    int-to-float v8, v6
    const v9, 1062333317
    mul-float/2addr v8, v9
    invoke-direct { v1, v2, v3, v4, v8 }, Landroid/graphics/RectF;-><init>(FFFF)V
    int-to-float v2, v6
    mul-float/2addr v2, v10
    int-to-float v3, v6
    mul-float/2addr v3, v10
    invoke-virtual { v0, v1, v2, v3, v5 }, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
  .line 204
    int-to-float v1, v6
    const v2, 1039516303
    mul-float/2addr v1, v2
    int-to-float v2, v6
    const v3, 1064011039
    mul-float/2addr v2, v3
    int-to-float v3, v6
    const v4, 1063339950
    mul-float/2addr v3, v4
    int-to-float v4, v6
    const v8, 1064011039
    mul-float/2addr v4, v8
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
  .line 205
    new-instance v1, Landroid/graphics/Path;
    invoke-direct { v1 }, Landroid/graphics/Path;-><init>()V
  .line 206
    int-to-float v2, v6
    const v3, 1057635697
    mul-float/2addr v2, v3
    int-to-float v3, v6
    mul-float/2addr v3, v11
    invoke-virtual { v1, v2, v3 }, Landroid/graphics/Path;->moveTo(FF)V
  .line 207
    int-to-float v2, v6
    const v3, 1052938076
    mul-float/2addr v2, v3
    int-to-float v3, v6
    mul-float/2addr v3, v13
    invoke-virtual { v1, v2, v3 }, Landroid/graphics/Path;->lineTo(FF)V
  .line 208
    int-to-float v2, v6
    mul-float/2addr v2, v14
    int-to-float v3, v6
    mul-float/2addr v3, v13
    invoke-virtual { v1, v2, v3 }, Landroid/graphics/Path;->lineTo(FF)V
  .line 209
    int-to-float v2, v6
    const v3, 1054951342
    mul-float/2addr v2, v3
    int-to-float v3, v6
    const v4, 1060320051
    mul-float/2addr v3, v4
    invoke-virtual { v1, v2, v3 }, Landroid/graphics/Path;->lineTo(FF)V
  .line 210
    int-to-float v2, v6
    const v3, 1058977874
    mul-float/2addr v2, v3
    int-to-float v3, v6
    mul-float/2addr v3, v12
    invoke-virtual { v1, v2, v3 }, Landroid/graphics/Path;->lineTo(FF)V
  .line 211
    int-to-float v2, v6
    mul-float/2addr v2, v14
    int-to-float v3, v6
    mul-float/2addr v3, v12
    invoke-virtual { v1, v2, v3 }, Landroid/graphics/Path;->lineTo(FF)V
  .line 212
    int-to-float v2, v6
    const v3, 1058306785
    mul-float/2addr v2, v3
    int-to-float v3, v6
    mul-float/2addr v3, v11
    invoke-virtual { v1, v2, v3 }, Landroid/graphics/Path;->lineTo(FF)V
  .line 213
    invoke-virtual { v1 }, Landroid/graphics/Path;->close()V
  .line 214
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
    invoke-virtual { v5, v2 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 215
    invoke-virtual { v0, v1, v5 }, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
  .line 216
    return-object v7
.end method

.method private cycleAppearance()V
  .registers 3
  .prologue
  .line 287
    invoke-static { p0 }, Lcom/geely/drivemem/util/Style;->appearance(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v0
  .line 288
    const-string v1, "auto"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L2
    const-string v0, "light"
  :L0
  .line 289
    invoke-static { p0, v0 }, Lcom/geely/drivemem/util/Style;->setAppearance(Landroid/content/Context;Ljava/lang/String;)V
  .line 290
    const-string v1, "auto"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L4
    const-string v0, "Appearance: follow system"
  :L1
  .line 291
    const/4 v1, 0
  .line 290
    invoke-static { p0, v0, v1 }, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
  .line 291
    invoke-virtual { v0 }, Landroid/widget/Toast;->show()V
  .line 292
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/ComfortActivity;->recreate()V
  .line 293
    return-void
  :L2
  .line 288
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
  .line 291
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
  .line 354
    new-instance v0, Landroid/widget/ImageView;
    invoke-direct { v0, p0 }, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
  .line 355
    if-eqz p1, :L0
    invoke-virtual { v0, p1 }, Landroid/widget/ImageView;->setImageResource(I)V
  :L0
  .line 356
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
  .line 357
    const/16 v1, 12
    invoke-static { p0, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
  .line 358
    invoke-virtual { v0, v1, v1, v1, v1 }, Landroid/widget/ImageView;->setPadding(IIII)V
  .line 359
    const/16 v1, 62
    invoke-static { p0, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
  .line 360
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct { v2, v1, v1 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 361
    const/4 v1, 1
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
  .line 362
    invoke-virtual { v0, v2 }, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 363
    invoke-virtual { v0, p2 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 364
    return-object v0
.end method

.method private openOtaDialog(Lcom/geely/drivemem/net/OtaUpdater$Info;)V
  .registers 3
  .prologue
  .line 327
    new-instance v0, Lcom/geely/drivemem/ui/ComfortActivity$7;
    invoke-direct { v0, p0 }, Lcom/geely/drivemem/ui/ComfortActivity$7;-><init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
    invoke-static { p0, p1, v0 }, Lcom/geely/drivemem/ui/OtaDialog;->show(Landroid/app/Activity;Lcom/geely/drivemem/net/OtaUpdater$Info;Lcom/geely/drivemem/ui/OtaDialog$Listener;)Landroid/app/AlertDialog;
  .line 333
    return-void
.end method

.method private refreshCurrent()V
  .registers 3
  .prologue
  .line 368
    iget v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->mode:I
    const/4 v1, 1
    if-ne v0, v1, :L1
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->dailyStatsView:Lcom/geely/drivemem/ui/DailyStatsView;
    invoke-virtual { v0 }, Lcom/geely/drivemem/ui/DailyStatsView;->refresh()V
  :L0
  .line 372
    return-void
  :L1
  .line 369
    iget v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->mode:I
    const/4 v1, 3
    if-ne v0, v1, :L2
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->trendsView:Lcom/geely/drivemem/ui/TrendsView;
    invoke-virtual { v0 }, Lcom/geely/drivemem/ui/TrendsView;->refresh()V
    goto :L0
  :L2
  .line 370
    iget v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->mode:I
    const/4 v1, 4
    if-ne v0, v1, :L3
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->appsView:Lcom/geely/drivemem/ui/AppsView;
    invoke-virtual { v0 }, Lcom/geely/drivemem/ui/AppsView;->refresh()V
    goto :L0
  :L3
  .line 371
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeStatsView:Lcom/geely/drivemem/ui/ChargeStatsView;
    invoke-virtual { v0 }, Lcom/geely/drivemem/ui/ChargeStatsView;->refresh()V
    goto :L0
.end method

.method private refreshUpdateButton()V
  .registers 3
  .prologue
  .line 321
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->updateBtn:Landroid/widget/ImageView;
    if-nez v0, :L1
  :L0
  .line 324
    return-void
  :L1
  .line 322
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/ComfortActivity;->updateButton()Landroid/widget/ImageView;
    move-result-object v0
  .line 323
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
  .line 375
    iget v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->mode:I
    if-ne v0, p1, :L1
  :L0
  .line 386
    return-void
  :L1
  .line 376
    iput p1, p0, Lcom/geely/drivemem/ui/ComfortActivity;->mode:I
  .line 377
    iget-object v4, p0, Lcom/geely/drivemem/ui/ComfortActivity;->statsContainer:Landroid/widget/FrameLayout;
    if-ne p1, v3, :L10
    move v0, v1
  :L2
    invoke-virtual { v4, v0 }, Landroid/widget/FrameLayout;->setVisibility(I)V
  .line 378
    iget-object v4, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeStatsContainer:Landroid/widget/FrameLayout;
    if-ne p1, v5, :L11
    move v0, v1
  :L3
    invoke-virtual { v4, v0 }, Landroid/widget/FrameLayout;->setVisibility(I)V
  .line 379
    iget-object v4, p0, Lcom/geely/drivemem/ui/ComfortActivity;->trendsContainer:Landroid/widget/FrameLayout;
    if-ne p1, v6, :L12
    move v0, v1
  :L4
    invoke-virtual { v4, v0 }, Landroid/widget/FrameLayout;->setVisibility(I)V
  .line 380
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->appsContainer:Landroid/widget/FrameLayout;
    const/4 v4, 4
    if-ne p1, v4, :L5
    move v2, v1
  :L5
    invoke-virtual { v0, v2 }, Landroid/widget/FrameLayout;->setVisibility(I)V
  .line 381
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/ComfortActivity;->refreshCurrent()V
  .line 382
    iget-object v2, p0, Lcom/geely/drivemem/ui/ComfortActivity;->appsDockIcon:Landroid/widget/ImageView;
    const/4 v0, 4
    if-ne p1, v0, :L13
    move v0, v3
  :L6
    invoke-direct { p0, v2, v0 }, Lcom/geely/drivemem/ui/ComfortActivity;->styleDock(Landroid/widget/ImageView;Z)V
  .line 383
    iget-object v2, p0, Lcom/geely/drivemem/ui/ComfortActivity;->trendsDockIcon:Landroid/widget/ImageView;
    if-ne p1, v6, :L14
    move v0, v3
  :L7
    invoke-direct { p0, v2, v0 }, Lcom/geely/drivemem/ui/ComfortActivity;->styleDock(Landroid/widget/ImageView;Z)V
  .line 384
    iget-object v2, p0, Lcom/geely/drivemem/ui/ComfortActivity;->statsDockIcon:Landroid/widget/ImageView;
    if-ne p1, v3, :L15
    move v0, v3
  :L8
    invoke-direct { p0, v2, v0 }, Lcom/geely/drivemem/ui/ComfortActivity;->styleDock(Landroid/widget/ImageView;Z)V
  .line 385
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeDockIcon:Landroid/widget/ImageView;
    if-ne p1, v5, :L16
  :L9
    invoke-direct { p0, v0, v3 }, Lcom/geely/drivemem/ui/ComfortActivity;->styleDock(Landroid/widget/ImageView;Z)V
    goto :L0
  :L10
    move v0, v2
  .line 377
    goto :L2
  :L11
    move v0, v2
  .line 378
    goto :L3
  :L12
    move v0, v2
  .line 379
    goto :L4
  :L13
    move v0, v1
  .line 382
    goto :L6
  :L14
    move v0, v1
  .line 383
    goto :L7
  :L15
    move v0, v1
  .line 384
    goto :L8
  :L16
    move v3, v1
  .line 385
    goto :L9
.end method

.method private styleDock(Landroid/widget/ImageView;Z)V
  .registers 6
  .prologue
  .line 390
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;
    invoke-direct { v1 }, Landroid/graphics/drawable/GradientDrawable;-><init>()V
  .line 391
    const/16 v0, 20
    invoke-static { p0, v0 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v0
    int-to-float v0, v0
    invoke-virtual { v1, v0 }, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V
  .line 392
    if-eqz p2, :L2
    sget v0, Lcom/geely/drivemem/util/Style;->ACCENT:I
    const v2, 16777215
    and-int/2addr v0, v2
    const/high16 v2, 0x33000000
    or-int/2addr v0, v2
  :L0
    invoke-virtual { v1, v0 }, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
  .line 393
    invoke-virtual { p1, v1 }, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 394
    if-eqz p2, :L3
    sget v0, Lcom/geely/drivemem/util/Style;->ACCENT:I
  :L1
    invoke-virtual { p1, v0 }, Landroid/widget/ImageView;->setColorFilter(I)V
  .line 395
    return-void
  :L2
  .line 392
    const/4 v0, 0
    goto :L0
  :L3
  .line 394
    sget v0, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    goto :L1
.end method

.method private trendsIcon()Landroid/graphics/Bitmap;
  .registers 11
  .prologue
    const v9, 1063675494
    const v8, 1045220557
  .line 219
    const/16 v0, 38
    invoke-static { p0, v0 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v0
  .line 220
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static { v0, v0, v1 }, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v1
  .line 221
    new-instance v2, Landroid/graphics/Canvas;
    invoke-direct { v2, v1 }, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
  .line 222
    new-instance v3, Landroid/graphics/Paint;
    const/4 v4, 1
    invoke-direct { v3, v4 }, Landroid/graphics/Paint;-><init>(I)V
  .line 223
    const/4 v4, -1
    invoke-virtual { v3, v4 }, Landroid/graphics/Paint;->setColor(I)V
  .line 224
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
    invoke-virtual { v3, v4 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 225
    int-to-float v4, v0
    const v5, 1034818683
    mul-float/2addr v4, v5
    invoke-virtual { v3, v4 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 226
    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;
    invoke-virtual { v3, v4 }, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V
  .line 227
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;
    invoke-virtual { v3, v4 }, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V
  .line 228
    new-instance v4, Landroid/graphics/Path;
    invoke-direct { v4 }, Landroid/graphics/Path;-><init>()V
  .line 229
    int-to-float v5, v0
    const v6, 1036831949
    mul-float/2addr v5, v6
    int-to-float v6, v0
    const v7, 1060655596
    mul-float/2addr v6, v7
    invoke-virtual { v4, v5, v6 }, Landroid/graphics/Path;->moveTo(FF)V
  .line 230
    int-to-float v5, v0
    const v6, 1052266988
    mul-float/2addr v5, v6
    int-to-float v6, v0
    const v7, 1054951342
    mul-float/2addr v6, v7
    invoke-virtual { v4, v5, v6 }, Landroid/graphics/Path;->lineTo(FF)V
  .line 231
    int-to-float v5, v0
    const v6, 1057971241
    mul-float/2addr v5, v6
    int-to-float v6, v0
    const v7, 1058977874
    mul-float/2addr v6, v7
    invoke-virtual { v4, v5, v6 }, Landroid/graphics/Path;->lineTo(FF)V
  .line 232
    int-to-float v5, v0
    mul-float/2addr v5, v9
    int-to-float v6, v0
    mul-float/2addr v6, v8
    invoke-virtual { v4, v5, v6 }, Landroid/graphics/Path;->lineTo(FF)V
  .line 233
    invoke-virtual { v2, v4, v3 }, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
  .line 234
    invoke-virtual { v4 }, Landroid/graphics/Path;->reset()V
  .line 235
    int-to-float v5, v0
    const v6, 1060320051
    mul-float/2addr v5, v6
    int-to-float v6, v0
    mul-float/2addr v6, v8
    invoke-virtual { v4, v5, v6 }, Landroid/graphics/Path;->moveTo(FF)V
  .line 236
    int-to-float v5, v0
    mul-float/2addr v5, v9
    int-to-float v6, v0
    mul-float/2addr v6, v8
    invoke-virtual { v4, v5, v6 }, Landroid/graphics/Path;->lineTo(FF)V
  .line 237
    int-to-float v5, v0
    mul-float/2addr v5, v9
    int-to-float v0, v0
    const v6, 1053609165
    mul-float/2addr v0, v6
    invoke-virtual { v4, v5, v0 }, Landroid/graphics/Path;->lineTo(FF)V
  .line 238
    invoke-virtual { v2, v4, v3 }, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
  .line 239
    return-object v1
.end method

.method private updateButton()Landroid/widget/ImageView;
  .registers 15
  .prologue
  .line 296
    const/16 v0, 40
    invoke-static { p0, v0 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v12
  .line 297
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static { v12, v12, v0 }, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v13
  .line 298
    new-instance v0, Landroid/graphics/Canvas;
    invoke-direct { v0, v13 }, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
  .line 299
    new-instance v5, Landroid/graphics/Paint;
    const/4 v1, 1
    invoke-direct { v5, v1 }, Landroid/graphics/Paint;-><init>(I)V
  .line 300
    iget-boolean v1, p0, Lcom/geely/drivemem/ui/ComfortActivity;->updateAvailable:Z
    if-eqz v1, :L1
    const v1, -13577896
  :L0
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setColor(I)V
  .line 301
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 302
    int-to-float v1, v12
    const v2, 1035489772
    mul-float/2addr v1, v2
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 303
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V
  .line 304
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V
  .line 305
    int-to-float v1, v12
    const/high16 v2, 0x40000000
    div-float/2addr v1, v2
  .line 306
    int-to-float v2, v12
    const v3, 1041865114
    mul-float/2addr v2, v3
    int-to-float v3, v12
    const v4, 1058977874
    mul-float/2addr v4, v3
    move v3, v1
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
  .line 307
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
  .line 308
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
  .line 309
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
  .line 310
    new-instance v0, Landroid/widget/ImageView;
    invoke-direct { v0, p0 }, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
  .line 311
    invoke-virtual { v0, v13 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
  .line 312
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 62
    invoke-static { p0, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
    const/16 v3, 62
    invoke-static { p0, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
    invoke-direct { v1, v2, v3 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 313
    const/4 v2, 1
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
  .line 314
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 315
    const/16 v1, 11
    invoke-static { p0, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
  .line 316
    invoke-virtual { v0, v1, v1, v1, v1 }, Landroid/widget/ImageView;->setPadding(IIII)V
  .line 317
    return-object v0
  :L1
  .line 300
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
    const/4 v0, 0
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
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeDockIcon:Landroid/widget/ImageView;
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/ComfortActivity;->chargeIcon()Landroid/graphics/Bitmap;
    move-result-object v7
    invoke-virtual { v0, v7 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
  .line 136
    const/4 v0, 0
    new-instance v7, Lcom/geely/drivemem/ui/ComfortActivity$4;
    invoke-direct { v7, p0 }, Lcom/geely/drivemem/ui/ComfortActivity$4;-><init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
    invoke-direct { p0, v0, v7 }, Lcom/geely/drivemem/ui/ComfortActivity;->dockButton(ILandroid/view/View$OnClickListener;)Landroid/widget/ImageView;
    move-result-object v0
    iput-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->appsDockIcon:Landroid/widget/ImageView;
  .line 139
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->appsDockIcon:Landroid/widget/ImageView;
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/ComfortActivity;->appsIcon()Landroid/graphics/Bitmap;
    move-result-object v7
    invoke-virtual { v0, v7 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
  .line 140
    iget-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->statsDockIcon:Landroid/widget/ImageView;
    iget v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->mode:I
    const/4 v8, 1
    if-ne v0, v8, :L4
    const/4 v0, 1
  :L0
    invoke-direct { p0, v7, v0 }, Lcom/geely/drivemem/ui/ComfortActivity;->styleDock(Landroid/widget/ImageView;Z)V
  .line 141
    iget-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeDockIcon:Landroid/widget/ImageView;
    iget v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->mode:I
    const/4 v8, 2
    if-ne v0, v8, :L5
    const/4 v0, 1
  :L1
    invoke-direct { p0, v7, v0 }, Lcom/geely/drivemem/ui/ComfortActivity;->styleDock(Landroid/widget/ImageView;Z)V
  .line 142
    iget-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->trendsDockIcon:Landroid/widget/ImageView;
    iget v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->mode:I
    const/4 v8, 3
    if-ne v0, v8, :L6
    const/4 v0, 1
  :L2
    invoke-direct { p0, v7, v0 }, Lcom/geely/drivemem/ui/ComfortActivity;->styleDock(Landroid/widget/ImageView;Z)V
  .line 143
    iget-object v7, p0, Lcom/geely/drivemem/ui/ComfortActivity;->appsDockIcon:Landroid/widget/ImageView;
    iget v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->mode:I
    const/4 v8, 4
    if-ne v0, v8, :L7
    const/4 v0, 1
  :L3
    invoke-direct { p0, v7, v0 }, Lcom/geely/drivemem/ui/ComfortActivity;->styleDock(Landroid/widget/ImageView;Z)V
  .line 144
    new-instance v0, Landroid/view/View;
    invoke-direct { v0, p0 }, Landroid/view/View;-><init>(Landroid/content/Context;)V
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0
    const/4 v9, 0
    const/high16 v10, 0x3f800000
    invoke-direct { v7, v8, v9, v10 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual { v4, v0, v7 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 145
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->statsDockIcon:Landroid/widget/ImageView;
    invoke-virtual { v4, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 146
    const/16 v0, 14
    invoke-static { v4, p0, v0 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 147
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->chargeDockIcon:Landroid/widget/ImageView;
    invoke-virtual { v4, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 148
    const/16 v0, 14
    invoke-static { v4, p0, v0 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 149
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->trendsDockIcon:Landroid/widget/ImageView;
    invoke-virtual { v4, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 150
    const/16 v0, 14
    invoke-static { v4, p0, v0 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 151
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->appsDockIcon:Landroid/widget/ImageView;
    invoke-virtual { v4, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 152
    new-instance v0, Landroid/view/View;
    invoke-direct { v0, p0 }, Landroid/view/View;-><init>(Landroid/content/Context;)V
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0
    const/4 v9, 0
    const/high16 v10, 0x3f800000
    invoke-direct { v7, v8, v9, v10 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual { v4, v0, v7 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 153
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/ComfortActivity;->appearanceButton()Landroid/widget/ImageView;
    move-result-object v0
  .line 154
    new-instance v7, Lcom/geely/drivemem/ui/ComfortActivity$5;
    invoke-direct { v7, p0 }, Lcom/geely/drivemem/ui/ComfortActivity$5;-><init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
    invoke-virtual { v0, v7 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 157
    invoke-virtual { v4, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 158
    const/16 v0, 14
    invoke-static { v4, p0, v0 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 159
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/ComfortActivity;->updateButton()Landroid/widget/ImageView;
    move-result-object v0
    iput-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->updateBtn:Landroid/widget/ImageView;
  .line 160
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->updateBtn:Landroid/widget/ImageView;
    new-instance v7, Lcom/geely/drivemem/ui/ComfortActivity$6;
    invoke-direct { v7, p0 }, Lcom/geely/drivemem/ui/ComfortActivity$6;-><init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
    invoke-virtual { v0, v7 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 163
    iget-object v0, p0, Lcom/geely/drivemem/ui/ComfortActivity;->updateBtn:Landroid/widget/ImageView;
    invoke-virtual { v4, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 164
    const/16 v0, 14
    invoke-static { v4, p0, v0 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 165
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;
    const/4 v7, -1
    const v8, 8388611
    invoke-direct { v0, v2, v7, v8 }, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V
  .line 167
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I
  .line 168
    invoke-static { p0 }, Lcom/geely/drivemem/util/Style;->statusBarHeight(Landroid/content/Context;)I
    move-result v2
    add-int/2addr v2, v6
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I
  .line 169
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
  .line 170
    invoke-virtual { v1, v4, v0 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 172
    invoke-virtual { p0, v1 }, Lcom/geely/drivemem/ui/ComfortActivity;->setContentView(Landroid/view/View;)V
  .line 173
    invoke-static { p0 }, Lcom/geely/drivemem/util/FullCharge;->touch(Landroid/content/Context;)V
  .line 174
    const/4 v0, 1
    invoke-direct { p0, v0 }, Lcom/geely/drivemem/ui/ComfortActivity;->setMode(I)V
  .line 175
    return-void
  :L4
  .line 140
    const/4 v0, 0
    goto/16 :L0
  :L5
  .line 141
    const/4 v0, 0
    goto/16 :L1
  :L6
  .line 142
    const/4 v0, 0
    goto/16 :L2
  :L7
  .line 143
    const/4 v0, 0
    goto/16 :L3
.end method

.method protected onResume()V
  .catch Ljava/lang/Throwable; { :L2 .. :L3 } :L4
  .registers 5
  .prologue
  .line 398
    invoke-super { p0 }, Landroid/app/Activity;->onResume()V
  .line 399
    invoke-static { p0 }, Lcom/geely/drivemem/util/Style;->load(Landroid/content/Context;)V
  .line 400
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
  .line 415
    return-void
  :L2
  .line 402
    invoke-static { p0 }, Lcom/geely/drivemem/util/BootReceiver;->scheduleWatchdog(Landroid/content/Context;)V
  .line 403
    invoke-static { p0 }, Lcom/geely/drivemem/util/BootReceiver;->ensureAll(Landroid/content/Context;)V
  :L3
  .line 405
    new-instance v0, Ljava/lang/Thread;
    new-instance v1, Lcom/geely/drivemem/ui/ComfortActivity$9;
    invoke-direct { v1, p0 }, Lcom/geely/drivemem/ui/ComfortActivity$9;-><init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
    const-string v2, "autocost"
    invoke-direct { v0, v1, v2 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 410
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
  .line 411
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/ComfortActivity;->autoCheck()V
  .line 412
    new-instance v0, Lcom/geely/drivemem/ui/ComfortActivity$10;
    invoke-direct { v0, p0 }, Lcom/geely/drivemem/ui/ComfortActivity$10;-><init>(Lcom/geely/drivemem/ui/ComfortActivity;)V
    invoke-static { p0, v0 }, Lcom/geely/drivemem/ui/MonthlySummary;->check(Landroid/app/Activity;Ljava/lang/Runnable;)V
    goto :L1
  :L4
  .line 404
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
