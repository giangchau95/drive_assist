.class public final synthetic Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/geely/drivemem/car/CarActor$DeriveFn;


# instance fields
.field public final synthetic f$0:Lcom/geely/drivemem/car/CarActor$DeriveFn2;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/drivemem/car/CarActor$DeriveFn2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda19;->f$0:Lcom/geely/drivemem/car/CarActor$DeriveFn2;

    return-void
.end method


# virtual methods
.method public final derive([Lcom/geely/drivemem/car/CarActor$Reading;)Lcom/geely/drivemem/car/CarActor$Reading;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda19;->f$0:Lcom/geely/drivemem/car/CarActor$DeriveFn2;

    invoke-static {v0, p1}, Lcom/geely/drivemem/car/CarActor;->lambda$deriveFrom$13(Lcom/geely/drivemem/car/CarActor$DeriveFn2;[Lcom/geely/drivemem/car/CarActor$Reading;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p1

    return-object p1
.end method
