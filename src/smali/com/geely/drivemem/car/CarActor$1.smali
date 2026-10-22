.class Lcom/geely/drivemem/car/CarActor$1;
.super Ljava/lang/Object;
.source "CarActor.java"

# interfaces
.implements Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/drivemem/car/CarActor;->watchRaw(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/drivemem/car/CarActor;

.field final synthetic val$area:I

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$UnEpbew7lf8JnisnUhC8imTllBs(Lcom/geely/drivemem/car/CarActor$1;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/geely/drivemem/car/CarActor$1;->lambda$onErrorEvent$1(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$_nqbV45hIZWaJ-9Ku91SfCCSHUk(Lcom/geely/drivemem/car/CarActor$1;Ljava/lang/String;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/geely/drivemem/car/CarActor$1;->lambda$onChangeEvent$0(Ljava/lang/String;Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method constructor <init>(Lcom/geely/drivemem/car/CarActor;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 475
    iput-object p1, p0, Lcom/geely/drivemem/car/CarActor$1;->this$0:Lcom/geely/drivemem/car/CarActor;

    iput p2, p0, Lcom/geely/drivemem/car/CarActor$1;->val$area:I

    iput-object p3, p0, Lcom/geely/drivemem/car/CarActor$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onChangeEvent$0(Ljava/lang/String;Landroid/car/hardware/CarPropertyValue;)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor$1;->this$0:Lcom/geely/drivemem/car/CarActor;

    invoke-virtual {p2}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/geely/drivemem/car/CarActor;->-$$Nest$mingest(Lcom/geely/drivemem/car/CarActor;Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V

    return-void
.end method

.method private synthetic lambda$onErrorEvent$1(Ljava/lang/String;II)V
    .locals 3

    .line 482
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor$1;->this$0:Lcom/geely/drivemem/car/CarActor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "prop "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " area "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/drivemem/car/CarActor$Reading;->error(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/geely/drivemem/car/CarActor;->-$$Nest$mingest(Lcom/geely/drivemem/car/CarActor;Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3

    .line 477
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v0

    iget v1, p0, Lcom/geely/drivemem/car/CarActor$1;->val$area:I

    if-eq v0, v1, :cond_0

    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor$1;->this$0:Lcom/geely/drivemem/car/CarActor;

    invoke-static {v0}, Lcom/geely/drivemem/car/CarActor;->-$$Nest$fgeth(Lcom/geely/drivemem/car/CarActor;)Lcom/geely/drivemem/car/CarActor$HandlerLike;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/drivemem/car/CarActor$1;->val$key:Ljava/lang/String;

    new-instance v2, Lcom/geely/drivemem/car/CarActor$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1}, Lcom/geely/drivemem/car/CarActor$1$$ExternalSyntheticLambda0;-><init>(Lcom/geely/drivemem/car/CarActor$1;Ljava/lang/String;Landroid/car/hardware/CarPropertyValue;)V

    invoke-interface {v0, v2}, Lcom/geely/drivemem/car/CarActor$HandlerLike;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onErrorEvent(II)V
    .locals 3

    .line 481
    iget v0, p0, Lcom/geely/drivemem/car/CarActor$1;->val$area:I

    if-eq p2, v0, :cond_0

    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor$1;->this$0:Lcom/geely/drivemem/car/CarActor;

    invoke-static {v0}, Lcom/geely/drivemem/car/CarActor;->-$$Nest$fgeth(Lcom/geely/drivemem/car/CarActor;)Lcom/geely/drivemem/car/CarActor$HandlerLike;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/drivemem/car/CarActor$1;->val$key:Ljava/lang/String;

    new-instance v2, Lcom/geely/drivemem/car/CarActor$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/geely/drivemem/car/CarActor$1$$ExternalSyntheticLambda1;-><init>(Lcom/geely/drivemem/car/CarActor$1;Ljava/lang/String;II)V

    invoke-interface {v0, v2}, Lcom/geely/drivemem/car/CarActor$HandlerLike;->post(Ljava/lang/Runnable;)V

    return-void
.end method
