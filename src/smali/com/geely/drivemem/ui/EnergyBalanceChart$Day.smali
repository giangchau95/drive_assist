.class public final Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;
.super Ljava/lang/Object;
.source "EnergyBalanceChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/ui/EnergyBalanceChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Day"
.end annotation


# instance fields
.field public ac:D

.field public dc:D

.field public energySource:Lcom/geely/drivemem/sensors/EnergySource;

.field public final label:Ljava/lang/String;

.field public regen:D

.field public spent:D


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/geely/drivemem/sensors/EnergySource;->NO_DATA:Lcom/geely/drivemem/sensors/EnergySource;

    iput-object v0, p0, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;->energySource:Lcom/geely/drivemem/sensors/EnergySource;

    .line 33
    iput-object p1, p0, Lcom/geely/drivemem/ui/EnergyBalanceChart$Day;->label:Ljava/lang/String;

    return-void
.end method
