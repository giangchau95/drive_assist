.class Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "Obd2Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$error:[Ljava/lang/String;

.field final synthetic val$picked:[Landroid/bluetooth/BluetoothGattCharacteristic;

.field final synthetic val$ready:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$self:[Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;


# direct methods
.method constructor <init>([Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;[Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;[Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$error:[Ljava/lang/String;

    iput-object p2, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$ready:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$self:[Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;

    iput-object p4, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$picked:[Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4

    .line 699
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    if-eqz p1, :cond_2

    .line 700
    iget-object p2, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$self:[Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    if-nez p2, :cond_0

    goto :goto_0

    .line 701
    :cond_0
    invoke-static {p2}, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->-$$Nest$fgetrxBuf(Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;)Ljava/lang/StringBuilder;

    move-result-object p2

    monitor-enter p2

    .line 702
    :try_start_0
    iget-object v1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$self:[Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->-$$Nest$fgetrxBuf(Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    iget-object p1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$self:[Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->-$$Nest$fgetcmdLatch(Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    .line 704
    iget-object v1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$self:[Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->-$$Nest$fgetrxBuf(Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 705
    :cond_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "obd2: ble onConnectionStateChange status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " newState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DriveMem"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-ne p3, v0, :cond_0

    .line 655
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "obd2: ble discoverServices() started="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_3

    .line 658
    iget-object p1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$error:[Ljava/lang/String;

    const-string p2, "discoverServices() returned false"

    aput-object p2, p1, v2

    iget-object p1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$ready:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    :catch_0
    move-exception p1

    .line 656
    iget-object p2, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$error:[Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "discoverServices: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    iget-object p1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$ready:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_0
    if-nez p3, :cond_3

    .line 660
    iget-object p1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$self:[Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;

    aget-object p1, p1, v2

    if-eqz p1, :cond_1

    invoke-static {p1, v2}, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->-$$Nest$fputconnectedFlag(Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;Z)V

    .line 661
    :cond_1
    iget-object p1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$error:[Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "disconnected (status "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    .line 662
    iget-object p1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$ready:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 663
    iget-object p1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$self:[Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;

    aget-object p1, p1, v2

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->-$$Nest$fgetcmdLatch(Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 664
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    .line 696
    iget-object p1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$ready:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 5

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "obd2: ble onServicesDiscovered status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " services="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 669
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    const-string v1, "DriveMem"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 671
    iget-object p1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$error:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "discoverServices status "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    .line 672
    iget-object p1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$ready:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 675
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 676
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "obd2: ble service "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " chars="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 677
    :cond_1
    iget-object p2, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$picked:[Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-static {p1, p2}, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel;->-$$Nest$smpickCharacteristics(Landroid/bluetooth/BluetoothGatt;[Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 678
    iget-object p2, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$picked:[Landroid/bluetooth/BluetoothGattCharacteristic;

    aget-object v2, p2, v0

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    aget-object p2, p2, v2

    if-nez p2, :cond_2

    goto :goto_1

    .line 683
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "obd2: ble picked write="

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$picked:[Landroid/bluetooth/BluetoothGattCharacteristic;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " notify="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$picked:[Landroid/bluetooth/BluetoothGattCharacteristic;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :try_start_0
    iget-object p2, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$picked:[Landroid/bluetooth/BluetoothGattCharacteristic;

    aget-object p2, p2, v2

    invoke-virtual {p1, p2, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 686
    iget-object p2, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$picked:[Landroid/bluetooth/BluetoothGattCharacteristic;

    aget-object p2, p2, v2

    invoke-static {}, Lcom/geely/drivemem/sensors/Obd2Reader;->-$$Nest$sfgetCCCD()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 688
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 689
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 693
    :catch_0
    :cond_3
    iget-object p1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$ready:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 679
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$error:[Ljava/lang/String;

    const-string p2, "no UART-like service found (HM10/NUS/generic)"

    aput-object p2, p1, v0

    .line 680
    iget-object p1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$BleChannel$1;->val$ready:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
