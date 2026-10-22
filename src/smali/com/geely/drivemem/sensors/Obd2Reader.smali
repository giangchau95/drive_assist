.class public final Lcom/geely/drivemem/sensors/Obd2Reader;
.super Ljava/lang/Object;
.source "Obd2Reader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/drivemem/sensors/Obd2Reader$Listener;,
        Lcom/geely/drivemem/sensors/Obd2Reader$Reading;,
        Lcom/geely/drivemem/sensors/Obd2Reader$Channel;,
        Lcom/geely/drivemem/sensors/Obd2Reader$ClassicChannel;,
        Lcom/geely/drivemem/sensors/Obd2Reader$SocketFactory;,
        Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;
    }
.end annotation


# static fields
.field private static final BLE_CONNECT_TIMEOUT_MS:J = 0x4e20L

.field private static final BLE_SCAN_MS:J = 0x1770L

.field private static final CCCD:Ljava/util/UUID;

.field private static final CMD_TIMEOUT_MS:J = 0xfa0L

.field private static final HM10_CHAR:Ljava/util/UUID;

.field private static final HM10_SERVICE:Ljava/util/UUID;

.field private static final INIT_CMDS:[Ljava/lang/String;

.field private static final LOG_CAP_BYTES:J = 0x500000L

.field private static final LOG_FMT:Ljava/text/SimpleDateFormat;

.field private static final MAX_REASONABLE_BATT_TEMP_C:D = 70.0

.field private static final MIN_REASONABLE_BATT_TEMP_C:D = -30.0

.field private static final NAME_HINTS:[Ljava/lang/String;

.field private static final NUS_RX:Ljava/util/UUID;

.field private static final NUS_SERVICE:Ljava/util/UUID;

.field private static final NUS_TX:Ljava/util/UUID;

.field private static final POLL_MS:J = 0x7d0L

.field private static final RETRY_MS:J = 0xafc8L

.field static final TAG:Ljava/lang/String; = "DriveMem"

.field private static final VLINK_RX:Ljava/util/UUID;

.field private static final VLINK_SERVICE:Ljava/util/UUID;

.field private static final VLINK_TX:Ljava/util/UUID;

.field private static volatile appCtx:Landroid/content/Context;

.field private static volatile battTempC:Ljava/lang/Double;

.field private static volatile connected:Z

.field private static volatile current:Ljava/lang/Double;

.field private static volatile enabledWanted:Z

.field private static volatile lastReadingAtMs:J

.field private static final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/drivemem/sensors/Obd2Reader$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile powerKw:Ljava/lang/Double;

.field private static volatile readerThread:Ljava/lang/Thread;

.field private static volatile reportedSpeedKmh:Ljava/lang/Integer;

.field private static volatile running:Z

.field private static volatile soc:Ljava/lang/Double;

.field private static volatile voltage:Ljava/lang/Double;


# direct methods
.method public static synthetic $r8$lambda$Z8TfW92xOWq4OU2hyuD2ikwUJn0(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetCCCD()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->CCCD:Ljava/util/UUID;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetHM10_CHAR()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->HM10_CHAR:Ljava/util/UUID;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetHM10_SERVICE()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->HM10_SERVICE:Ljava/util/UUID;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetNUS_RX()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->NUS_RX:Ljava/util/UUID;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetNUS_SERVICE()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->NUS_SERVICE:Ljava/util/UUID;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetNUS_TX()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->NUS_TX:Ljava/util/UUID;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetVLINK_RX()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->VLINK_RX:Ljava/util/UUID;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetVLINK_SERVICE()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->VLINK_SERVICE:Ljava/util/UUID;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetVLINK_TX()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->VLINK_TX:Ljava/util/UUID;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smmatchesHint(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/geely/drivemem/sensors/Obd2Reader;->matchesHint(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smsafeName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/geely/drivemem/sensors/Obd2Reader;->safeName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smscanRecordName(Landroid/bluetooth/le/ScanResult;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/geely/drivemem/sensors/Obd2Reader;->scanRecordName(Landroid/bluetooth/le/ScanResult;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smsleep(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/geely/drivemem/sensors/Obd2Reader;->sleep(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x8

    .line 46
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "OBD"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ELM"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "ENGIE"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "V-LINK"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "VLINK"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "VEEPEAK"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "OBDII"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "ECU"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sput-object v1, Lcom/geely/drivemem/sensors/Obd2Reader;->NAME_HINTS:[Ljava/lang/String;

    const/16 v1, 0xa

    .line 52
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ATZ"

    aput-object v2, v1, v3

    const-string v2, "ATE0"

    aput-object v2, v1, v4

    const-string v2, "ATSP6"

    aput-object v2, v1, v5

    const-string v2, "ATM0"

    aput-object v2, v1, v6

    const-string v2, "ATS0"

    aput-object v2, v1, v7

    const-string v2, "ATAL"

    aput-object v2, v1, v8

    const-string v2, "ATAT1"

    aput-object v2, v1, v9

    const-string v2, "ATH1"

    aput-object v2, v1, v10

    const-string v2, "ATST64"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-string v2, "ATSH7E2"

    aput-object v2, v1, v0

    sput-object v1, Lcom/geely/drivemem/sensors/Obd2Reader;->INIT_CMDS:[Ljava/lang/String;

    .line 72
    sput-boolean v3, Lcom/geely/drivemem/sensors/Obd2Reader;->enabledWanted:Z

    .line 73
    sput-boolean v3, Lcom/geely/drivemem/sensors/Obd2Reader;->running:Z

    .line 78
    sput-boolean v3, Lcom/geely/drivemem/sensors/Obd2Reader;->connected:Z

    const-wide/16 v0, 0x0

    .line 85
    sput-wide v0, Lcom/geely/drivemem/sensors/Obd2Reader;->lastReadingAtMs:J

    .line 130
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->listeners:Ljava/util/List;

    .line 213
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->LOG_FMT:Ljava/text/SimpleDateFormat;

    .line 530
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->CCCD:Ljava/util/UUID;

    .line 536
    const-string v0, "000018f0-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->VLINK_SERVICE:Ljava/util/UUID;

    .line 537
    const-string v0, "00002af0-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->VLINK_RX:Ljava/util/UUID;

    .line 538
    const-string v0, "00002af1-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->VLINK_TX:Ljava/util/UUID;

    .line 539
    const-string v0, "0000ffe0-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->HM10_SERVICE:Ljava/util/UUID;

    .line 540
    const-string v0, "0000ffe1-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->HM10_CHAR:Ljava/util/UUID;

    .line 541
    const-string v0, "6e400001-b5a3-f393-e0a9-e50e24dcca9e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->NUS_SERVICE:Ljava/util/UUID;

    .line 542
    const-string v0, "6e400002-b5a3-f393-e0a9-e50e24dcca9e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->NUS_TX:Ljava/util/UUID;

    .line 543
    const-string v0, "6e400003-b5a3-f393-e0a9-e50e24dcca9e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->NUS_RX:Ljava/util/UUID;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyReading(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 810
    const-string v3, "4B36"

    const/4 v4, 0x2

    move-object/from16 v5, p0

    invoke-static {v5, v3, v4}, Lcom/geely/drivemem/sensors/Obd2Reader;->parseDataBytes(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object v3

    .line 811
    const-string v5, "4B21"

    invoke-static {v0, v5, v4}, Lcom/geely/drivemem/sensors/Obd2Reader;->parseDataBytes(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object v5

    .line 812
    const-string v6, "4B22"

    invoke-static {v1, v6, v4}, Lcom/geely/drivemem/sensors/Obd2Reader;->parseDataBytes(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object v4

    .line 813
    const-string v6, "4B48"

    const/4 v7, 0x1

    invoke-static {v2, v6, v7}, Lcom/geely/drivemem/sensors/Obd2Reader;->parseDataBytes(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object v6

    .line 814
    const-string v8, "DF01"

    move-object/from16 v9, p4

    invoke-static {v9, v8, v7}, Lcom/geely/drivemem/sensors/Obd2Reader;->parseDataBytes(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object v8

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v3, :cond_0

    .line 816
    aget v13, v3, v12

    mul-int/lit16 v13, v13, 0x100

    aget v3, v3, v7

    add-int/2addr v13, v3

    int-to-double v13, v13

    div-double/2addr v13, v9

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v11

    :goto_0
    if-eqz v5, :cond_1

    .line 817
    aget v13, v5, v12

    mul-int/lit16 v13, v13, 0x100

    aget v5, v5, v7

    add-int/2addr v13, v5

    int-to-double v13, v13

    div-double/2addr v13, v9

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v11

    :goto_1
    if-eqz v4, :cond_2

    .line 821
    aget v13, v4, v12

    mul-int/lit16 v13, v13, 0x100

    aget v4, v4, v7

    add-int/2addr v13, v4

    add-int/lit16 v13, v13, -0x1388

    int-to-double v13, v13

    div-double/2addr v13, v9

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v11

    :goto_2
    if-eqz v6, :cond_3

    .line 827
    aget v9, v6, v12

    int-to-double v9, v9

    const-wide/high16 v13, 0x4044000000000000L    # 40.0

    sub-double/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_3

    :cond_3
    move-object v9, v11

    .line 828
    :goto_3
    const-string v10, "\")"

    const-string v13, "DriveMem"

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/high16 v16, -0x3fc2000000000000L    # -30.0

    cmpg-double v14, v14, v16

    if-ltz v14, :cond_4

    .line 829
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide v16, 0x4051800000000000L    # 70.0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_5

    .line 830
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "obd2: battery temperature outside reasonable range: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " C (raw=0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    aget v6, v6, v12

    .line 831
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%02X"

    invoke-static {v15, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", response=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 830
    invoke-static {v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v8, :cond_6

    .line 834
    aget v2, v8, v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :cond_6
    if-eqz v3, :cond_7

    .line 836
    sput-object v3, Lcom/geely/drivemem/sensors/Obd2Reader;->soc:Ljava/lang/Double;

    :cond_7
    if-eqz v5, :cond_8

    .line 837
    sput-object v5, Lcom/geely/drivemem/sensors/Obd2Reader;->voltage:Ljava/lang/Double;

    :cond_8
    if-eqz v4, :cond_9

    .line 838
    sput-object v4, Lcom/geely/drivemem/sensors/Obd2Reader;->current:Ljava/lang/Double;

    :cond_9
    if-eqz v9, :cond_a

    .line 839
    sput-object v9, Lcom/geely/drivemem/sensors/Obd2Reader;->battTempC:Ljava/lang/Double;

    :cond_a
    if-eqz v11, :cond_b

    .line 840
    sput-object v11, Lcom/geely/drivemem/sensors/Obd2Reader;->reportedSpeedKmh:Ljava/lang/Integer;

    .line 850
    :cond_b
    sget-object v2, Lcom/geely/drivemem/sensors/Obd2Reader;->voltage:Ljava/lang/Double;

    if-eqz v2, :cond_c

    sget-object v2, Lcom/geely/drivemem/sensors/Obd2Reader;->current:Ljava/lang/Double;

    if-eqz v2, :cond_c

    sget-object v2, Lcom/geely/drivemem/sensors/Obd2Reader;->voltage:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sget-object v2, Lcom/geely/drivemem/sensors/Obd2Reader;->current:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    sput-object v2, Lcom/geely/drivemem/sensors/Obd2Reader;->powerKw:Ljava/lang/Double;

    :cond_c
    if-eqz v5, :cond_d

    if-nez v4, :cond_10

    .line 858
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "obd2: power PID incomplete this round -- volt="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_e

    const/4 v6, 0x1

    goto :goto_4

    :cond_e
    move v6, v12

    :goto_4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " (\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\") curr="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v4, :cond_f

    const/4 v2, 0x1

    goto :goto_5

    :cond_f
    move v2, v12

    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-nez v3, :cond_12

    if-nez v5, :cond_12

    if-eqz v4, :cond_11

    goto :goto_6

    :cond_11
    move v7, v12

    goto :goto_7

    :cond_12
    :goto_6
    const/4 v7, 0x1

    :goto_7
    if-eqz v7, :cond_13

    .line 864
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/geely/drivemem/sensors/Obd2Reader;->lastReadingAtMs:J

    invoke-static {}, Lcom/geely/drivemem/sensors/Obd2Reader;->notifyReading()V

    :cond_13
    return v7
.end method

.method private static classicConnect(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothSocket;
    .locals 2

    .line 420
    new-instance v0, Lcom/geely/drivemem/sensors/Obd2Reader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/geely/drivemem/sensors/Obd2Reader$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-static {v0}, Lcom/geely/drivemem/sensors/Obd2Reader;->tryStrategy(Lcom/geely/drivemem/sensors/Obd2Reader$SocketFactory;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x5dc

    .line 425
    invoke-static {v0, v1}, Lcom/geely/drivemem/sensors/Obd2Reader;->sleep(J)V

    .line 427
    new-instance v0, Lcom/geely/drivemem/sensors/Obd2Reader$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/geely/drivemem/sensors/Obd2Reader$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-static {v0}, Lcom/geely/drivemem/sensors/Obd2Reader;->tryStrategy(Lcom/geely/drivemem/sensors/Obd2Reader$SocketFactory;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized ensureStarted(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/geely/drivemem/sensors/Obd2Reader;

    monitor-enter v0

    .line 196
    :try_start_0
    invoke-static {p0}, Lcom/geely/drivemem/util/Prefs;->getObd2Enabled(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/geely/drivemem/sensors/Obd2Reader;->enabledWanted:Z

    .line 197
    sget-boolean v1, Lcom/geely/drivemem/sensors/Obd2Reader;->enabledWanted:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/geely/drivemem/sensors/Obd2Reader;->running:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 198
    sput-boolean v1, Lcom/geely/drivemem/sensors/Obd2Reader;->running:Z

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 200
    sput-object p0, Lcom/geely/drivemem/sensors/Obd2Reader;->appCtx:Landroid/content/Context;

    .line 201
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/geely/drivemem/sensors/Obd2Reader$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/geely/drivemem/sensors/Obd2Reader$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;)V

    const-string p0, "obd2-reader"

    invoke-direct {v2, v3, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 203
    sput-object v2, Lcom/geely/drivemem/sensors/Obd2Reader;->readerThread:Ljava/lang/Thread;

    .line 204
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_0
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

.method public static forceReconnectSoon()V
    .locals 1

    .line 250
    sget-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->readerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method private static fresh(J)Z
    .locals 4

    .line 168
    sget-wide v0, Lcom/geely/drivemem/sensors/Obd2Reader;->lastReadingAtMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/geely/drivemem/sensors/Obd2Reader;->lastReadingAtMs:J

    sub-long/2addr v0, v2

    cmp-long p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static freshBattTempC(J)Ljava/lang/Float;
    .locals 0

    .line 188
    invoke-static {p0, p1}, Lcom/geely/drivemem/sensors/Obd2Reader;->fresh(J)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/geely/drivemem/sensors/Obd2Reader;->battTempC:Ljava/lang/Double;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/geely/drivemem/sensors/Obd2Reader;->battTempC:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static freshCurrent(J)Ljava/lang/Float;
    .locals 0

    .line 184
    invoke-static {p0, p1}, Lcom/geely/drivemem/sensors/Obd2Reader;->fresh(J)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/geely/drivemem/sensors/Obd2Reader;->current:Ljava/lang/Double;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/geely/drivemem/sensors/Obd2Reader;->current:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static freshPowerKw(J)Ljava/lang/Float;
    .locals 0

    .line 172
    invoke-static {p0, p1}, Lcom/geely/drivemem/sensors/Obd2Reader;->fresh(J)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/geely/drivemem/sensors/Obd2Reader;->powerKw:Ljava/lang/Double;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/geely/drivemem/sensors/Obd2Reader;->powerKw:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static freshSoc(J)Ljava/lang/Float;
    .locals 0

    .line 176
    invoke-static {p0, p1}, Lcom/geely/drivemem/sensors/Obd2Reader;->fresh(J)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/geely/drivemem/sensors/Obd2Reader;->soc:Ljava/lang/Double;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/geely/drivemem/sensors/Obd2Reader;->soc:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static freshVoltage(J)Ljava/lang/Float;
    .locals 0

    .line 180
    invoke-static {p0, p1}, Lcom/geely/drivemem/sensors/Obd2Reader;->fresh(J)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/geely/drivemem/sensors/Obd2Reader;->voltage:Ljava/lang/Double;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/geely/drivemem/sensors/Obd2Reader;->voltage:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static hasBondedClassicCandidate()Z
    .locals 3

    .line 402
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 403
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 406
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 407
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/geely/drivemem/sensors/Obd2Reader;->matchesHint(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public static isConnected()Z
    .locals 1

    .line 164
    sget-boolean v0, Lcom/geely/drivemem/sensors/Obd2Reader;->connected:Z

    return v0
.end method

.method static synthetic lambda$classicConnect$1(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothSocket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 421
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const-string v3, "createRfcommSocket"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 422
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothSocket;

    return-object p0
.end method

.method static synthetic lambda$classicConnect$2(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothSocket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 428
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const-string v3, "createInsecureRfcommSocket"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 429
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothSocket;

    return-object p0
.end method

.method static synthetic lambda$ensureStarted$0(Landroid/content/Context;)V
    .locals 0

    .line 201
    invoke-static {p0}, Lcom/geely/drivemem/sensors/Obd2Reader;->loop(Landroid/content/Context;)V

    return-void
.end method

.method private static logReading(Lcom/geely/drivemem/sensors/Obd2Reader$Reading;)V
    .locals 6

    .line 217
    sget-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->appCtx:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/geely/drivemem/sensors/Obd2Reader;->LOG_FMT:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/geely/drivemem/sensors/Obd2Reader$Reading;->atMs:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/geely/drivemem/sensors/Obd2Reader$Reading;->soc:Ljava/lang/Double;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/geely/drivemem/sensors/Obd2Reader$Reading;->voltage:Ljava/lang/Double;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/geely/drivemem/sensors/Obd2Reader$Reading;->current:Ljava/lang/Double;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/geely/drivemem/sensors/Obd2Reader$Reading;->powerKw:Ljava/lang/Double;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/geely/drivemem/sensors/Obd2Reader$Reading;->battTempC:Ljava/lang/Double;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/geely/drivemem/sensors/Obd2Reader$Reading;->speedKmh:Ljava/lang/Integer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 225
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    .line 227
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 229
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v2, "obd2-reading.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x500000

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 231
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 233
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    .line 234
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_3

    .line 237
    :try_start_1
    const-string v0, "wall\tsoc\tvoltage\tcurrent\tpowerKw\tbattTempC\tspeedKmh\n"

    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 239
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 242
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "obd2: reading log write: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DriveMem"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static loop(Landroid/content/Context;)V
    .locals 8

    .line 277
    const-string v0, "obd2: reader thread started"

    const-string v1, "DriveMem"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/geely/drivemem/sensors/Obd2Reader;->enabledWanted:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const-wide/32 v3, 0xafc8

    const/4 v0, 0x0

    .line 281
    :try_start_0
    const-string v5, "obd2: attempt \u2014 trying classic bonded devices first"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {}, Lcom/geely/drivemem/sensors/Obd2Reader;->openClassic()Lcom/geely/drivemem/sensors/Obd2Reader$Channel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 291
    invoke-static {}, Lcom/geely/drivemem/sensors/Obd2Reader;->hasBondedClassicCandidate()Z

    move-result v5

    if-nez v5, :cond_1

    .line 292
    const-string v5, "obd2: no classic match, trying BLE scan"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-static {p0}, Lcom/geely/drivemem/sensors/Obd2Reader;->openBle(Landroid/content/Context;)Lcom/geely/drivemem/sensors/Obd2Reader$Channel;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 296
    const-string v5, "obd2: nothing found this attempt, retrying in 45s"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {v3, v4}, Lcom/geely/drivemem/sensors/Obd2Reader;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    invoke-static {v2}, Lcom/geely/drivemem/sensors/Obd2Reader;->setConnected(Z)V

    if-eqz v0, :cond_0

    .line 307
    invoke-interface {v0}, Lcom/geely/drivemem/sensors/Obd2Reader$Channel;->close()V

    goto :goto_0

    .line 300
    :cond_2
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "obd2: connected ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static {v0}, Lcom/geely/drivemem/sensors/Obd2Reader;->runSession(Lcom/geely/drivemem/sensors/Obd2Reader$Channel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    invoke-static {v2}, Lcom/geely/drivemem/sensors/Obd2Reader;->setConnected(Z)V

    if-eqz v0, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v5

    .line 303
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "obd2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 305
    invoke-static {v2}, Lcom/geely/drivemem/sensors/Obd2Reader;->setConnected(Z)V

    if-eqz v0, :cond_3

    .line 307
    :goto_1
    invoke-interface {v0}, Lcom/geely/drivemem/sensors/Obd2Reader$Channel;->close()V

    .line 310
    :cond_3
    sget-boolean v0, Lcom/geely/drivemem/sensors/Obd2Reader;->enabledWanted:Z

    if-eqz v0, :cond_0

    .line 311
    invoke-static {v3, v4}, Lcom/geely/drivemem/sensors/Obd2Reader;->sleep(J)V

    goto/16 :goto_0

    :catchall_1
    move-exception p0

    .line 305
    invoke-static {v2}, Lcom/geely/drivemem/sensors/Obd2Reader;->setConnected(Z)V

    if-eqz v0, :cond_4

    .line 307
    invoke-interface {v0}, Lcom/geely/drivemem/sensors/Obd2Reader$Channel;->close()V

    .line 309
    :cond_4
    throw p0

    .line 314
    :cond_5
    sput-boolean v2, Lcom/geely/drivemem/sensors/Obd2Reader;->running:Z

    return-void
.end method

.method private static matchesHint(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 460
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 461
    sget-object v1, Lcom/geely/drivemem/sensors/Obd2Reader;->NAME_HINTS:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 462
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static notifyReading()V
    .locals 10

    .line 152
    new-instance v9, Lcom/geely/drivemem/sensors/Obd2Reader$Reading;

    sget-object v1, Lcom/geely/drivemem/sensors/Obd2Reader;->soc:Ljava/lang/Double;

    sget-object v2, Lcom/geely/drivemem/sensors/Obd2Reader;->voltage:Ljava/lang/Double;

    sget-object v3, Lcom/geely/drivemem/sensors/Obd2Reader;->current:Ljava/lang/Double;

    sget-object v4, Lcom/geely/drivemem/sensors/Obd2Reader;->battTempC:Ljava/lang/Double;

    sget-object v5, Lcom/geely/drivemem/sensors/Obd2Reader;->powerKw:Ljava/lang/Double;

    sget-object v6, Lcom/geely/drivemem/sensors/Obd2Reader;->reportedSpeedKmh:Ljava/lang/Integer;

    sget-wide v7, Lcom/geely/drivemem/sensors/Obd2Reader;->lastReadingAtMs:J

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/geely/drivemem/sensors/Obd2Reader$Reading;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;J)V

    .line 153
    invoke-static {v9}, Lcom/geely/drivemem/sensors/Obd2Reader;->logReading(Lcom/geely/drivemem/sensors/Obd2Reader$Reading;)V

    .line 154
    sget-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/drivemem/sensors/Obd2Reader$Listener;

    .line 155
    invoke-interface {v1, v9}, Lcom/geely/drivemem/sensors/Obd2Reader$Listener;->onObd2Reading(Lcom/geely/drivemem/sensors/Obd2Reader$Reading;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static openBle(Landroid/content/Context;)Lcom/geely/drivemem/sensors/Obd2Reader$Channel;
    .locals 6

    .line 547
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    .line 548
    const-string v2, "DriveMem"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 549
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v3

    if-nez v3, :cond_1

    .line 550
    const-string p0, "obd2: ble skipped \u2014 no BLE scanner on this radio"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const/4 v4, 0x1

    .line 552
    new-array v4, v4, [Landroid/bluetooth/BluetoothDevice;

    .line 553
    invoke-static {v3, v4}, Lcom/geely/drivemem/sensors/Obd2Reader;->scanForCandidate(Landroid/bluetooth/le/BluetoothLeScanner;[Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 554
    aget-object v4, v4, v5

    if-nez v4, :cond_2

    const-string p0, "obd2: ble scan found no name match (see obd2: ble saw ... lines above)"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 563
    :cond_2
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 565
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "obd2: ble connecting to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :try_start_0
    invoke-static {p0, v0}, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "obd2: ble connect: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 548
    :cond_3
    :goto_0
    const-string p0, "obd2: ble skipped \u2014 adapter off/missing"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static openClassic()Lcom/geely/drivemem/sensors/Obd2Reader$Channel;
    .locals 7

    .line 356
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 357
    const-string v1, "DriveMem"

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 361
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_1

    .line 363
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 365
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "obd2: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bonded device(s): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 366
    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/geely/drivemem/sensors/Obd2Reader$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/geely/drivemem/sensors/Obd2Reader$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    const-string v6, ", "

    invoke-static {v6}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 365
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 369
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/geely/drivemem/sensors/Obd2Reader;->matchesHint(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_3
    move-object v4, v2

    :goto_0
    if-nez v4, :cond_4

    return-object v2

    .line 378
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "obd2: classic connecting to "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 380
    invoke-static {v4}, Lcom/geely/drivemem/sensors/Obd2Reader;->classicConnect(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    if-nez v0, :cond_5

    .line 382
    const-string v0, "obd2: classic connect failed (all 3 strategies)"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 386
    :cond_5
    :try_start_0
    new-instance v1, Lcom/geely/drivemem/sensors/Obd2Reader$ClassicChannel;

    invoke-direct {v1, v0}, Lcom/geely/drivemem/sensors/Obd2Reader$ClassicChannel;-><init>(Landroid/bluetooth/BluetoothSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 389
    :catch_0
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v2

    .line 358
    :cond_6
    :goto_1
    const-string v0, "obd2: classic skipped \u2014 adapter off/missing"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private static parseDataBytes(Ljava/lang/String;Ljava/lang/String;I)[I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 875
    :cond_0
    const-string v1, "[^0-9A-Fa-f]"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 876
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "62"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 877
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    return-object v0

    .line 879
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v1, p1

    mul-int/lit8 p1, p2, 0x2

    add-int/2addr p1, v1

    .line 880
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le p1, v2, :cond_2

    return-object v0

    .line 881
    :cond_2
    new-array p1, p2, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_3

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    add-int/lit8 v4, v3, 0x2

    .line 884
    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, p1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    return-object v0

    :cond_3
    return-object p1
.end method

.method static resetForTest()V
    .locals 2

    const/4 v0, 0x0

    .line 91
    sput-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->soc:Ljava/lang/Double;

    sput-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->voltage:Ljava/lang/Double;

    sput-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->current:Ljava/lang/Double;

    sput-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->battTempC:Ljava/lang/Double;

    .line 92
    sput-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->powerKw:Ljava/lang/Double;

    sput-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->reportedSpeedKmh:Ljava/lang/Integer;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/geely/drivemem/sensors/Obd2Reader;->lastReadingAtMs:J

    return-void
.end method

.method private static runSession(Lcom/geely/drivemem/sensors/Obd2Reader$Channel;)V
    .locals 5

    .line 330
    sget-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->INIT_CMDS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 331
    invoke-interface {p0, v3}, Lcom/geely/drivemem/sensors/Obd2Reader$Channel;->command(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 333
    invoke-static {v0}, Lcom/geely/drivemem/sensors/Obd2Reader;->setConnected(Z)V

    .line 334
    :goto_1
    sget-boolean v0, Lcom/geely/drivemem/sensors/Obd2Reader;->enabledWanted:Z

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/geely/drivemem/sensors/Obd2Reader$Channel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    const-string v0, "224B36"

    invoke-interface {p0, v0}, Lcom/geely/drivemem/sensors/Obd2Reader$Channel;->command(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    const-string v1, "224B21"

    invoke-interface {p0, v1}, Lcom/geely/drivemem/sensors/Obd2Reader$Channel;->command(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 337
    const-string v2, "224B22"

    invoke-interface {p0, v2}, Lcom/geely/drivemem/sensors/Obd2Reader$Channel;->command(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 338
    const-string v3, "224B48"

    invoke-interface {p0, v3}, Lcom/geely/drivemem/sensors/Obd2Reader$Channel;->command(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    const-string v4, "22DF01"

    invoke-interface {p0, v4}, Lcom/geely/drivemem/sensors/Obd2Reader$Channel;->command(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 340
    invoke-static {v0, v1, v2, v3, v4}, Lcom/geely/drivemem/sensors/Obd2Reader;->applyReading(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-wide/16 v0, 0x7d0

    .line 341
    invoke-static {v0, v1}, Lcom/geely/drivemem/sensors/Obd2Reader;->sleep(J)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static safeName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 0

    .line 617
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static scanForCandidate(Landroid/bluetooth/le/BluetoothLeScanner;[Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    .line 580
    new-array v0, v0, [Ljava/lang/String;

    .line 581
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 582
    new-instance v2, Lcom/geely/drivemem/sensors/Obd2Reader$1;

    invoke-direct {v2, p1, v1, v0}, Lcom/geely/drivemem/sensors/Obd2Reader$1;-><init>([Landroid/bluetooth/BluetoothDevice;Ljava/util/Set;[Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 605
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1770

    add-long/2addr v3, v5

    .line 607
    :goto_0
    aget-object v5, p1, v1

    if-nez v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-gez v5, :cond_0

    const-wide/16 v5, 0xc8

    invoke-static {v5, v6}, Lcom/geely/drivemem/sensors/Obd2Reader;->sleep(J)V

    goto :goto_0

    .line 608
    :cond_0
    invoke-virtual {p0, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 610
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "obd2: ble scan: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DriveMem"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :goto_1
    aget-object p0, v0, v1

    return-object p0
.end method

.method private static scanRecordName(Landroid/bluetooth/le/ScanResult;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 622
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 623
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object v0
.end method

.method private static setConnected(Z)V
    .locals 2

    .line 142
    sget-boolean v0, Lcom/geely/drivemem/sensors/Obd2Reader;->connected:Z

    if-ne v0, p0, :cond_0

    return-void

    .line 145
    :cond_0
    sput-boolean p0, Lcom/geely/drivemem/sensors/Obd2Reader;->connected:Z

    .line 146
    sget-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/drivemem/sensors/Obd2Reader$Listener;

    .line 147
    invoke-interface {v1, p0}, Lcom/geely/drivemem/sensors/Obd2Reader$Listener;->onObd2ConnectedChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setEnabled(Landroid/content/Context;Z)V
    .locals 0

    .line 258
    invoke-static {p0, p1}, Lcom/geely/drivemem/util/Prefs;->setObd2Enabled(Landroid/content/Context;Z)V

    if-eqz p1, :cond_0

    .line 260
    invoke-static {p0}, Lcom/geely/drivemem/sensors/Obd2Reader;->ensureStarted(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 262
    sput-boolean p0, Lcom/geely/drivemem/sensors/Obd2Reader;->enabledWanted:Z

    :goto_0
    return-void
.end method

.method private static sleep(J)V
    .locals 0

    .line 319
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static subscribe(Lcom/geely/drivemem/sensors/Obd2Reader$Listener;)V
    .locals 1

    .line 134
    sget-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static tryStrategy(Lcom/geely/drivemem/sensors/Obd2Reader$SocketFactory;)Landroid/bluetooth/BluetoothSocket;
    .locals 4

    const/4 v0, 0x0

    .line 441
    :try_start_0
    invoke-interface {p0}, Lcom/geely/drivemem/sensors/Obd2Reader$SocketFactory;->make()Landroid/bluetooth/BluetoothSocket;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 442
    :try_start_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object p0, v0

    .line 445
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "obd2: classic strategy failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DriveMem"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 448
    :try_start_2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_0
    return-object v0
.end method

.method public static unsubscribe(Lcom/geely/drivemem/sensors/Obd2Reader$Listener;)V
    .locals 1

    .line 138
    sget-object v0, Lcom/geely/drivemem/sensors/Obd2Reader;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
