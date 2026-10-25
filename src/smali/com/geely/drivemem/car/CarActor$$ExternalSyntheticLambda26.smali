.class public final synthetic Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/geely/drivemem/car/CarActor;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/geely/drivemem/car/CarActor$Poller;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/drivemem/car/CarActor;Ljava/lang/String;ILcom/geely/drivemem/car/CarActor$Poller;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda26;->f$0:Lcom/geely/drivemem/car/CarActor;

    iput-object p2, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda26;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda26;->f$2:I

    iput-object p4, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda26;->f$3:Lcom/geely/drivemem/car/CarActor$Poller;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda26;->f$0:Lcom/geely/drivemem/car/CarActor;

    iget-object v1, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda26;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda26;->f$2:I

    iget-object v3, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda26;->f$3:Lcom/geely/drivemem/car/CarActor$Poller;

    invoke-static {v0, v1, v2, v3}, Lcom/geely/drivemem/car/CarActor;->$r8$lambda$LV8z07tICURDUmC1V-GJE2m4njg(Lcom/geely/drivemem/car/CarActor;Ljava/lang/String;ILcom/geely/drivemem/car/CarActor$Poller;)V

    return-void
.end method
