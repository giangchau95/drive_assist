.class Lcom/geely/drivemem/car/CarActor$2;
.super Ljava/lang/Object;
.source "CarActor.java"

# interfaces
.implements Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/drivemem/car/CarActor;->watchRawMultiArea(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/drivemem/car/CarActor;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$n5MPYniQ8PG57duBl0YHW9keppg(Lcom/geely/drivemem/car/CarActor$2;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/geely/drivemem/car/CarActor$2;->lambda$onErrorEvent$1(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$ptXC2d0sP_JE7QwjbdZ07ef4umE(Lcom/geely/drivemem/car/CarActor$2;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/geely/drivemem/car/CarActor$2;->lambda$onChangeEvent$0(Ljava/lang/String;II)V

    return-void
.end method

.method constructor <init>(Lcom/geely/drivemem/car/CarActor;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 505
    iput-object p1, p0, Lcom/geely/drivemem/car/CarActor$2;->this$0:Lcom/geely/drivemem/car/CarActor;

    iput-object p2, p0, Lcom/geely/drivemem/car/CarActor$2;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onChangeEvent$0(Ljava/lang/String;II)V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor$2;->this$0:Lcom/geely/drivemem/car/CarActor;

    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-static {p2}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/geely/drivemem/car/CarActor;->-$$Nest$mingest(Lcom/geely/drivemem/car/CarActor;Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V

    return-void
.end method

.method private synthetic lambda$onErrorEvent$1(Ljava/lang/String;II)V
    .locals 3

    .line 513
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor$2;->this$0:Lcom/geely/drivemem/car/CarActor;

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
    .locals 4

    .line 507
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 508
    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_0

    return-void

    .line 509
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 510
    iget-object v1, p0, Lcom/geely/drivemem/car/CarActor$2;->this$0:Lcom/geely/drivemem/car/CarActor;

    invoke-static {v1}, Lcom/geely/drivemem/car/CarActor;->-$$Nest$fgeth(Lcom/geely/drivemem/car/CarActor;)Lcom/geely/drivemem/car/CarActor$HandlerLike;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/drivemem/car/CarActor$2;->val$key:Ljava/lang/String;

    new-instance v3, Lcom/geely/drivemem/car/CarActor$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, p1, v0}, Lcom/geely/drivemem/car/CarActor$2$$ExternalSyntheticLambda0;-><init>(Lcom/geely/drivemem/car/CarActor$2;Ljava/lang/String;II)V

    invoke-interface {v1, v3}, Lcom/geely/drivemem/car/CarActor$HandlerLike;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onErrorEvent(II)V
    .locals 3

    .line 513
    iget-object v0, p0, Lcom/geely/drivemem/car/CarActor$2;->this$0:Lcom/geely/drivemem/car/CarActor;

    invoke-static {v0}, Lcom/geely/drivemem/car/CarActor;->-$$Nest$fgeth(Lcom/geely/drivemem/car/CarActor;)Lcom/geely/drivemem/car/CarActor$HandlerLike;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/drivemem/car/CarActor$2;->val$key:Ljava/lang/String;

    new-instance v2, Lcom/geely/drivemem/car/CarActor$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/geely/drivemem/car/CarActor$2$$ExternalSyntheticLambda1;-><init>(Lcom/geely/drivemem/car/CarActor$2;Ljava/lang/String;II)V

    invoke-interface {v0, v2}, Lcom/geely/drivemem/car/CarActor$HandlerLike;->post(Ljava/lang/Runnable;)V

    return-void
.end method
