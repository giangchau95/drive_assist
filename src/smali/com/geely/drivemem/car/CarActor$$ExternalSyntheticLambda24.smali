.class public final synthetic Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/geely/drivemem/car/CarActor$Poller;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final poll(Lcom/geely/drivemem/car/CarAccess;)Lcom/geely/drivemem/car/CarActor$Reading;
    .locals 0

    .line 0
    invoke-static {p1}, Lcom/geely/drivemem/car/CarActor;->lambda$new$5(Lcom/geely/drivemem/car/CarAccess;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p1

    return-object p1
.end method
