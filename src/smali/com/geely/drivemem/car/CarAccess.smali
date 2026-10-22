.class public Lcom/geely/drivemem/car/CarAccess;
.super Ljava/lang/Object;
.source "CarAccess.java"


# static fields
.field public static final AC_REMOTE_CTRL:I = 0x2140a369

.field public static final AC_REMOTE_SET:I = 0x2140a371

.field public static final AMBIENT_AREA:I = 0x5

.field public static final AMBIENT_BRIGHT:I = 0x2a010100

.field public static final AMBIENT_BRIGHT_MAX:I = 0x14

.field public static final AMBIENT_COLOR:I = 0x200a0900

.field public static final CHARGE_CURRENT_LIMIT:I = 0x24100600

.field public static final CHARGE_MAX_A:I = 0x20

.field public static final CHARGE_MIN_A:I = 0x5

.field public static final CHARGE_OFF:I = 0x24100101

.field public static final CHARGE_ON:I = 0x24100103

.field public static final CHARGE_SWITCH:I = 0x24100100

.field public static final CHARGE_VAL2:I = 0x24100102

.field public static final CHARGE_WORK_CURRENT:I = 0x24140200

.field public static final CHARGE_WORK_VOLTAGE:I = 0x24140100

.field public static final DOOR_CLOSED:I = 0x2

.field public static final DOOR_OPEN:I = 0x1

.field public static final DOOR_POS:I = 0x16400b00

.field public static final HVAC_AC_ON:I = 0x15200505

.field public static final HVAC_AUTO_ON:I = 0x1520050a

.field public static final HVAC_ELECTRIC_DEFROSTER_ON:I = 0x15200514

