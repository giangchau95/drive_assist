.class public final Lcom/geely/drivemem/sensors/DailyStatsProvider$DayEnergyBalance;
.super Ljava/lang/Object;
.source "DailyStatsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/sensors/DailyStatsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DayEnergyBalance"
.end annotation


# instance fields
.field public acKwh:D

.field public final date:Ljava/lang/String;

.field public dcKwh:D

.field public energySource:Lcom/geely/drivemem/sensors/EnergySource;

.field public regenKwh:D

.field public spentKwh:D


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    sget-object v0, Lcom/geely/drivemem/sensors/EnergySource;->NO_DATA:Lcom/geely/drivemem/sensors/EnergySource;

    iput-object v0, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayEnergyBalance;->energySource:Lcom/geely/drivemem/sensors/EnergySource;

    .line 651
    iput-object p1, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DayEnergyBalance;->date:Ljava/lang/String;

    return-void
.end method
