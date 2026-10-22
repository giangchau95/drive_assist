.class Lcom/geely/drivemem/state/CarplayState$1;
.super Landroid/content/BroadcastReceiver;
.source "CarplayState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/drivemem/state/CarplayState;->ensureSubscribed(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$h:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/geely/drivemem/state/CarplayState$1;->val$h:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReceive$0(Landroid/os/Handler;)V
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/geely/drivemem/state/CarplayState;->-$$Nest$smreenableBluetoothIfOff(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 48
    const-string p1, "notification"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 49
    const-string p2, "connected"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "DriveMem"

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 50
    invoke-static {p1}, Lcom/geely/drivemem/state/CarplayState;->-$$Nest$sfputconnected(Z)V

    .line 51
    const-string p1, "carplay: connected"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object p1, p0, Lcom/geely/drivemem/state/CarplayState$1;->val$h:Landroid/os/Handler;

    new-instance p2, Lcom/geely/drivemem/state/CarplayState$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/geely/drivemem/state/CarplayState$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 53
    :cond_0
    const-string p2, "disconnected"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 54
    invoke-static {p1}, Lcom/geely/drivemem/state/CarplayState;->-$$Nest$sfputconnected(Z)V

    .line 55
    const-string p1, "carplay: disconnected"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
