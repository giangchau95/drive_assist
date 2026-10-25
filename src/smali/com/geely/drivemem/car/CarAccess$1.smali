.class Lcom/geely/drivemem/car/CarAccess$1;
.super Ljava/lang/Object;
.source "CarAccess.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/drivemem/car/CarAccess;->connect(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/drivemem/car/CarAccess;


# direct methods
.method constructor <init>(Lcom/geely/drivemem/car/CarAccess;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/geely/drivemem/car/CarAccess$1;->this$0:Lcom/geely/drivemem/car/CarAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 33
    const-string p1, "DriveMem"

    const-string v0, "car disconnected \u2014 invalidating cpm"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p1, p0, Lcom/geely/drivemem/car/CarAccess$1;->this$0:Lcom/geely/drivemem/car/CarAccess;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/geely/drivemem/car/CarAccess;->-$$Nest$fputcpm(Lcom/geely/drivemem/car/CarAccess;Landroid/car/hardware/property/CarPropertyManager;)V

    return-void
.end method
