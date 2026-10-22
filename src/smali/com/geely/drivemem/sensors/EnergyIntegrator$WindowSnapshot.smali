.class public final Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;
.super Ljava/lang/Object;
.source "EnergyIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/sensors/EnergyIntegrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WindowSnapshot"
.end annotation


# instance fields
.field public final avgPowerKw:D

.field public final instantPowerKw:Ljava/lang/Double;

.field public final instantPowerRegenKw:Ljava/lang/Double;

.field public final instantPowerSpentKw:Ljava/lang/Double;

.field public final netKwh:D

.field public final regenKwh:D

.field public final sampleCount:I

.field public final spentKwh:D


# direct methods
.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;DDDID)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;->instantPowerKw:Ljava/lang/Double;

    .line 66
    iput-object p2, p0, Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;->instantPowerSpentKw:Ljava/lang/Double;

    .line 67
    iput-object p3, p0, Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;->instantPowerRegenKw:Ljava/lang/Double;

    .line 68
    iput-wide p4, p0, Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;->spentKwh:D

    .line 69
    iput-wide p6, p0, Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;->regenKwh:D

    .line 70
    iput-wide p8, p0, Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;->netKwh:D

    .line 71
    iput p10, p0, Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;->sampleCount:I

    .line 72
    iput-wide p11, p0, Lcom/geely/drivemem/sensors/EnergyIntegrator$WindowSnapshot;->avgPowerKw:D

    return-void
.end method
