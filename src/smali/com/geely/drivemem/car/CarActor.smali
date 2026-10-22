.class public final Lcom/geely/drivemem/car/CarActor;
.super Ljava/lang/Object;
.source "CarActor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/drivemem/car/CarActor$Reading;,
        Lcom/geely/drivemem/car/CarActor$HandlerLike;,
        Lcom/geely/drivemem/car/CarActor$HandlerAdapter;,
        Lcom/geely/drivemem/car/CarActor$Cached;,
        Lcom/geely/drivemem/car/CarActor$Poller;,
        Lcom/geely/drivemem/car/CarActor$DeriveFn2;,
        Lcom/geely/drivemem/car/CarActor$DeriveFn;,
        Lcom/geely/drivemem/car/CarActor$DeriveEntry;,
        Lcom/geely/drivemem/car/CarActor$PollEntry;,
        Lcom/geely/drivemem/car/CarActor$ResultCallback;,
        Lcom/geely/drivemem/car/CarActor$ReadCallback;,
        Lcom/geely/drivemem/car/CarActor$BoolCallback;
    }
.end annotation


# static fields
.field private static final TICK_INTERVAL_MS:I = 0x7530

.field private static volatile instance:Lcom/geely/drivemem/car/CarActor; = null

.field private static volatile strictThreadAssertion:Z = false


# instance fields
.field private final car:Lcom/geely/drivemem/car/CarAccess;

.field private final ctx:Landroid/content/Context;

.field private final derivations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/drivemem/car/CarActor$DeriveEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/geely/drivemem/car/CarActor$HandlerLike;

.field volatile lastTelemetryMs:J

.field private volatile masterTickMs:I

