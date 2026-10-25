.class final Lcom/geely/drivemem/sensors/Obd2Reader$ClassicChannel;
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
    name = "ClassicChannel"
.end annotation


# instance fields
.field private volatile alive:Z

.field private final in:Ljava/io/InputStream;

.field private final out:Ljava/io/OutputStream;

.field private final sock:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 475
    iput-boolean v0, p0, Lcom/geely/drivemem/sensors/Obd2Reader$ClassicChannel;->alive:Z

    .line 477
    iput-object p1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$ClassicChannel;->sock:Landroid/bluetooth/BluetoothSocket;

    .line 478
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/drivemem/sensors/Obd2Reader$ClassicChannel;->in:Ljava/io/InputStream;

    .line 479
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$ClassicChannel;->out:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/geely/drivemem/sensors/Obd2Reader$ClassicChannel;->sock:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public command(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$ClassicChannel;->out:Ljava/io/OutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "US-ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 498
    iget-object v1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$ClassicChannel;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xfa0

    add-long/2addr v2, v4

    .line 501
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_3

    .line 502
    iget-object v4, p0, Lcom/geely/drivemem/sensors/Obd2Reader$ClassicChannel;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    if-lez v4, :cond_2

    .line 503
    iget-object v4, p0, Lcom/geely/drivemem/sensors/Obd2Reader$ClassicChannel;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    if-gez v4, :cond_0

    .line 505
    iput-boolean v0, p0, Lcom/geely/drivemem/sensors/Obd2Reader$ClassicChannel;->alive:Z

    goto :goto_1

    :cond_0
    int-to-char v4, v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 512
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0xc

    .line 514
    invoke-static {v4, v5}, Lcom/geely/drivemem/sensors/Obd2Reader;->-$$Nest$smsleep(J)V

    goto :goto_0

    .line 517
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v1

    .line 519
    iput-boolean v0, p0, Lcom/geely/drivemem/sensors/Obd2Reader$ClassicChannel;->alive:Z

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "obd2: classic command "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DriveMem"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public isConnected()Z
    .locals 1

    .line 482
    iget-boolean v0, p0, Lcom/geely/drivemem/sensors/Obd2Reader$ClassicChannel;->alive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/drivemem/sensors/Obd2Reader$ClassicChannel;->sock:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
