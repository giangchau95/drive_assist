.class final Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;
.super Ljava/lang/Object;
.source "Obd2Reader.java"

# interfaces
.implements Lcom/geely/drivemem/sensors/Obd2Reader$Channel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/sensors/Obd2Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BleChannel"
.end annotation


# instance fields
.field private volatile cmdLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile connectedFlag:Z

.field private final gatt:Landroid/bluetooth/BluetoothGatt;

.field private final notifyChar:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private final rxBuf:Ljava/lang/StringBuilder;

.field private final writeChar:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method static bridge synthetic -$$Nest$fgetcmdLatch(Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->cmdLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrxBuf(Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->rxBuf:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputconnectedFlag(Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->connectedFlag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smpickCharacteristics(Landroid/bluetooth/BluetoothGatt;[Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->pickCharacteristics(Landroid/bluetooth/BluetoothGatt;[Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method private constructor <init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->rxBuf:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 637
    iput-boolean v0, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->connectedFlag:Z

    .line 640
    iput-object p1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->gatt:Landroid/bluetooth/BluetoothGatt;

    iput-object p2, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->writeChar:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object p3, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->notifyChar:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method static connect(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 645
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v2, 0x2

    .line 646
    new-array v3, v2, [Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 647
    new-array v4, v1, [Ljava/lang/String;

    .line 648
    new-array v5, v1, [Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;

    .line 650
    new-instance v6, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;

    invoke-direct {v6, v4, v0, v5, v3}, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;-><init>([Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;[Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;[Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 713
    invoke-virtual {p1, p0, v1, v6, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p0

    const/4 p1, 0x0

    .line 715
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x4e20

    invoke-virtual {v0, v6, v7, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v0, p1

    :goto_0
    if-eqz v0, :cond_1

    .line 718
    aget-object v0, v3, p1

    if-eqz v0, :cond_1

    aget-object v1, v3, v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 722
    :cond_0
    new-instance v2, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;

    invoke-direct {v2, p0, v0, v1}, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;-><init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 723
    aput-object v2, v5, p1

    return-object v2

    .line 719
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 720
    :catchall_0
    new-instance p0, Ljava/io/IOException;

    aget-object p1, v4, p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, "timeout waiting for BLE service"

    :goto_2
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static pickCharacteristics(Landroid/bluetooth/BluetoothGatt;[Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 8

    .line 728
    invoke-static {}, Lcom/geely/drivemem/sensors/Obd2Reader;->-$$Nest$sfgetVLINK_SERVICE()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 735
    invoke-static {}, Lcom/geely/drivemem/sensors/Obd2Reader;->-$$Nest$sfgetVLINK_TX()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 736
    invoke-static {}, Lcom/geely/drivemem/sensors/Obd2Reader;->-$$Nest$sfgetVLINK_RX()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 737
    aput-object v3, p1, v2

    aput-object v0, p1, v1

    return-void

    .line 739
    :cond_0
    invoke-static {}, Lcom/geely/drivemem/sensors/Obd2Reader;->-$$Nest$sfgetHM10_SERVICE()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 741
    invoke-static {}, Lcom/geely/drivemem/sensors/Obd2Reader;->-$$Nest$sfgetHM10_CHAR()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 742
    aput-object v0, p1, v2

    aput-object v0, p1, v1

    return-void

    .line 744
    :cond_1
    invoke-static {}, Lcom/geely/drivemem/sensors/Obd2Reader;->-$$Nest$sfgetNUS_SERVICE()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 746
    invoke-static {}, Lcom/geely/drivemem/sensors/Obd2Reader;->-$$Nest$sfgetNUS_TX()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 747
    invoke-static {}, Lcom/geely/drivemem/sensors/Obd2Reader;->-$$Nest$sfgetNUS_RX()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 748
    aput-object v3, p1, v2

    aput-object v0, p1, v1

    return-void

    .line 753
    :cond_2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 755
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 756
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v6

    if-nez v3, :cond_5

    and-int/lit8 v7, v6, 0xc

    if-eqz v7, :cond_5

    move-object v3, v5

    :cond_5
    if-nez v4, :cond_4

    and-int/lit8 v6, v6, 0x30

    if-eqz v6, :cond_4

    move-object v4, v5

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 762
    aput-object v3, p1, v2

    aput-object v4, p1, v1

    :cond_7
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 770
    :try_start_0
    iget-object v0, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    iget-object v0, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    .line 771
    iput-boolean v0, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->connectedFlag:Z

    return-void
.end method

.method public command(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 776
    iget-object v0, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->rxBuf:Ljava/lang/StringBuilder;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->rxBuf:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 777
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 778
    iput-object v0, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->cmdLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x0

    .line 780
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "US-ASCII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 781
    iget-object v4, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->writeChar:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 784
    iget-object v1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->writeChar:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 785
    iget-object v1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->writeChar:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_1

    return-object v2

    .line 786
    :cond_1
    :try_start_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xfa0

    invoke-virtual {v0, v3, v4, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 787
    :catch_0
    :try_start_3
    iput-object v2, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->cmdLatch:Ljava/util/concurrent/CountDownLatch;

    .line 788
    iget-boolean v0, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->connectedFlag:Z

    if-nez v0, :cond_2

    return-object v2

    .line 789
    :cond_2
    iget-object v0, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->rxBuf:Ljava/lang/StringBuilder;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->rxBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ">"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    .line 791
    const-string v1, "DriveMem"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "obd2: ble command "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catchall_2
    move-exception p1

    .line 776
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method public isConnected()Z
    .locals 1

    .line 766
    iget-boolean v0, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->connectedFlag:Z

    return v0
.end method
