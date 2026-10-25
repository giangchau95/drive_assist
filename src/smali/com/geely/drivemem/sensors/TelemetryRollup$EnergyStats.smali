.class final Lcom/geely/drivemem/sensors/TelemetryRollup$EnergyStats;
.super Ljava/lang/Object;
.source "TelemetryRollup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/sensors/TelemetryRollup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EnergyStats"
.end annotation


# instance fields
.field final energySource:Lcom/geely/drivemem/sensors/EnergySource;

.field final netKwh:D

.field final regenKwh:D

.field final spentKwh:D


# direct methods
.method constructor <init>(DDDLcom/geely/drivemem/sensors/EnergySource;)V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-wide p1, p0, Lcom/geely/drivemem/sensors/TelemetryRollup$EnergyStats;->spentKwh:D

    iput-wide p3, p0, Lcom/geely/drivemem/sensors/TelemetryRollup$EnergyStats;->regenKwh:D

    iput-wide p5, p0, Lcom/geely/drivemem/sensors/TelemetryRollup$EnergyStats;->netKwh:D

    .line 224
    iput-object p7, p0, Lcom/geely/drivemem/sensors/TelemetryRollup$EnergyStats;->energySource:Lcom/geely/drivemem/sensors/EnergySource;

    return-void
.end method
