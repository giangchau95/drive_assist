.class public final synthetic Lcom/geely/drivemem/sensors/Obd2Reader$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/geely/drivemem/sensors/Obd2Reader$SocketFactory;


# instance fields
.field public final synthetic f$0:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final make()Landroid/bluetooth/BluetoothSocket;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/geely/drivemem/sensors/Obd2Reader$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/geely/drivemem/sensors/Obd2Reader;->lambda$classicConnect$2(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    return-object v0
.end method
