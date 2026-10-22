.class Lcom/geely/drivemem/services/TelemetryService$2;
.super Ljava/lang/Object;
.implements Landroid/location/LocationListener;
.source "TelemetryService.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/services/TelemetryService;->registerGps()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/services/TelemetryService;

.method constructor <init>(Lcom/geely/drivemem/services/TelemetryService;)V
  .registers 2
  .prologue
  .line 45
    iput-object p1, p0, Lcom/geely/drivemem/services/TelemetryService$2;->this$0:Lcom/geely/drivemem/services/TelemetryService;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
  .registers 2
  .prologue
  .line 46
    sput-object p1, Lcom/geely/drivemem/sensors/GpsReader;->live:Landroid/location/Location;
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
  .registers 2
  .prologue
  .line 49
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
  .registers 2
  .prologue
  .line 48
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
  .registers 4
  .prologue
  .line 47
    return-void
.end method
