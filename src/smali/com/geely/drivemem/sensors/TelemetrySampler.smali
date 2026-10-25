.class public final Lcom/geely/drivemem/sensors/TelemetrySampler;
.super Ljava/lang/Object;
.source "TelemetrySampler.java"


# static fields
.field static final TAG:Ljava/lang/String; = "DriveMem"

.field private static volatile subscribed:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized ensureSubscribed(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/geely/drivemem/sensors/TelemetrySampler;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-boolean v1, Lcom/geely/drivemem/sensors/TelemetrySampler;->subscribed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 28
    :try_start_1
    sput-boolean v1, Lcom/geely/drivemem/sensors/TelemetrySampler;->subscribed:Z

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 30
    const-string v1, "telemetry.tick"

    new-instance v2, Lcom/geely/drivemem/sensors/TelemetrySampler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/geely/drivemem/sensors/TelemetrySampler$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/geely/drivemem/car/EntityBus;->subscribe(Ljava/lang/String;Lcom/geely/drivemem/car/EntityBus$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
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

.method static synthetic lambda$ensureSubscribed$0(Landroid/content/Context;Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V
    .locals 1

    .line 31
    iget-object p1, p2, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v0, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne p1, v0, :cond_0

    .line 33
    iget-object p1, p2, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    .line 34
    invoke-static {p0, p1}, Lcom/geely/drivemem/sensors/TelemetrySampler;->observe(Landroid/content/Context;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$observe$1(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2

    .line 82
    :try_start_0
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "telemetry_sample"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "telemetrysampler: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DriveMem"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static observe(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
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

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 41
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 42
    const-string v3, "ts_ms"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 43
    const-string v0, "odometer"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "odo_km"

    invoke-static {v2, v1, v0}, Lcom/geely/drivemem/sensors/TelemetrySampler;->putIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    const-string v0, "battery"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "battery_pct"

    invoke-static {v2, v1, v0}, Lcom/geely/drivemem/sensors/TelemetrySampler;->putIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    const-string v0, "speed"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "speed_kmh"

    invoke-static {v2, v1, v0}, Lcom/geely/drivemem/sensors/TelemetrySampler;->putIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    const-string v0, "gear"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/geely/drivemem/sensors/TelemetrySampler;->putIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    const-string v0, "is_charging"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/geely/drivemem/sensors/TelemetrySampler;->putIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    const-string v0, "charge_a"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/geely/drivemem/sensors/TelemetrySampler;->putIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    const-string v0, "charge_v"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/geely/drivemem/sensors/TelemetrySampler;->putIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    const-string v0, "park_mode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/geely/drivemem/sensors/TelemetrySampler;->putIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object v0

    const-string v1, "telemetry.outside_temp"

    invoke-virtual {v0, v1}, Lcom/geely/drivemem/car/CarActor;->get(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v0

    .line 55
    iget-object v1, v0, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v3, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne v1, v3, :cond_0

    const-string v1, "outside_temp_c"

    iget-object v0, v0, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lcom/geely/drivemem/sensors/TelemetrySampler;->putIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/geely/drivemem/sensors/GpsReader;->read(Landroid/content/Context;)[D

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 59
    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "altitude_m"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 60
    :cond_1
    const-string v0, "instant_power_kw_est"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/geely/drivemem/sensors/TelemetrySampler;->putIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    const-string v0, "power_spent_kw"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/geely/drivemem/sensors/TelemetrySampler;->putIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    const-string v0, "power_regen_kw"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/geely/drivemem/sensors/TelemetrySampler;->putIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    const-string v0, "energy_spent_kwh"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/geely/drivemem/sensors/TelemetrySampler;->putIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    const-string v0, "energy_regen_kwh"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/geely/drivemem/sensors/TelemetrySampler;->putIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    const-string v0, "energy_net_kwh"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/geely/drivemem/sensors/TelemetrySampler;->putIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    const-string v0, "energy_measured"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/geely/drivemem/sensors/TelemetrySampler;->putIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    const-string v0, "energy_spent_est_kwh"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/geely/drivemem/sensors/TelemetrySampler;->putIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    const-string v0, "energy_regen_est_kwh"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, v0, p1}, Lcom/geely/drivemem/sensors/TelemetrySampler;->putIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x7530

    .line 73
    invoke-static {v0, v1}, Lcom/geely/drivemem/sensors/Obd2Reader;->freshBattTempC(J)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 74
    const-string v0, "battery_temp_c"

    invoke-virtual {v2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 80
    :cond_2
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p1

    new-instance v0, Lcom/geely/drivemem/sensors/TelemetrySampler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v2}, Lcom/geely/drivemem/sensors/TelemetrySampler$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Landroid/content/ContentValues;)V

    invoke-virtual {p1, v0}, Lcom/geely/drivemem/car/CarDb;->write(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static putIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 90
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 91
    :cond_0
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0

    .line 92
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_2
    :goto_0
    return-void
.end method
