.class public final Lcom/geely/drivemem/sensors/EnergyIntegrator$TripSnapshot;
.super Ljava/lang/Object;
.source "EnergyIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/sensors/EnergyIntegrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TripSnapshot"
.end annotation


# instance fields
.field public final netKwh:D

.field public final regenKwh:D

.field public final sampleCount:I

.field public final spentKwh:D


# direct methods
.method public constructor <init>(DDDI)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-wide p1, p0, Lcom/geely/drivemem/sensors/EnergyIntegrator$TripSnapshot;->spentKwh:D

    .line 85
    iput-wide p3, p0, Lcom/geely/drivemem/sensors/EnergyIntegrator$TripSnapshot;->regenKwh:D

    .line 86
    iput-wide p5, p0, Lcom/geely/drivemem/sensors/EnergyIntegrator$TripSnapshot;->netKwh:D

    .line 87
    iput p7, p0, Lcom/geely/drivemem/sensors/EnergyIntegrator$TripSnapshot;->sampleCount:I

    return-void
.end method
