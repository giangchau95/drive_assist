.class public final Lcom/geely/drivemem/util/AutoCost;
.super Ljava/lang/Object;
.source "AutoCost.java"

.field private final static DAY_SQL:Ljava/lang/String; = "UPDATE daily_stat SET charge_kwh = (SELECT COALESCE(SUM(kwh), 0) FROM charge_session WHERE date(start_ms/1000,'unixepoch','localtime') = daily_stat.date), charge_cost = (SELECT COALESCE(SUM(cost), 0) FROM charge_session WHERE date(start_ms/1000,'unixepoch','localtime') = daily_stat.date) WHERE date = (SELECT date(start_ms/1000,'unixepoch','localtime') FROM charge_session WHERE id = ?)"

.field public final static DEFAULT_AC_PRICE:J = 5500L

.field private final static P:Ljava/lang/String; = "pricing_prefs"

.method private constructor <init>()V
  .registers 1
  .prologue
  .line 16
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static acPrice(Landroid/content/Context;)J
  .registers 5
  .prologue
  .line 29
    invoke-static { p0 }, Lcom/geely/drivemem/util/AutoCost;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v0
    const-string v1, "ac_price"
    const-wide/16 v2, 5500
    invoke-interface { v0, v1, v2, v3 }, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    move-result-wide v0
    return-wide v0
.end method

