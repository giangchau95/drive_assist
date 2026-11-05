.class public final Lcom/geely/drivemem/ui/MonthlySummary;
.super Ljava/lang/Object;
.source "MonthlySummary.java"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/geely/drivemem/ui/MonthlySummary$Data;
  }
.end annotation

.field private final static DAY:Ljava/text/SimpleDateFormat;

.field private final static KEY:Ljava/text/SimpleDateFormat;

.field private final static NAME:Ljava/text/SimpleDateFormat;

.field private static showing:Z

.method static constructor <clinit>()V
  .registers 3
  .prologue
  .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;
    const-string v1, "yyyy-MM-dd"
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-direct { v0, v1, v2 }, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    sput-object v0, Lcom/geely/drivemem/ui/MonthlySummary;->DAY:Ljava/text/SimpleDateFormat;
  .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;
    const-string v1, "yyyy-MM"
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-direct { v0, v1, v2 }, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    sput-object v0, Lcom/geely/drivemem/ui/MonthlySummary;->KEY:Ljava/text/SimpleDateFormat;
  .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;
    const-string v1, "MMMM yyyy"
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-direct { v0, v1, v2 }, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    sput-object v0, Lcom/geely/drivemem/ui/MonthlySummary;->NAME:Ljava/text/SimpleDateFormat;
    return-void
.end method

.method private constructor <init>()V
  .registers 1
  .prologue
  .line 26
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/util/Calendar;)Lcom/geely/drivemem/ui/MonthlySummary$Data;
  .registers 3
  .prologue
  .line 25
    invoke-static { p0, p1 }, Lcom/geely/drivemem/ui/MonthlySummary;->load(Landroid/content/Context;Ljava/util/Calendar;)Lcom/geely/drivemem/ui/MonthlySummary$Data;
    move-result-object v0
    return-object v0
.end method

.method static synthetic access$100()Z
  .registers 1
  .prologue
  .line 25
    sget-boolean v0, Lcom/geely/drivemem/ui/MonthlySummary;->showing:Z
    return v0
.end method

.method static synthetic access$102(Z)Z
  .registers 1
  .prologue
  .line 25
    sput-boolean p0, Lcom/geely/drivemem/ui/MonthlySummary;->showing:Z
    return p0
.end method

.method static synthetic access$200(Landroid/content/Context;)Landroid/content/SharedPreferences;
  .registers 2
  .prologue
  .line 25
    invoke-static { p0 }, Lcom/geely/drivemem/ui/MonthlySummary;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v0
    return-object v0
.end method

.method static synthetic access$300(Landroid/app/Activity;Lcom/geely/drivemem/ui/MonthlySummary$Data;Ljava/lang/Runnable;)V
  .registers 3
  .prologue
  .line 25
    invoke-static { p0, p1, p2 }, Lcom/geely/drivemem/ui/MonthlySummary;->show(Landroid/app/Activity;Lcom/geely/drivemem/ui/MonthlySummary$Data;Ljava/lang/Runnable;)V
    return-void
.end method

