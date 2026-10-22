.class public final Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog;
.super Ljava/lang/Object;
.source "ChargeCurrentCurveDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$Curves;
    }
.end annotation


# static fields
.field private static final POWER_AXIS_MAX_KW_AC:F = 8.0f

.field private static final POWER_AXIS_MAX_KW_DC:F = 80.0f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static globalMinOutsideTempC(Landroid/content/Context;F)F
    .locals 2

    .line 182
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "SELECT MIN(outside_temp_c) FROM telemetry_sample WHERE outside_temp_c IS NOT NULL"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 185
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method private static read(Landroid/content/Context;Lcom/geely/drivemem/state/ChargeSession$Summary;)Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$Curves;
    .locals 8

    .line 203
    new-instance v0, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$Curves;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$Curves;-><init>(Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog-IA;)V

    .line 204
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    iget-wide v3, p1, Lcom/geely/drivemem/state/ChargeSession$Summary;->startWallMs:J

    .line 207
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-wide v5, p1, Lcom/geely/drivemem/state/ChargeSession$Summary;->endWallMs:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 204
    const-string v3, "SELECT ts_ms, charge_a, charge_v, outside_temp_c, battery_temp_c FROM telemetry_sample WHERE ts_ms BETWEEN ? AND ? ORDER BY ts_ms ASC"

    invoke-virtual {p0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 209
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 210
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iget-wide v6, p1, Lcom/geely/drivemem/state/ChargeSession$Summary;->startWallMs:J

    sub-long/2addr v2, v6

    long-to-float v2, v2

    const v3, 0x476a6000    # 60000.0f

    div-float/2addr v2, v3

    .line 211
    invoke-interface {p0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_1

    .line 212
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    mul-float/2addr v3, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v3, v6

    .line 213
    iget-object v6, v0, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$Curves;->power:Ljava/util/List;

    new-instance v7, Lcom/github/mikephil/charting/data/Entry;

    invoke-direct {v7, v2, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v3, 0x3

    .line 215
    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 216
    iget-object v6, v0, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$Curves;->outsideTemp:Ljava/util/List;

    new-instance v7, Lcom/github/mikephil/charting/data/Entry;

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    invoke-direct {v7, v2, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v3, 0x4

    .line 218
    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 219
    iget-object v6, v0, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$Curves;->batteryTemp:Ljava/util/List;

    new-instance v7, Lcom/github/mikephil/charting/data/Entry;

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    invoke-direct {v7, v2, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 222
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method public static show(Landroid/content/Context;Lcom/geely/drivemem/state/ChargeSession$Summary;)V
    .locals 10

    .line 40
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 41
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 42
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x18

    .line 44
    invoke-static {p0, v3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v3

    .line 45
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 46
    invoke-static {}, Lcom/geely/drivemem/util/Style;->cardFillColor()I

    move-result v3

    invoke-static {v3, p0}, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 47
    sget v3, Lcom/geely/drivemem/R$string;->charge_curve_title:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/geely/drivemem/util/Style;->title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50
    invoke-static {p0, p1}, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog;->read(Landroid/content/Context;Lcom/geely/drivemem/state/ChargeSession$Summary;)Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$Curves;

    move-result-object v3

    .line 51
    iget-object v4, v3, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$Curves;->power:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 52
    sget p1, Lcom/geely/drivemem/R$string;->charge_curve_unavailable:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/geely/drivemem/util/Style;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v1, 0x24

    .line 53
    invoke-static {p0, v1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0, v1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v5, v3, v5, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 54
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 56
    :cond_0
    iget-object v4, v3, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$Curves;->outsideTemp:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$Curves;->batteryTemp:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v5

    .line 57
    :cond_2
    :goto_0
    new-instance v4, Lcom/github/mikephil/charting/charts/LineChart;

    invoke-direct {v4, p0}, Lcom/github/mikephil/charting/charts/LineChart;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/LineChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 59
    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleEnabled(Z)V

    .line 60
    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setDoubleTapToZoomEnabled(Z)V

    .line 62
    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v6

    .line 63
    invoke-virtual {v6, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 64
    sget v7, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/components/Legend;->setTextColor(I)V

    .line 66
    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v6

    const/4 v7, 0x0

    .line 67
    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 68
    invoke-virtual {p1}, Lcom/geely/drivemem/state/ChargeSession$Summary;->isDcfc()Z

    move-result p1

    if-eqz p1, :cond_3

    const/high16 p1, 0x42a00000    # 80.0f

    goto :goto_1

    :cond_3
    const/high16 p1, 0x41000000    # 8.0f

    :goto_1
    invoke-virtual {v6, p1}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 69
    sget p1, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v6, p1}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 70
    sget p1, Lcom/geely/drivemem/util/Style;->CARD:I

    sget v7, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    const v8, 0x3e4ccccd    # 0.2f

    invoke-static {p1, v7, v8}, Lcom/geely/drivemem/util/Style;->blend(IIF)I

    move-result p1

    invoke-virtual {v6, p1}, Lcom/github/mikephil/charting/components/YAxis;->setGridColor(I)V

    .line 71
    new-instance p1, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$1;

    invoke-direct {p1}, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$1;-><init>()V

    invoke-virtual {v6, p1}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 75
    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p1

    .line 76
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 77
    sget v6, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {p1, v6}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 78
    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    if-eqz v1, :cond_6

    .line 96
    iget-object v1, v3, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$Curves;->outsideTemp:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const v7, -0x800001

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/Entry;

    .line 97
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 98
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    goto :goto_2

    .line 100
    :cond_4
    iget-object v1, v3, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$Curves;->batteryTemp:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/Entry;

    .line 101
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 102
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    goto :goto_3

    .line 104
    :cond_5
    invoke-static {p0, v6}, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog;->globalMinOutsideTempC(Landroid/content/Context;F)F

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float v6, v7, v6

    const v8, 0x3dcccccd    # 0.1f

    mul-float/2addr v6, v8

    const/high16 v8, 0x3f800000    # 1.0f

    .line 105
    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    sub-float/2addr v1, v8

    .line 106
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    add-float/2addr v7, v6

    .line 107
    invoke-virtual {p1, v7}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    :cond_6
    const/4 v1, 0x5

    .line 113
    invoke-virtual {p1, v1, v5}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    .line 114
    new-instance v1, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$2;

    invoke-direct {v1}, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$2;-><init>()V

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 118
    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object p1

    .line 119
    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 120
    sget v1, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 121
    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 122
    new-instance v1, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$3;

    invoke-direct {v1}, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$3;-><init>()V

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 126
    new-instance p1, Lcom/github/mikephil/charting/data/LineDataSet;

    iget-object v1, v3, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$Curves;->power:Ljava/util/List;

    sget v6, Lcom/geely/drivemem/R$string;->charge_curve_power_label:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p1, v1, v6}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 127
    sget v1, Lcom/geely/drivemem/util/Style;->ACCENT:I

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    const/high16 v1, 0x40200000    # 2.5f

    .line 128
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 129
    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 130
    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 131
    sget-object v1, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->LINEAR:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 132
    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object p1, v3, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$Curves;->outsideTemp:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/high16 v6, 0x40000000    # 2.0f

    if-nez p1, :cond_7

    .line 137
    new-instance p1, Lcom/github/mikephil/charting/data/LineDataSet;

    iget-object v7, v3, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$Curves;->outsideTemp:Ljava/util/List;

    sget v8, Lcom/geely/drivemem/R$string;->charge_curve_temp_label:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p1, v7, v8}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 138
    sget v7, Lcom/geely/drivemem/util/Style;->HEAT:I

    invoke-virtual {p1, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 139
    invoke-virtual {p1, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 140
    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 141
    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 142
    sget-object v7, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->LINEAR:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {p1, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 143
    sget-object v7, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p1, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 144
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_7
    iget-object p1, v3, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$Curves;->batteryTemp:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 147
    new-instance p1, Lcom/github/mikephil/charting/data/LineDataSet;

    iget-object v7, v3, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$Curves;->batteryTemp:Ljava/util/List;

    sget v8, Lcom/geely/drivemem/R$string;->charge_curve_batt_temp_label:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p1, v7, v8}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 148
    sget v7, Lcom/geely/drivemem/util/Style;->GOOD:I

    invoke-virtual {p1, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 149
    invoke-virtual {p1, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 150
    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 151
    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 152
    sget-object v6, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->LINEAR:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {p1, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 153
    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p1, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 154
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_8
    new-instance p1, Lcom/github/mikephil/charting/data/LineData;

    invoke-direct {p1, v1}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, p1}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 157
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x14a

    .line 158
    invoke-static {p0, v1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v1

    const/4 v6, -0x1

    invoke-direct {p1, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 157
    invoke-virtual {v2, v4, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object p1, v3, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$Curves;->batteryTemp:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 164
    sget p1, Lcom/geely/drivemem/R$string;->charge_curve_no_batt_temp:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/geely/drivemem/util/Style;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v1, 0x41480000    # 12.5f

    .line 165
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x8

    .line 166
    invoke-static {p0, v1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v5, v1, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 167
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    :cond_9
    :goto_4
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 171
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, -0x2

    const/16 v2, 0x3e8

    if-eqz p1, :cond_a

    .line 172
    invoke-static {p0, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p1, v3, v1}, Landroid/view/Window;->setLayout(II)V

    .line 173
    :cond_a
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    if-eqz p1, :cond_b

    .line 174
    invoke-static {p0, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_b
    return-void
.end method
