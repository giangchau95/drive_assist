.class public final Lcom/geely/drivemem/util/Modes;
.super Ljava/lang/Object;
.source "Modes.java"


# static fields
.field public static final AC_AMBIENT_TEMP:I = 0x2140a377

.field public static final BATTERY_SOC:I = 0x2140a6ed

.field public static final DRIVE_AREAS:[I

.field public static final DRIVE_COMFORT:I = 0x22010102

.field public static final DRIVE_ECO:I = 0x22010101

.field public static final DRIVE_SPORT:I = 0x22010103

.field public static final FAN_AREAS:[I

.field public static final FAN_MAX:I = 0x8

.field public static final FAN_MIN:I = 0x1

.field public static final GEAR_PARK_ADAPTED:I = 0x4

.field public static final GEAR_SELECTION:I = 0x2140800f

.field public static final HVAC_FAN:I = 0x15400500

.field public static final HVAC_TEMP:I = 0x15600503

.field public static final PROP_DRIVE:I = 0x22010100

.field public static final PROP_REGEN:I = 0x20020500

.field public static final REGEN_AREAS:[I

.field public static final REGEN_HIGH:I = 0x20020503

.field public static final REGEN_LOW:I = 0x20020501

.field public static final REGEN_MID:I = 0x20020502


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/high16 v0, 0x1000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 16
    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/geely/drivemem/util/Modes;->DRIVE_AREAS:[I

    .line 17
    filled-new-array {v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/geely/drivemem/util/Modes;->REGEN_AREAS:[I

    const/16 v0, 0x4b

    .line 33
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/geely/drivemem/util/Modes;->FAN_AREAS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static driveName(I)Ljava/lang/String;
    .locals 2

    const v0, 0x22010101

    if-ne p0, v0, :cond_0

    .line 43
    const-string p0, "Eco"

    return-object p0

    :cond_0
    const v0, 0x22010102

    if-ne p0, v0, :cond_1

    .line 44
    const-string p0, "Comfort"

    return-object p0

    :cond_1
    const v0, 0x22010103

    if-ne p0, v0, :cond_2

    .line 45
    const-string p0, "Sport"

    return-object p0

    .line 46
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static regenName(I)Ljava/lang/String;
    .locals 2

    const v0, 0x20020501

    if-ne p0, v0, :cond_0

    .line 49
    const-string p0, "Low"

    return-object p0

    :cond_0
    const v0, 0x20020502

    if-ne p0, v0, :cond_1

    .line 50
    const-string p0, "Mid"

    return-object p0

    :cond_1
    const v0, 0x20020503

    if-ne p0, v0, :cond_2

    .line 51
    const-string p0, "High"

    return-object p0

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
