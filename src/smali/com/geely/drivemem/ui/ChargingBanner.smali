.class public Lcom/geely/drivemem/ui/ChargingBanner;
.super Landroid/widget/LinearLayout;
.source "ChargingBanner.java"

.field private final static PACK_KWH:D = 39.6D

.field private final line1:Landroid/widget/TextView;

.field private final line2:Landroid/widget/TextView;

.field private running:Z

.field private final tick:Ljava/lang/Runnable;

.field private final ui:Landroid/os/Handler;

.method public constructor <init>(Landroid/content/Context;)V
  .registers 6
  .prologue
    const/4 v3, 4
    const/4 v2, 0
  .line 35
    invoke-direct { p0, p1 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 23
    new-instance v0, Landroid/os/Handler;
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    iput-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner;->ui:Landroid/os/Handler;
  .line 26
    new-instance v0, Lcom/geely/drivemem/ui/ChargingBanner$1;
    invoke-direct { v0, p0 }, Lcom/geely/drivemem/ui/ChargingBanner$1;-><init>(Lcom/geely/drivemem/ui/ChargingBanner;)V
    iput-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner;->tick:Ljava/lang/Runnable;
  .line 36
    const/4 v0, 1
    invoke-virtual { p0, v0 }, Lcom/geely/drivemem/ui/ChargingBanner;->setOrientation(I)V
  .line 37
    const/16 v0, 16
    invoke-static { p1, v0 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v0
  .line 38
    invoke-static { p1, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
    add-int/2addr v1, v0
    invoke-virtual { p0, v1, v0, v0, v0 }, Lcom/geely/drivemem/ui/ChargingBanner;->setPadding(IIII)V
  .line 39
    invoke-static { }, Lcom/geely/drivemem/util/Style;->cardFillColor()I
    move-result v0
    invoke-static { v0, p1 }, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v0
    invoke-virtual { p0, v0 }, Lcom/geely/drivemem/ui/ChargingBanner;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 40
    new-instance v0, Landroid/widget/TextView;
    invoke-direct { v0, p1 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner;->line1:Landroid/widget/TextView;
  .line 41
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner;->line1:Landroid/widget/TextView;
    const/high16 v1, 0x41980000
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 42
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner;->line1:Landroid/widget/TextView;
    sget v1, Lcom/geely/drivemem/util/Style;->TEXT:I
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 43
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner;->line1:Landroid/widget/TextView;
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  .line 44
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner;->line1:Landroid/widget/TextView;
    invoke-virtual { p0, v0 }, Lcom/geely/drivemem/ui/ChargingBanner;->addView(Landroid/view/View;)V
  .line 45
    new-instance v0, Landroid/widget/TextView;
    invoke-direct { v0, p1 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner;->line2:Landroid/widget/TextView;
  .line 46
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner;->line2:Landroid/widget/TextView;
    const/high16 v1, 0x41880000
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 47
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner;->line2:Landroid/widget/TextView;
    sget v1, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 48
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner;->line2:Landroid/widget/TextView;
    invoke-static { p1, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
    invoke-virtual { v0, v2, v1, v2, v2 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 49
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner;->line2:Landroid/widget/TextView;
    invoke-virtual { p0, v0 }, Lcom/geely/drivemem/ui/ChargingBanner;->addView(Landroid/view/View;)V
  .line 50
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, -1
    const/4 v2, -2
    invoke-direct { v0, v1, v2 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 51
    const/16 v1, 12
    invoke-static { p1, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
  .line 52
    invoke-virtual { p0, v0 }, Lcom/geely/drivemem/ui/ChargingBanner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 53
    const/16 v0, 8
    invoke-virtual { p0, v0 }, Lcom/geely/drivemem/ui/ChargingBanner;->setVisibility(I)V
  .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/geely/drivemem/ui/ChargingBanner;)Z
  .registers 2
  .prologue
  .line 21
    iget-boolean v0, p0, Lcom/geely/drivemem/ui/ChargingBanner;->running:Z
    return v0
.end method

.method static synthetic access$100(Lcom/geely/drivemem/ui/ChargingBanner;)V
  .registers 1
  .prologue
  .line 21
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/ChargingBanner;->poll()V
    return-void
.end method

.method static synthetic access$200(Lcom/geely/drivemem/ui/ChargingBanner;)Landroid/os/Handler;
  .registers 2
  .prologue
  .line 21
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner;->ui:Landroid/os/Handler;
    return-object v0
.end method

.method static synthetic access$300(Lcom/geely/drivemem/ui/ChargingBanner;IDD)V
  .registers 6
  .prologue
  .line 21
    invoke-direct/range { p0 .. p5 }, Lcom/geely/drivemem/ui/ChargingBanner;->show(IDD)V
    return-void
.end method

.method private static dur(D)Ljava/lang/String;
  .registers 10
  .prologue
    const-wide/16 v6, 60
  .line 108
    const-wide/high16 v0, 0x404e000000000000L
    mul-double/2addr v0, p0
    invoke-static { v0, v1 }, Ljava/lang/Math;->round(D)J
    move-result-wide v0
  .line 109
    const-wide/16 v2, 1
    cmp-long v2, v0, v2
    if-gez v2, :L1
    const-string v0, "<1 min"
  :L0
  .line 111
    return-object v0
  :L1
  .line 110
    cmp-long v2, v0, v6
    if-gez v2, :L2
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v0, v1 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, " min"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    goto :L0
  :L2
  .line 111
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    div-long v4, v0, v6
    invoke-virtual { v2, v4, v5 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, " h "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    rem-long/2addr v0, v6
    invoke-virtual { v2, v0, v1 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, " min"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    goto :L0
.end method

.method private poll()V
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L5
  .registers 10
  .prologue
    const/4 v0, 0
  .line 70
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/ChargingBanner;->getContext()Landroid/content/Context;
    move-result-object v2
  :L0
  .line 72
    invoke-static { }, Lcom/geely/drivemem/state/ChargeSession;->isCharging()Z
    move-result v1
    if-eqz v1, :L2
    invoke-static { }, Lcom/geely/drivemem/state/ChargeSession;->isSessionActive()Z
  :L1
    move-result v1
    if-eqz v1, :L2
    const/4 v0, 1
  :L2
  .line 73
    if-nez v0, :L4
    const/16 v0, 8
    invoke-virtual { p0, v0 }, Lcom/geely/drivemem/ui/ChargingBanner;->setVisibility(I)V
  :L3
  .line 83
    return-void
  :L4
  .line 74
    invoke-static { }, Lcom/geely/drivemem/state/ChargeSession;->currentSocEnd()I
    move-result v3
  .line 75
    invoke-static { }, Lcom/geely/drivemem/state/ChargeSession;->currentKwh()D
    move-result-wide v4
  .line 76
    invoke-static { }, Lcom/geely/drivemem/state/ChargeSession;->currentStartWallMs()J
    move-result-wide v6
  .line 77
    new-instance v8, Ljava/lang/Thread;
    new-instance v0, Lcom/geely/drivemem/ui/ChargingBanner$2;
    move-object v1, p0
    invoke-direct/range { v0 .. v7 }, Lcom/geely/drivemem/ui/ChargingBanner$2;-><init>(Lcom/geely/drivemem/ui/ChargingBanner;Landroid/content/Context;IDJ)V
    const-string v1, "charge-eta"
    invoke-direct { v8, v0, v1 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 82
    invoke-virtual { v8 }, Ljava/lang/Thread;->start()V
    goto :L3
  :L5
  .line 72
    move-exception v1
    goto :L2
.end method

.method static ratePctPerHour(Landroid/content/Context;IDJ)D
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L11
  .catchall { :L2 .. :L4 } :L10
  .catch Ljava/lang/Throwable; { :L6 .. :L11 } :L11
  .registers 22
  .prologue
  .line 87
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v12
  :L0
  .line 89
    invoke-static/range { p0 .. p0 }, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;
    move-result-object v2
    invoke-virtual { v2 }, Lcom/geely/drivemem/car/CarDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    move-result-object v2
    const-string v3, "SELECT ts_ms, battery_pct FROM telemetry_sample WHERE ts_ms > ? AND battery_pct IS NOT NULL ORDER BY ts_ms"
    const/4 v4, 1
    new-array v4, v4, [Ljava/lang/String;
    const/4 v5, 0
    const-wide/32 v6, 1200000
    sub-long v6, v12, v6
  .line 91
    move-wide/from16 v0, p4
    invoke-static { v0, v1, v6, v7 }, Ljava/lang/Math;->max(JJ)J
    move-result-wide v6
    invoke-static { v6, v7 }, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    move-result-object v6
    aput-object v6, v4, v5
  .line 89
    invoke-virtual { v2, v3, v4 }, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
  :L1
    move-result-object v14
  .line 93
    const-wide/16 v6, 0
    const-wide/16 v4, 0
    const-wide/16 v10, 0
    const-wide/16 v8, 0
    const/4 v2, 1
  :L2
  .line 94
    invoke-interface { v14 }, Landroid/database/Cursor;->moveToNext()Z
    move-result v3
    if-eqz v3, :L5
  .line 95
    if-eqz v2, :L3
    const/4 v2, 0
    invoke-interface { v14, v2 }, Landroid/database/Cursor;->getLong(I)J
    move-result-wide v6
    const/4 v2, 1
    invoke-interface { v14, v2 }, Landroid/database/Cursor;->getDouble(I)D
    move-result-wide v4
    const/4 v2, 0
  :L3
  .line 96
    const/4 v3, 0
    invoke-interface { v14, v3 }, Landroid/database/Cursor;->getLong(I)J
    move-result-wide v8
    const/4 v3, 1
    invoke-interface { v14, v3 }, Landroid/database/Cursor;->getDouble(I)D
  :L4
    move-result-wide v10
    goto :L2
  :L5
  .line 98
    sub-long v6, v8, v6
    long-to-double v6, v6
    const-wide v8, 4704985352480227328L
    div-double/2addr v6, v8
  .line 99
    if-nez v2, :L8
    const-wide v2, 4587366580439587226L
    cmpl-double v2, v6, v2
    if-ltz v2, :L8
    sub-double v2, v10, v4
    const-wide/high16 v8, 0x3ff0000000000000L
    cmpl-double v2, v2, v8
    if-ltz v2, :L8
    sub-double v2, v10, v4
    div-double/2addr v2, v6
  :L6
  .line 100
    invoke-interface { v14 }, Landroid/database/Cursor;->close()V
  :L7
  .line 104
    return-wide v2
  :L8
  .line 100
    invoke-interface { v14 }, Landroid/database/Cursor;->close()V
  :L9
  .line 102
    sub-long v2, v12, p4
    long-to-double v2, v2
    const-wide v4, 4704985352480227328L
    div-double/2addr v2, v4
  .line 103
    const-wide v4, 4587366580439587226L
    cmpl-double v4, v2, v4
    if-lez v4, :L12
    const-wide v4, 4599075939470750515L
    cmpl-double v4, p2, v4
    if-lez v4, :L12
    div-double v2, p2, v2
    const-wide v4, 4630770021848370381L
    div-double/2addr v2, v4
    const-wide/high16 v4, 0x4059000000000000L
    mul-double/2addr v2, v4
    goto :L7
  :L10
  .line 100
    move-exception v2
    invoke-interface { v14 }, Landroid/database/Cursor;->close()V
    throw v2
  :L11
  .line 101
    move-exception v2
    goto :L9
  :L12
  .line 104
    const-wide/16 v2, 0
    goto :L7
.end method

.method private show(IDD)V
  .registers 16
  .prologue
    const/4 v5, 0
    const-wide v8, 4704985352480227328L
  .line 115
    invoke-virtual { p0, v5 }, Lcom/geely/drivemem/ui/ChargingBanner;->setVisibility(I)V
  .line 116
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner;->line1:Landroid/widget/TextView;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
    const-string v2, "Charging  %d%%  \u00b7  +%.1f kWh"
    const/4 v3, 2
    new-array v3, v3, [Ljava/lang/Object;
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    aput-object v4, v3, v5
    const/4 v4, 1
    invoke-static { p2, p3 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v5
    aput-object v5, v3, v4
    invoke-static { v1, v2, v3 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 117
    const-wide/16 v0, 0
    cmpg-double v0, p4, v0
    if-lez v0, :L0
    if-gez p1, :L2
  :L0
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner;->line2:Landroid/widget/TextView;
    const-string v1, "Estimating time left\u2026"
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L1
  .line 132
    return-void
  :L2
  .line 118
    new-instance v0, Ljava/text/SimpleDateFormat;
    const-string v1, "HH:mm"
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-direct { v0, v1, v2 }, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
  .line 119
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
  .line 120
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
  .line 121
    const/16 v4, 80
    if-ge p1, v4, :L3
  .line 122
    rsub-int/lit8 v4, p1, 80
    int-to-double v4, v4
    div-double/2addr v4, p4
  .line 123
    const-string v6, "To 80%: ~"
    invoke-virtual { v1, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-static { v4, v5 }, Lcom/geely/drivemem/ui/ChargingBanner;->dur(D)Ljava/lang/String;
    move-result-object v7
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    const-string v7, " ("
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    new-instance v7, Ljava/util/Date;
    mul-double/2addr v4, v8
    double-to-long v4, v4
    add-long/2addr v4, v2
    invoke-direct { v7, v4, v5 }, Ljava/util/Date;-><init>(J)V
    invoke-virtual { v0, v7 }, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v6, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    const-string v5, ")   "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L3
  .line 125
    const/16 v4, 100
    if-ge p1, v4, :L5
  .line 126
    rsub-int/lit8 v4, p1, 100
    int-to-double v4, v4
    div-double/2addr v4, p4
  .line 127
    const-string v6, "To 100%: ~"
    invoke-virtual { v1, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-static { v4, v5 }, Lcom/geely/drivemem/ui/ChargingBanner;->dur(D)Ljava/lang/String;
    move-result-object v7
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    const-string v7, " ("
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    new-instance v7, Ljava/util/Date;
    mul-double/2addr v4, v8
    double-to-long v4, v4
    add-long/2addr v2, v4
    invoke-direct { v7, v2, v3 }, Ljava/util/Date;-><init>(J)V
    invoke-virtual { v0, v7 }, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v2, ")"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L4
  .line 131
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner;->line2:Landroid/widget/TextView;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto :L1
  :L5
  .line 129
    const-string v0, "Fully charged"
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :L4
.end method

.method protected onAttachedToWindow()V
  .registers 3
  .prologue
  .line 57
    invoke-super { p0 }, Landroid/widget/LinearLayout;->onAttachedToWindow()V
  .line 58
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/geely/drivemem/ui/ChargingBanner;->running:Z
  .line 59
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner;->ui:Landroid/os/Handler;
    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargingBanner;->tick:Ljava/lang/Runnable;
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
  .line 60
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner;->ui:Landroid/os/Handler;
    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargingBanner;->tick:Ljava/lang/Runnable;
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  .line 61
    return-void
.end method

.method protected onDetachedFromWindow()V
  .registers 3
  .prologue
  .line 64
    const/4 v0, 0
    iput-boolean v0, p0, Lcom/geely/drivemem/ui/ChargingBanner;->running:Z
  .line 65
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargingBanner;->ui:Landroid/os/Handler;
    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargingBanner;->tick:Ljava/lang/Runnable;
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
  .line 66
    invoke-super { p0 }, Landroid/widget/LinearLayout;->onDetachedFromWindow()V
  .line 67
    return-void
.end method
