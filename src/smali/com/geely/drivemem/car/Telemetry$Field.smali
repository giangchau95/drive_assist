.class public final Lcom/geely/drivemem/car/Telemetry$Field;
.super Ljava/lang/Object;
.source "Telemetry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/car/Telemetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Field"
.end annotation


# instance fields
.field public final devClass:Ljava/lang/String;

.field public final div:F

.field public final key:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final prop:I

.field public final round:I

.field public final type:C

.field public final unit:Ljava/lang/String;


# direct methods
.method constructor <init>(ICFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v8, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 27
    invoke-direct/range {v0 .. v8}, Lcom/geely/drivemem/car/Telemetry$Field;-><init>(ICFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(ICFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/geely/drivemem/car/Telemetry$Field;->prop:I

    iput-char p2, p0, Lcom/geely/drivemem/car/Telemetry$Field;->type:C

    iput p3, p0, Lcom/geely/drivemem/car/Telemetry$Field;->div:F

    .line 31
    iput-object p4, p0, Lcom/geely/drivemem/car/Telemetry$Field;->key:Ljava/lang/String;

    iput-object p5, p0, Lcom/geely/drivemem/car/Telemetry$Field;->name:Ljava/lang/String;

    iput-object p6, p0, Lcom/geely/drivemem/car/Telemetry$Field;->unit:Ljava/lang/String;

    iput-object p7, p0, Lcom/geely/drivemem/car/Telemetry$Field;->devClass:Ljava/lang/String;

    .line 32
    iput p8, p0, Lcom/geely/drivemem/car/Telemetry$Field;->round:I

    return-void
.end method
