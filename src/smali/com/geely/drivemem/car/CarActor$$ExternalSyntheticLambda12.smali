.class public final synthetic Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/geely/drivemem/car/CarActor;

.field public final synthetic f$1:Lcom/geely/drivemem/car/CarActor$ReadCallback;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/drivemem/car/CarActor;Lcom/geely/drivemem/car/CarActor$ReadCallback;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda12;->f$0:Lcom/geely/drivemem/car/CarActor;

    iput-object p2, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda12;->f$1:Lcom/geely/drivemem/car/CarActor$ReadCallback;

    iput-object p3, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda12;->f$0:Lcom/geely/drivemem/car/CarActor;

    iget-object v1, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda12;->f$1:Lcom/geely/drivemem/car/CarActor$ReadCallback;

    iget-object v2, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/geely/drivemem/car/CarActor;->$r8$lambda$iSazC1YUSl3IZsesndPZt-nB14I(Lcom/geely/drivemem/car/CarActor;Lcom/geely/drivemem/car/CarActor$ReadCallback;Ljava/lang/String;)V

    return-void
.end method
