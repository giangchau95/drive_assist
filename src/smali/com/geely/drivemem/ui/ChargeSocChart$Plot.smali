.class final Lcom/geely/drivemem/ui/ChargeSocChart$Plot;
.super Landroid/view/View;
.source "ChargeSocChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/ui/ChargeSocChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Plot"
.end annotation


# static fields
.field private static final BOTTOM:I = 0x8

.field private static final LEFT:I = 0x34

.field private static final RIGHT:I = 0x10

.field private static final ROW:I = 0x2e

.field private static final TOP:I = 0x22


# instance fields
.field private final date:Ljava/text/SimpleDateFormat;

.field private final paint:Landroid/graphics/Paint;

.field private selectedId:J

.field private sessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/drivemem/state/ChargeSession$Summary;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/geely/drivemem/ui/ChargeSocChart;


# direct methods
.method static bridge synthetic -$$Nest$fputselectedId(Lcom/geely/drivemem/ui/ChargeSocChart$Plot;J)V
    .locals 0

    iput-wide p1, p0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->selectedId:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsessions(Lcom/geely/drivemem/ui/ChargeSocChart$Plot;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->sessions:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/geely/drivemem/ui/ChargeSocChart;Landroid/content/Context;)V
    .locals 2

    .line 63
    iput-object p1, p0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->this$0:Lcom/geely/drivemem/ui/ChargeSocChart;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    .line 59
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "d/M"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->date:Ljava/text/SimpleDateFormat;

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->sessions:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 61
    iput-wide v0, p0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->selectedId:J

    .line 63
    invoke-virtual {p0, p2}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method barCenterY(I)I
    .locals 1

    .line 156
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->getContext()Landroid/content/Context;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2e

    add-int/lit8 p1, p1, 0x39

    invoke-static {v0, p1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method clamp(I)F
    .locals 1

    const/16 v0, 0x64

    .line 157
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method indexOf(J)I
    .locals 3

    const/4 v0, 0x0

    .line 155
    :goto_0
    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->sessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->sessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/drivemem/state/ChargeSession$Summary;

    iget-wide v1, v1, Lcom/geely/drivemem/state/ChargeSession$Summary;->id:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v1, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v1

    int-to-float v8, v1

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v1, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v1

    int-to-float v9, v1

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v10, v1

    sub-float v11, v10, v8

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v12, 0x8

    invoke-static {v2, v12}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v13, v1

    .line 77
    iget-object v1, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v14, 0xc

    invoke-static {v2, v14}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 78
    iget-object v1, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 79
    iget-object v1, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v6, 0x0

    :goto_0
    const/16 v1, 0x64

    const v2, 0x3e3851ec    # 0.18f

    const/high16 v3, 0x42c80000    # 100.0f

    if-gt v6, v1, :cond_0

    int-to-float v1, v6

    mul-float/2addr v1, v11

    div-float/2addr v1, v3

    add-float v5, v8, v1

    .line 82
    iget-object v1, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/geely/drivemem/util/Style;->cardFillColor()I

    move-result v3

    sget v4, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-static {v3, v4, v2}, Lcom/geely/drivemem/util/Style;->blend(IIF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v4, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v5

    move v3, v9

    move-object/from16 v16, v4

    move v4, v5

    move v12, v5

    move v5, v13

    move v14, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 84
    iget-object v1, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v1, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v9, v2

    iget-object v3, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v12, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v14, 0x19

    const/16 v12, 0x8

    const/16 v14, 0xc

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 88
    :goto_1
    iget-object v4, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->sessions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 89
    iget-object v4, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->sessions:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/geely/drivemem/state/ChargeSession$Summary;

    .line 90
    invoke-virtual {v0, v1}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->barCenterY(I)I

    move-result v5

    int-to-float v5, v5

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-wide v12, v4, Lcom/geely/drivemem/state/ChargeSession$Summary;->id:J

    iget-wide v2, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->selectedId:J

    cmp-long v2, v12, v2

    if-nez v2, :cond_1

    const/16 v2, 0xd

    goto :goto_2

    :cond_1
    const/16 v2, 0xb

    :goto_2
    invoke-static {v6, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    .line 92
    iget v3, v4, Lcom/geely/drivemem/state/ChargeSession$Summary;->socStart:I

    invoke-virtual {v0, v3}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->clamp(I)F

    move-result v3

    iget v6, v4, Lcom/geely/drivemem/state/ChargeSession$Summary;->socEnd:I

    invoke-virtual {v0, v6}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->clamp(I)F

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v3, v11

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v3, v6

    add-float/2addr v3, v8

    .line 93
    iget v9, v4, Lcom/geely/drivemem/state/ChargeSession$Summary;->socStart:I

    invoke-virtual {v0, v9}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->clamp(I)F

    move-result v9

    iget v12, v4, Lcom/geely/drivemem/state/ChargeSession$Summary;->socEnd:I

    invoke-virtual {v0, v12}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->clamp(I)F

    move-result v12

    invoke-static {v9, v12}, Ljava/lang/Math;->max(FF)F

    move-result v9

    mul-float/2addr v9, v11

    div-float/2addr v9, v6

    add-float/2addr v9, v8

    .line 102
    iget-object v12, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/geely/drivemem/util/Style;->cardFillColor()I

    move-result v13

    sget v6, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    const v14, 0x3e3851ec    # 0.18f

    invoke-static {v13, v6, v14}, Lcom/geely/drivemem/util/Style;->blend(IIF)I

    move-result v6

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    new-instance v6, Landroid/graphics/RectF;

    sub-float v12, v5, v2

    add-float v13, v5, v2

    invoke-direct {v6, v8, v12, v10, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v14, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    const/high16 v15, 0x40e00000    # 7.0f

    invoke-virtual {v7, v6, v15, v15, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    cmpl-float v6, v3, v8

    if-lez v6, :cond_2

    .line 105
    iget-object v6, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/geely/drivemem/util/Style;->cardFillColor()I

    move-result v14

    sget v15, Lcom/geely/drivemem/util/Style;->ACCENT:I

    move/from16 v17, v10

    const v10, 0x3e3851ec    # 0.18f

    invoke-static {v14, v15, v10}, Lcom/geely/drivemem/util/Style;->blend(IIF)I

    move-result v14

    invoke-virtual {v6, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v8, v12, v3, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v14, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    const/high16 v15, 0x40e00000    # 7.0f

    invoke-virtual {v7, v6, v15, v15, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_2
    move/from16 v17, v10

    const v10, 0x3e3851ec    # 0.18f

    .line 109
    :goto_3
    invoke-virtual {v4}, Lcom/geely/drivemem/state/ChargeSession$Summary;->hasChargeVoltage()Z

    move-result v6

    if-nez v6, :cond_3

    sget v6, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    goto :goto_4

    :cond_3
    invoke-virtual {v4}, Lcom/geely/drivemem/state/ChargeSession$Summary;->isDcfc()Z

    move-result v6

    if-eqz v6, :cond_4

    sget v6, Lcom/geely/drivemem/util/Style;->GOOD:I

    goto :goto_4

    :cond_4
    sget v6, Lcom/geely/drivemem/util/Style;->ACCENT:I

    .line 110
    :goto_4
    iget-object v14, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v14, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    move v15, v11

    iget-wide v10, v4, Lcom/geely/drivemem/state/ChargeSession$Summary;->id:J

    move/from16 v18, v5

    move/from16 v19, v6

    iget-wide v5, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->selectedId:J

    cmp-long v5, v10, v5

    const/16 v6, 0xff

    if-nez v5, :cond_5

    move v5, v6

    goto :goto_5

    :cond_5
    const/16 v5, 0xcd

    :goto_5
    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 114
    new-instance v5, Landroid/graphics/RectF;

    const/high16 v10, 0x40000000    # 2.0f

    mul-float v11, v2, v10

    add-float/2addr v11, v3

    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-direct {v5, v3, v12, v9, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 115
    iget-object v3, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    const/high16 v9, 0x40e00000    # 7.0f

    invoke-virtual {v7, v5, v9, v9, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 116
    iget-object v3, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 118
    invoke-virtual {v4}, Lcom/geely/drivemem/state/ChargeSession$Summary;->durationLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 119
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 120
    iget-object v6, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    invoke-static/range {v19 .. v19}, Lcom/geely/drivemem/util/Style;->onFill(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v6, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 122
    iget-object v6, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    const v9, 0x3f666666    # 0.9f

    mul-float/2addr v2, v9

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 123
    iget-object v2, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 124
    iget-object v2, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v6, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    add-float/2addr v2, v6

    div-float/2addr v2, v10

    sub-float v2, v18, v2

    .line 125
    iget v6, v5, Landroid/graphics/RectF;->left:F

    iget v9, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v9

    div-float/2addr v6, v10

    iget-object v9, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v6, v2, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 126
    iget-object v2, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 127
    iget-object v2, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v9, 0xc

    invoke-static {v6, v9}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    const/16 v9, 0xc

    .line 129
    :goto_6
    iget-wide v10, v4, Lcom/geely/drivemem/state/ChargeSession$Summary;->id:J

    iget-wide v12, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->selectedId:J

    cmp-long v2, v10, v12

    if-nez v2, :cond_7

    .line 130
    iget-object v2, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    iget-object v2, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v10, 0x3

    invoke-static {v6, v10}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 132
    iget-object v2, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    sget v6, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    new-instance v2, Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    const/high16 v10, 0x40400000    # 3.0f

    sub-float/2addr v6, v10

    iget v11, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v11, v10

    iget v12, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v12, v10

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v10

    invoke-direct {v2, v6, v11, v12, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v5, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    const/high16 v6, 0x41100000    # 9.0f

    invoke-virtual {v7, v2, v6, v6, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 134
    iget-object v2, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    :cond_7
    iget-object v2, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    sget v5, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v2, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 138
    iget-object v2, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->date:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    iget-wide v10, v4, Lcom/geely/drivemem/state/ChargeSession$Summary;->startWallMs:J

    invoke-direct {v5, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v8, v4

    const/high16 v6, 0x40800000    # 4.0f

    add-float v6, v18, v6

    iget-object v10, v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v4, v6, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    move v11, v15

    move/from16 v10, v17

    const v2, 0x3e3851ec    # 0.18f

    const/high16 v3, 0x42c80000    # 100.0f

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 66
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->sessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2e

    add-int/lit8 v1, v1, 0x2a

    invoke-static {v0, v1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v0

    .line 67
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 68
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->resolveSize(II)I

    move-result p2

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->sessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x22

    invoke-static {v0, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 145
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x2e

    invoke-static {v0, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    if-ltz p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->sessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->performClick()Z

    .line 148
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->this$0:Lcom/geely/drivemem/ui/ChargeSocChart;

    invoke-static {v0}, Lcom/geely/drivemem/ui/ChargeSocChart;->-$$Nest$fgetlistener(Lcom/geely/drivemem/ui/ChargeSocChart;)Lcom/geely/drivemem/ui/ChargeSocChart$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->this$0:Lcom/geely/drivemem/ui/ChargeSocChart;

    invoke-static {v0}, Lcom/geely/drivemem/ui/ChargeSocChart;->-$$Nest$fgetlistener(Lcom/geely/drivemem/ui/ChargeSocChart;)Lcom/geely/drivemem/ui/ChargeSocChart$Listener;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->sessions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/geely/drivemem/state/ChargeSession$Summary;

    iget-wide v2, p1, Lcom/geely/drivemem/state/ChargeSession$Summary;->id:J

    invoke-interface {v0, v2, v3}, Lcom/geely/drivemem/ui/ChargeSocChart$Listener;->onSessionSelected(J)V

    :cond_0
    return v1
.end method

.method public performClick()Z
    .locals 1

    .line 154
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    const/4 v0, 0x1

    return v0
.end method
