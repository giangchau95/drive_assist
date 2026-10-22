.class public Lcom/geely/drivemem/sensors/GpsReader;
.super Ljava/lang/Object;
.source "GpsReader.java"


# static fields
.field static final TAG:Ljava/lang/String; = "DriveMem"

.field public static volatile live:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroid/content/Context;)[D
    .locals 16

    .line 26
    const-string v1, "DriveMem"

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "location"

    move-object/from16 v3, p0

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 27
    sget-object v3, Lcom/geely/drivemem/sensors/GpsReader;->live:Landroid/location/Location;

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v3, :cond_1

    .line 41
    new-array v8, v5, [Ljava/lang/String;

    const-string v9, "gps"

    aput-object v9, v8, v7

    const-string v9, "passive"

    aput-object v9, v8, v6

    const-string v9, "network"

    aput-object v9, v8, v4

    move v9, v7

    :goto_0
    if-ge v9, v5, :cond_1

    aget-object v10, v8, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    invoke-virtual {v0, v10}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_0

    move-object v3, v10

    goto :goto_1

    :catchall_0
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 45
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gps without permission: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    :goto_1
    if-nez v3, :cond_2

    return-object v2

    .line 51
    :cond_2
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v8, v10

    if-gez v0, :cond_3

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v0, v8, v10

    if-gez v0, :cond_3

    return-object v2

    .line 53
    :cond_3
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v12

    .line 54
    invoke-virtual {v3}, Landroid/location/Location;->getBearing()F

    move-result v0

    float-to-double v14, v0

    invoke-virtual {v3}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-double v4, v0

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v2, v0

    const/4 v0, 0x6

    new-array v0, v0, [D

    aput-wide v8, v0, v7

    aput-wide v10, v0, v6

    const/4 v6, 0x2

    aput-wide v12, v0, v6

    const/4 v6, 0x3

    aput-wide v14, v0, v6

    const/4 v6, 0x4

    aput-wide v4, v0, v6

    const/4 v4, 0x5

    aput-wide v2, v0, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gps read error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method
