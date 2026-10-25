.class public final synthetic Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:D

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(DLandroid/content/Context;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda2;->f$0:D

    iput-object p3, p0, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    iput-wide p4, p0, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda2;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-wide v0, p0, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda2;->f$0:D

    iget-object v2, p0, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    iget-wide v3, p0, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda2;->f$2:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/geely/drivemem/state/ChargeSession;->lambda$updateCost$7(DLandroid/content/Context;J)V

    return-void
.end method
