.class Lcom/geely/drivemem/sensors/Obd2Reader$1;
.super Landroid/bluetooth/le/ScanCallback;
.source "Obd2Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/drivemem/sensors/Obd2Reader;->scanForCandidate(Landroid/bluetooth/le/BluetoothLeScanner;[Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$found:[Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$foundName:[Ljava/lang/String;

.field final synthetic val$seen:Ljava/util/Set;


# direct methods
.method constructor <init>([Landroid/bluetooth/BluetoothDevice;Ljava/util/Set;[Ljava/lang/String;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$1;->val$found:[Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Lcom/geely/drivemem/sensors/Obd2Reader$1;->val$seen:Ljava/util/Set;

    iput-object p3, p0, Lcom/geely/drivemem/sensors/Obd2Reader$1;->val$foundName:[Ljava/lang/String;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFailed(I)V
    .locals 2

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "obd2: ble scan failed, error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DriveMem"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 5

    .line 584
    iget-object p1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$1;->val$found:[Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    return-void

    .line 585
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 586
    iget-object v1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$1;->val$seen:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 594
    :cond_1
    invoke-static {p2}, Lcom/geely/drivemem/sensors/Obd2Reader;->-$$Nest$smscanRecordName(Landroid/bluetooth/le/ScanResult;)Ljava/lang/String;

    move-result-object p2

    .line 595
    invoke-static {p1}, Lcom/geely/drivemem/sensors/Obd2Reader;->-$$Nest$smsafeName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_2

    move-object v2, p2

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 597
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "obd2: ble saw \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" (adv="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, " cached="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ") "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "DriveMem"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-static {v2}, Lcom/geely/drivemem/sensors/Obd2Reader;->-$$Nest$smmatchesHint(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/geely/drivemem/sensors/Obd2Reader$1;->val$found:[Landroid/bluetooth/BluetoothDevice;

    aput-object p1, p2, v0

    iget-object p1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$1;->val$foundName:[Ljava/lang/String;

    aput-object v2, p1, v0

    :cond_3
    :goto_1
    return-void
.end method
