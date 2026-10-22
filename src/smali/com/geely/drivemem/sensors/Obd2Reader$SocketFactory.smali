.class interface abstract Lcom/geely/drivemem/sensors/Obd2Reader$SocketFactory;
.super Ljava/lang/Object;
.source "Obd2Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/sensors/Obd2Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SocketFactory"
.end annotation


# virtual methods
.method public abstract make()Landroid/bluetooth/BluetoothSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
