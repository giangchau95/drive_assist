.class public Lcom/geely/drivemem/car/Telemetry;
.super Ljava/lang/Object;
.source "Telemetry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/drivemem/car/Telemetry$Field;
    }
.end annotation


# static fields
.field public static final BATTERY_CAPACITY_KWH:D = 39.6

.field private static final CAPACITY_WH:D = 39600.0

.field public static final FIELDS:[Lcom/geely/drivemem/car/Telemetry$Field;

.field private static final POWER_WINDOW_MS:J = 0x7530L

.field private static lastPowerSoc:Ljava/lang/Double;

.field private static lastPowerSocAtMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x9

    .line 44
    new-array v0, v0, [Lcom/geely/drivemem/car/Telemetry$Field;

    new-instance v10, Lcom/geely/drivemem/car/Telemetry$Field;

    const-string v8, "battery"

    const/4 v9, 0x0

    const v2, 0x2140a6ed

    const/16 v3, 0x66

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v5, "battery"

    const-string v6, "Battery"

    const-string v7, "%"

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/geely/drivemem/car/Telemetry$Field;-><init>(ICFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x0

    aput-object v10, v0, v1

    new-instance v1, Lcom/geely/drivemem/car/Telemetry$Field;

    const-string v8, "km"

    const-string v9, "distance"

    const v3, 0x11400204

    const/16 v4, 0x66

    const/high16 v5, 0x3f800000    # 1.0f

    const-string v6, "odometer"

    const-string v7, "Odometer"

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/geely/drivemem/car/Telemetry$Field;-><init>(ICFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/geely/drivemem/car/Telemetry$Field;

    const-string v9, "km"

    const-string v10, "distance"

    const v4, 0x11400308

    const/16 v5, 0x66

    const/high16 v6, 0x3f800000    # 1.0f

    const-string v7, "range"

    const-string v8, "Range"

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/geely/drivemem/car/Telemetry$Field;-><init>(ICFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/geely/drivemem/car/Telemetry$Field;

    const-string v9, "km/h"

    const/4 v10, 0x0

    const v4, 0x11600207

    const-string v7, "speed"

    const-string v8, "Speed"

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/geely/drivemem/car/Telemetry$Field;-><init>(ICFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/geely/drivemem/car/Telemetry$Field;

    const/4 v9, 0x0

    const v4, 0x11400401

    const/16 v5, 0x69

    const-string v7, "gear"

    const-string v8, "Gear"

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/geely/drivemem/car/Telemetry$Field;-><init>(ICFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/geely/drivemem/car/Telemetry$Field;

    const v4, 0x15200510

    const/16 v5, 0x62

    const-string v7, "ac_on"

    const-string v8, "AC on"

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/geely/drivemem/car/Telemetry$Field;-><init>(ICFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/geely/drivemem/car/Telemetry$Field;

    const-string v9, "km"

    const-string v10, "distance"

    const v4, 0x2740a679

    const/16 v5, 0x66

    const-string v7, "trip_km"

    const-string v8, "Trip total"

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/geely/drivemem/car/Telemetry$Field;-><init>(ICFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/geely/drivemem/car/Telemetry$Field;

    const-string v9, "A"

    const-string v10, "current"

    const v4, 0x24140200

    const-string v7, "charge_a"

    const-string v8, "Charge current"

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/geely/drivemem/car/Telemetry$Field;-><init>(ICFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/geely/drivemem/car/Telemetry$Field;

    const-string v9, "V"

    const-string v10, "voltage"

    const v4, 0x24140100

    const-string v7, "charge_v"

    const-string v8, "Charge voltage"

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/geely/drivemem/car/Telemetry$Field;-><init>(ICFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/geely/drivemem/car/Telemetry;->FIELDS:[Lcom/geely/drivemem/car/Telemetry$Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dropZeroOdometer(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 170
    const-string v0, "odometer"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 171
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static gearLabel(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    .line 281
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 280
    :cond_0
    const-string p0, "D"

    return-object p0

    :cond_1
    const-string p0, "P"

    return-object p0

    :cond_2
    const-string p0, "R"

    return-object p0

    :cond_3
    const-string p0, "N"

    return-object p0
.end method

.method public static getLastPowerSocAtMsForTesting()J
    .locals 2

    .line 266
    sget-wide v0, Lcom/geely/drivemem/car/Telemetry;->lastPowerSocAtMs:J

    return-wide v0
.end method

.method public static getLastPowerSocForTesting()Ljava/lang/Double;
    .locals 1

    .line 265
    sget-object v0, Lcom/geely/drivemem/car/Telemetry;->lastPowerSoc:Ljava/lang/Double;

    return-object v0
.end method

.method public static parkTimerCode(Ljava/lang/String;)I
    .locals 0

    .line 275
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDataHub;->parkCode(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static parkTimerLabel(I)Ljava/lang/String;
    .locals 0

    .line 272
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDataHub;->parkLabel(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static read(Lcom/geely/drivemem/car/CarAccess;Ljava/lang/Boolean;)Ljava/util/LinkedHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/drivemem/car/CarAccess;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 257
    invoke-static {p0, p1}, Lcom/geely/drivemem/car/Telemetry;->tick(Lcom/geely/drivemem/car/CarAccess;Ljava/lang/Boolean;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static resetForTesting()V
    .locals 2

    const/4 v0, 0x0

    .line 261
    sput-object v0, Lcom/geely/drivemem/car/Telemetry;->lastPowerSoc:Ljava/lang/Double;

    const-wide/16 v0, 0x0

    .line 262
    sput-wide v0, Lcom/geely/drivemem/car/Telemetry;->lastPowerSocAtMs:J

    return-void
.end method

.method static roundFor(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5

    .line 65
    sget-object v0, Lcom/geely/drivemem/car/Telemetry;->FIELDS:[Lcom/geely/drivemem/car/Telemetry$Field;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/geely/drivemem/car/Telemetry$Field;->key:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget p0, v3, Lcom/geely/drivemem/car/Telemetry$Field;->round:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static snapshot(Lcom/geely/drivemem/car/CarAccess;Ljava/lang/Boolean;)Ljava/util/LinkedHashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/drivemem/car/CarAccess;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 81
    sget-object v1, Lcom/geely/drivemem/car/Telemetry;->FIELDS:[Lcom/geely/drivemem/car/Telemetry$Field;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_7

    aget-object v6, v1, v4

    const/high16 v7, 0x1000000

    .line 82
    filled-new-array {v3, v5, v7}, [I

    move-result-object v5

    move v7, v3

    :goto_1
    const/4 v8, 0x3

    if-ge v7, v8, :cond_6

    aget v8, v5, v7

    .line 83
    iget-char v9, v6, Lcom/geely/drivemem/car/Telemetry$Field;->type:C

    const/16 v10, 0x62

    if-ne v9, v10, :cond_1

    .line 85
    iget v9, v6, Lcom/geely/drivemem/car/Telemetry$Field;->prop:I

    invoke-virtual {p0, v9, v8}, Lcom/geely/drivemem/car/CarAccess;->readBool(II)Ljava/lang/Boolean;

    move-result-object v8

    if-nez v8, :cond_0

    goto/16 :goto_2

    .line 87
    :cond_0
    iget-object v5, v6, Lcom/geely/drivemem/car/Telemetry$Field;->key:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 90
    :cond_1
    iget v9, v6, Lcom/geely/drivemem/car/Telemetry$Field;->prop:I

    iget-char v10, v6, Lcom/geely/drivemem/car/Telemetry$Field;->type:C

    invoke-virtual {p0, v9, v8, v10}, Lcom/geely/drivemem/car/CarAccess;->readAny(IIC)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    goto :goto_2

    .line 93
    :cond_2
    :try_start_0
    iget-char v9, v6, Lcom/geely/drivemem/car/Telemetry$Field;->type:C

    const/16 v10, 0x66

    if-ne v9, v10, :cond_5

    .line 94
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iget v9, v6, Lcom/geely/drivemem/car/Telemetry$Field;->div:F

    div-float/2addr v8, v9

    .line 95
    iget v9, v6, Lcom/geely/drivemem/car/Telemetry$Field;->round:I

    if-nez v9, :cond_3

    .line 96
    iget-object v9, v6, Lcom/geely/drivemem/car/Telemetry$Field;->key:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 97
    :cond_3
    iget v9, v6, Lcom/geely/drivemem/car/Telemetry$Field;->round:I

    if-lez v9, :cond_4

    .line 98
    iget v9, v6, Lcom/geely/drivemem/car/Telemetry$Field;->round:I

    int-to-double v9, v9

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    .line 99
    iget-object v11, v6, Lcom/geely/drivemem/car/Telemetry$Field;->key:Ljava/lang/String;

    float-to-double v12, v8

    mul-double/2addr v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    div-double/2addr v12, v9

    double-to-float v8, v12

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v0, v11, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 101
    :cond_4
    iget-object v9, v6, Lcom/geely/drivemem/car/Telemetry$Field;->key:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 104
    :cond_5
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    float-to-int v8, v8

    .line 105
    iget-object v9, v6, Lcom/geely/drivemem/car/Telemetry$Field;->key:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 111
    :cond_7
    invoke-static {v0}, Lcom/geely/drivemem/car/Telemetry;->dropZeroOdometer(Ljava/util/Map;)V

    .line 113
    const-string v1, "gear"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 114
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_8

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/geely/drivemem/car/Telemetry;->gearLabel(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gear_label"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const v1, 0x2140b085

    const/16 v2, 0x69

    .line 122
    invoke-virtual {p0, v1, v3, v2}, Lcom/geely/drivemem/car/CarAccess;->readAny(IIC)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 124
    :try_start_1
    const-string v2, "plug_connected"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v5

    goto :goto_4

    :cond_9
    move v1, v3

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_a
    if-eqz p1, :cond_c

    .line 148
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_charging"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_c

    .line 151
    const-string p1, "charge_a"

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_b
    const-string p1, "charge_v"

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_c
    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarAccess;->readParkMode()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 159
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_d

    move v3, v5

    :cond_d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "park_mode"

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/geely/drivemem/car/Telemetry;->parkTimerLabel(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_e
    const-string p0, "\u2014"

    :goto_5
    const-string p1, "park_timer"

    invoke-virtual {v0, p1, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-object v0
.end method

.method public static tick(Lcom/geely/drivemem/car/CarAccess;Ljava/lang/Boolean;)Ljava/util/LinkedHashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/drivemem/car/CarAccess;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 178
    invoke-static {p0, p1}, Lcom/geely/drivemem/car/Telemetry;->snapshot(Lcom/geely/drivemem/car/CarAccess;Ljava/lang/Boolean;)Ljava/util/LinkedHashMap;

    move-result-object p0

    const-wide/16 v0, 0x3a98

    .line 188
    invoke-static {v0, v1}, Lcom/geely/drivemem/sensors/Obd2Reader;->freshPowerKw(J)Ljava/lang/Float;

    move-result-object p1

    .line 200
    const-string v0, "battery_raw_pct"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    instance-of v1, v0, Ljava/lang/Float;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_1

    .line 202
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 204
    sget-object v7, Lcom/geely/drivemem/car/Telemetry;->lastPowerSoc:Ljava/lang/Double;

    if-eqz v7, :cond_0

    .line 205
    sget-wide v8, Lcom/geely/drivemem/car/Telemetry;->lastPowerSocAtMs:J

    sub-long v8, v5, v8

    const-wide/16 v10, 0x7530

    cmp-long v10, v8, v10

    if-ltz v10, :cond_1

    .line 207
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v2, v0

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v10

    long-to-double v7, v8

    const-wide v9, 0x414b774000000000L    # 3600000.0

    div-double/2addr v7, v9

    const-wide v9, 0x40e3560000000000L    # 39600.0

    mul-double/2addr v2, v9

    div-double/2addr v2, v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v9

    double-to-float v2, v2

    .line 210
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 212
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/geely/drivemem/car/Telemetry;->lastPowerSoc:Ljava/lang/Double;

    .line 213
    sput-wide v5, Lcom/geely/drivemem/car/Telemetry;->lastPowerSocAtMs:J

    move-wide v3, v7

    goto :goto_0

    .line 216
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/geely/drivemem/car/Telemetry;->lastPowerSoc:Ljava/lang/Double;

    .line 217
    sput-wide v5, Lcom/geely/drivemem/car/Telemetry;->lastPowerSocAtMs:J

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v2

    .line 221
    :goto_1
    invoke-static {p1}, Lcom/geely/drivemem/sensors/EnergyIntegrator;->drainWindow(Ljava/lang/Float;)Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;

    move-result-object p1

    .line 224
    iget-object v0, p1, Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;->instantPowerKw:Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 225
    iget-object v0, p1, Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;->instantPowerKw:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "instant_power_kw_est"

    invoke-virtual {p0, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_3
    iget-object v0, p1, Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;->instantPowerSpentKw:Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 228
    iget-object v0, p1, Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;->instantPowerSpentKw:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "power_spent_kw"

    invoke-virtual {p0, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_4
    iget-object v0, p1, Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;->instantPowerRegenKw:Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 231
    iget-object v0, p1, Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;->instantPowerRegenKw:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "power_regen_kw"

    invoke-virtual {p0, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_5
    iget-wide v0, p1, Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;->spentKwh:D

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "energy_spent_kwh"

    invoke-virtual {p0, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-wide v0, p1, Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;->regenKwh:D

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "energy_regen_kwh"

    invoke-virtual {p0, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-wide v0, p1, Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;->netKwh:D

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "energy_net_kwh"

    invoke-virtual {p0, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget v0, p1, Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;->sampleCount:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "energy_measured"

    invoke-virtual {p0, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget p1, p1, Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;->sampleCount:I

    if-lez p1, :cond_7

    const-string p1, "measured"

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    .line 243
    const-string p1, "estimated"

    goto :goto_3

    :cond_8
    const-string p1, "no_data"

    .line 242
    :goto_3
    const-string v0, "energy_quality"

    invoke-virtual {p0, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_b

    .line 248
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_9

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v5, p1

    mul-double/2addr v5, v3

    double-to-float p1, v5

    goto :goto_4

    :cond_9
    move p1, v0

    :goto_4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 247
    const-string v1, "energy_spent_est_kwh"

    invoke-virtual {p0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_a

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    neg-float p1, p1

    float-to-double v0, p1

    mul-double/2addr v0, v3

    double-to-float v0, v0

    :cond_a
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 249
    const-string v0, "energy_regen_est_kwh"

    invoke-virtual {p0, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-object p0
.end method
