.class public Lcom/geely/drivemem/ui/BarsView;
.super Landroid/view/View;
.source "BarsView.java"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/geely/drivemem/ui/BarsView$Formatter;
  }
.end annotation

.field private final bar:Landroid/graphics/Paint;

.field private barColor:I

.field private barColorSet:Z

.field private final base:Landroid/graphics/Paint;

.field private final emptyText:Ljava/lang/String;

.field private fmt:Lcom/geely/drivemem/ui/BarsView$Formatter;

.field private labels:[Ljava/lang/String;

.field private final rect:Landroid/graphics/RectF;

.field private final text:Landroid/graphics/Paint;

.field private values:[D

.method public constructor <init>(Landroid/content/Context;Lcom/geely/drivemem/ui/BarsView$Formatter;Ljava/lang/String;)V
  .registers 7
  .prologue
    const/4 v1, 0
    const/4 v2, 1
  .line 28
    invoke-direct { p0, p1 }, Landroid/view/View;-><init>(Landroid/content/Context;)V
  .line 16
    new-array v0, v1, [D
    iput-object v0, p0, Lcom/geely/drivemem/ui/BarsView;->values:[D
  .line 17
    new-array v0, v1, [Ljava/lang/String;
    iput-object v0, p0, Lcom/geely/drivemem/ui/BarsView;->labels:[Ljava/lang/String;
  .line 19
    new-instance v0, Landroid/graphics/Paint;
    invoke-direct { v0, v2 }, Landroid/graphics/Paint;-><init>(I)V
    iput-object v0, p0, Lcom/geely/drivemem/ui/BarsView;->bar:Landroid/graphics/Paint;
  .line 20
    new-instance v0, Landroid/graphics/Paint;
    invoke-direct { v0, v2 }, Landroid/graphics/Paint;-><init>(I)V
    iput-object v0, p0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
  .line 21
    new-instance v0, Landroid/graphics/Paint;
    invoke-direct { v0, v2 }, Landroid/graphics/Paint;-><init>(I)V
    iput-object v0, p0, Lcom/geely/drivemem/ui/BarsView;->base:Landroid/graphics/Paint;
  .line 22
    new-instance v0, Landroid/graphics/RectF;
    invoke-direct { v0 }, Landroid/graphics/RectF;-><init>()V
    iput-object v0, p0, Lcom/geely/drivemem/ui/BarsView;->rect:Landroid/graphics/RectF;
  .line 24
    sget v0, Lcom/geely/drivemem/util/Style;->ACCENT:I
    iput v0, p0, Lcom/geely/drivemem/ui/BarsView;->barColor:I
  .line 29
    iput-object p2, p0, Lcom/geely/drivemem/ui/BarsView;->fmt:Lcom/geely/drivemem/ui/BarsView$Formatter;
  .line 30
    iput-object p3, p0, Lcom/geely/drivemem/ui/BarsView;->emptyText:Ljava/lang/String;
  .line 31
    iget-object v0, p0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-static { v1 }, Lcom/geely/drivemem/util/Fonts;->b(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
  .line 32
    iget-object v0, p0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V
  .line 33
    iget-object v0, p0, Lcom/geely/drivemem/ui/BarsView;->base:Landroid/graphics/Paint;
    invoke-static { p1, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
    int-to-float v1, v1
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 34
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
  .registers 30
  .prologue
  .line 45
    invoke-virtual/range { p0 .. p0 }, Lcom/geely/drivemem/ui/BarsView;->getContext()Landroid/content/Context;
    move-result-object v14
  .line 46
    invoke-virtual/range { p0 .. p0 }, Lcom/geely/drivemem/ui/BarsView;->getWidth()I
    move-result v15
    invoke-virtual/range { p0 .. p0 }, Lcom/geely/drivemem/ui/BarsView;->getHeight()I
    move-result v16
  .line 47
    move-object/from16 v0, p0
    iget-object v4, v0, Lcom/geely/drivemem/ui/BarsView;->values:[D
    array-length v0, v4
    move/from16 v17, v0
  .line 48
    const/16 v4, 13
    invoke-static { v14, v4 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v4
    int-to-float v0, v4
    move/from16 v18, v0
    const/16 v4, 13
    invoke-static { v14, v4 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v4
    int-to-float v0, v4
    move/from16 v19, v0
  .line 49
    const/16 v4, 8
    invoke-static { v14, v4 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v4
    int-to-float v4, v4
    add-float v4, v4, v18
  .line 50
    const/16 v5, 8
    invoke-static { v14, v5 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v5
    int-to-float v5, v5
    add-float v20, v19, v5
  .line 51
    move/from16 v0, v16
    int-to-float v5, v0
    sub-float v21, v5, v4
  .line 52
    const-wide/16 v10, 0
  .line 53
    move-object/from16 v0, p0
    iget-object v7, v0, Lcom/geely/drivemem/ui/BarsView;->values:[D
    array-length v8, v7
    const/4 v4, 0
    move v6, v4
  :L0
    if-ge v6, v8, :L2
    aget-wide v4, v7, v6
    cmpl-double v9, v4, v10
    if-lez v9, :L26
  :L1
    add-int/lit8 v6, v6, 1
    move-wide v10, v4
    goto :L0
  :L2
  .line 54
    if-eqz v17, :L3
    const-wide/16 v4, 0
    cmpg-double v4, v10, v4
    if-gtz v4, :L5
  :L3
  .line 55
    move-object/from16 v0, p0
    iget-object v4, v0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    sget v5, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-virtual { v4, v5 }, Landroid/graphics/Paint;->setColor(I)V
  .line 56
    move-object/from16 v0, p0
    iget-object v4, v0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    const/16 v5, 15
    invoke-static { v14, v5 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v5
    int-to-float v5, v5
    invoke-virtual { v4, v5 }, Landroid/graphics/Paint;->setTextSize(F)V
  .line 57
    move-object/from16 v0, p0
    iget-object v4, v0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;
    invoke-static { v5 }, Lcom/geely/drivemem/util/Fonts;->r(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    move-result-object v5
    invoke-virtual { v4, v5 }, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
  .line 58
    move-object/from16 v0, p0
    iget-object v4, v0, Lcom/geely/drivemem/ui/BarsView;->emptyText:Ljava/lang/String;
    int-to-float v5, v15
    const/high16 v6, 0x40000000
    div-float/2addr v5, v6
    move/from16 v0, v16
    int-to-float v6, v0
    const/high16 v7, 0x40000000
    div-float/2addr v6, v7
    move-object/from16 v0, p0
    iget-object v7, v0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    move-object/from16 v0, p1
    invoke-virtual { v0, v4, v5, v6, v7 }, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
  .line 59
    move-object/from16 v0, p0
    iget-object v4, v0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-static { v5 }, Lcom/geely/drivemem/util/Fonts;->b(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    move-result-object v5
    invoke-virtual { v4, v5 }, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
  :L4
  .line 94
    return-void
  :L5
  .line 62
    int-to-float v4, v15
    move/from16 v0, v17
    int-to-float v5, v0
    div-float v22, v4, v5
  .line 63
    const v4, 1058977874
    mul-float v4, v4, v22
    const/16 v5, 54
    invoke-static { v14, v5 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v5
    int-to-float v5, v5
    invoke-static { v4, v5 }, Ljava/lang/Math;->min(FF)F
    move-result v23
  .line 64
    move-object/from16 v0, p0
    iget-boolean v4, v0, Lcom/geely/drivemem/ui/BarsView;->barColorSet:Z
    if-eqz v4, :L8
    move-object/from16 v0, p0
    iget v4, v0, Lcom/geely/drivemem/ui/BarsView;->barColor:I
    move v12, v4
  :L6
  .line 65
    move-object/from16 v0, p0
    iget-object v4, v0, Lcom/geely/drivemem/ui/BarsView;->base:Landroid/graphics/Paint;
    sget v5, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    const v6, 16777215
    and-int/2addr v5, v6
    const/high16 v6, 0x1f000000
    or-int/2addr v5, v6
    invoke-virtual { v4, v5 }, Landroid/graphics/Paint;->setColor(I)V
  .line 66
    const/4 v4, 1
    move v13, v4
  :L7
    const/4 v4, 3
    if-gt v13, v4, :L9
  .line 67
    sub-float v4, v21, v20
    int-to-float v5, v13
    mul-float/2addr v4, v5
    const/high16 v5, 0x40400000
    div-float/2addr v4, v5
    sub-float v6, v21, v4
  .line 68
    const/4 v5, 0
    int-to-float v7, v15
    move-object/from16 v0, p0
    iget-object v9, v0, Lcom/geely/drivemem/ui/BarsView;->base:Landroid/graphics/Paint;
    move-object/from16 v4, p1
    move v8, v6
    invoke-virtual/range { v4 .. v9 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
  .line 66
    add-int/lit8 v4, v13, 1
    move v13, v4
    goto :L7
  :L8
  .line 64
    sget v4, Lcom/geely/drivemem/util/Style;->ACCENT:I
    move v12, v4
    goto :L6
  :L9
  .line 70
    move-object/from16 v0, p0
    iget-object v4, v0, Lcom/geely/drivemem/ui/BarsView;->base:Landroid/graphics/Paint;
    sget v5, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    const v6, 16777215
    and-int/2addr v5, v6
    const/high16 v6, 0x55000000
    or-int/2addr v5, v6
    invoke-virtual { v4, v5 }, Landroid/graphics/Paint;->setColor(I)V
  .line 71
    const/4 v5, 0
    int-to-float v7, v15
    move-object/from16 v0, p0
    iget-object v9, v0, Lcom/geely/drivemem/ui/BarsView;->base:Landroid/graphics/Paint;
    move-object/from16 v4, p1
    move/from16 v6, v21
    move/from16 v8, v21
    invoke-virtual/range { v4 .. v9 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
  .line 72
    const/16 v4, 44
    invoke-static { v14, v4 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v4
    int-to-float v4, v4
    cmpl-float v4, v22, v4
    if-ltz v4, :L21
    const/4 v4, 1
  :L10
  .line 73
    const/16 v5, 44
    invoke-static { v14, v5 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v5
    int-to-float v5, v5
  .line 74
    const/4 v6, 1
    div-float v5, v5, v22
    float-to-double v8, v5
    invoke-static { v8, v9 }, Ljava/lang/Math;->ceil(D)D
    move-result-wide v8
    double-to-int v5, v8
    invoke-static { v6, v5 }, Ljava/lang/Math;->max(II)I
    move-result v9
  .line 75
    const/4 v5, 0
    move v8, v5
  :L11
    move/from16 v0, v17
    if-ge v8, v0, :L4
  .line 76
    add-int/lit8 v5, v17, -1
    if-ne v8, v5, :L22
    const/4 v5, 1
  :L12
  .line 77
    int-to-float v6, v8
    mul-float v6, v6, v22
    const/high16 v7, 0x40000000
    div-float v7, v22, v7
    add-float v13, v6, v7
  .line 78
    move-object/from16 v0, p0
    iget-object v6, v0, Lcom/geely/drivemem/ui/BarsView;->values:[D
    aget-wide v6, v6, v8
    div-double/2addr v6, v10
    double-to-float v6, v6
    sub-float v7, v21, v20
    mul-float/2addr v6, v7
  .line 79
    move-object/from16 v0, p0
    iget-object v7, v0, Lcom/geely/drivemem/ui/BarsView;->values:[D
    aget-wide v24, v7, v8
    const-wide/16 v26, 0
    cmpl-double v7, v24, v26
    if-lez v7, :L13
    const/4 v7, 3
    invoke-static { v14, v7 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v7
    int-to-float v7, v7
    cmpg-float v7, v6, v7
    if-gez v7, :L13
    const/4 v6, 3
    invoke-static { v14, v6 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v6
    int-to-float v6, v6
  :L13
  .line 80
    move-object/from16 v0, p0
    iget-object v7, v0, Lcom/geely/drivemem/ui/BarsView;->rect:Landroid/graphics/RectF;
    const/high16 v15, 0x40000000
    div-float v15, v23, v15
    sub-float v15, v13, v15
    sub-float v24, v21, v6
    const/high16 v25, 0x40000000
    div-float v25, v23, v25
    add-float v25, v25, v13
    move/from16 v0, v24
    move/from16 v1, v25
    move/from16 v2, v21
    invoke-virtual { v7, v15, v0, v1, v2 }, Landroid/graphics/RectF;->set(FFFF)V
  .line 81
    move-object/from16 v0, p0
    iget-object v15, v0, Lcom/geely/drivemem/ui/BarsView;->bar:Landroid/graphics/Paint;
    if-eqz v5, :L23
    move v7, v12
  :L14
    invoke-virtual { v15, v7 }, Landroid/graphics/Paint;->setColor(I)V
  .line 82
    const/4 v7, 0
    cmpl-float v7, v6, v7
    if-lez v7, :L15
    move-object/from16 v0, p0
    iget-object v7, v0, Lcom/geely/drivemem/ui/BarsView;->rect:Landroid/graphics/RectF;
    const/16 v15, 9
    invoke-static { v14, v15 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v15
    int-to-float v15, v15
    const/16 v24, 9
    move/from16 v0, v24
    invoke-static { v14, v0 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v24
    move/from16 v0, v24
    int-to-float v0, v0
    move/from16 v24, v0
    move-object/from16 v0, p0
    iget-object v0, v0, Lcom/geely/drivemem/ui/BarsView;->bar:Landroid/graphics/Paint;
    move-object/from16 v25, v0
    move-object/from16 v0, p1
    move/from16 v1, v24
    move-object/from16 v2, v25
    invoke-virtual { v0, v7, v15, v1, v2 }, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
  :L15
  .line 83
    if-nez v4, :L16
    if-eqz v5, :L18
  :L16
    move-object/from16 v0, p0
    iget-object v7, v0, Lcom/geely/drivemem/ui/BarsView;->values:[D
    aget-wide v24, v7, v8
    const-wide/16 v26, 0
    cmpl-double v7, v24, v26
    if-lez v7, :L18
  .line 84
    move-object/from16 v0, p0
    iget-object v15, v0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    if-eqz v5, :L24
    sget v7, Lcom/geely/drivemem/util/Style;->TEXT:I
  :L17
    invoke-virtual { v15, v7 }, Landroid/graphics/Paint;->setColor(I)V
  .line 85
    move-object/from16 v0, p0
    iget-object v7, v0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    move/from16 v0, v19
    invoke-virtual { v7, v0 }, Landroid/graphics/Paint;->setTextSize(F)V
  .line 86
    move-object/from16 v0, p0
    iget-object v7, v0, Lcom/geely/drivemem/ui/BarsView;->fmt:Lcom/geely/drivemem/ui/BarsView$Formatter;
    move-object/from16 v0, p0
    iget-object v15, v0, Lcom/geely/drivemem/ui/BarsView;->values:[D
    aget-wide v24, v15, v8
    move-wide/from16 v0, v24
    invoke-interface { v7, v0, v1 }, Lcom/geely/drivemem/ui/BarsView$Formatter;->format(D)Ljava/lang/String;
    move-result-object v7
    sub-float v6, v21, v6
    const/4 v15, 6
    invoke-static { v14, v15 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v15
    int-to-float v15, v15
    sub-float/2addr v6, v15
    move-object/from16 v0, p0
    iget-object v15, v0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    move-object/from16 v0, p1
    invoke-virtual { v0, v7, v13, v6, v15 }, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
  :L18
  .line 88
    move-object/from16 v0, p0
    iget-object v6, v0, Lcom/geely/drivemem/ui/BarsView;->labels:[Ljava/lang/String;
    array-length v6, v6
    if-ge v8, v6, :L20
    add-int/lit8 v6, v17, -1
    sub-int/2addr v6, v8
    rem-int/2addr v6, v9
    if-nez v6, :L20
  .line 89
    move-object/from16 v0, p0
    iget-object v6, v0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    if-eqz v5, :L25
    sget v5, Lcom/geely/drivemem/util/Style;->TEXT:I
  :L19
    invoke-virtual { v6, v5 }, Landroid/graphics/Paint;->setColor(I)V
  .line 90
    move-object/from16 v0, p0
    iget-object v5, v0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    move/from16 v0, v18
    invoke-virtual { v5, v0 }, Landroid/graphics/Paint;->setTextSize(F)V
  .line 91
    move-object/from16 v0, p0
    iget-object v5, v0, Lcom/geely/drivemem/ui/BarsView;->labels:[Ljava/lang/String;
    aget-object v5, v5, v8
    const/4 v6, 4
    invoke-static { v14, v6 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v6
    sub-int v6, v16, v6
    int-to-float v6, v6
    move-object/from16 v0, p0
    iget-object v7, v0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    move-object/from16 v0, p1
    invoke-virtual { v0, v5, v13, v6, v7 }, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
  :L20
  .line 75
    add-int/lit8 v5, v8, 1
    move v8, v5
    goto/16 :L11
  :L21
  .line 72
    const/4 v4, 0
    goto/16 :L10
  :L22
  .line 76
    const/4 v5, 0
    goto/16 :L12
  :L23
  .line 81
    const v7, 16777215
    and-int/2addr v7, v12
    const/high16 v24, 0x66000000
    or-int v7, v7, v24
    goto/16 :L14
  :L24
  .line 84
    sget v7, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    goto :L17
  :L25
  .line 89
    sget v5, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    goto :L19
  :L26
    move-wide v4, v10
    goto/16 :L1
.end method

.method public setBarColor(I)V
  .registers 3
  .prologue
  .line 36
    iput p1, p0, Lcom/geely/drivemem/ui/BarsView;->barColor:I
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/geely/drivemem/ui/BarsView;->barColorSet:Z
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/BarsView;->invalidate()V
    return-void
.end method

.method public setData([D[Ljava/lang/String;)V
  .registers 4
  .prologue
    const/4 v0, 0
  .line 39
    if-nez p1, :L0
    new-array p1, v0, [D
  :L0
    iput-object p1, p0, Lcom/geely/drivemem/ui/BarsView;->values:[D
  .line 40
    if-nez p2, :L1
    new-array p2, v0, [Ljava/lang/String;
  :L1
    iput-object p2, p0, Lcom/geely/drivemem/ui/BarsView;->labels:[Ljava/lang/String;
  .line 41
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/BarsView;->invalidate()V
  .line 42
    return-void
.end method
