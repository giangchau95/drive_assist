.class public final Lcom/geely/drivemem/state/ValetSession;
.super Ljava/lang/Object;
.source "ValetSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/drivemem/state/ValetSession$Snapshot;
    }
.end annotation


# static fields
.field private static final ACTIVE:Ljava/lang/String; = "valet_active"

.field private static final LAST_ODO:Ljava/lang/String; = "valet_last_odo"

.field private static final LAST_SOC:Ljava/lang/String; = "valet_last_soc"

.field private static final MAX_POWER:Ljava/lang/String; = "valet_max_power"

.field private static final MAX_SPEED:Ljava/lang/String; = "valet_max_speed"

.field private static final PREFS:Ljava/lang/String; = "drivemem"

.field private static final ROW_ID:Ljava/lang/String; = "valet_row_id"

.field private static final START:Ljava/lang/String; = "valet_start_ms"

.field private static final START_ODO:Ljava/lang/String; = "valet_start_odo"

.field private static final START_SOC:Ljava/lang/String; = "valet_start_soc"

.field private static final VALET_MARKER:Ljava/lang/String; = "dashcam/valet.active"

.field private static volatile subscribed:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cached(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Number;
    .locals 1

    .line 163
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/geely/drivemem/car/CarActor;->get(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0

    .line 164
    iget-object p1, p0, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v0, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    invoke-static {p0}, Lcom/geely/drivemem/state/ValetSession;->number(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static declared-synchronized ensureSubscribed(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/geely/drivemem/state/ValetSession;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-boolean v1, Lcom/geely/drivemem/state/ValetSession;->subscribed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 44
    :try_start_1
    sput-boolean v1, Lcom/geely/drivemem/state/ValetSession;->subscribed:Z

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 46
    const-string v1, "telemetry.tick"

    new-instance v2, Lcom/geely/drivemem/state/ValetSession$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/geely/drivemem/state/ValetSession$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/geely/drivemem/car/EntityBus;->subscribe(Ljava/lang/String;Lcom/geely/drivemem/car/EntityBus$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static isActive(Landroid/content/Context;)Z
    .locals 2

    .line 149
    invoke-static {p0}, Lcom/geely/drivemem/state/ValetSession;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "valet_active"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$ensureSubscribed$0(Landroid/content/Context;Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V
    .locals 1

    .line 47
    iget-object p1, p2, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v0, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Lcom/geely/drivemem/state/ValetSession;->isActive(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, p2, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    .line 49
    invoke-static {p0, p1}, Lcom/geely/drivemem/state/ValetSession;->update(Landroid/content/Context;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static number(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 1

    .line 166
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 161
    const-string v0, "drivemem"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static setDashcamMarker(Landroid/content/Context;ZJ)V
    .locals 2

    const/4 v0, 0x0

    .line 169
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 171
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "dashcam"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 173
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "dashcam/valet.active"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 175
    new-instance p0, Ljava/io/FileWriter;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 176
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V

    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method

.method public static snapshot(Landroid/content/Context;)Lcom/geely/drivemem/state/ValetSession$Snapshot;
    .locals 14

    .line 152
    invoke-static {p0}, Lcom/geely/drivemem/state/ValetSession;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 153
    const-string v0, "valet_start_odo"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "valet_last_odo"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sub-float/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v7, v0

    .line 155
    new-instance v0, Lcom/geely/drivemem/state/ValetSession$Snapshot;

    const-string v1, "valet_active"

    const/4 v3, 0x0

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v1, "valet_start_ms"

    const-wide/16 v5, 0x0

    invoke-interface {p0, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v1, "valet_max_speed"

    .line 156
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-double v9, v1

    const-string v1, "valet_max_power"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_1

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object v11, v1

    goto :goto_1

    :cond_1
    move-object v11, v12

    .line 157
    :goto_1
    const-string v1, "valet_start_soc"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v12

    .line 158
    :goto_2
    const-string v2, "valet_last_soc"

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    move-object v13, p0

    goto :goto_3

    :cond_3
    move-object v13, v12

    :goto_3
    move-object v3, v0

    move-object v12, v1

    invoke-direct/range {v3 .. v13}, Lcom/geely/drivemem/state/ValetSession$Snapshot;-><init>(ZJDDLjava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static declared-synchronized start(Landroid/content/Context;)Z
    .locals 10

    const-class v0, Lcom/geely/drivemem/state/ValetSession;

    monitor-enter v0

    .line 54
    :try_start_0
    invoke-static {}, Lcom/geely/drivemem/state/CarState;->isParked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-static {p0}, Lcom/geely/drivemem/state/ValetSession;->isActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 58
    :cond_0
    invoke-static {}, Lcom/geely/drivemem/state/TripSession;->isTripActive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/geely/drivemem/state/TripSession;->finalizeTrip(Landroid/content/Context;)Z

    .line 59
    :cond_1
    const-string v1, "telemetry.odometer"

    invoke-static {p0, v1}, Lcom/geely/drivemem/state/ValetSession;->cached(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    .line 60
    const-string v3, "telemetry.battery"

    invoke-static {p0, v3}, Lcom/geely/drivemem/state/ValetSession;->cached(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v3

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 62
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 63
    const-string v7, "start_ms"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v1, :cond_2

    .line 64
    const-string v7, "start_odo_km"

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_2
    if-eqz v3, :cond_3

    .line 65
    const-string v7, "start_soc"

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    :cond_3
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object v7

    invoke-virtual {v7}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const-string v8, "valet_session"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_4

    .line 67
    monitor-exit v0

    return v2

    .line 68
    :cond_4
    :try_start_1
    invoke-static {p0}, Lcom/geely/drivemem/state/ValetSession;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v8, "valet_active"

    const/4 v9, 0x1

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v8, "valet_row_id"

    .line 69
    invoke-interface {v2, v8, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v8, "valet_start_ms"

    .line 70
    invoke-interface {v2, v8, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "valet_max_speed"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "valet_max_power"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v1, :cond_5

    .line 71
    const-string v4, "valet_start_odo"

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "valet_last_odo"

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 72
    :cond_5
    const-string v1, "valet_start_odo"

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "valet_last_odo"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    if-eqz v3, :cond_6

    .line 73
    const-string v1, "valet_start_soc"

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "valet_last_soc"

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 74
    :cond_6
    const-string v1, "valet_start_soc"

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "valet_last_soc"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    invoke-static {p0, v9, v6, v7}, Lcom/geely/drivemem/state/ValetSession;->setDashcamMarker(Landroid/content/Context;ZJ)V

    .line 77
    const-string p0, "valet.changed"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/geely/drivemem/car/EntityBus;->publish(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    monitor-exit v0

    return v9

    .line 54
    :cond_7
    :goto_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static declared-synchronized stop(Landroid/content/Context;)Z
    .locals 15

    const-class v0, Lcom/geely/drivemem/state/ValetSession;

    monitor-enter v0

    .line 82
    :try_start_0
    invoke-static {p0}, Lcom/geely/drivemem/state/ValetSession;->snapshot(Landroid/content/Context;)Lcom/geely/drivemem/state/ValetSession$Snapshot;

    move-result-object v1

    .line 83
    iget-boolean v2, v1, Lcom/geely/drivemem/state/ValetSession$Snapshot;->active:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0

    return v3

    .line 84
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 97
    invoke-static {}, Lcom/geely/drivemem/state/TripSession;->isTripActive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, v4, v5}, Lcom/geely/drivemem/state/TripSession;->splitTrip(Landroid/content/Context;J)Z

    .line 98
    :cond_1
    invoke-static {p0}, Lcom/geely/drivemem/state/ValetSession;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 99
    const-string v6, "valet_start_odo"

    invoke-interface {v2, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    const-string v6, "valet_start_odo"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 100
    :cond_2
    const-string v6, "valet_last_odo"

    invoke-interface {v2, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "valet_last_odo"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    float-to-double v8, v6

    goto :goto_0

    :cond_3
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    .line 101
    :goto_0
    const-string v6, "valet_start_soc"

    invoke-interface {v2, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    const/4 v10, -0x1

    if-eqz v6, :cond_4

    const-string v6, "valet_start_soc"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    goto :goto_1

    :cond_4
    move v6, v10

    .line 102
    :goto_1
    const-string v11, "valet_last_soc"

    invoke-interface {v2, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v10, "valet_last_soc"

    invoke-interface {v2, v10, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 103
    :cond_5
    const-string v11, "valet_max_power"

    invoke-interface {v2, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v11

    .line 104
    const-string v12, "valet_max_power"

    invoke-interface {v2, v12, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    float-to-double v12, v7

    .line 105
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 106
    const-string v14, "end_ms"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v4, 0x0

    cmpl-double v4, v8, v4

    if-ltz v4, :cond_6

    .line 107
    const-string v4, "end_odo_km"

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_6
    if-ltz v6, :cond_7

    .line 108
    const-string v4, "start_soc"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    if-ltz v10, :cond_8

    .line 109
    const-string v4, "end_soc"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    :cond_8
    const-string v4, "max_speed_kmh"

    iget-wide v5, v1, Lcom/geely/drivemem/state/ValetSession$Snapshot;->maxSpeedKmh:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v7, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    if-eqz v11, :cond_9

    .line 111
    const-string v1, "max_power_kw"

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v7, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 112
    :cond_9
    const-string v1, "valet_row_id"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-lez v1, :cond_b

    .line 113
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v6, "valet_session"

    const-string v8, "id = ?"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/String;

    .line 114
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    .line 113
    invoke-virtual {v1, v6, v7, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eq v1, v9, :cond_a

    goto :goto_2

    .line 115
    :cond_a
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "valet_active"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "valet_row_id"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    invoke-static {p0, v3, v4, v5}, Lcom/geely/drivemem/state/ValetSession;->setDashcamMarker(Landroid/content/Context;ZJ)V

    .line 117
    const-string p0, "valet.changed"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/geely/drivemem/car/EntityBus;->publish(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    monitor-exit v0

    return v9

    .line 114
    :cond_b
    :goto_2
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static declared-synchronized update(Landroid/content/Context;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/geely/drivemem/state/ValetSession;

    monitor-enter v0

    .line 122
    :try_start_0
    invoke-static {p0}, Lcom/geely/drivemem/state/ValetSession;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 123
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 124
    const-string v3, "odometer"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/geely/drivemem/state/ValetSession;->number(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v3

    .line 125
    const-string v4, "battery"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/geely/drivemem/state/ValetSession;->number(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v4

    .line 126
    const-string v5, "speed"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/geely/drivemem/state/ValetSession;->number(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v5

    .line 127
    const-string v6, "instant_power_kw_est"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/drivemem/state/ValetSession;->number(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p1

    if-eqz v3, :cond_0

    .line 128
    const-string v6, "valet_last_odo"

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    :cond_0
    if-eqz v4, :cond_1

    .line 129
    const-string v6, "valet_last_soc"

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_1
    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 130
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v7

    const-string v8, "valet_max_speed"

    invoke-interface {v1, v8, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    const-string v7, "valet_max_speed"

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v8

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    :cond_2
    if-eqz p1, :cond_4

    .line 131
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v7

    cmpl-float v7, v7, v6

    if-lez v7, :cond_4

    .line 132
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v7

    .line 133
    const-string v8, "valet_max_power"

    invoke-interface {v1, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "valet_max_power"

    invoke-interface {v1, v8, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    cmpl-float v8, v7, v8

    if-lez v8, :cond_4

    :cond_3
    const-string v8, "valet_max_power"

    invoke-interface {v2, v8, v7}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 135
    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    const-string v2, "valet_row_id"

    const-wide/16 v7, -0x1

    invoke-interface {v1, v2, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-lez v2, :cond_b

    .line 138
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    if-eqz v3, :cond_5

    .line 139
    const-string v9, "end_odo_km"

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_5
    if-eqz v4, :cond_6

    .line 140
    const-string v3, "end_soc"

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    :cond_6
    const-string v3, "max_speed_kmh"

    const-string v4, "valet_max_speed"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    if-nez v5, :cond_7

    move v5, v6

    goto :goto_0

    :cond_7
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 142
    const-string v3, "valet_max_power"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_a

    .line 143
    :cond_8
    const-string v3, "max_power_kw"

    const-string v4, "valet_max_power"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v6

    :goto_1
    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 144
    :cond_a
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v1, "valet_session"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 146
    :cond_b
    const-string p1, "valet.progress"

    invoke-static {p0}, Lcom/geely/drivemem/state/ValetSession;->snapshot(Landroid/content/Context;)Lcom/geely/drivemem/state/ValetSession$Snapshot;

    move-result-object p0

    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/geely/drivemem/car/EntityBus;->publish(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
