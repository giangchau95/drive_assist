.class public final synthetic Lcom/geely/drivemem/state/ValetSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/geely/drivemem/car/EntityBus$Listener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/drivemem/state/ValetSession$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onChange(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/geely/drivemem/state/ValetSession$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/geely/drivemem/state/ValetSession;->lambda$ensureSubscribed$0(Landroid/content/Context;Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V

    return-void
.end method
