.class Lcom/geely/drivemem/sensors/EnergyIntegrator$1;
.super Ljava/lang/Object;
.source "EnergyIntegrator.java"

# interfaces
.implements Lcom/geely/drivemem/sensors/Obd2Reader$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/drivemem/sensors/EnergyIntegrator;->ensureSubscribed(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onObd2ConnectedChanged(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 101
    invoke-static {}, Lcom/geely/drivemem/sensors/EnergyIntegrator;->-$$Nest$sfgetLOCK()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const-wide/16 v0, 0x0

    .line 102
    :try_start_0
    invoke-static {v0, v1}, Lcom/geely/drivemem/sensors/EnergyIntegrator;->-$$Nest$sfputlastSampleMonoMs(J)V

    const/4 v0, 0x0

    .line 103
    invoke-static {v0}, Lcom/geely/drivemem/sensors/EnergyIntegrator;->-$$Nest$sfputlastPowerKw(Ljava/lang/Double;)V

    .line 104
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public onObd2Reading(Lcom/geely/drivemem/sensors/Obd2Reader$Reading;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p1, Lcom/geely/drivemem/sensors/Obd2Reader$Reading;->powerKw:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lcom/geely/drivemem/sensors/EnergyIntegrator;->nowMono()J

    move-result-wide v0

    iget-object p1, p1, Lcom/geely/drivemem/sensors/Obd2Reader$Reading;->powerKw:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/geely/drivemem/sensors/EnergyIntegrator;->onPowerReading(JD)V

    :cond_0
    return-void
.end method