.field private static final HVAC_FLAG_AREAS:[I

.field public static final HVAC_MAX_DEFROST:I = 0x15200507

.field public static final HVAC_POWER_ON:I = 0x15200510

.field public static final HVAC_RECIRC_ON:I = 0x15200508

.field public static final HVAC_WAKE_REQ:I = 0x2140105b

.field public static final PARK_MODE:I = 0x2140a817

.field public static final PARK_ON_BASE:I = 0x201b0100

.field public static final PERF_VEHICLE_SPEED:I = 0x11600207

.field public static final TAG:Ljava/lang/String; = "DriveMem"

.field public static final WINDOW_POS:I = 0x13400bc0


# instance fields
.field public volatile ambientNote:Ljava/lang/String;

.field private volatile car:Landroid/car/Car;

.field private volatile colorArea:I

.field private volatile cpm:Landroid/car/hardware/property/CarPropertyManager;

.field private volatile failStreak:I


# direct methods
.method static bridge synthetic -$$Nest$fputcpm(Lcom/geely/drivemem/car/CarAccess;Landroid/car/hardware/property/CarPropertyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/16 v2, 0x4b

    const/4 v3, 0x0

    .line 437
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/geely/drivemem/car/CarAccess;->HVAC_FLAG_AREAS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/geely/drivemem/car/CarAccess;->failStreak:I

    const/4 v0, 0x5

    .line 228
    iput v0, p0, Lcom/geely/drivemem/car/CarAccess;->colorArea:I

    .line 231
    const-string v0, ""

    iput-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->ambientNote:Ljava/lang/String;

    return-void
.end method

.method private readAmbientColorArea(I)Ljava/lang/Integer;
    .locals 2

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const v1, 0x200a0900

    invoke-virtual {v0, v1, p1}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private readF(I)Ljava/lang/Float;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 319
    filled-new-array {v1, v0}, [I

    move-result-object v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    aget v2, v0, v1

    .line 320
    :try_start_0
    iget-object v3, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v3, p1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private writeAll(I[IILjava/lang/String;)Z
    .locals 8

    .line 639
    const-string v0, "DriveMem"

    .line 640
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget v4, p2, v2

    .line 642
    :try_start_0
    iget-object v5, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v5, p1, v4, p3}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    const/4 v3, 0x1

    .line 644
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " write prop="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " area="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " val="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " OK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x12c

    .line 645
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    .line 647
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " write area="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " failed: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :catch_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method


# virtual methods
.method public varargs audioCall(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 573
    const-string v0, "ERR:"

    iget-object v1, p0, Lcom/geely/drivemem/car/CarAccess;->car:Landroid/car/Car;

    if-nez v1, :cond_0

    const-string p1, "ERR:no car"

    return-object p1

    .line 575
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/geely/drivemem/car/CarAccess;->car:Landroid/car/Car;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 576
    const-string p1, "ERR:no audio manager"

    return-object p1

    .line 577
    :cond_1
    array-length v2, p2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 578
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_5

    .line 579
    aget-object v4, p2, v3

    .line 580
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_1

    .line 581
    :cond_2
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_1

    .line 582
    :cond_3
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_4

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_1

    .line 583
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    :goto_1
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 585
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 590
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 587
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_6

    move-object p1, p2

    :cond_6
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public connect(Landroid/content/Context;)Z
    .locals 4

    .line 27
    const-string v0, "DriveMem"

    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarAccess;->disconnect()V

    const/4 v1, 0x0

    .line 29
    :try_start_0
    new-instance v2, Lcom/geely/drivemem/car/CarAccess$1;

    invoke-direct {v2, p0}, Lcom/geely/drivemem/car/CarAccess$1;-><init>(Lcom/geely/drivemem/car/CarAccess;)V

    invoke-static {p1, v2}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/car/Car;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/drivemem/car/CarAccess;->car:Landroid/car/Car;

    .line 37
    iget-object p1, p0, Lcom/geely/drivemem/car/CarAccess;->car:Landroid/car/Car;

    invoke-virtual {p1}, Landroid/car/Car;->connect()V

    move p1, v1

    :goto_0
    const/16 v2, 0x3c

    if-ge p1, v2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/geely/drivemem/car/CarAccess;->car:Landroid/car/Car;

    invoke-virtual {v2}, Landroid/car/Car;->isConnected()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const-wide/16 v2, 0x64

    .line 39
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 41
    :cond_0
    :try_start_2
    iget-object p1, p0, Lcom/geely/drivemem/car/CarAccess;->car:Landroid/car/Car;

    invoke-virtual {p1}, Landroid/car/Car;->isConnected()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "car did not connect"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/geely/drivemem/car/CarAccess;->car:Landroid/car/Car;

    const-string v2, "property"

    invoke-virtual {p1, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    iput-object p1, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    .line 43
    iput v1, p0, Lcom/geely/drivemem/car/CarAccess;->failStreak:I

    .line 44
    iget-object p1, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :catchall_0
    move-exception p1

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connect failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public cpvValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 358
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getValue"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public disconnect()V
    .locals 1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->car:Landroid/car/Car;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->car:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->car:Landroid/car/Car;

    iput-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    return-void
.end method

.method public dumpPropertyList()V
    .locals 11

    const-string v0, "proplist: TOTAL="

    .line 606
    iget-object v1, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const-string v2, "DriveMem"

    if-nez v1, :cond_0

    const-string v0, "proplist: no cpm"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 608
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v1}, Landroid/car/hardware/property/CarPropertyManager;->getPropertyList()Ljava/util/List;

    move-result-object v1

    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/16 v0, 0xc

    .line 612
    new-array v3, v0, [I

    fill-array-data v3, :array_0

    .line 618
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 619
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/car/hardware/CarPropertyConfig;

    invoke-virtual {v5}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    move v5, v1

    :goto_2
    if-ge v5, v0, :cond_7

    .line 620
    aget v6, v3, v5

    .line 621
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/car/hardware/CarPropertyConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 622
    const-string v8, "proplist: "

    if-nez v7, :cond_4

    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> MISSING"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 623
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " -> areas=["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v7}, Landroid/car/hardware/CarPropertyConfig;->getAreaIds()[I

    move-result-object v6

    move v8, v1

    .line 625
    :goto_3
    array-length v10, v6

    if-ge v8, v10, :cond_6

    if-lez v8, :cond_5

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    aget v10, v6, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 626
    :cond_6
    const-string v6, "]"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 627
    :try_start_2
    const-string v6, " min="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Landroid/car/hardware/CarPropertyConfig;->getMinValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " max="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Landroid/car/hardware/CarPropertyConfig;->getMaxValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 629
    :catchall_0
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "proplist failed: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    return-void

    :array_0
    .array-data 4
        0x24100600
        0x24100100
        0x24140200
        0x24140100
        0x200a0900
        0x2a010100
        0x15200510
        0x15400500
        0x15600503
        0x2140a377
        0x22010100
        0x20020500
    .end array-data
.end method

.method public isReady()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method noteFailure()V
    .locals 2

    .line 77
    iget v0, p0, Lcom/geely/drivemem/car/CarAccess;->failStreak:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/geely/drivemem/car/CarAccess;->failStreak:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const-string v0, "DriveMem"

    const-string v1, "5 failures in a row \u2014 dropping the connection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarAccess;->disconnect()V

    :cond_0
    return-void
.end method

.method noteSuccess()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/geely/drivemem/car/CarAccess;->failStreak:I

    return-void
.end method

.method public nudgeFan(I)I
    .locals 8

    .line 179
    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarAccess;->readFan()I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x8

    add-int/2addr v0, p1

    .line 181
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 182
    sget-object v0, Lcom/geely/drivemem/util/Modes;->FAN_AREAS:[I

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 183
    :try_start_0
    iget-object v5, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const v6, 0x15400500

    invoke-virtual {v5, v6, v4, p1}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    const-string v5, "DriveMem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fan set area="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public nudgeSetpoint(F)F
    .locals 3

    const/4 v0, 0x1

    .line 160
    invoke-virtual {p0, v0}, Lcom/geely/drivemem/car/CarAccess;->readHvacTempArea(I)F

    move-result v1

    .line 161
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    :cond_0
    add-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr v1, p1

    .line 162
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    const/high16 p1, 0x41880000    # 17.0f

    cmpg-float v2, v1, p1

    if-gez v2, :cond_1

    move v1, p1

    :cond_1
    const/high16 p1, 0x42000000    # 32.0f

    cmpl-float v2, v1, p1

    if-lez v2, :cond_2

    move v1, p1

    .line 164
    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/geely/drivemem/car/CarAccess;->writeHvacTemp(FI)Z

    const/4 p1, 0x4

    .line 165
    invoke-virtual {p0, v1, p1}, Lcom/geely/drivemem/car/CarAccess;->writeHvacTemp(FI)Z

    return v1
.end method

.method public propertyList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 598
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0}, Landroid/car/hardware/property/CarPropertyManager;->getPropertyList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 599
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPropertyList failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DriveMem"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public rawGetProperty(II)Ljava/lang/Object;
    .locals 2

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 350
    :catchall_0
    :try_start_1
    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const-class v1, Ljava/lang/Float;

    invoke-virtual {v0, v1, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    .line 352
    :catchall_1
    :try_start_2
    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object p1

    :catchall_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public readAmbientBrightness()Ljava/lang/Integer;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 309
    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    :goto_0
    const/4 v1, 0x3

    if-ge v2, v1, :cond_0

    aget v1, v0, v2

    .line 310
    :try_start_0
    iget-object v3, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const v4, 0x2a010100

    invoke-virtual {v3, v4, v1}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public readAmbientColor()Ljava/lang/Integer;
    .locals 4

    .line 282
    iget v0, p0, Lcom/geely/drivemem/car/CarAccess;->colorArea:I

    invoke-direct {p0, v0}, Lcom/geely/drivemem/car/CarAccess;->readAmbientColorArea(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 284
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    aget v2, v0, v1

    .line 285
    iget v3, p0, Lcom/geely/drivemem/car/CarAccess;->colorArea:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 286
    :cond_1
    invoke-direct {p0, v2}, Lcom/geely/drivemem/car/CarAccess;->readAmbientColorArea(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 287
    iput v2, p0, Lcom/geely/drivemem/car/CarAccess;->colorArea:I

    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public readAny(IIC)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x66

    if-ne p3, v0, :cond_0

    .line 370
    :try_start_0
    iget-object p3, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {p3, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 371
    :cond_0
    iget-object p3, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {p3, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public readBatteryPct()Ljava/lang/Float;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 339
    filled-new-array {v1, v0}, [I

    move-result-object v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    aget v2, v0, v1

    .line 340
    :try_start_0
    iget-object v3, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const v4, 0x2140a6ed

    invoke-virtual {v3, v4, v2}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public readBool(II)Ljava/lang/Boolean;
    .locals 1

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getBooleanProperty(II)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public readChargeWorkCurrent()Ljava/lang/Float;
    .locals 1

    const v0, 0x24140200

    .line 315
    invoke-direct {p0, v0}, Lcom/geely/drivemem/car/CarAccess;->readF(I)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public readChargeWorkVoltage()Ljava/lang/Float;
    .locals 1

    const v0, 0x24140100

    .line 316
    invoke-direct {p0, v0}, Lcom/geely/drivemem/car/CarAccess;->readF(I)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public readCharging()Ljava/lang/Integer;
    .locals 4

    .line 406
    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 407
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const v2, 0x24100100

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "charge: read failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DriveMem"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public readDrive()Ljava/lang/Integer;
    .locals 6

    .line 135
    sget-object v0, Lcom/geely/drivemem/util/Modes;->DRIVE_AREAS:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 136
    :try_start_0
    iget-object v4, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const v5, 0x22010100

    invoke-virtual {v4, v5, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public readFan()I
    .locals 6

    .line 171
    sget-object v0, Lcom/geely/drivemem/util/Modes;->FAN_AREAS:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 172
    :try_start_0
    iget-object v4, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const v5, 0x15400500

    invoke-virtual {v4, v5, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public readFloatRaw(II)Ljava/lang/Float;
    .locals 1

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public readGear()Ljava/lang/Integer;
    .locals 3

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const v1, 0x2140800f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public readGeneric(II)Ljava/lang/Object;
    .locals 7

    .line 493
    const-string v0, "@"

    const-string v1, "DriveMem"

    .line 0
    const-string v2, "readGeneric("

    .line 493
    iget-object v3, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 495
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const-class v5, Ljava/lang/Object;

    invoke-virtual {v3, v5, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 496
    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyValue;->getStatus()I

    move-result v5

    if-nez v5, :cond_2

    .line 497
    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 498
    instance-of v5, v3, [Ljava/lang/Object;

    if-eqz v5, :cond_1

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 499
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): answered by getProperty(Object.class) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :catchall_0
    move-exception v3

    .line 502
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): getProperty(Object.class) threw "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v3, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result v3

    .line 505
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): answered by getFloatProperty = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception v3

    .line 507
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): getFloatProperty threw "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :try_start_2
    iget-object v3, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v3, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v3

    .line 510
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): answered by getIntProperty = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object p1

    :catchall_2
    move-exception v3

    .line 512
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): getIntProperty threw "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :try_start_3
    iget-object v3, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v3, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getBooleanProperty(II)Z

    move-result v3

    .line 515
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): answered by getBooleanProperty = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-object p1

    :catchall_3
    move-exception v3

    .line 517
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): getBooleanProperty threw "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "): all four accessors failed, returning null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public readHvacFlag(I)Ljava/lang/Boolean;
    .locals 6

    .line 440
    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 441
    :cond_0
    sget-object v0, Lcom/geely/drivemem/car/CarAccess;->HVAC_FLAG_AREAS:[I

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 442
    :try_start_0
    iget-object v5, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v5, p1, v4}, Landroid/car/hardware/property/CarPropertyManager;->getBooleanProperty(II)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readHvacTempArea(I)F
    .locals 2

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const v1, 0x15600503

    invoke-virtual {v0, v1, p1}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1
.end method

.method public readIntRaw(II)Ljava/lang/Integer;
    .locals 1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public readOutsideTempC()Ljava/lang/Float;
    .locals 4

    const/4 v0, 0x0

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const v2, 0x2140a377

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x50

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, -0x3d900000    # -60.0f

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_1

    const/high16 v2, 0x42b40000    # 90.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "outside temp failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DriveMem"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public readParkMode()Ljava/lang/Integer;
    .locals 3

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const v1, 0x2140a817

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public readRearDefrost()Ljava/lang/Boolean;
    .locals 3

    .line 460
    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v0, 0x15200514

    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/car/hardware/property/CarPropertyManager;->getBooleanProperty(II)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 462
    :catchall_0
    invoke-virtual {p0, v0}, Lcom/geely/drivemem/car/CarAccess;->readHvacFlag(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public readRegen()Ljava/lang/Integer;
    .locals 6

    .line 142
    sget-object v0, Lcom/geely/drivemem/util/Modes;->REGEN_AREAS:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 143
    :try_start_0
    iget-object v4, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const v5, 0x20020500

    invoke-virtual {v4, v5, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public readSetpoint()F
    .locals 1

    const/4 v0, 0x1

    .line 155
    invoke-virtual {p0, v0}, Lcom/geely/drivemem/car/CarAccess;->readHvacTempArea(I)F

    move-result v0

    return v0
.end method

.method public readSpeed()Ljava/lang/Float;
    .locals 3

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const v1, 0x11600207

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAmbientBrightness(I)Z
    .locals 8

    const/16 v0, 0x14

    .line 298
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 299
    filled-new-array {v1, v0, v2}, [I

    move-result-object v1

    move v3, v0

    :goto_0
    const-string v4, "DriveMem"

    const/4 v5, 0x3

    if-ge v3, v5, :cond_0

    aget v5, v1, v3

    .line 300
    :try_start_0
    iget-object v6, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const v7, 0x2a010100

    invoke-virtual {v6, v7, v5, p1}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    .line 301
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "light brightness = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (area "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 304
    :cond_0
    const-string p1, "light brightness failed"

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setAmbientColor(I)Z
    .locals 12

    const v0, 0xffffff

    and-int/2addr p1, v0

    .line 235
    iget v1, p0, Lcom/geely/drivemem/car/CarAccess;->colorArea:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x5

    if-ne v1, v6, :cond_0

    .line 236
    new-array v1, v2, [I

    aput v6, v1, v4

    aput v4, v1, v5

    aput v5, v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 237
    new-array v1, v1, [I

    iget v7, p0, Lcom/geely/drivemem/car/CarAccess;->colorArea:I

    aput v7, v1, v4

    aput v6, v1, v5

    aput v4, v1, v3

    aput v5, v1, v2

    .line 239
    :goto_0
    array-length v2, v1

    move v3, v4

    move v6, v3

    :goto_1
    const-string v7, "ambient light: "

    const-string v8, "DriveMem"

    if-ge v3, v2, :cond_3

    aget v9, v1, v3

    .line 240
    :try_start_0
    iget-object v10, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const v11, 0x200a0900

    invoke-virtual {v10, v11, v9, p1}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-direct {p0, v9}, Lcom/geely/drivemem/car/CarAccess;->readAmbientColorArea(I)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_1

    .line 245
    iput v9, p0, Lcom/geely/drivemem/car/CarAccess;->colorArea:I

    .line 246
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "#%06X sent to area %d (no read-back)"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/drivemem/car/CarAccess;->ambientNote:Ljava/lang/String;

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->ambientNote:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 250
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    and-int/2addr v10, v0

    if-ne v10, p1, :cond_2

    .line 251
    iput v9, p0, Lcom/geely/drivemem/car/CarAccess;->colorArea:I

    .line 252
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "#%06X confirmed on area %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/drivemem/car/CarAccess;->ambientNote:Ljava/lang/String;

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->ambientNote:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 257
    :cond_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v9, v10, v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 256
    const-string v9, "area %d took #%06X but still reads #%06X"

    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/geely/drivemem/car/CarAccess;->ambientNote:Ljava/lang/String;

    .line 258
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/geely/drivemem/car/CarAccess;->ambientNote:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    :catchall_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_3
    if-nez v6, :cond_4

    .line 261
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "no area accepted #%06X"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/drivemem/car/CarAccess;->ambientNote:Ljava/lang/String;

    .line 262
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->ambientNote:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v4
.end method

.method public setChargeCurrentLimit(I)I
    .locals 6

    .line 200
    const-string v0, "charge: "

    const-string v1, "DriveMem"

    const/4 v2, 0x5

    if-ge p1, v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "A -> clamp 5"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    :cond_0
    const/16 v2, 0x20

    if-le p1, v2, :cond_1

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "A -> clamp 32"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 202
    filled-new-array {v0, v2}, [I

    move-result-object v2

    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    aget v3, v2, v0

    .line 203
    :try_start_0
    iget-object v4, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const v5, 0x24100600

    invoke-virtual {v4, v5, v3, p1}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "charge limit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "A (area "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public setCharging(I)Z
    .locals 5

    .line 394
    const-string v0, "DriveMem"

    .line 0
    const-string v1, "charge: setProperty "

    .line 394
    iget-object v2, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 396
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const v4, 0x24100100

    invoke-virtual {v2, v4, v3, p1}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OK"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v2

    .line 400
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public setFloatRaw(IIF)Z
    .locals 4

    .line 120
    const-string v0, "DriveMem"

    .line 0
    const-string v1, "setFloat "

    .line 120
    :try_start_0
    iget-object v2, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v2, p1, p2, p3}, Landroid/car/hardware/property/CarPropertyManager;->setFloatProperty(IIF)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    .line 121
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " failed: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public setHvacFlag(IZ)Z
    .locals 10

    .line 448
    const-string v0, " area="

    const-string v1, "hvac prop="

    const-string v2, "DriveMem"

    iget-object v3, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 449
    :cond_0
    sget-object v3, Lcom/geely/drivemem/car/CarAccess;->HVAC_FLAG_AREAS:[I

    array-length v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_1

    aget v7, v3, v6

    .line 451
    :try_start_0
    iget-object v8, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v8, p1, v7, p2}, Landroid/car/hardware/property/CarPropertyManager;->setBooleanProperty(IIZ)V

    .line 452
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " OK"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v8

    .line 454
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public setIntRaw(III)Z
    .locals 4

    .line 105
    const-string v0, "DriveMem"

    .line 0
    const-string v1, "setInt "

    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v2, p1, p2, p3}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    .line 106
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " failed: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public setParkMode(I)Z
    .locals 2

    const v0, 0x2140a817

    const/4 v1, 0x0

    .line 132
    invoke-virtual {p0, v0, v1, p1}, Lcom/geely/drivemem/car/CarAccess;->setIntRaw(III)Z

    move-result p1

    return p1
.end method

.method public setRearDefrost(Z)Z
    .locals 5

    .line 466
    const-string v0, "DriveMem"

    .line 0
    const-string v1, "hvac rear defrost = "

    .line 466
    iget-object v2, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const v2, 0x15200514

    .line 468
    :try_start_0
    iget-object v3, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4, p1}, Landroid/car/hardware/property/CarPropertyManager;->setBooleanProperty(IIZ)V

    .line 469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " OK"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v1

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hvac rear defrost area 2: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {p0, v2, p1}, Lcom/geely/drivemem/car/CarAccess;->setHvacFlag(IZ)Z

    move-result p1

    return p1
.end method

.method public unwatch(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    .locals 1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/property/CarPropertyManager;->unregisterCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public watch(ILandroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)Z
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 62
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, p1, v2}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "watch "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DriveMem"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public wrapFuncId(Landroid/content/Context;II)Ljava/lang/Integer;
    .locals 7

    const/4 v0, 0x0

    .line 545
    :try_start_0
    const-string v1, "com.ecarx.xui.adaptapi.car.Car"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 546
    const-string v2, "createWrapper"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 547
    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 549
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getWrappedPropertyId"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    .line 550
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 551
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 553
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPropertyId"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 554
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    :cond_2
    return-object v0

    :catchall_0
    move-exception p1

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wrapFuncId("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DriveMem"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public writeDrive(I)Z
    .locals 3

    .line 635
    sget-object v0, Lcom/geely/drivemem/util/Modes;->DRIVE_AREAS:[I

    const-string v1, "drive"

    const v2, 0x22010100

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/geely/drivemem/car/CarAccess;->writeAll(I[IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public writeHvacTemp(FI)Z
    .locals 4

    .line 377
    const-string v0, "DriveMem"

    .line 0
    const-string v1, "hvac temp SET area="

    const/high16 v2, 0x41800000    # 16.0f

    cmpg-float v3, p1, v2

    if-gez v3, :cond_0

    move p1, v2

    :cond_0
    const/high16 v2, 0x42000000    # 32.0f

    cmpl-float v3, p1, v2

    if-lez v3, :cond_1

    move p1, v2

    .line 378
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/geely/drivemem/car/CarAccess;->cpm:Landroid/car/hardware/property/CarPropertyManager;

    const v3, 0x15600503

    invoke-virtual {v2, v3, p2, p1}, Landroid/car/hardware/property/CarPropertyManager;->setFloatProperty(IIF)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 379
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "hvac temp SET failed: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public writeRegen(I)Z
    .locals 3

    .line 636
    sget-object v0, Lcom/geely/drivemem/util/Modes;->REGEN_AREAS:[I

    const-string v1, "regen"

    const v2, 0x20020500

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/geely/drivemem/car/CarAccess;->writeAll(I[IILjava/lang/String;)Z

    move-result p1

    return p1
.end method