.method private static change(DD)Ljava/lang/String;
  .registers 14
  .prologue
    const-wide/16 v8, 0
  .line 129
    cmpg-double v0, p2, v8
    if-gtz v0, :L1
    const-string v0, ""
  :L0
  .line 132
    return-object v0
  :L1
  .line 130
    sub-double v0, p0, p2
    div-double/2addr v0, p2
    const-wide/high16 v2, 0x4059000000000000L
    mul-double/2addr v2, v0
  .line 131
    invoke-static { v2, v3 }, Ljava/lang/Math;->abs(D)D
    move-result-wide v0
    const-wide/high16 v4, 0x3fe0000000000000L
    cmpg-double v0, v0, v4
    if-gez v0, :L2
    const-string v0, "  (same as the month before)"
    goto :L0
  :L2
  .line 132
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
    const-string v4, "  (%s%.0f%% vs the month before)"
    const/4 v0, 2
    new-array v5, v0, [Ljava/lang/Object;
    const/4 v6, 0
    cmpl-double v0, v2, v8
    if-lez v0, :L4
    const-string v0, "\u25b2 "
  :L3
    aput-object v0, v5, v6
    const/4 v0, 1
    invoke-static { v2, v3 }, Ljava/lang/Math;->abs(D)D
    move-result-wide v2
    invoke-static { v2, v3 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v2
    aput-object v2, v5, v0
    invoke-static { v1, v4, v5 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    goto :L0
  :L4
    const-string v0, "\u25bc "
    goto :L3
.end method

.method public static check(Landroid/app/Activity;Ljava/lang/Runnable;)V
  .registers 7
  .prologue
  .line 44
    sget-boolean v0, Lcom/geely/drivemem/ui/MonthlySummary;->showing:Z
    if-nez v0, :L0
    invoke-static { }, Lcom/geely/drivemem/state/CarState;->isParked()Z
    move-result v0
    if-nez v0, :L2
  :L0
    if-eqz p1, :L1
    sget-boolean v0, Lcom/geely/drivemem/ui/MonthlySummary;->showing:Z
    if-nez v0, :L1
    invoke-interface { p1 }, Ljava/lang/Runnable;->run()V
  :L1
  .line 68
    return-void
  :L2
  .line 45
    invoke-static { }, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
    move-result-object v0
  .line 46
    const/4 v1, 5
    const/4 v2, 1
    invoke-virtual { v0, v1, v2 }, Ljava/util/Calendar;->set(II)V
  .line 47
    const/4 v1, 2
    const/4 v2, -1
    invoke-virtual { v0, v1, v2 }, Ljava/util/Calendar;->add(II)V
  .line 48
    sget-object v1, Lcom/geely/drivemem/ui/MonthlySummary;->KEY:Ljava/text/SimpleDateFormat;
    invoke-virtual { v0 }, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object v1
  .line 49
    invoke-static { p0 }, Lcom/geely/drivemem/ui/MonthlySummary;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v2
    const-string v3, "summary_shown"
    const-string v4, ""
    invoke-interface { v2, v3, v4 }, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L3
    if-eqz p1, :L1
    invoke-interface { p1 }, Ljava/lang/Runnable;->run()V
    goto :L1
  :L3
  .line 50
    invoke-static { p0 }, Lcom/geely/drivemem/ui/MonthlySummary;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v2
    const-string v3, "first_seen"
    invoke-interface { v2, v3 }, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :L4
    if-eqz p1, :L1
    invoke-interface { p1 }, Ljava/lang/Runnable;->run()V
    goto :L1
  :L4
  .line 51
    new-instance v2, Ljava/lang/Thread;
    new-instance v3, Lcom/geely/drivemem/ui/MonthlySummary$1;
    invoke-direct { v3, p0, v0, p1, v1 }, Lcom/geely/drivemem/ui/MonthlySummary$1;-><init>(Landroid/app/Activity;Ljava/util/Calendar;Ljava/lang/Runnable;Ljava/lang/String;)V
    const-string v0, "month-summary"
    invoke-direct { v2, v3, v0 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 67
    invoke-virtual { v2 }, Ljava/lang/Thread;->start()V
    goto :L1
.end method

.method private static load(Landroid/content/Context;Ljava/util/Calendar;)Lcom/geely/drivemem/ui/MonthlySummary$Data;
  .catch Ljava/lang/Throwable; { :L0 .. :L7 } :L14
  .catchall { :L8 .. :L9 } :L13
  .catch Ljava/lang/Throwable; { :L9 .. :L14 } :L14
  .registers 16
  .prologue
    const/4 v2, 0
    const/4 v10, 2
    const/4 v4, 1
    const/4 v3, 0
    const-wide/16 v12, 0
  :L0
  .line 92
    new-instance v1, Lcom/geely/drivemem/ui/MonthlySummary$Data;
    const/4 v0, 0
    invoke-direct { v1, v0 }, Lcom/geely/drivemem/ui/MonthlySummary$Data;-><init>(Lcom/geely/drivemem/ui/MonthlySummary$1;)V
  .line 93
    sget-object v0, Lcom/geely/drivemem/ui/MonthlySummary;->NAME:Ljava/text/SimpleDateFormat;
    invoke-virtual { p1 }, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    move-result-object v5
    invoke-virtual { v0, v5 }, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object v0
    iput-object v0, v1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->name:Ljava/lang/String;
  .line 94
    sget-object v0, Lcom/geely/drivemem/ui/MonthlySummary;->KEY:Ljava/text/SimpleDateFormat;
    invoke-virtual { p1 }, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    move-result-object v5
    invoke-virtual { v0, v5 }, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object v0
    iput-object v0, v1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->key:Ljava/lang/String;
  .line 95
    sget-object v0, Lcom/geely/drivemem/ui/MonthlySummary;->DAY:Ljava/text/SimpleDateFormat;
    invoke-virtual { p1 }, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    move-result-object v5
    invoke-virtual { v0, v5 }, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object v0
    const/4 v5, 2
    invoke-static { p0, v0, v5 }, Lcom/geely/drivemem/sensors/DailyStatsProvider;->recentMonths(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    move-result-object v5
  .line 96
    if-eqz v5, :L1
    invoke-interface { v5 }, Ljava/util/List;->isEmpty()Z
    move-result v0
    if-eqz v0, :L3
  :L1
    move-object v0, v1
  :L2
  .line 118
    return-object v0
  :L3
  .line 97
    invoke-interface { v5 }, Ljava/util/List;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
    invoke-interface { v5, v0 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;
    iget-object v0, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;->totals:Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;
  .line 98
    iget-wide v6, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->distanceKm:D
    iput-wide v6, v1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->km:D
  .line 99
    const-wide/16 v6, 0
    iget-wide v8, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->netKwh:D
    invoke-static { v6, v7, v8, v9 }, Ljava/lang/Math;->max(DD)D
    move-result-wide v6
    iput-wide v6, v1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->kwhUsed:D
  .line 100
    iget-wide v6, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->chargeKwh:D
    iput-wide v6, v1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->kwhCharged:D
  .line 101
    iget-wide v6, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->chargeCost:D
    iput-wide v6, v1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->cost:D
  .line 102
    iget v0, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->chargeCount:I
    iput v0, v1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->charges:I
  .line 103
    invoke-interface { v5 }, Ljava/util/List;->size()I
    move-result v0
    if-lt v0, v10, :L6
  .line 104
    invoke-interface { v5 }, Ljava/util/List;->size()I
    move-result v0
    add-int/lit8 v0, v0, -2
    invoke-interface { v5, v0 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;
    iget-object v0, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$PeriodOverview;->totals:Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;
  .line 105
    iget-wide v6, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->distanceKm:D
    iput-wide v6, v1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->prevKm:D
  .line 106
    iget-wide v6, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->chargeCost:D
    iput-wide v6, v1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->prevCost:D
  .line 107
    iget-wide v6, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->distanceKm:D
    cmpl-double v5, v6, v12
    if-gtz v5, :L4
    iget-wide v6, v0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayOverview;->chargeCost:D
    cmpl-double v0, v6, v12
    if-lez v0, :L12
  :L4
    move v0, v4
  :L5
    iput-boolean v0, v1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->hasPrev:Z
  :L6
  .line 109
    invoke-virtual { p1 }, Ljava/util/Calendar;->clone()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/Calendar;
  .line 110
    const/4 v5, 2
    const/4 v6, 1
    invoke-virtual { v0, v5, v6 }, Ljava/util/Calendar;->add(II)V
  .line 111
    invoke-static { p0 }, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;
    move-result-object v5
    invoke-virtual { v5 }, Lcom/geely/drivemem/car/CarDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    move-result-object v5
    const-string v6, "SELECT COUNT(*) FROM charge_session WHERE soc_end >= 100 AND start_ms >= ? AND start_ms < ?"
    const/4 v7, 2
    new-array v7, v7, [Ljava/lang/String;
    const/4 v8, 0
  .line 113
    invoke-static { p1 }, Lcom/geely/drivemem/ui/MonthlySummary;->startOfDay(Ljava/util/Calendar;)J
    move-result-wide v10
    invoke-static { v10, v11 }, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    move-result-object v9
    aput-object v9, v7, v8
    const/4 v8, 1
    invoke-static { v0 }, Lcom/geely/drivemem/ui/MonthlySummary;->startOfDay(Ljava/util/Calendar;)J
    move-result-wide v10
    invoke-static { v10, v11 }, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    move-result-object v0
    aput-object v0, v7, v8
  .line 111
    invoke-virtual { v5, v6, v7 }, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
  :L7
    move-result-object v5
  :L8
  .line 114
    invoke-interface { v5 }, Landroid/database/Cursor;->moveToFirst()Z
    move-result v0
    if-eqz v0, :L9
    const/4 v0, 0
    invoke-interface { v5, v0 }, Landroid/database/Cursor;->getInt(I)I
    move-result v0
    iput v0, v1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->fullCharges:I
  :L9
    invoke-interface { v5 }, Landroid/database/Cursor;->close()V
  .line 115
    iget-wide v6, v1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->km:D
    cmpl-double v0, v6, v12
    if-gtz v0, :L10
    iget v0, v1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->charges:I
    if-gtz v0, :L10
    iget-wide v6, v1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->cost:D
    cmpl-double v0, v6, v12
    if-lez v0, :L15
  :L10
    move v0, v4
  :L11
    iput-boolean v0, v1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->hasData:Z
    move-object v0, v1
  .line 116
    goto/16 :L2
  :L12
    move v0, v3
  .line 107
    goto :L5
  :L13
  .line 114
    move-exception v0
    invoke-interface { v5 }, Landroid/database/Cursor;->close()V
    throw v0
  :L14
  .line 117
    move-exception v0
    move-object v0, v2
  .line 118
    goto/16 :L2
  :L15
    move v0, v3
  .line 115
    goto :L11
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
  .registers 3
  .prologue
  .line 40
    const-string v0, "trends_prefs"
    const/4 v1, 0
    invoke-virtual { p0, v0, v1 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    return-object v0
.end method

.method private static row(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
  .registers 8
  .prologue
    const/4 v2, 0
  .line 136
    new-instance v0, Landroid/widget/TextView;
    invoke-direct { v0, p1 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 137
    invoke-virtual { v0, p2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 138
    sget v1, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 139
    const/high16 v1, 0x41880000
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 140
    const/16 v1, 12
    invoke-static { p1, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
    invoke-virtual { v0, v2, v1, v2, v2 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 141
    invoke-virtual { p0, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 142
    new-instance v0, Landroid/widget/TextView;
    invoke-direct { v0, p1 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 143
    invoke-virtual { v0, p3 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 144
    sget v1, Lcom/geely/drivemem/util/Style;->TEXT:I
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 145
    const/high16 v1, 0x41d00000
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 146
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  .line 147
    invoke-virtual { p0, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 148
    if-eqz p4, :L0
    invoke-virtual { p4 }, Ljava/lang/String;->length()I
    move-result v0
    if-lez v0, :L0
  .line 149
    new-instance v0, Landroid/widget/TextView;
    invoke-direct { v0, p1 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 150
    invoke-virtual { p4 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 151
    sget v1, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 152
    const/high16 v1, 0x41800000
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 153
    invoke-virtual { p0, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  :L0
  .line 155
    return-void
.end method

.method private static show(Landroid/app/Activity;Lcom/geely/drivemem/ui/MonthlySummary$Data;Ljava/lang/Runnable;)V
  .registers 15
  .prologue
  .line 158
    const/4 v0, 1
    sput-boolean v0, Lcom/geely/drivemem/ui/MonthlySummary;->showing:Z
  .line 159
    new-instance v2, Landroid/widget/LinearLayout;
    invoke-direct { v2, p0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 160
    const/4 v0, 1
    invoke-virtual { v2, v0 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 161
    sget v0, Lcom/geely/drivemem/util/Style;->CARD:I
    invoke-static { v0, p0 }, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v0
    invoke-virtual { v2, v0 }, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 162
    const/16 v0, 28
    invoke-static { p0, v0 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v0
  .line 163
    invoke-virtual { v2, v0, v0, v0, v0 }, Landroid/widget/LinearLayout;->setPadding(IIII)V
  .line 164
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;
    const/16 v1, 640
    invoke-static { p0, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
    const/4 v3, -2
    invoke-direct { v0, v1, v3 }, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
    invoke-virtual { v2, v0 }, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 165
    new-instance v0, Landroid/widget/TextView;
    invoke-direct { v0, p0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 166
    const-string v1, "Monthly summary"
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 167
    sget v1, Lcom/geely/drivemem/util/Style;->TEXT:I
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 168
    const/high16 v1, 0x41f00000
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 169
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  .line 170
    invoke-virtual { v2, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 171
    new-instance v0, Landroid/widget/TextView;
    invoke-direct { v0, p0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 172
    iget-object v1, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->name:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 173
    sget v1, Lcom/geely/drivemem/util/Style;->ACCENT:I
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 174
    const/high16 v1, 0x41a00000
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 175
    invoke-virtual { v2, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 177
    const-string v1, "Distance driven"
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    const-string v3, "%,.0f km"
    const/4 v4, 1
    new-array v4, v4, [Ljava/lang/Object;
    const/4 v5, 0
    iget-wide v6, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->km:D
    invoke-static { v6, v7 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v6
    aput-object v6, v4, v5
    invoke-static { v0, v3, v4 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v3
    iget-boolean v0, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->hasPrev:Z
    if-eqz v0, :L9
    iget-wide v4, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->km:D
    iget-wide v6, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->prevKm:D
    invoke-static { v4, v5, v6, v7 }, Lcom/geely/drivemem/ui/MonthlySummary;->change(DD)Ljava/lang/String;
    move-result-object v0
  :L0
    invoke-static { v2, p0, v1, v3, v0 }, Lcom/geely/drivemem/ui/MonthlySummary;->row(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
  .line 178
    const-string v1, "Electricity used (~)"
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    const-string v3, "%.0f kWh"
    const/4 v4, 1
    new-array v4, v4, [Ljava/lang/Object;
    const/4 v5, 0
    iget-wide v6, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->kwhUsed:D
    invoke-static { v6, v7 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v6
    aput-object v6, v4, v5
    invoke-static { v0, v3, v4 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v3
  .line 179
    iget-wide v4, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->km:D
    const-wide/high16 v6, 0x3ff0000000000000L
    cmpl-double v0, v4, v6
    if-ltz v0, :L10
    iget-wide v4, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->kwhUsed:D
    const-wide/16 v6, 0
    cmpl-double v0, v4, v6
    if-lez v0, :L10
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    const-string v4, "%.1f kWh/100 km, estimated from battery %%"
    const/4 v5, 1
    new-array v5, v5, [Ljava/lang/Object;
    const/4 v6, 0
    iget-wide v8, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->kwhUsed:D
    iget-wide v10, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->km:D
    div-double/2addr v8, v10
    const-wide/high16 v10, 0x4059000000000000L
    mul-double/2addr v8, v10
    invoke-static { v8, v9 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v7
    aput-object v7, v5, v6
    invoke-static { v0, v4, v5 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
  :L1
  .line 178
    invoke-static { v2, p0, v1, v3, v0 }, Lcom/geely/drivemem/ui/MonthlySummary;->row(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
  .line 180
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    iget-wide v4, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->cost:D
    const-wide/16 v6, 0
    cmpl-double v0, v4, v6
    if-lez v0, :L11
    iget-wide v4, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->km:D
    const-wide/high16 v6, 0x3ff0000000000000L
    cmpl-double v0, v4, v6
    if-ltz v0, :L11
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    const-string v3, "%,.0f \u0111/km"
    const/4 v4, 1
    new-array v4, v4, [Ljava/lang/Object;
    const/4 v5, 0
    iget-wide v6, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->cost:D
    iget-wide v8, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->km:D
    div-double/2addr v6, v8
    invoke-static { v6, v7 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v6
    aput-object v6, v4, v5
    invoke-static { v0, v3, v4 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
  :L2
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
  .line 181
    iget-boolean v0, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->hasPrev:Z
    if-eqz v0, :L12
    iget-wide v4, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->cost:D
    iget-wide v6, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->prevCost:D
    invoke-static { v4, v5, v6, v7 }, Lcom/geely/drivemem/ui/MonthlySummary;->change(DD)Ljava/lang/String;
    move-result-object v0
  :L3
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
  .line 182
    const-string v3, "Charging cost"
    iget-wide v4, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->cost:D
    const-wide/16 v6, 0
    cmpl-double v0, v4, v6
    if-lez v0, :L13
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    const-string v4, "%,.0f \u0111"
    const/4 v5, 1
    new-array v5, v5, [Ljava/lang/Object;
    const/4 v6, 0
    iget-wide v8, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->cost:D
    invoke-static { v8, v9 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v7
    aput-object v7, v5, v6
    invoke-static { v0, v4, v5 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
  :L4
  .line 183
    iget-wide v4, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->cost:D
    const-wide/16 v6, 0
    cmpl-double v4, v4, v6
    if-lez v4, :L14
  :L5
  .line 182
    invoke-static { v2, p0, v3, v0, v1 }, Lcom/geely/drivemem/ui/MonthlySummary;->row(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
  .line 184
    const-string v1, "Charging sessions"
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    const-string v3, "%d  \u00b7  %.0f kWh"
    const/4 v4, 2
    new-array v4, v4, [Ljava/lang/Object;
    const/4 v5, 0
    iget v6, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->charges:I
    invoke-static { v6 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    aput-object v6, v4, v5
    const/4 v5, 1
    iget-wide v6, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->kwhCharged:D
    invoke-static { v6, v7 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v6
    aput-object v6, v4, v5
    invoke-static { v0, v3, v4 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v3
  .line 185
    iget v0, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->fullCharges:I
    if-lez v0, :L16
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    iget v4, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->fullCharges:I
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v4
    iget v0, p1, Lcom/geely/drivemem/ui/MonthlySummary$Data;->fullCharges:I
    const/4 v5, 1
    if-ne v0, v5, :L15
    const-string v0, " full charge to 100%"
  :L6
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  :L7
  .line 184
    invoke-static { v2, p0, v1, v3, v0 }, Lcom/geely/drivemem/ui/MonthlySummary;->row(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
  .line 187
    new-instance v0, Landroid/widget/LinearLayout;
    invoke-direct { v0, p0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 188
    const v1, 8388629
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setGravity(I)V
  .line 189
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -1
    const/4 v4, -2
    invoke-direct { v1, v3, v4 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 190
    const/16 v3, 22
    invoke-static { p0, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
  .line 191
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 192
    new-instance v1, Landroid/app/AlertDialog$Builder;
    invoke-direct { v1, p0 }, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    invoke-virtual { v1, v2 }, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    move-result-object v1
  .line 193
    invoke-virtual { v1 }, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;
    move-result-object v3
    if-eqz v3, :L8
    invoke-virtual { v1 }, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;
    move-result-object v3
    const v4, 17170445
    invoke-virtual { v3, v4 }, Landroid/view/Window;->setBackgroundDrawableResource(I)V
  :L8
  .line 194
    new-instance v3, Lcom/geely/drivemem/ui/MonthlySummary$3;
    invoke-direct { v3, p2 }, Lcom/geely/drivemem/ui/MonthlySummary$3;-><init>(Ljava/lang/Runnable;)V
    invoke-virtual { v1, v3 }, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
  .line 200
    const-string v3, "Close"
    const/4 v4, 1
    new-instance v5, Lcom/geely/drivemem/ui/MonthlySummary$4;
    invoke-direct { v5, v1 }, Lcom/geely/drivemem/ui/MonthlySummary$4;-><init>(Landroid/app/AlertDialog;)V
    invoke-static { p0, v3, v4, v5 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v3
    invoke-virtual { v0, v3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 203
    invoke-virtual { v2, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 204
    invoke-virtual { v1 }, Landroid/app/AlertDialog;->show()V
  .line 205
    return-void
  :L9
  .line 177
    const-string v0, ""
    goto/16 :L0
  :L10
  .line 179
    const-string v0, ""
    goto/16 :L1
  :L11
  .line 180
    const-string v0, ""
    goto/16 :L2
  :L12
  .line 181
    const-string v0, ""
    goto/16 :L3
  :L13
  .line 182
    const-string v0, "\u2014"
    goto/16 :L4
  :L14
  .line 183
    const-string v1, "Enter DC prices in Charging history to complete this"
    goto/16 :L5
  :L15
  .line 185
    const-string v0, " full charges to 100%"
    goto :L6
  :L16
    const-string v0, "No charge to 100% this month"
    goto :L7
.end method

.method public static showLastMonth(Landroid/app/Activity;)V
  .registers 4
  .prologue
  .line 72
    sget-boolean v0, Lcom/geely/drivemem/ui/MonthlySummary;->showing:Z
    if-eqz v0, :L1
  :L0
  .line 88
    return-void
  :L1
  .line 73
    invoke-static { }, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
    move-result-object v0
  .line 74
    const/4 v1, 5
    const/4 v2, 1
    invoke-virtual { v0, v1, v2 }, Ljava/util/Calendar;->set(II)V
  .line 75
    const/4 v1, 2
    const/4 v2, -1
    invoke-virtual { v0, v1, v2 }, Ljava/util/Calendar;->add(II)V
  .line 76
    new-instance v1, Ljava/lang/Thread;
    new-instance v2, Lcom/geely/drivemem/ui/MonthlySummary$2;
    invoke-direct { v2, p0, v0 }, Lcom/geely/drivemem/ui/MonthlySummary$2;-><init>(Landroid/app/Activity;Ljava/util/Calendar;)V
    const-string v0, "month-summary"
    invoke-direct { v1, v2, v0 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 87
    invoke-virtual { v1 }, Ljava/lang/Thread;->start()V
    goto :L0
.end method

.method private static startOfDay(Ljava/util/Calendar;)J
  .registers 4
  .prologue
    const/4 v2, 0
  .line 123
    invoke-virtual { p0 }, Ljava/util/Calendar;->clone()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/Calendar;
  .line 124
    const/16 v1, 11
    invoke-virtual { v0, v1, v2 }, Ljava/util/Calendar;->set(II)V
    const/16 v1, 12
    invoke-virtual { v0, v1, v2 }, Ljava/util/Calendar;->set(II)V
    const/16 v1, 13
    invoke-virtual { v0, v1, v2 }, Ljava/util/Calendar;->set(II)V
    const/16 v1, 14
    invoke-virtual { v0, v1, v2 }, Ljava/util/Calendar;->set(II)V
  .line 125
    invoke-virtual { v0 }, Ljava/util/Calendar;->getTimeInMillis()J
    move-result-wide v0
    return-wide v0
.end method
