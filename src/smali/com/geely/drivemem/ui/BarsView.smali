.class public Lcom/geely/drivemem/ui/BarsView;
.super Landroid/view/View;
.source "BarsView.java"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/geely/drivemem/ui/BarsView$Formatter;
  }
.end annotation

.field private final bar:Landroid/graphics/Paint;

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
  .line 26
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
  .line 27
    iput-object p2, p0, Lcom/geely/drivemem/ui/BarsView;->fmt:Lcom/geely/drivemem/ui/BarsView$Formatter;
  .line 28
    iput-object p3, p0, Lcom/geely/drivemem/ui/BarsView;->emptyText:Ljava/lang/String;
  .line 29
    iget-object v0, p0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
  .line 30
    iget-object v0, p0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V
  .line 31
    iget-object v0, p0, Lcom/geely/drivemem/ui/BarsView;->base:Landroid/graphics/Paint;
    invoke-static { p1, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
    int-to-float v1, v1
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 32
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
  .registers 28
  .prologue
  .line 41
    invoke-virtual/range { p0 .. p0 }, Lcom/geely/drivemem/ui/BarsView;->getContext()Landroid/content/Context;
    move-result-object v12
  .line 42
    invoke-virtual/range { p0 .. p0 }, Lcom/geely/drivemem/ui/BarsView;->getWidth()I
    move-result v8
    invoke-virtual/range { p0 .. p0 }, Lcom/geely/drivemem/ui/BarsView;->getHeight()I
    move-result v13
  .line 43
    move-object/from16 v0, p0
    iget-object v4, v0, Lcom/geely/drivemem/ui/BarsView;->values:[D
    array-length v14, v4
  .line 44
    const/16 v4, 13
    invoke-static { v12, v4 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v4
    int-to-float v15, v4
    const/16 v4, 13
    invoke-static { v12, v4 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v4
    int-to-float v0, v4
    move/from16 v16, v0
  .line 45
    const/16 v4, 8
    invoke-static { v12, v4 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v4
    int-to-float v4, v4
    add-float/2addr v4, v15
  .line 46
    const/16 v5, 8
    invoke-static { v12, v5 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v5
    int-to-float v5, v5
    add-float v17, v16, v5
  .line 47
    int-to-float v5, v13
    sub-float v6, v5, v4
  .line 48
    const-wide/16 v10, 0
  .line 49
    move-object/from16 v0, p0
    iget-object v9, v0, Lcom/geely/drivemem/ui/BarsView;->values:[D
    array-length v0, v9
    move/from16 v18, v0
    const/4 v4, 0
    move v7, v4
  :L0
    move/from16 v0, v18
    if-ge v7, v0, :L2
    aget-wide v4, v9, v7
    cmpl-double v19, v4, v10
    if-lez v19, :L22
  :L1
    add-int/lit8 v7, v7, 1
    move-wide v10, v4
    goto :L0
  :L2
  .line 50
    if-eqz v14, :L3
    const-wide/16 v4, 0
    cmpg-double v4, v10, v4
    if-gtz v4, :L5
  :L3
  .line 51
    move-object/from16 v0, p0
    iget-object v4, v0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    sget v5, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-virtual { v4, v5 }, Landroid/graphics/Paint;->setColor(I)V
  .line 52
    move-object/from16 v0, p0
    iget-object v4, v0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    const/16 v5, 15
    invoke-static { v12, v5 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v5
    int-to-float v5, v5
    invoke-virtual { v4, v5 }, Landroid/graphics/Paint;->setTextSize(F)V
  .line 53
    move-object/from16 v0, p0
    iget-object v4, v0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;
    invoke-virtual { v4, v5 }, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
  .line 54
    move-object/from16 v0, p0
    iget-object v4, v0, Lcom/geely/drivemem/ui/BarsView;->emptyText:Ljava/lang/String;
    int-to-float v5, v8
    const/high16 v6, 0x40000000
    div-float/2addr v5, v6
    int-to-float v6, v13
    const/high16 v7, 0x40000000
    div-float/2addr v6, v7
    move-object/from16 v0, p0
    iget-object v7, v0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    move-object/from16 v0, p1
    invoke-virtual { v0, v4, v5, v6, v7 }, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
  .line 55
    move-object/from16 v0, p0
    iget-object v4, v0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-virtual { v4, v5 }, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
  :L4
  .line 84
    return-void
  :L5
  .line 58
    int-to-float v4, v8
    int-to-float v5, v14
    div-float v18, v4, v5
  .line 59
    const v4, 1058977874
    mul-float v4, v4, v18
    const/16 v5, 54
    invoke-static { v12, v5 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v5
    int-to-float v5, v5
    invoke-static { v4, v5 }, Ljava/lang/Math;->min(FF)F
    move-result v19
  .line 60
    move-object/from16 v0, p0
    iget-object v4, v0, Lcom/geely/drivemem/ui/BarsView;->base:Landroid/graphics/Paint;
    sget v5, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    const v7, 16777215
    and-int/2addr v5, v7
    const/high16 v7, 0x55000000
    or-int/2addr v5, v7
    invoke-virtual { v4, v5 }, Landroid/graphics/Paint;->setColor(I)V
  .line 61
    const/4 v5, 0
    int-to-float v7, v8
    move-object/from16 v0, p0
    iget-object v9, v0, Lcom/geely/drivemem/ui/BarsView;->base:Landroid/graphics/Paint;
    move-object/from16 v4, p1
    move v8, v6
    invoke-virtual/range { v4 .. v9 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
  .line 62
    const/16 v4, 44
    invoke-static { v12, v4 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v4
    int-to-float v4, v4
    cmpl-float v4, v18, v4
    if-ltz v4, :L17
    const/4 v4, 1
  :L6
  .line 63
    const/16 v5, 44
    invoke-static { v12, v5 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v5
    int-to-float v5, v5
  .line 64
    const/4 v7, 1
    div-float v5, v5, v18
    float-to-double v8, v5
    invoke-static { v8, v9 }, Ljava/lang/Math;->ceil(D)D
    move-result-wide v8
    double-to-int v5, v8
    invoke-static { v7, v5 }, Ljava/lang/Math;->max(II)I
    move-result v20
  .line 65
    const/4 v5, 0
    move v9, v5
  :L7
    if-ge v9, v14, :L4
  .line 66
    add-int/lit8 v5, v14, -1
    if-ne v9, v5, :L18
    const/4 v5, 1
  :L8
  .line 67
    int-to-float v7, v9
    mul-float v7, v7, v18
    const/high16 v8, 0x40000000
    div-float v8, v18, v8
    add-float v21, v7, v8
  .line 68
    move-object/from16 v0, p0
    iget-object v7, v0, Lcom/geely/drivemem/ui/BarsView;->values:[D
    aget-wide v22, v7, v9
    div-double v22, v22, v10
    move-wide/from16 v0, v22
    double-to-float v7, v0
    sub-float v8, v6, v17
    mul-float/2addr v7, v8
  .line 69
    move-object/from16 v0, p0
    iget-object v8, v0, Lcom/geely/drivemem/ui/BarsView;->values:[D
    aget-wide v22, v8, v9
    const-wide/16 v24, 0
    cmpl-double v8, v22, v24
    if-lez v8, :L9
    const/4 v8, 3
    invoke-static { v12, v8 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v8
    int-to-float v8, v8
    cmpg-float v8, v7, v8
    if-gez v8, :L9
    const/4 v7, 3
    invoke-static { v12, v7 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v7
    int-to-float v7, v7
  :L9
  .line 70
    move-object/from16 v0, p0
    iget-object v8, v0, Lcom/geely/drivemem/ui/BarsView;->rect:Landroid/graphics/RectF;
    const/high16 v22, 0x40000000
    div-float v22, v19, v22
    sub-float v22, v21, v22
    sub-float v23, v6, v7
    const/high16 v24, 0x40000000
    div-float v24, v19, v24
    add-float v24, v24, v21
    move/from16 v0, v22
    move/from16 v1, v23
    move/from16 v2, v24
    invoke-virtual { v8, v0, v1, v2, v6 }, Landroid/graphics/RectF;->set(FFFF)V
  .line 71
    move-object/from16 v0, p0
    iget-object v0, v0, Lcom/geely/drivemem/ui/BarsView;->bar:Landroid/graphics/Paint;
    move-object/from16 v22, v0
    if-eqz v5, :L19
    sget v8, Lcom/geely/drivemem/util/Style;->ACCENT:I
  :L10
    move-object/from16 v0, v22
    invoke-virtual { v0, v8 }, Landroid/graphics/Paint;->setColor(I)V
  .line 72
    const/4 v8, 0
    cmpl-float v8, v7, v8
    if-lez v8, :L11
    move-object/from16 v0, p0
    iget-object v8, v0, Lcom/geely/drivemem/ui/BarsView;->rect:Landroid/graphics/RectF;
    const/16 v22, 5
    move/from16 v0, v22
    invoke-static { v12, v0 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v22
    move/from16 v0, v22
    int-to-float v0, v0
    move/from16 v22, v0
    const/16 v23, 5
    move/from16 v0, v23
    invoke-static { v12, v0 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v23
    move/from16 v0, v23
    int-to-float v0, v0
    move/from16 v23, v0
    move-object/from16 v0, p0
    iget-object v0, v0, Lcom/geely/drivemem/ui/BarsView;->bar:Landroid/graphics/Paint;
    move-object/from16 v24, v0
    move-object/from16 v0, p1
    move/from16 v1, v22
    move/from16 v2, v23
    move-object/from16 v3, v24
    invoke-virtual { v0, v8, v1, v2, v3 }, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
  :L11
  .line 73
    if-nez v4, :L12
    if-eqz v5, :L14
  :L12
    move-object/from16 v0, p0
    iget-object v8, v0, Lcom/geely/drivemem/ui/BarsView;->values:[D
    aget-wide v22, v8, v9
    const-wide/16 v24, 0
    cmpl-double v8, v22, v24
    if-lez v8, :L14
  .line 74
    move-object/from16 v0, p0
    iget-object v0, v0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    move-object/from16 v22, v0
    if-eqz v5, :L20
    sget v8, Lcom/geely/drivemem/util/Style;->TEXT:I
  :L13
    move-object/from16 v0, v22
    invoke-virtual { v0, v8 }, Landroid/graphics/Paint;->setColor(I)V
  .line 75
    move-object/from16 v0, p0
    iget-object v8, v0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    move/from16 v0, v16
    invoke-virtual { v8, v0 }, Landroid/graphics/Paint;->setTextSize(F)V
  .line 76
    move-object/from16 v0, p0
    iget-object v8, v0, Lcom/geely/drivemem/ui/BarsView;->fmt:Lcom/geely/drivemem/ui/BarsView$Formatter;
    move-object/from16 v0, p0
    iget-object v0, v0, Lcom/geely/drivemem/ui/BarsView;->values:[D
    move-object/from16 v22, v0
    aget-wide v22, v22, v9
    move-wide/from16 v0, v22
    invoke-interface { v8, v0, v1 }, Lcom/geely/drivemem/ui/BarsView$Formatter;->format(D)Ljava/lang/String;
    move-result-object v8
    sub-float v7, v6, v7
    const/16 v22, 6
    move/from16 v0, v22
    invoke-static { v12, v0 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v22
    move/from16 v0, v22
    int-to-float v0, v0
    move/from16 v22, v0
    sub-float v7, v7, v22
    move-object/from16 v0, p0
    iget-object v0, v0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    move-object/from16 v22, v0
    move-object/from16 v0, p1
    move/from16 v1, v21
    move-object/from16 v2, v22
    invoke-virtual { v0, v8, v1, v7, v2 }, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
  :L14
  .line 78
    move-object/from16 v0, p0
    iget-object v7, v0, Lcom/geely/drivemem/ui/BarsView;->labels:[Ljava/lang/String;
    array-length v7, v7
    if-ge v9, v7, :L16
    add-int/lit8 v7, v14, -1
    sub-int/2addr v7, v9
    rem-int v7, v7, v20
    if-nez v7, :L16
  .line 79
    move-object/from16 v0, p0
    iget-object v7, v0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    if-eqz v5, :L21
    sget v5, Lcom/geely/drivemem/util/Style;->TEXT:I
  :L15
    invoke-virtual { v7, v5 }, Landroid/graphics/Paint;->setColor(I)V
  .line 80
    move-object/from16 v0, p0
    iget-object v5, v0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    invoke-virtual { v5, v15 }, Landroid/graphics/Paint;->setTextSize(F)V
  .line 81
    move-object/from16 v0, p0
    iget-object v5, v0, Lcom/geely/drivemem/ui/BarsView;->labels:[Ljava/lang/String;
    aget-object v5, v5, v9
    const/4 v7, 4
    invoke-static { v12, v7 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v7
    sub-int v7, v13, v7
    int-to-float v7, v7
    move-object/from16 v0, p0
    iget-object v8, v0, Lcom/geely/drivemem/ui/BarsView;->text:Landroid/graphics/Paint;
    move-object/from16 v0, p1
    move/from16 v1, v21
    invoke-virtual { v0, v5, v1, v7, v8 }, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
  :L16
  .line 65
    add-int/lit8 v5, v9, 1
    move v9, v5
    goto/16 :L7
  :L17
  .line 62
    const/4 v4, 0
    goto/16 :L6
  :L18
  .line 66
    const/4 v5, 0
    goto/16 :L8
  :L19
  .line 71
    sget v8, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    const v23, 16777215
    and-int v8, v8, v23
    const/high16 v23, 0x88000000
    or-int v8, v8, v23
    goto/16 :L10
  :L20
  .line 74
    sget v8, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    goto/16 :L13
  :L21
  .line 79
    sget v5, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    goto :L15
  :L22
    move-wide v4, v10
    goto/16 :L1
.end method

.method public setData([D[Ljava/lang/String;)V
  .registers 4
  .prologue
    const/4 v0, 0
  .line 35
    if-nez p1, :L0
    new-array p1, v0, [D
  :L0
    iput-object p1, p0, Lcom/geely/drivemem/ui/BarsView;->values:[D
  .line 36
    if-nez p2, :L1
    new-array p2, v0, [Ljava/lang/String;
  :L1
    iput-object p2, p0, Lcom/geely/drivemem/ui/BarsView;->labels:[Ljava/lang/String;
  .line 37
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/BarsView;->invalidate()V
  .line 38
    return-void
.end method
