.class public final Lcom/geely/drivemem/car/CarDataHub$Range;
.super Ljava/lang/Object;
.source "CarDataHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/car/CarDataHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Range"
.end annotation


# instance fields
.field public final max:D

.field public final min:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/geely/drivemem/car/CarDataHub$Range;->min:D

    iput-wide p3, p0, Lcom/geely/drivemem/car/CarDataHub$Range;->max:D

    return-void
.end method


# virtual methods
.method public clamp(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 24
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_3

    .line 26
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-nez p1, :cond_2

    .line 29
    iget-wide v2, p0, Lcom/geely/drivemem/car/CarDataHub$Range;->min:D

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    move-wide v0, v2

    .line 30
    :cond_0
    iget-wide v2, p0, Lcom/geely/drivemem/car/CarDataHub$Range;->max:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_1

    move-wide v0, v2

    .line 31
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 28
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected a finite number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected a number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
