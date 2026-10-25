.class public final Lcom/geely/drivemem/state/ParkingState;
.super Ljava/lang/Object;
.source "ParkingState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/drivemem/state/ParkingState$Snapshot;
    }
.end annotation


# static fields
.field private static final PREFS:Ljava/lang/String; = "drivemem"

.field private static final SOC:Ljava/lang/String; = "parking_start_soc"

.field private static final START:Ljava/lang/String; = "parking_start_ms"

.field private static final TEMP:Ljava/lang/String; = "parking_start_temp"

.field private static volatile subscribed:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clear(Landroid/content/Context;)V
    .locals 2

    .line 68
    const-string v0, "drivemem"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "parking_start_ms"

    .line 69
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "parking_start_soc"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "parking_start_temp"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0

    const-string v0, "parking.changed"

    invoke-static {v0, p0}, Lcom/geely/drivemem/car/EntityBus;->publish(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V

    return-void
.end method

.method private static ensureBaseline(Landroid/content/Context;Ljava/util/Map;)V
    .locals 7
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

    .line 47
    const-string v0, "drivemem"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    const-string v2, "parking_start_ms"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v3, v5, v3

    const/4 v4, 0x1

    if-gtz v3, :cond_0

    move v1, v4

    .line 49
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    if-eqz v1, :cond_1

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v3, v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 51
    :cond_1
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object v2

    const-string v5, "telemetry.battery"

    invoke-virtual {v2, v5}, Lcom/geely/drivemem/car/CarActor;->get(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v2

    const-string v5, "battery"

    invoke-static {p1, v5, v2}, Lcom/geely/drivemem/state/ParkingState;->number(Ljava/util/Map;Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)Ljava/lang/Number;

    move-result-object v2

    .line 52
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object p0

    const-string v5, "telemetry.outside_temp"

    invoke-virtual {p0, v5}, Lcom/geely/drivemem/car/CarActor;->get(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0

    const-string v5, "outside_temp"

    invoke-static {p1, v5, p0}, Lcom/geely/drivemem/state/ParkingState;->number(Ljava/util/Map;Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)Ljava/lang/Number;

    move-result-object p0

    .line 53
    const-string p1, "parking_start_soc"

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v3, p1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 54
    :cond_2
    const-string v5, "parking_start_temp"

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 55
    :cond_3
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez v1, :cond_5

    .line 56
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    if-nez v2, :cond_5

    :cond_4
    invoke-interface {v0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz p0, :cond_6

    .line 57
    :cond_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0

    const-string p1, "parking.changed"

    invoke-static {p1, p0}, Lcom/geely/drivemem/car/EntityBus;->publish(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V

    :cond_6
    return-void
.end method

.method public static declared-synchronized ensureSubscribed(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/geely/drivemem/state/ParkingState;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-boolean v1, Lcom/geely/drivemem/state/ParkingState;->subscribed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 33
    :try_start_1
    sput-boolean v1, Lcom/geely/drivemem/state/ParkingState;->subscribed:Z

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 35
    new-instance v1, Lcom/geely/drivemem/state/ParkingState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/geely/drivemem/state/ParkingState$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/geely/drivemem/state/CarState;->addListener(Lcom/geely/drivemem/state/CarState$Listener;)V

    .line 39
    const-string v1, "telemetry.tick"

    new-instance v2, Lcom/geely/drivemem/state/ParkingState$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/geely/drivemem/state/ParkingState$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/geely/drivemem/car/EntityBus;->subscribe(Ljava/lang/String;Lcom/geely/drivemem/car/EntityBus$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
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

.method static synthetic lambda$ensureSubscribed$0(Landroid/content/Context;Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 36
    invoke-static {p0, p1}, Lcom/geely/drivemem/state/ParkingState;->ensureBaseline(Landroid/content/Context;Ljava/util/Map;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p0}, Lcom/geely/drivemem/state/ParkingState;->clear(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$ensureSubscribed$1(Landroid/content/Context;Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V
    .locals 1

    .line 40
    iget-object p1, p2, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v0, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/geely/drivemem/state/CarState;->isParked()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p2, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    .line 42
    invoke-static {p0, p1}, Lcom/geely/drivemem/state/ParkingState;->ensureBaseline(Landroid/content/Context;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static number(Ljava/util/Map;Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/geely/drivemem/car/CarActor$Reading;",
            ")",
            "Ljava/lang/Number;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 62
    :goto_0
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Number;

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    .line 63
    iget-object p0, p2, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object p1, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne p0, p1, :cond_2

    iget-object p0, p2, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    instance-of p0, p0, Ljava/lang/Number;

    if-eqz p0, :cond_2

    .line 64
    iget-object p0, p2, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    :cond_2
    return-object v0
.end method

.method public static snapshot(Landroid/content/Context;)Lcom/geely/drivemem/state/ParkingState$Snapshot;
    .locals 12

    .line 74
    const-string v0, "drivemem"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 75
    const-string v2, "parking_start_ms"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 76
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object v2

    const-string v3, "telemetry.battery"

    invoke-virtual {v2, v3}, Lcom/geely/drivemem/car/CarActor;->get(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v2

    .line 77
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object p0

    const-string v3, "telemetry.outside_temp"

    invoke-virtual {p0, v3}, Lcom/geely/drivemem/car/CarActor;->get(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0

    .line 78
    iget-object v3, v2, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v4, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_0

    .line 79
    iget-object v2, v2, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object v9, v5

    .line 80
    :goto_0
    iget-object v2, p0, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v3, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_1

    .line 81
    iget-object p0, p0, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    move-object v11, p0

    goto :goto_1

    :cond_1
    move-object v11, v5

    .line 82
    :goto_1
    new-instance p0, Lcom/geely/drivemem/state/ParkingState$Snapshot;

    const-string v2, "parking_start_soc"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object v8, v5

    .line 83
    :goto_2
    const-string v1, "parking_start_temp"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    move-object v10, v0

    goto :goto_3

    :cond_3
    move-object v10, v5

    :goto_3
    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/geely/drivemem/state/ParkingState$Snapshot;-><init>(JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V

    return-object p0
.end method
