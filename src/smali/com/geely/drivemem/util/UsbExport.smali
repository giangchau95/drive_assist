.class public final Lcom/geely/drivemem/util/UsbExport;
.super Ljava/lang/Object;
.source "UsbExport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/drivemem/util/UsbExport$Callback;
    }
.end annotation


# static fields
.field private static final EXPORT_DIR:Ljava/lang/String; = "Drive Assist"

.field private static final STORAGE_ROOT:Ljava/io/File;

.field static final TAG:Ljava/lang/String; = "DriveMem"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/geely/drivemem/util/UsbExport;->STORAGE_ROOT:Ljava/io/File;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copy(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 78
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0x2000

    .line 80
    :try_start_1
    new-array p1, p1, [B

    .line 82
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 83
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 84
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw p0
.end method

.method public static varargs exportFiles(Lcom/geely/drivemem/util/UsbExport$Callback;[Ljava/io/File;)V
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/geely/drivemem/util/UsbExport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/geely/drivemem/util/UsbExport$$ExternalSyntheticLambda0;-><init>(Lcom/geely/drivemem/util/UsbExport$Callback;[Ljava/io/File;)V

    const-string p0, "usb-export"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static findDrive()Ljava/io/File;
    .locals 7

    .line 35
    sget-object v0, Lcom/geely/drivemem/util/UsbExport;->STORAGE_ROOT:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 37
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 38
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 39
    const-string v6, "emulated"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "self"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v4

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method static synthetic lambda$exportFiles$0(Lcom/geely/drivemem/util/UsbExport$Callback;[Ljava/io/File;)V
    .locals 11

    .line 50
    invoke-static {}, Lcom/geely/drivemem/util/UsbExport;->findDrive()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 52
    invoke-interface {p0, v1, p1, v1}, Lcom/geely/drivemem/util/UsbExport$Callback;->onDone(ZLjava/io/File;I)V

    :cond_0
    return-void

    .line 55
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, "Drive Assist"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "DriveMem"

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_3

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "usbexport: could not create "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    .line 58
    invoke-interface {p0, v1, v0, v1}, Lcom/geely/drivemem/util/UsbExport$Callback;->onDone(ZLjava/io/File;I)V

    :cond_2
    return-void

    .line 62
    :cond_3
    array-length v3, p1

    move v5, v1

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_6

    aget-object v7, p1, v5

    if-eqz v7, :cond_5

    .line 63
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    .line 65
    :cond_4
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7, v8}, Lcom/geely/drivemem/util/UsbExport;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception v8

    .line 68
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "usbexport: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    if-eqz p0, :cond_8

    if-lez v6, :cond_7

    const/4 v1, 0x1

    .line 71
    :cond_7
    invoke-interface {p0, v1, v0, v6}, Lcom/geely/drivemem/util/UsbExport$Callback;->onDone(ZLjava/io/File;I)V

    :cond_8
    return-void
.end method
