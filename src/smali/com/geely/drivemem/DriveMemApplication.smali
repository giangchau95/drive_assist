.class public final Lcom/geely/drivemem/DriveMemApplication;
.super Landroid/app/Application;
.source "DriveMemApplication.java"

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 19
    invoke-direct { p0 }, Landroid/app/Application;-><init>()V
    return-void
.end method

.method public onCreate()V
  .registers 1
  .prologue
  .line 21
    invoke-super { p0 }, Landroid/app/Application;->onCreate()V
  .line 22
    invoke-static { p0 }, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;
  .line 23
    invoke-static { p0 }, Lcom/geely/drivemem/util/DbMigration;->runOnce(Landroid/content/Context;)V
  .line 24
    invoke-static { p0 }, Lcom/geely/drivemem/sensors/TelemetryRollup;->runIfDue(Landroid/content/Context;)V
  .line 25
    invoke-static { }, Lcom/geely/drivemem/state/CarState;->ensureSubscribed()V
  .line 26
    invoke-static { p0 }, Lcom/geely/drivemem/state/ChargeSession;->ensureSubscribed(Landroid/content/Context;)V
  .line 27
    invoke-static { p0 }, Lcom/geely/drivemem/sensors/TelemetrySampler;->ensureSubscribed(Landroid/content/Context;)V
  .line 28
    invoke-static { p0 }, Lcom/geely/drivemem/state/TripSession;->ensureSubscribed(Landroid/content/Context;)V
  .line 29
    invoke-static { p0 }, Lcom/geely/drivemem/state/ParkSession;->ensureSubscribed(Landroid/content/Context;)V
  .line 30
    invoke-static { p0 }, Lcom/geely/drivemem/state/ParkingState;->ensureSubscribed(Landroid/content/Context;)V
  .line 31
    invoke-static { p0 }, Lcom/geely/drivemem/state/ValetSession;->ensureSubscribed(Landroid/content/Context;)V
  .line 32
    invoke-static { p0 }, Lcom/geely/drivemem/sensors/EnergyIntegrator;->ensureSubscribed(Landroid/content/Context;)V
  .line 33
    invoke-static { p0 }, Lcom/geely/drivemem/sensors/Obd2Reader;->ensureStarted(Landroid/content/Context;)V
  .line 34
    return-void
.end method
