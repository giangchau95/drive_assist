.class public final Lcom/geely/drivemem/car/CarDataHub$Entity;
.super Ljava/lang/Object;
.source "CarDataHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/car/CarDataHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entity"
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field public final range:Lcom/geely/drivemem/car/CarDataHub$Range;

.field public final read:Lcom/geely/drivemem/car/CarDataHub$Read;

.field public final valueSet:Lcom/geely/drivemem/car/CarDataHub$ValueSet;

.field public final write:Lcom/geely/drivemem/car/CarDataHub$Write;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/geely/drivemem/car/CarDataHub$Read;Lcom/geely/drivemem/car/CarDataHub$Write;Lcom/geely/drivemem/car/CarDataHub$Range;Lcom/geely/drivemem/car/CarDataHub$ValueSet;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/geely/drivemem/car/CarDataHub$Entity;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/geely/drivemem/car/CarDataHub$Entity;->read:Lcom/geely/drivemem/car/CarDataHub$Read;

    iput-object p3, p0, Lcom/geely/drivemem/car/CarDataHub$Entity;->write:Lcom/geely/drivemem/car/CarDataHub$Write;

    .line 65
    iput-object p4, p0, Lcom/geely/drivemem/car/CarDataHub$Entity;->range:Lcom/geely/drivemem/car/CarDataHub$Range;

    iput-object p5, p0, Lcom/geely/drivemem/car/CarDataHub$Entity;->valueSet:Lcom/geely/drivemem/car/CarDataHub$ValueSet;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/geely/drivemem/car/CarDataHub$Read;Lcom/geely/drivemem/car/CarDataHub$Write;Lcom/geely/drivemem/car/CarDataHub$Range;Lcom/geely/drivemem/car/CarDataHub$ValueSet;Lcom/geely/drivemem/car/CarDataHub-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/geely/drivemem/car/CarDataHub$Entity;-><init>(Ljava/lang/String;Lcom/geely/drivemem/car/CarDataHub$Read;Lcom/geely/drivemem/car/CarDataHub$Write;Lcom/geely/drivemem/car/CarDataHub$Range;Lcom/geely/drivemem/car/CarDataHub$ValueSet;)V

    return-void
.end method
