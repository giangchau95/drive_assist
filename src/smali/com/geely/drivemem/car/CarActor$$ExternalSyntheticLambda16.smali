.class public final synthetic Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/geely/drivemem/car/CarActor;

.field public final synthetic f$1:Lcom/geely/drivemem/car/CarActor$ReadCallback;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:C


# direct methods
.method public synthetic constructor <init>(Lcom/geely/drivemem/car/CarActor;Lcom/geely/drivemem/car/CarActor$ReadCallback;IIC)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda16;->f$0:Lcom/geely/drivemem/car/CarActor;

    iput-object p2, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda16;->f$1:Lcom/geely/drivemem/car/CarActor$ReadCallback;

    iput p3, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda16;->f$2:I

    iput p4, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda16;->f$3:I

    iput-char p5, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda16;->f$4:C

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda16;->f$0:Lcom/geely/drivemem/car/CarActor;

    iget-object v1, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda16;->f$1:Lcom/geely/drivemem/car/CarActor$ReadCallback;

    iget v2, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda16;->f$2:I

    iget v3, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda16;->f$3:I

    iget-char v4, p0, Lcom/geely/drivemem/car/CarActor$$ExternalSyntheticLambda16;->f$4:C

    invoke-static {v0, v1, v2, v3, v4}, Lcom/geely/drivemem/car/CarActor;->$r8$lambda$SsaHhe3pWwEi5PDQhautp59_W-8(Lcom/geely/drivemem/car/CarActor;Lcom/geely/drivemem/car/CarActor$ReadCallback;IIC)V

    return-void
.end method
