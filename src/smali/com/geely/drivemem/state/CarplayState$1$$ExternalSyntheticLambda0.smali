.class public final synthetic Lcom/geely/drivemem/state/CarplayState$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/drivemem/state/CarplayState$1$$ExternalSyntheticLambda0;->f$0:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/geely/drivemem/state/CarplayState$1$$ExternalSyntheticLambda0;->f$0:Landroid/os/Handler;

    invoke-static {v0}, Lcom/geely/drivemem/state/CarplayState$1;->lambda$onReceive$0(Landroid/os/Handler;)V

    return-void
.end method
