.class public final Lcom/geely/drivemem/util/FullCharge;
.super Ljava/lang/Object;
.source "FullCharge.java"

.field public final static DAY_MS:J = 86400000L

.field private final static PREFS:Ljava/lang/String; = "trends_prefs"

.method private constructor <init>()V
  .registers 1
  .prologue
  .line 20
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static baseMs(Landroid/content/Context;J)J
  .registers 8
  .prologue
  .line 84
    const-wide/16 v0, 0
    cmp-long v0, p1, v0
    if-lez v0, :L1
  :L0
  .line 86
    return-wide p1
  :L1
  .line 85
    invoke-static { p0 }, Lcom/geely/drivemem/util/FullCharge;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v0
    const-string v1, "first_seen"
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    invoke-interface { v0, v1, v2, v3 }, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    move-result-wide p1
    goto :L0
.end method

.method public static dateText(J)Ljava/lang/String;
  .registers 6
  .prologue
  .line 96
    new-instance v0, Ljava/text/SimpleDateFormat;
    const-string v1, "d MMM yyyy"
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-direct { v0, v1, v2 }, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    new-instance v1, Ljava/util/Date;
    invoke-direct { v1, p0, p1 }, Ljava/util/Date;-><init>(J)V
    invoke-virtual { v0, v1 }, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public static daysSince(J)I
  .registers 8
  .prologue
  .line 89
    const-wide/16 v0, 0
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    sub-long/2addr v2, p0
    const-wide/32 v4, 86400000
    div-long/2addr v2, v4
    invoke-static { v0, v1, v2, v3 }, Ljava/lang/Math;->max(JJ)J
    move-result-wide v0
    long-to-int v0, v0
    return v0
.end method

.method public static intervalDays(Landroid/content/Context;)I
  .registers 4
  .prologue
  .line 33
    invoke-static { p0 }, Lcom/geely/drivemem/util/FullCharge;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v0
    const-string v1, "interval_days"
    const/16 v2, 30
    invoke-interface { v0, v1, v2 }, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    move-result v0
    return v0
.end method

.method public static isDue(Landroid/content/Context;J)Z
  .registers 6
  .prologue
  .line 92
    invoke-static { p0, p1, p2 }, Lcom/geely/drivemem/util/FullCharge;->baseMs(Landroid/content/Context;J)J
    move-result-wide v0
    invoke-static { v0, v1 }, Lcom/geely/drivemem/util/FullCharge;->daysSince(J)I
    move-result v0
    invoke-static { p0 }, Lcom/geely/drivemem/util/FullCharge;->intervalDays(Landroid/content/Context;)I
    move-result v1
    if-lt v0, v1, :L1
    const/4 v0, 1
  :L0
    return v0
  :L1
    const/4 v0, 0
    goto :L0
.end method

