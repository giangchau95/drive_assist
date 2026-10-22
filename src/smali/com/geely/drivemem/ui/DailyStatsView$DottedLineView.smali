.class final Lcom/geely/drivemem/ui/DailyStatsView$DottedLineView;
.super Landroid/view/View;
.source "DailyStatsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/ui/DailyStatsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DottedLineView"
.end annotation


# instance fields
.field private final paint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1344
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1345
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView$DottedLineView;->paint:Landroid/graphics/Paint;

    .line 1346
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x2

    .line 1347
    invoke-static {p1, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1348
    new-instance v3, Landroid/graphics/DashPathEffect;

    .line 1349
    invoke-static {p1, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x3

    invoke-static {p1, v5}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    new-array v2, v2, [F

    const/4 v5, 0x0

    aput v4, v2, v5

    aput p1, v2, v1

    const/4 p1, 0x0

    invoke-direct {v3, v2, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 1348
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1353
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1354
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView$DottedLineView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    .line 1355
    invoke-virtual {p0}, Lcom/geely/drivemem/ui/DailyStatsView$DottedLineView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v7, p0, Lcom/geely/drivemem/ui/DailyStatsView$DottedLineView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v2, p1

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