.field private final polls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/drivemem/car/CarActor$PollEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final state:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/geely/drivemem/car/CarActor$Cached;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5HUkOX8w9HWDo13vIUbjmLdpL24(Lcom/geely/drivemem/car/CarActor;Ljava/lang/String;[Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$DeriveFn;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/geely/drivemem/car/CarActor;->lambda$deriveFrom$12(Ljava/lang/String;[Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$DeriveFn;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6pe0l-y6meKhbi9KzoU8ifdLI9c(Lcom/geely/drivemem/car/CarActor;)V
    .locals 0

    invoke-direct {p0}, Lcom/geely/drivemem/car/CarActor;->tick()V

    return-void
.end method

.method public static synthetic $r8$lambda$9joAbB3GqpB3ZRwyXycmj1W4BYc(Lcom/geely/drivemem/car/CarActor;Lcom/geely/drivemem/car/CarActor$ReadCallback;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/geely/drivemem/car/CarActor;->lambda$readRawOnce$23(Lcom/geely/drivemem/car/CarActor$ReadCallback;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$DNK9hvsCGBfpqpaaT8RJUvvnR1o(Lcom/geely/drivemem/car/CarActor;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/geely/drivemem/car/CarActor;->lambda$inject$17(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DwGD0-HYT06Wn2e1b6NcDzxdwyo(Lcom/geely/drivemem/car/CarActor;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/geely/drivemem/car/CarActor;->lambda$watchRaw$21(ILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LV8z07tICURDUmC1V-GJE2m4njg(Lcom/geely/drivemem/car/CarActor;Ljava/lang/String;ILcom/geely/drivemem/car/CarActor$Poller;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/geely/drivemem/car/CarActor;->lambda$registerPoll$8(Ljava/lang/String;ILcom/geely/drivemem/car/CarActor$Poller;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PSBco-hYPYTyFfqAZzcP9xmlc08(Lcom/geely/drivemem/car/CarActor;Ljava/lang/String;Ljava/lang/Object;Lcom/geely/drivemem/car/CarActor$ResultCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/geely/drivemem/car/CarActor;->lambda$cast$18(Ljava/lang/String;Ljava/lang/Object;Lcom/geely/drivemem/car/CarActor$ResultCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SsaHhe3pWwEi5PDQhautp59_W-8(Lcom/geely/drivemem/car/CarActor;Lcom/geely/drivemem/car/CarActor$ReadCallback;IIC)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/geely/drivemem/car/CarActor;->lambda$readAnyOnce$24(Lcom/geely/drivemem/car/CarActor$ReadCallback;IIC)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZZsiK7Tx5-2OZ9ZCMO1CR0Osce8(Lcom/geely/drivemem/car/CarActor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/geely/drivemem/car/CarActor;->lambda$unregisterPoll$10(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eVFQk7FFmEFtAGdINpiKxz2JvL8(Lcom/geely/drivemem/car/CarActor;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/geely/drivemem/car/CarActor;->lambda$watchRawMultiArea$22(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iSazC1YUSl3IZsesndPZt-nB14I(Lcom/geely/drivemem/car/CarActor;Lcom/geely/drivemem/car/CarActor$ReadCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/geely/drivemem/car/CarActor;->lambda$read$19(Lcom/geely/drivemem/car/CarActor$ReadCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q5YbuJ9dK2o6g2Iy58jpgxtV1ZI(Lcom/geely/drivemem/car/CarActor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/geely/drivemem/car/CarActor;->lambda$unregisterDerivation$15(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rzZELFiNxGm5jig7MgpoFpcQt-I(Lcom/geely/drivemem/car/CarActor;IIILcom/geely/drivemem/car/CarActor$BoolCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/geely/drivemem/car/CarActor;->lambda$castRawOnce$25(IIILcom/geely/drivemem/car/CarActor$BoolCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgeth(Lcom/geely/drivemem/car/CarActor;)Lcom/geely/drivemem/car/CarActor$HandlerLike;
    .locals 0

    iget-object p0, p0, Lcom/geely/drivemem/car/CarActor;->h:Lcom/geely/drivemem/car/CarActor$HandlerLike;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mingest(Lcom/geely/drivemem/car/CarActor;Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/geely/drivemem/car/CarActor;->ingest(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1, v0, v0}, Lcom/geely/drivemem/car/CarActor;-><init>(Landroid/content/Context;Lcom/geely/drivemem/car/CarActor$HandlerLike;Lcom/geely/drivemem/car/CarAccess;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/geely/drivemem/car/CarActor$HandlerLike;Lcom/geely/drivemem/car/CarAccess;)V
    .locals 4

    .line 156
    const-string v0, "car.plug_connected"

    const-string v1, "car.charge_a"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/geely/drivemem/car/CarActor;->state:Ljava/util/Map;

    const-wide/16 v2, -0x1

    .line 242
    iput-wide v2, p0, Lcom/geely/drivemem/car/CarActor;->lastTelemetryMs:J

    .line 259
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/geely/drivemem/car/CarActor;->polls:Ljava/util/List;

    .line 267
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/geely/drivemem/car/CarActor;->derivations:Ljava/util/List;

    const/16 v2, 0x7530

    .line 270
    iput v2, p0, Lcom/geely/drivemem/car/CarActor;->masterTickMs:I

    .line 158
    :try_start_0
    iput-object p1, p0, Lcom/geely/drivemem/car/CarActor;->ctx:Landroid/content/Context;

    if-eqz p3, :cond_0

    .line 160
    iput-object p3, p0, Lcom/geely/drivemem/car/CarActor;->car:Lcom/geely/drivemem/car/CarAccess;

    goto :goto_0

    .line 162
    :cond_0
    new-instance p1, Lcom/geely/drivemem/car/CarAccess;

    invoke-direct {p1}, Lcom/geely/drivemem/car/CarAccess;-><init>()V

    iput-object p1, p0, Lcom/geely/drivemem/car/CarActor;->car:Lcom/geely/drivemem/car/CarAccess;

    :goto_0
    if-eqz p2, :cond_1

    .line 165
    iput-object p2, p0, Lcom/geely/drivemem/car/CarActor;->h:Lcom/geely/drivemem/car/CarActor$HandlerLike;

    goto :goto_1

    .line 167
    :cond_1
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "car-actor"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 169
    new-instance p2, Lcom/geely/drivemem/car/CarActor$HandlerAdapter;

    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p3}, Lcom/geely/drivemem/car/CarActor$HandlerAdapter;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/geely/drivemem/car/CarActor;->h:Lcom/geely/drivemem/car/CarActor$HandlerLike;

    .line 171
    :goto_1
    iget-object p1, p0, Lcom/geely/drivemem/car/CarActor;->h:Lcom/geely/drivemem/car/CarActor$HandlerLike;

    new-instance p2, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda0;-><init>(Lcom/geely/drivemem/car/CarActor;)V

    invoke-interface {p1, p2}, Lcom/geely/drivemem/car/CarActor$HandlerLike;->post(Ljava/lang/Runnable;)V

    .line 174
    new-instance p1, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda11;

    invoke-direct {p1}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda11;-><init>()V

    const/16 p2, 0x7d0

    invoke-virtual {p0, v1, p2, p1}, Lcom/geely/drivemem/car/CarActor;->registerPoll(Ljava/lang/String;ILcom/geely/drivemem/car/CarActor$Poller;)V

    .line 190
    new-instance p1, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda20;

    invoke-direct {p1}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda20;-><init>()V

    invoke-virtual {p0, v0, p2, p1}, Lcom/geely/drivemem/car/CarActor;->registerPoll(Ljava/lang/String;ILcom/geely/drivemem/car/CarActor$Poller;)V

    .line 206
    const-string p1, "car.is_charging"

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    aput-object v1, p2, p3

    const/4 p3, 0x1

    aput-object v0, p2, p3

    new-instance p3, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda21;

    invoke-direct {p3}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda21;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/geely/drivemem/car/CarActor;->deriveFrom(Ljava/lang/String;[Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$DeriveFn2;)V

    .line 210
    const-string p1, "telemetry.outside_temp"

    new-instance p2, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda22;

    invoke-direct {p2}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda22;-><init>()V

    const/16 p3, 0x3a98

    invoke-virtual {p0, p1, p3, p2}, Lcom/geely/drivemem/car/CarActor;->registerPoll(Ljava/lang/String;ILcom/geely/drivemem/car/CarActor$Poller;)V

    .line 216
    const-string p1, "telemetry.ambient_color"

    new-instance p2, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda23;

    invoke-direct {p2}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda23;-><init>()V

    const/16 p3, 0xfa0

    invoke-virtual {p0, p1, p3, p2}, Lcom/geely/drivemem/car/CarActor;->registerPoll(Ljava/lang/String;ILcom/geely/drivemem/car/CarActor$Poller;)V

    .line 220
    const-string p1, "telemetry.ambient_brightness"

    new-instance p2, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda24;

    invoke-direct {p2}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda24;-><init>()V

    invoke-virtual {p0, p1, p3, p2}, Lcom/geely/drivemem/car/CarActor;->registerPoll(Ljava/lang/String;ILcom/geely/drivemem/car/CarActor$Poller;)V

    .line 228
    const-string p1, "car.carplay_connected"

    new-instance p2, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda25;

    invoke-direct {p2}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda25;-><init>()V

    invoke-virtual {p0, p1, p3, p2}, Lcom/geely/drivemem/car/CarActor;->registerPoll(Ljava/lang/String;ILcom/geely/drivemem/car/CarActor$Poller;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 231
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "car actor init failed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "DriveMem"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    throw p1
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/geely/drivemem/car/CarActor;->state:Ljava/util/Map;

    const-wide/16 v0, -0x1

    .line 242
    iput-wide v0, p0, Lcom/geely/drivemem/car/CarActor;->lastTelemetryMs:J

    .line 259
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/drivemem/car/CarActor;->polls:Ljava/util/List;

    .line 267
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/drivemem/car/CarActor;->derivations:Ljava/util/List;

    const/16 v0, 0x7530

    .line 270
    iput v0, p0, Lcom/geely/drivemem/car/CarActor;->masterTickMs:I

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/geely/drivemem/car/CarActor;->ctx:Landroid/content/Context;

    .line 111
    iput-object v0, p0, Lcom/geely/drivemem/car/CarActor;->car:Lcom/geely/drivemem/car/CarAccess;

    if-eqz p1, :cond_0

    .line 112
    new-instance v0, Lcom/geely/drivemem/car/CarActor$HandlerAdapter;

    invoke-direct {v0, p1}, Lcom/geely/drivemem/car/CarActor$HandlerAdapter;-><init>(Landroid/os/Handler;)V

    :cond_0
    iput-object v0, p0, Lcom/geely/drivemem/car/CarActor;->h:Lcom/geely/drivemem/car/CarActor$HandlerLike;

    return-void
.end method

.method private armDiscreteWatches()V
    .locals 4

    .line 549
    const-string v0, "car.gear"

    const v1, 0x11400401

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/geely/drivemem/car/CarActor;->watchRaw(Ljava/lang/String;II)V

    .line 550
    const-string v0, "car.park_mode"

    const v1, 0x2140a817

    invoke-virtual {p0, v0, v1, v2}, Lcom/geely/drivemem/car/CarActor;->watchRaw(Ljava/lang/String;II)V

    .line 551
    const-string v0, "car.drive_mode"

    const v1, 0x22010100

    invoke-virtual {p0, v0, v1, v2}, Lcom/geely/drivemem/car/CarActor;->watchRaw(Ljava/lang/String;II)V

    .line 552
    const-string v0, "car.regen_mode"

    const v1, 0x20020500

    invoke-virtual {p0, v0, v1, v2}, Lcom/geely/drivemem/car/CarActor;->watchRaw(Ljava/lang/String;II)V

    .line 553
    const-string v0, "car.door_pos"

    const v1, 0x16400b00

    invoke-virtual {p0, v0, v1}, Lcom/geely/drivemem/car/CarActor;->watchRawMultiArea(Ljava/lang/String;I)V

    .line 554
    const-string v0, "car.window_pos"

    const v1, 0x13400bc0

    invoke-virtual {p0, v0, v1}, Lcom/geely/drivemem/car/CarActor;->watchRawMultiArea(Ljava/lang/String;I)V

    const v0, 0x15200508

    const/16 v1, 0x4b

    .line 555
    const-string v3, "car.hvac_recirc"

    invoke-virtual {p0, v3, v0, v1}, Lcom/geely/drivemem/car/CarActor;->watchRaw(Ljava/lang/String;II)V

    .line 556
    const-string v0, "car.hvac_direction"

    const v1, 0x21401020

    invoke-virtual {p0, v0, v1, v2}, Lcom/geely/drivemem/car/CarActor;->watchRaw(Ljava/lang/String;II)V

    const v0, 0x15200514

    const/4 v1, 0x2

    .line 557
    const-string v2, "car.hvac_rear_defrost"

    invoke-virtual {p0, v2, v0, v1}, Lcom/geely/drivemem/car/CarActor;->watchRaw(Ljava/lang/String;II)V

    return-void
.end method

.method public static assertCarThread()V
    .locals 3

    .line 131
    sget-boolean v0, Lcom/geely/drivemem/car/CarActor;->strictThreadAssertion:Z

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    sget-object v0, Lcom/geely/drivemem/car/CarActor;->instance:Lcom/geely/drivemem/car/CarActor;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, v0, Lcom/geely/drivemem/car/CarActor;->h:Lcom/geely/drivemem/car/CarActor$HandlerLike;

    if-eqz v0, :cond_2

    .line 134
    invoke-interface {v0}, Lcom/geely/drivemem/car/CarActor$HandlerLike;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 135
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v1, v0, :cond_2

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "assertCarThread: expected CarActor thread ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") but called from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string v1, "DriveMem"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-boolean v1, Lcom/geely/drivemem/car/CarActor;->strictThreadAssertion:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public static chargingFrom(Lcom/geely/drivemem/car/CarActor$Reading;)Ljava/lang/Boolean;
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v1, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 68
    iget-object p0, p0, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static deriveIsCharging(Lcom/geely/drivemem/car/CarActor$Reading;Lcom/geely/drivemem/car/CarActor$Reading;)Lcom/geely/drivemem/car/CarActor$Reading;
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v1, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-nez v0, :cond_0

    goto :goto_2

    .line 77
    :cond_0
    iget-object p0, p0, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    .line 78
    iget-object v0, p1, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v1, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    .line 80
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 81
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0

    return-object p0

    .line 75
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v0, Lcom/geely/drivemem/car/CarActor$Reading$Status;->ERROR:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne p1, v0, :cond_4

    goto :goto_3

    :cond_4
    const-string p0, "no charge_a reading"

    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor$Reading;->error(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method private ensureConnected()V
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->car:Lcom/geely/drivemem/car/CarAccess;

    invoke-virtual {v0}, Lcom/geely/drivemem/car/CarAccess;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->car:Lcom/geely/drivemem/car/CarAccess;

    iget-object v1, p0, Lcom/geely/drivemem/car/CarActor;->ctx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/geely/drivemem/car/CarAccess;->connect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/geely/drivemem/car/CarActor;->armDiscreteWatches()V

    :cond_0
    return-void
.end method

.method private static epsilonFor(Ljava/lang/String;)D
    .locals 2

    .line 455
    invoke-static {p0}, Lcom/geely/drivemem/car/Telemetry;->roundFor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 456
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x3fa999999999999aL    # 0.05

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public static get()Lcom/geely/drivemem/car/CarActor;
    .locals 1

    .line 94
    sget-object v0, Lcom/geely/drivemem/car/CarActor;->instance:Lcom/geely/drivemem/car/CarActor;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;
    .locals 2

    .line 97
    sget-object v0, Lcom/geely/drivemem/car/CarActor;->instance:Lcom/geely/drivemem/car/CarActor;

    if-nez v0, :cond_1

    .line 99
    const-class v1, Lcom/geely/drivemem/car/CarActor;

    monitor-enter v1

    .line 100
    :try_start_0
    sget-object v0, Lcom/geely/drivemem/car/CarActor;->instance:Lcom/geely/drivemem/car/CarActor;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/geely/drivemem/car/CarActor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/geely/drivemem/car/CarActor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/geely/drivemem/car/CarActor;->instance:Lcom/geely/drivemem/car/CarActor;

    .line 101
    :cond_0
    sget-object v0, Lcom/geely/drivemem/car/CarActor;->instance:Lcom/geely/drivemem/car/CarActor;

    .line 102
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private ingest(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V
    .locals 4

    .line 445
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->state:Ljava/util/Map;

    new-instance v1, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda27;

    invoke-direct {v1}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda27;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/drivemem/car/CarActor$Cached;

    .line 446
    iget-object v1, v0, Lcom/geely/drivemem/car/CarActor$Cached;->reading:Lcom/geely/drivemem/car/CarActor$Reading;

    iget-wide v2, v0, Lcom/geely/drivemem/car/CarActor$Cached;->epsilon:D

    invoke-static {v1, p2, v2, v3}, Lcom/geely/drivemem/car/CarActor;->sameReading(Lcom/geely/drivemem/car/CarActor$Reading;Lcom/geely/drivemem/car/CarActor$Reading;D)Z

    move-result v1

    .line 447
    iput-object p2, v0, Lcom/geely/drivemem/car/CarActor$Cached;->reading:Lcom/geely/drivemem/car/CarActor$Reading;

    if-nez v1, :cond_0

    .line 448
    invoke-static {p1, p2}, Lcom/geely/drivemem/car/EntityBus;->publish(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V

    .line 449
    :cond_0
    invoke-direct {p0, p1}, Lcom/geely/drivemem/car/CarActor;->recomputeDerivedFor(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$cast$18(Ljava/lang/String;Ljava/lang/Object;Lcom/geely/drivemem/car/CarActor$ResultCallback;)V
    .locals 2

    .line 393
    invoke-direct {p0}, Lcom/geely/drivemem/car/CarActor;->ensureConnected()V

    .line 394
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->car:Lcom/geely/drivemem/car/CarAccess;

    invoke-static {v0, p1, p2}, Lcom/geely/drivemem/car/CarDataHub;->apply(Lcom/geely/drivemem/car/CarAccess;Ljava/lang/String;Ljava/lang/Object;)Lcom/geely/drivemem/car/CarDataHub$WriteResult;

    move-result-object p2

    .line 395
    iget-boolean v0, p2, Lcom/geely/drivemem/car/CarDataHub$WriteResult;->applied:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "car actor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " rejected: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p2, Lcom/geely/drivemem/car/CarDataHub$WriteResult;->error:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DriveMem"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p3, :cond_1

    .line 396
    invoke-interface {p3, p2}, Lcom/geely/drivemem/car/CarActor$ResultCallback;->onResult(Lcom/geely/drivemem/car/CarDataHub$WriteResult;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$castRawOnce$25(IIILcom/geely/drivemem/car/CarActor$BoolCallback;)V
    .locals 1

    .line 536
    invoke-direct {p0}, Lcom/geely/drivemem/car/CarActor;->ensureConnected()V

    .line 537
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->car:Lcom/geely/drivemem/car/CarAccess;

    invoke-virtual {v0, p1, p2, p3}, Lcom/geely/drivemem/car/CarAccess;->setIntRaw(III)Z

    move-result p1

    if-eqz p4, :cond_0

    .line 538
    invoke-interface {p4, p1}, Lcom/geely/drivemem/car/CarActor$BoolCallback;->onResult(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$deriveFrom$11(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$DeriveEntry;)Z
    .locals 0

    .line 297
    iget-object p1, p1, Lcom/geely/drivemem/car/CarActor$DeriveEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$deriveFrom$12(Ljava/lang/String;[Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$DeriveFn;)V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->derivations:Ljava/util/List;

    new-instance v1, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 298
    new-instance v0, Lcom/geely/drivemem/car/CarActor$DeriveEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/geely/drivemem/car/CarActor$DeriveEntry;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$DeriveFn;)V

    .line 299
    iget-object p1, p0, Lcom/geely/drivemem/car/CarActor;->derivations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-direct {p0, v0}, Lcom/geely/drivemem/car/CarActor;->recomputeDerived(Lcom/geely/drivemem/car/CarActor$DeriveEntry;)V

    return-void
.end method

.method static synthetic lambda$deriveFrom$13(Lcom/geely/drivemem/car/CarActor$DeriveFn2;[Lcom/geely/drivemem/car/CarActor$Reading;)Lcom/geely/drivemem/car/CarActor$Reading;
    .locals 2

    const/4 v0, 0x0

    .line 307
    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-interface {p0, v0, p1}, Lcom/geely/drivemem/car/CarActor$DeriveFn2;->derive(Lcom/geely/drivemem/car/CarActor$Reading;Lcom/geely/drivemem/car/CarActor$Reading;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$ingest$20(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Cached;
    .locals 3

    .line 445
    new-instance v0, Lcom/geely/drivemem/car/CarActor$Cached;

    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor;->epsilonFor(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/geely/drivemem/car/CarActor$Cached;-><init>(D)V

    return-object v0
.end method

.method private synthetic lambda$inject$17(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 384
    invoke-static {p2}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/geely/drivemem/car/CarActor;->ingest(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V

    return-void
.end method

.method static synthetic lambda$new$1(Lcom/geely/drivemem/car/CarAccess;)Lcom/geely/drivemem/car/CarActor$Reading;
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x66

    const v2, 0x24140200

    .line 175
    invoke-virtual {p0, v2, v0, v1}, Lcom/geely/drivemem/car/CarAccess;->readAny(IIC)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 176
    const-string p0, "no reading"

    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor$Reading;->error(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0

    return-object p0

    .line 178
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 180
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bad value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor$Reading;->error(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$2(Lcom/geely/drivemem/car/CarAccess;)Lcom/geely/drivemem/car/CarActor$Reading;
    .locals 3

    const/16 v0, 0x69

    const v1, 0x2140b085

    const/4 v2, 0x0

    .line 191
    invoke-virtual {p0, v1, v2, v0}, Lcom/geely/drivemem/car/CarAccess;->readAny(IIC)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 192
    const-string p0, "no reading"

    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor$Reading;->error(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0

    return-object p0

    .line 194
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 196
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bad value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor$Reading;->error(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$3(Lcom/geely/drivemem/car/CarAccess;)Lcom/geely/drivemem/car/CarActor$Reading;
    .locals 0

    .line 211
    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarAccess;->readOutsideTempC()Ljava/lang/Float;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 212
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "read failed"

    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor$Reading;->error(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static synthetic lambda$new$4(Lcom/geely/drivemem/car/CarAccess;)Lcom/geely/drivemem/car/CarActor$Reading;
    .locals 0

    .line 217
    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarAccess;->readAmbientColor()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 218
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "read failed"

    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor$Reading;->error(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static synthetic lambda$new$5(Lcom/geely/drivemem/car/CarAccess;)Lcom/geely/drivemem/car/CarActor$Reading;
    .locals 0

    .line 221
    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarAccess;->readAmbientBrightness()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 222
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "read failed"

    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor$Reading;->error(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static synthetic lambda$new$6(Lcom/geely/drivemem/car/CarAccess;)Lcom/geely/drivemem/car/CarActor$Reading;
    .locals 0

    .line 229
    invoke-static {}, Lcom/geely/drivemem/state/CarplayState;->connected()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$putForTesting$0(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Cached;
    .locals 2

    .line 120
    new-instance p0, Lcom/geely/drivemem/car/CarActor$Cached;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/geely/drivemem/car/CarActor$Cached;-><init>(D)V

    return-object p0
.end method

.method private synthetic lambda$read$19(Lcom/geely/drivemem/car/CarActor$ReadCallback;Ljava/lang/String;)V
    .locals 1

    .line 403
    invoke-direct {p0}, Lcom/geely/drivemem/car/CarActor;->ensureConnected()V

    .line 404
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->car:Lcom/geely/drivemem/car/CarAccess;

    invoke-static {v0, p2}, Lcom/geely/drivemem/car/CarDataHub;->read(Lcom/geely/drivemem/car/CarAccess;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/geely/drivemem/car/CarActor$ReadCallback;->onRead(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$readAnyOnce$24(Lcom/geely/drivemem/car/CarActor$ReadCallback;IIC)V
    .locals 1

    .line 529
    invoke-direct {p0}, Lcom/geely/drivemem/car/CarActor;->ensureConnected()V

    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->car:Lcom/geely/drivemem/car/CarAccess;

    invoke-virtual {v0, p2, p3, p4}, Lcom/geely/drivemem/car/CarAccess;->readAny(IIC)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/geely/drivemem/car/CarActor$ReadCallback;->onRead(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$readRawOnce$23(Lcom/geely/drivemem/car/CarActor$ReadCallback;II)V
    .locals 1

    .line 523
    invoke-direct {p0}, Lcom/geely/drivemem/car/CarActor;->ensureConnected()V

    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->car:Lcom/geely/drivemem/car/CarAccess;

    invoke-virtual {v0, p2, p3}, Lcom/geely/drivemem/car/CarAccess;->readIntRaw(II)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/geely/drivemem/car/CarActor$ReadCallback;->onRead(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$registerPoll$7(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$PollEntry;)Z
    .locals 0

    .line 275
    iget-object p1, p1, Lcom/geely/drivemem/car/CarActor$PollEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$registerPoll$8(Ljava/lang/String;ILcom/geely/drivemem/car/CarActor$Poller;)V
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->polls:Ljava/util/List;

    new-instance v1, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 276
    new-instance v0, Lcom/geely/drivemem/car/CarActor$PollEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/geely/drivemem/car/CarActor$PollEntry;-><init>(Ljava/lang/String;ILcom/geely/drivemem/car/CarActor$Poller;)V

    .line 277
    iget-object p2, p0, Lcom/geely/drivemem/car/CarActor;->polls:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-direct {p0}, Lcom/geely/drivemem/car/CarActor;->recomputeMasterTick()V

    .line 280
    invoke-direct {p0}, Lcom/geely/drivemem/car/CarActor;->ensureConnected()V

    .line 282
    :try_start_0
    iget-object p2, p0, Lcom/geely/drivemem/car/CarActor;->car:Lcom/geely/drivemem/car/CarAccess;

    invoke-interface {p3, p2}, Lcom/geely/drivemem/car/CarActor$Poller;->poll(Lcom/geely/drivemem/car/CarAccess;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/drivemem/car/CarActor$Reading;->error(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p2

    .line 283
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/geely/drivemem/car/CarActor$PollEntry;->lastRunMs:J

    .line 284
    invoke-direct {p0, p1, p2}, Lcom/geely/drivemem/car/CarActor;->ingest(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V

    return-void
.end method

.method static synthetic lambda$tick$16(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Cached;
    .locals 2

    .line 362
    new-instance p0, Lcom/geely/drivemem/car/CarActor$Cached;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/geely/drivemem/car/CarActor$Cached;-><init>(D)V

    return-object p0
.end method

.method static synthetic lambda$unregisterDerivation$14(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$DeriveEntry;)Z
    .locals 0

    .line 312
    iget-object p1, p1, Lcom/geely/drivemem/car/CarActor$DeriveEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$unregisterDerivation$15(Ljava/lang/String;)V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->derivations:Ljava/util/List;

    new-instance v1, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private synthetic lambda$unregisterPoll$10(Ljava/lang/String;)V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->polls:Ljava/util/List;

    new-instance v1, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-direct {p0}, Lcom/geely/drivemem/car/CarActor;->recomputeMasterTick()V

    return-void
.end method

.method static synthetic lambda$unregisterPoll$9(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$PollEntry;)Z
    .locals 0

    .line 290
    iget-object p1, p1, Lcom/geely/drivemem/car/CarActor$PollEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$watchRaw$21(ILjava/lang/String;I)V
    .locals 2

    .line 473
    invoke-direct {p0}, Lcom/geely/drivemem/car/CarActor;->ensureConnected()V

    .line 474
    new-instance v0, Lcom/geely/drivemem/car/CarActor$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/geely/drivemem/car/CarActor$1;-><init>(Lcom/geely/drivemem/car/CarActor;ILjava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/geely/drivemem/car/CarActor;->car:Lcom/geely/drivemem/car/CarAccess;

    invoke-virtual {v1, p3, v0}, Lcom/geely/drivemem/car/CarAccess;->watch(ILandroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    const-string p1, "watch failed"

    invoke-static {p1}, Lcom/geely/drivemem/car/CarActor$Reading;->error(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/geely/drivemem/car/CarActor;->ingest(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V

    goto :goto_0

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->car:Lcom/geely/drivemem/car/CarAccess;

    invoke-virtual {v0, p3, p1}, Lcom/geely/drivemem/car/CarAccess;->readIntRaw(II)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 490
    invoke-static {p1}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/geely/drivemem/car/CarActor;->ingest(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V

    goto :goto_0

    .line 492
    :cond_1
    iget-object p1, p0, Lcom/geely/drivemem/car/CarActor;->car:Lcom/geely/drivemem/car/CarAccess;

    invoke-virtual {p1, p3}, Lcom/geely/drivemem/car/CarAccess;->readHvacFlag(I)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 493
    invoke-static {p1}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/geely/drivemem/car/CarActor;->ingest(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$watchRawMultiArea$22(Ljava/lang/String;I)V
    .locals 2

    .line 503
    invoke-direct {p0}, Lcom/geely/drivemem/car/CarActor;->ensureConnected()V

    .line 504
    new-instance v0, Lcom/geely/drivemem/car/CarActor$2;

    invoke-direct {v0, p0, p1}, Lcom/geely/drivemem/car/CarActor$2;-><init>(Lcom/geely/drivemem/car/CarActor;Ljava/lang/String;)V

    .line 516
    iget-object v1, p0, Lcom/geely/drivemem/car/CarActor;->car:Lcom/geely/drivemem/car/CarAccess;

    invoke-virtual {v1, p2, v0}, Lcom/geely/drivemem/car/CarAccess;->watch(ILandroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "watch failed"

    invoke-static {p2}, Lcom/geely/drivemem/car/CarActor$Reading;->error(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/geely/drivemem/car/CarActor;->ingest(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V

    :cond_0
    return-void
.end method

.method private recomputeDerived(Lcom/geely/drivemem/car/CarActor$DeriveEntry;)V
    .locals 3

    .line 318
    iget-object v0, p1, Lcom/geely/drivemem/car/CarActor$DeriveEntry;->depKeys:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lcom/geely/drivemem/car/CarActor$Reading;

    const/4 v1, 0x0

    .line 319
    :goto_0
    iget-object v2, p1, Lcom/geely/drivemem/car/CarActor$DeriveEntry;->depKeys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 320
    iget-object v2, p1, Lcom/geely/drivemem/car/CarActor$DeriveEntry;->depKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/geely/drivemem/car/CarActor;->get(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    :cond_0
    :try_start_0
    iget-object v1, p1, Lcom/geely/drivemem/car/CarActor$DeriveEntry;->fn:Lcom/geely/drivemem/car/CarActor$DeriveFn;

    invoke-interface {v1, v0}, Lcom/geely/drivemem/car/CarActor$DeriveFn;->derive([Lcom/geely/drivemem/car/CarActor$Reading;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 326
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/drivemem/car/CarActor$Reading;->error(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v0

    .line 328
    :goto_1
    iget-object p1, p1, Lcom/geely/drivemem/car/CarActor$DeriveEntry;->key:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/geely/drivemem/car/CarActor;->ingest(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V

    return-void
.end method

.method private recomputeDerivedFor(Ljava/lang/String;)V
    .locals 6

    .line 332
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->derivations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/drivemem/car/CarActor$DeriveEntry;

    .line 333
    iget-object v2, v1, Lcom/geely/drivemem/car/CarActor$DeriveEntry;->depKeys:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 334
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 335
    invoke-direct {p0, v1}, Lcom/geely/drivemem/car/CarActor;->recomputeDerived(Lcom/geely/drivemem/car/CarActor$DeriveEntry;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private recomputeMasterTick()V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->polls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0x7530

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/drivemem/car/CarActor$PollEntry;

    iget v2, v2, Lcom/geely/drivemem/car/CarActor$PollEntry;->intervalMs:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 345
    :cond_0
    iput v1, p0, Lcom/geely/drivemem/car/CarActor;->masterTickMs:I

    return-void
.end method

.method private static sameReading(Lcom/geely/drivemem/car/CarActor$Reading;Lcom/geely/drivemem/car/CarActor$Reading;D)Z
    .locals 4

    .line 460
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    iget-object v1, p1, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v1, Lcom/geely/drivemem/car/CarActor$Reading$Status;->ERROR:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/geely/drivemem/car/CarActor$Reading;->error:Ljava/lang/String;

    iget-object p1, p1, Lcom/geely/drivemem/car/CarActor$Reading;->error:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v1, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    return v3

    :cond_2
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_3

    .line 463
    iget-object p0, p0, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 464
    :cond_3
    iget-object p0, p0, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object p0, p1, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    sub-double/2addr v0, p0

    .line 465
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method public static setInstanceForTesting(Lcom/geely/drivemem/car/CarActor;)V
    .locals 0

    .line 116
    sput-object p0, Lcom/geely/drivemem/car/CarActor;->instance:Lcom/geely/drivemem/car/CarActor;

    return-void
.end method

.method public static setStrictThreadAssertionForTesting(Z)V
    .locals 0

    .line 127
    sput-boolean p0, Lcom/geely/drivemem/car/CarActor;->strictThreadAssertion:Z

    return-void
.end method

.method private tick()V
    .locals 11

    .line 350
    const-string v0, "telemetry.tick"

    :try_start_0
    invoke-direct {p0}, Lcom/geely/drivemem/car/CarActor;->ensureConnected()V

    .line 351
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 352
    iget-wide v3, p0, Lcom/geely/drivemem/car/CarActor;->lastTelemetryMs:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    iget-wide v3, p0, Lcom/geely/drivemem/car/CarActor;->lastTelemetryMs:J

    sub-long v3, v1, v3

    const-wide/16 v7, 0x7530

    cmp-long v3, v3, v7

    if-ltz v3, :cond_2

    .line 353
    :cond_0
    iput-wide v1, p0, Lcom/geely/drivemem/car/CarActor;->lastTelemetryMs:J

    .line 354
    iget-object v3, p0, Lcom/geely/drivemem/car/CarActor;->car:Lcom/geely/drivemem/car/CarAccess;

    const-string v4, "car.is_charging"

    .line 355
    invoke-virtual {p0, v4}, Lcom/geely/drivemem/car/CarActor;->get(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v4

    invoke-static {v4}, Lcom/geely/drivemem/car/CarActor;->chargingFrom(Lcom/geely/drivemem/car/CarActor$Reading;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/geely/drivemem/car/Telemetry;->tick(Lcom/geely/drivemem/car/CarAccess;Ljava/lang/Boolean;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 356
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 357
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 358
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "telemetry."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v7

    invoke-direct {p0, v8, v7}, Lcom/geely/drivemem/car/CarActor;->ingest(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V

    goto :goto_0

    .line 362
    :cond_1
    iget-object v4, p0, Lcom/geely/drivemem/car/CarActor;->state:Ljava/util/Map;

    new-instance v7, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda4;

    invoke-direct {v7}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/geely/drivemem/car/CarActor$Cached;

    .line 363
    invoke-static {v3}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v3

    iput-object v3, v4, Lcom/geely/drivemem/car/CarActor$Cached;->reading:Lcom/geely/drivemem/car/CarActor$Reading;

    .line 364
    iget-object v3, v4, Lcom/geely/drivemem/car/CarActor$Cached;->reading:Lcom/geely/drivemem/car/CarActor$Reading;

    invoke-static {v0, v3}, Lcom/geely/drivemem/car/EntityBus;->publish(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->polls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/geely/drivemem/car/CarActor$PollEntry;

    .line 368
    iget-wide v7, v3, Lcom/geely/drivemem/car/CarActor$PollEntry;->lastRunMs:J

    cmp-long v4, v7, v5

    if-ltz v4, :cond_4

    iget-wide v7, v3, Lcom/geely/drivemem/car/CarActor$PollEntry;->lastRunMs:J

    sub-long v7, v1, v7

    iget v4, v3, Lcom/geely/drivemem/car/CarActor$PollEntry;->intervalMs:I

    int-to-long v9, v4

    cmp-long v4, v7, v9

    if-ltz v4, :cond_3

    .line 369
    :cond_4
    iput-wide v1, v3, Lcom/geely/drivemem/car/CarActor$PollEntry;->lastRunMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 371
    :try_start_1
    iget-object v4, v3, Lcom/geely/drivemem/car/CarActor$PollEntry;->poller:Lcom/geely/drivemem/car/CarActor$Poller;

    iget-object v7, p0, Lcom/geely/drivemem/car/CarActor;->car:Lcom/geely/drivemem/car/CarAccess;

    invoke-interface {v4, v7}, Lcom/geely/drivemem/car/CarActor$Poller;->poll(Lcom/geely/drivemem/car/CarAccess;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    .line 372
    :try_start_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/geely/drivemem/car/CarActor$Reading;->error(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v4

    .line 373
    :goto_2
    iget-object v3, v3, Lcom/geely/drivemem/car/CarActor$PollEntry;->key:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/geely/drivemem/car/CarActor;->ingest(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "car actor tick: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DriveMem"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_5
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->h:Lcom/geely/drivemem/car/CarActor$HandlerLike;

    new-instance v1, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda0;-><init>(Lcom/geely/drivemem/car/CarActor;)V

    iget v2, p0, Lcom/geely/drivemem/car/CarActor;->masterTickMs:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/geely/drivemem/car/CarActor$HandlerLike;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public cancelOnCarThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->h:Lcom/geely/drivemem/car/CarActor$HandlerLike;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/geely/drivemem/car/CarActor$HandlerLike;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public cast(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 388
    invoke-virtual {p0, p1, p2, v0}, Lcom/geely/drivemem/car/CarActor;->cast(Ljava/lang/String;Ljava/lang/Object;Lcom/geely/drivemem/car/CarActor$ResultCallback;)V

    return-void
.end method

.method public cast(Ljava/lang/String;Ljava/lang/Object;Lcom/geely/drivemem/car/CarActor$ResultCallback;)V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->h:Lcom/geely/drivemem/car/CarActor$HandlerLike;

    new-instance v1, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda5;-><init>(Lcom/geely/drivemem/car/CarActor;Ljava/lang/String;Ljava/lang/Object;Lcom/geely/drivemem/car/CarActor$ResultCallback;)V

    invoke-interface {v0, v1}, Lcom/geely/drivemem/car/CarActor$HandlerLike;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public castRawOnce(IIILcom/geely/drivemem/car/CarActor$BoolCallback;)V
    .locals 8

    .line 535
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->h:Lcom/geely/drivemem/car/CarActor$HandlerLike;

    new-instance v7, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda14;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda14;-><init>(Lcom/geely/drivemem/car/CarActor;IIILcom/geely/drivemem/car/CarActor$BoolCallback;)V

    invoke-interface {v0, v7}, Lcom/geely/drivemem/car/CarActor$HandlerLike;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deriveFrom(Ljava/lang/String;[Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$DeriveFn2;)V
    .locals 1

    .line 307
    new-instance v0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda19;

    invoke-direct {v0, p3}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda19;-><init>(Lcom/geely/drivemem/car/CarActor$DeriveFn2;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/geely/drivemem/car/CarActor;->deriveFrom(Ljava/lang/String;[Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$DeriveFn;)V

    return-void
.end method

.method public deriveFrom(Ljava/lang/String;[Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$DeriveFn;)V
    .locals 1

    .line 296
    new-instance v0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda18;-><init>(Lcom/geely/drivemem/car/CarActor;Ljava/lang/String;[Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$DeriveFn;)V

    .line 302
    iget-object p1, p0, Lcom/geely/drivemem/car/CarActor;->h:Lcom/geely/drivemem/car/CarActor$HandlerLike;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/geely/drivemem/car/CarActor$HandlerLike;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 303
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->state:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/geely/drivemem/car/CarActor$Cached;

    if-eqz p1, :cond_0

    .line 440
    iget-object p1, p1, Lcom/geely/drivemem/car/CarActor$Cached;->reading:Lcom/geely/drivemem/car/CarActor$Reading;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/geely/drivemem/car/CarActor$Reading;->NOT_AVAILABLE:Lcom/geely/drivemem/car/CarActor$Reading;

    :goto_0
    return-object p1
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->h:Lcom/geely/drivemem/car/CarActor$HandlerLike;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/geely/drivemem/car/CarActor$HandlerLike;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getRegisteredPollsForTesting()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/drivemem/car/CarActor$PollEntry;",
            ">;"
        }
    .end annotation

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/geely/drivemem/car/CarActor;->polls:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public inject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->h:Lcom/geely/drivemem/car/CarActor$HandlerLike;

    new-instance v1, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda10;-><init>(Lcom/geely/drivemem/car/CarActor;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/geely/drivemem/car/CarActor$HandlerLike;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public putForTesting(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->state:Ljava/util/Map;

    new-instance v1, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/drivemem/car/CarActor$Cached;

    .line 121
    iput-object p2, v0, Lcom/geely/drivemem/car/CarActor$Cached;->reading:Lcom/geely/drivemem/car/CarActor$Reading;

    .line 122
    invoke-direct {p0, p1}, Lcom/geely/drivemem/car/CarActor;->recomputeDerivedFor(Ljava/lang/String;)V

    return-void
.end method

.method public rawAccess()Lcom/geely/drivemem/car/CarAccess;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->car:Lcom/geely/drivemem/car/CarAccess;

    return-object v0
.end method

.method public read(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$ReadCallback;)V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->h:Lcom/geely/drivemem/car/CarActor$HandlerLike;

    new-instance v1, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p2, p1}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda12;-><init>(Lcom/geely/drivemem/car/CarActor;Lcom/geely/drivemem/car/CarActor$ReadCallback;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/geely/drivemem/car/CarActor$HandlerLike;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public readAnyOnce(IICLcom/geely/drivemem/car/CarActor$ReadCallback;)V
    .locals 8

    .line 529
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->h:Lcom/geely/drivemem/car/CarActor$HandlerLike;

    new-instance v7, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda16;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda16;-><init>(Lcom/geely/drivemem/car/CarActor;Lcom/geely/drivemem/car/CarActor$ReadCallback;IIC)V

    invoke-interface {v0, v7}, Lcom/geely/drivemem/car/CarActor$HandlerLike;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public readRawOnce(IILcom/geely/drivemem/car/CarActor$ReadCallback;)V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->h:Lcom/geely/drivemem/car/CarActor$HandlerLike;

    new-instance v1, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda2;-><init>(Lcom/geely/drivemem/car/CarActor;Lcom/geely/drivemem/car/CarActor$ReadCallback;II)V

    invoke-interface {v0, v1}, Lcom/geely/drivemem/car/CarActor$HandlerLike;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerPoll(Ljava/lang/String;ILcom/geely/drivemem/car/CarActor$Poller;)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->h:Lcom/geely/drivemem/car/CarActor$HandlerLike;

    new-instance v1, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda26;-><init>(Lcom/geely/drivemem/car/CarActor;Ljava/lang/String;ILcom/geely/drivemem/car/CarActor$Poller;)V

    invoke-interface {v0, v1}, Lcom/geely/drivemem/car/CarActor$HandlerLike;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method resetTimingForTesting()V
    .locals 4

    const-wide/16 v0, -0x1

    .line 431
    iput-wide v0, p0, Lcom/geely/drivemem/car/CarActor;->lastTelemetryMs:J

    .line 432
    iget-object v2, p0, Lcom/geely/drivemem/car/CarActor;->polls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/geely/drivemem/car/CarActor$PollEntry;

    iput-wide v0, v3, Lcom/geely/drivemem/car/CarActor$PollEntry;->lastRunMs:J

    goto :goto_0

    :cond_0
    return-void
.end method

.method public runOnCarThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->h:Lcom/geely/drivemem/car/CarActor$HandlerLike;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/geely/drivemem/car/CarActor$HandlerLike;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 413
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public runOnCarThreadDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->h:Lcom/geely/drivemem/car/CarActor$HandlerLike;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/geely/drivemem/car/CarActor$HandlerLike;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 418
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method tickNowForTesting()V
    .locals 0

    .line 435
    invoke-direct {p0}, Lcom/geely/drivemem/car/CarActor;->tick()V

    return-void
.end method

.method public unregisterDerivation(Ljava/lang/String;)V
    .locals 1

    .line 312
    new-instance v0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda3;-><init>(Lcom/geely/drivemem/car/CarActor;Ljava/lang/String;)V

    .line 313
    iget-object p1, p0, Lcom/geely/drivemem/car/CarActor;->h:Lcom/geely/drivemem/car/CarActor$HandlerLike;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/geely/drivemem/car/CarActor$HandlerLike;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 314
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public unregisterPoll(Ljava/lang/String;)V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->h:Lcom/geely/drivemem/car/CarActor$HandlerLike;

    new-instance v1, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda15;-><init>(Lcom/geely/drivemem/car/CarActor;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/geely/drivemem/car/CarActor$HandlerLike;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public watchRaw(Ljava/lang/String;II)V
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->h:Lcom/geely/drivemem/car/CarActor$HandlerLike;

    new-instance v1, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda9;-><init>(Lcom/geely/drivemem/car/CarActor;ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/geely/drivemem/car/CarActor$HandlerLike;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public watchRawMultiArea(Ljava/lang/String;I)V
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor;->h:Lcom/geely/drivemem/car/CarActor$HandlerLike;

    new-instance v1, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1, p2}, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda17;-><init>(Lcom/geely/drivemem/car/CarActor;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/geely/drivemem/car/CarActor$HandlerLike;->post(Ljava/lang/Runnable;)V

    return-void
.end method