.method public static lastFullMs(Landroid/content/Context;)J
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L7
  .catch Ljava/lang/Throwable; { :L2 .. :L3 } :L8
  .catch Ljava/lang/Throwable; { :L4 .. :L5 } :L7
  .registers 9
  .prologue
  .line 44
    invoke-static { p0 }, Lcom/geely/drivemem/util/FullCharge;->manualMs(Landroid/content/Context;)J
    move-result-wide v0
  :L0
  .line 46
    invoke-static { p0 }, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;
    move-result-object v2
    invoke-virtual { v2 }, Lcom/geely/drivemem/car/CarDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    move-result-object v2
  .line 47
    const-string v3, "SELECT MAX(end_ms) FROM charge_session WHERE soc_end >= 100"
    const/4 v4, 0
    invoke-static { v2, v3, v4 }, Lcom/geely/drivemem/util/FullCharge;->queryLong(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    move-result-wide v4
    invoke-static { v0, v1, v4, v5 }, Ljava/lang/Math;->max(JJ)J
    move-result-wide v0
  .line 48
    const-string v3, "SELECT MAX(date) FROM daily_stat WHERE max_battery_pct >= 100"
    invoke-static { v2, v3 }, Lcom/geely/drivemem/util/FullCharge;->queryString(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
  :L1
    move-result-object v3
  .line 49
    if-eqz v3, :L4
  :L2
  .line 51
    new-instance v4, Ljava/text/SimpleDateFormat;
    const-string v5, "yyyy-MM-dd"
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-direct { v4, v5, v6 }, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    invoke-virtual { v4, v3 }, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    move-result-object v3
  .line 52
    invoke-virtual { v3 }, Ljava/util/Date;->getTime()J
    move-result-wide v4
    const-wide/32 v6, 43200000
    add-long/2addr v4, v6
    invoke-static { v0, v1, v4, v5 }, Ljava/lang/Math;->max(JJ)J
  :L3
    move-result-wide v0
  :L4
  .line 55
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v4
    const-wide/32 v6, 259200000
    sub-long/2addr v4, v6
  .line 56
    const-string v3, "SELECT MAX(ts_ms) FROM telemetry_sample WHERE ts_ms > ? AND battery_pct >= 100"
    const/4 v6, 1
    new-array v6, v6, [Ljava/lang/String;
    const/4 v7, 0
  .line 57
    invoke-static { v4, v5 }, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    move-result-object v4
    aput-object v4, v6, v7
  .line 56
    invoke-static { v2, v3, v6 }, Lcom/geely/drivemem/util/FullCharge;->queryLong(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    move-result-wide v2
    invoke-static { v0, v1, v2, v3 }, Ljava/lang/Math;->max(JJ)J
  :L5
    move-result-wide v0
  :L6
  .line 59
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    invoke-static { v0, v1, v2, v3 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v0
    return-wide v0
  :L7
  .line 58
    move-exception v2
    goto :L6
  :L8
  .line 53
    move-exception v3
    goto :L4
.end method

.method public static manualMs(Landroid/content/Context;)J
  .registers 5
  .prologue
  .line 36
    invoke-static { p0 }, Lcom/geely/drivemem/util/FullCharge;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v0
    const-string v1, "manual_full_ms"
    const-wide/16 v2, 0
    invoke-interface { v0, v1, v2, v3 }, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    move-result-wide v0
    return-wide v0
.end method

.method private static p(Landroid/content/Context;)Landroid/content/SharedPreferences;
  .registers 3
  .prologue
  .line 25
    const-string v0, "trends_prefs"
    const/4 v1, 0
    invoke-virtual { p0, v0, v1 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    return-object v0
.end method

.method private static queryLong(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L7
  .catchall { :L0 .. :L1 } :L9
  .catch Ljava/lang/Throwable; { :L2 .. :L3 } :L13
  .catchall { :L2 .. :L3 } :L12
  .registers 6
  .prologue
  .line 63
    const/4 v0, 0
  :L0
  .line 65
    invoke-virtual { p0, p1, p2 }, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
  :L1
    move-result-object v2
  :L2
  .line 66
    invoke-interface { v2 }, Landroid/database/Cursor;->moveToFirst()Z
    move-result v0
    if-eqz v0, :L5
    const/4 v0, 0
    invoke-interface { v2, v0 }, Landroid/database/Cursor;->isNull(I)Z
    move-result v0
    if-nez v0, :L5
    const/4 v0, 0
    invoke-interface { v2, v0 }, Landroid/database/Cursor;->getLong(I)J
  :L3
    move-result-wide v0
  .line 68
    if-eqz v2, :L4
    invoke-interface { v2 }, Landroid/database/Cursor;->close()V
  :L4
  .line 69
    return-wide v0
  :L5
  .line 68
    if-eqz v2, :L6
    invoke-interface { v2 }, Landroid/database/Cursor;->close()V
  :L6
  .line 69
    const-wide/16 v0, 0
    goto :L4
  :L7
  .line 67
    move-exception v1
  :L8
  .line 68
    if-eqz v0, :L6
    invoke-interface { v0 }, Landroid/database/Cursor;->close()V
    goto :L6
  :L9
    move-exception v1
    move-object v2, v0
  :L10
    if-eqz v2, :L11
    invoke-interface { v2 }, Landroid/database/Cursor;->close()V
  :L11
    throw v1
  :L12
    move-exception v0
    move-object v1, v0
    goto :L10
  :L13
  .line 67
    move-exception v0
    move-object v0, v2
    goto :L8
.end method

.method private static queryString(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L6
  .catchall { :L0 .. :L1 } :L8
  .catch Ljava/lang/Throwable; { :L2 .. :L3 } :L12
  .catchall { :L2 .. :L3 } :L11
  .registers 6
  .prologue
    const/4 v0, 0
  .line 73
  .line 75
    const/4 v1, 0
  :L0
    invoke-virtual { p0, p1, v1 }, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
  :L1
    move-result-object v1
  :L2
  .line 76
    invoke-interface { v1 }, Landroid/database/Cursor;->moveToFirst()Z
    move-result v2
    if-eqz v2, :L5
    const/4 v2, 0
    invoke-interface { v1, v2 }, Landroid/database/Cursor;->isNull(I)Z
    move-result v2
    if-nez v2, :L5
    const/4 v2, 0
    invoke-interface { v1, v2 }, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
  :L3
    move-result-object v0
  .line 78
    if-eqz v1, :L4
    invoke-interface { v1 }, Landroid/database/Cursor;->close()V
  :L4
  .line 79
    return-object v0
  :L5
  .line 78
    if-eqz v1, :L4
    invoke-interface { v1 }, Landroid/database/Cursor;->close()V
    goto :L4
  :L6
  .line 77
    move-exception v1
    move-object v1, v0
  :L7
  .line 78
    if-eqz v1, :L4
    invoke-interface { v1 }, Landroid/database/Cursor;->close()V
    goto :L4
  :L8
    move-exception v1
    move-object v2, v1
    move-object v3, v0
  :L9
    if-eqz v3, :L10
    invoke-interface { v3 }, Landroid/database/Cursor;->close()V
  :L10
    throw v2
  :L11
    move-exception v0
    move-object v2, v0
    move-object v3, v1
    goto :L9
  :L12
  .line 77
    move-exception v2
    goto :L7
.end method

.method public static setIntervalDays(Landroid/content/Context;I)V
  .registers 4
  .prologue
  .line 34
    invoke-static { p0 }, Lcom/geely/drivemem/util/FullCharge;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v0
    invoke-interface { v0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "interval_days"
    invoke-interface { v0, v1, p1 }, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface { v0 }, Landroid/content/SharedPreferences$Editor;->apply()V
    return-void
.end method

.method public static setManualMs(Landroid/content/Context;J)V
  .registers 6
  .prologue
  .line 37
    invoke-static { p0 }, Lcom/geely/drivemem/util/FullCharge;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v0
    invoke-interface { v0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "manual_full_ms"
    invoke-interface { v0, v1, p1, p2 }, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface { v0 }, Landroid/content/SharedPreferences$Editor;->apply()V
    return-void
.end method

.method public static snooze(Landroid/content/Context;J)V
  .registers 8
  .prologue
  .line 40
    invoke-static { p0 }, Lcom/geely/drivemem/util/FullCharge;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v0
    invoke-interface { v0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "snooze_until"
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    add-long/2addr v2, p1
    invoke-interface { v0, v1, v2, v3 }, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface { v0 }, Landroid/content/SharedPreferences$Editor;->apply()V
    return-void
.end method

.method public static snoozeUntil(Landroid/content/Context;)J
  .registers 5
  .prologue
  .line 39
    invoke-static { p0 }, Lcom/geely/drivemem/util/FullCharge;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v0
    const-string v1, "snooze_until"
    const-wide/16 v2, 0
    invoke-interface { v0, v1, v2, v3 }, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    move-result-wide v0
    return-wide v0
.end method

.method public static touch(Landroid/content/Context;)V
  .registers 5
  .prologue
  .line 29
    invoke-static { p0 }, Lcom/geely/drivemem/util/FullCharge;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v0
  .line 30
    const-string v1, "first_seen"
    invoke-interface { v0, v1 }, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L0
    invoke-interface { v0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "first_seen"
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    invoke-interface { v0, v1, v2, v3 }, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface { v0 }, Landroid/content/SharedPreferences$Editor;->apply()V
  :L0
  .line 31
    return-void
.end method