.method public static lastDcPrice(Landroid/content/Context;)J
  .registers 5
  .prologue
  .line 33
    invoke-static { p0 }, Lcom/geely/drivemem/util/AutoCost;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v0
    const-string v1, "dc_last_price"
    const-wide/16 v2, 0
    invoke-interface { v0, v1, v2, v3 }, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    move-result-wide v0
    return-wide v0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
  .registers 3
  .prologue
  .line 27
    const-string v0, "pricing_prefs"
    const/4 v1, 0
    invoke-virtual { p0, v0, v1 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    return-object v0
.end method

.method public static run(Landroid/content/Context;Z)I
  .catch Ljava/lang/Throwable; { :L1 .. :L4 } :L9
  .catchall { :L5 .. :L6 } :L7
  .catch Ljava/lang/Throwable; { :L8 .. :L9 } :L9
  .catch Ljava/lang/Throwable; { :L11 .. :L14 } :L9
  .catchall { :L14 .. :L16 } :L17
  .catch Ljava/lang/Throwable; { :L18 .. :L19 } :L9
  .catchall { :L19 .. :L20 } :L17
  .catch Ljava/lang/Throwable; { :L20 .. :L21 } :L9
  .registers 16
  .prologue
    const/4 v1, 0
  .line 42
    invoke-static { p0 }, Lcom/geely/drivemem/util/AutoCost;->acPrice(Landroid/content/Context;)J
    move-result-wide v4
  .line 43
    const-wide/16 v2, 0
    cmp-long v0, v4, v2
    if-gtz v0, :L1
    move v0, v1
  :L0
  .line 70
    return v0
  :L1
  .line 45
    invoke-static { p0 }, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;
    move-result-object v6
  .line 46
    invoke-static { }, Lcom/geely/drivemem/state/ChargeSession;->isSessionActive()Z
    move-result v0
    if-eqz v0, :L10
    invoke-static { }, Lcom/geely/drivemem/state/ChargeSession;->activeRowId()J
    move-result-wide v2
  :L2
  .line 47
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "kwh > 0 AND end_ms > 0 AND dismissed = 0 AND max_charge_v IS NOT NULL AND max_charge_v < 250"
    invoke-virtual { v0, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v7
  .line 48
    if-eqz p1, :L11
    const-string v0, ""
  :L3
    invoke-virtual { v7, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 49
    new-instance v7, Ljava/util/ArrayList;
    invoke-direct { v7 }, Ljava/util/ArrayList;-><init>()V
  .line 50
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct { v8 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "SELECT id, kwh FROM charge_session WHERE "
    invoke-virtual { v8, v9 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v8
    invoke-virtual { v8, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const/4 v8, 0
    invoke-virtual { v6, v0, v8 }, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
  :L4
    move-result-object v8
  :L5
  .line 52
    invoke-interface { v8 }, Landroid/database/Cursor;->moveToNext()Z
    move-result v0
    if-eqz v0, :L12
  .line 53
    const/4 v0, 0
    invoke-interface { v8, v0 }, Landroid/database/Cursor;->getLong(I)J
    move-result-wide v10
  .line 54
    cmp-long v0, v10, v2
    if-eqz v0, :L5
  .line 55
    const/4 v0, 2
    new-array v0, v0, [J
    const/4 v9, 0
    aput-wide v10, v0, v9
    const/4 v9, 1
    const/4 v10, 1
    invoke-interface { v8, v10 }, Landroid/database/Cursor;->getDouble(I)D
    move-result-wide v10
    long-to-double v12, v4
    mul-double/2addr v10, v12
    invoke-static { v10, v11 }, Ljava/lang/Math;->round(D)J
    move-result-wide v10
    aput-wide v10, v0, v9
    invoke-interface { v7, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L6
    goto :L5
  :L7
  .line 57
    move-exception v0
  :L8
    invoke-interface { v8 }, Landroid/database/Cursor;->close()V
    throw v0
  :L9
  .line 68
    move-exception v0
  .line 69
    const-string v2, "DriveAssist"
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "autocost: "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v2, v0 }, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    move v0, v1
  .line 70
    goto/16 :L0
  :L10
  .line 46
    const-wide/16 v2, -1
    goto :L2
  :L11
  .line 48
    const-string v0, " AND (cost IS NULL OR cost = 0)"
    goto :L3
  :L12
  .line 57
    invoke-interface { v8 }, Landroid/database/Cursor;->close()V
  .line 58
    invoke-interface { v7 }, Ljava/util/List;->isEmpty()Z
    move-result v0
    if-eqz v0, :L13
    move v0, v1
    goto/16 :L0
  :L13
  .line 59
    invoke-virtual { v6 }, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
  :L14
  .line 61
    invoke-interface { v7 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v2
  :L15
    invoke-interface { v2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L19
    invoke-interface { v2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [J
  .line 62
    const-string v3, "UPDATE charge_session SET cost = ? WHERE id = ?"
    const/4 v4, 2
    new-array v4, v4, [Ljava/lang/Object;
    const/4 v5, 0
    const/4 v8, 1
    aget-wide v8, v0, v8
    long-to-double v8, v8
    invoke-static { v8, v9 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v8
    aput-object v8, v4, v5
    const/4 v5, 1
    const/4 v8, 0
    aget-wide v8, v0, v8
    invoke-static { v8, v9 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v8
    aput-object v8, v4, v5
    invoke-virtual { v6, v3, v4 }, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
  .line 63
    const-string v3, "UPDATE daily_stat SET charge_kwh = (SELECT COALESCE(SUM(kwh), 0) FROM charge_session WHERE date(start_ms/1000,'unixepoch','localtime') = daily_stat.date), charge_cost = (SELECT COALESCE(SUM(cost), 0) FROM charge_session WHERE date(start_ms/1000,'unixepoch','localtime') = daily_stat.date) WHERE date = (SELECT date(start_ms/1000,'unixepoch','localtime') FROM charge_session WHERE id = ?)"
    const/4 v4, 1
    new-array v4, v4, [Ljava/lang/Object;
    const/4 v5, 0
    const/4 v8, 0
    aget-wide v8, v0, v8
    invoke-static { v8, v9 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v0
    aput-object v0, v4, v5
    invoke-virtual { v6, v3, v4 }, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
  :L16
    goto :L15
  :L17
  .line 66
    move-exception v0
  :L18
    invoke-virtual { v6 }, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    throw v0
  :L19
  .line 65
    invoke-virtual { v6 }, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
  :L20
  .line 66
    invoke-virtual { v6 }, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
  .line 67
    invoke-interface { v7 }, Ljava/util/List;->size()I
  :L21
    move-result v0
    goto/16 :L0
.end method

.method public static setAcPrice(Landroid/content/Context;J)V
  .registers 8
  .prologue
  .line 30
    invoke-static { p0 }, Lcom/geely/drivemem/util/AutoCost;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v0
    invoke-interface { v0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "ac_price"
    const-wide/16 v2, 0
    invoke-static { v2, v3, p1, p2 }, Ljava/lang/Math;->max(JJ)J
    move-result-wide v2
    invoke-interface { v0, v1, v2, v3 }, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface { v0 }, Landroid/content/SharedPreferences$Editor;->apply()V
    return-void
.end method

.method public static setLastDcPrice(Landroid/content/Context;J)V
  .registers 8
  .prologue
  .line 34
    invoke-static { p0 }, Lcom/geely/drivemem/util/AutoCost;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v0
    invoke-interface { v0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "dc_last_price"
    const-wide/16 v2, 0
    invoke-static { v2, v3, p1, p2 }, Ljava/lang/Math;->max(JJ)J
    move-result-wide v2
    invoke-interface { v0, v1, v2, v3 }, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface { v0 }, Landroid/content/SharedPreferences$Editor;->apply()V
    return-void
.end method
