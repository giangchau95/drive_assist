.class public final synthetic Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/geely/drivemem/car/CarActor;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/geely/drivemem/car/CarActor$BoolCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/drivemem/car/CarActor;IIILcom/geely/drivemem/car/CarActor$BoolCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda14;->f$0:Lcom/geely/drivemem/car/CarActor;

    iput p2, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda14;->f$1:I

    iput p3, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda14;->f$2:I

    iput p4, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda14;->f$3:I

    iput-object p5, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda14;->f$4:Lcom/geely/drivemem/car/CarActor$BoolCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda14;->f$0:Lcom/geely/drivemem/car/CarActor;

    iget v1, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda14;->f$1:I

    iget v2, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda14;->f$2:I

    iget v3, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda14;->f$3:I

    iget-object v4, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda14;->f$4:Lcom/geely/drivemem/car/CarActor$BoolCallback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/geely/drivemem/car/CarActor;->$r8$lambda$rzZELFiNxGm5jig7MgpoFpcQt-I(Lcom/geely/drivemem/car/CarActor;IIILcom/geely/drivemem/car/CarActor$BoolCallback;)V

    return-void
.end method
