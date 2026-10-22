.class public final synthetic Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/geely/drivemem/state/ChargeSession$Summary;


# direct methods
.method public synthetic constructor <init>(JLandroid/content/Context;Lcom/geely/drivemem/state/ChargeSession$Summary;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda10;->f$0:J

    iput-object p3, p0, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda10;->f$1:Landroid/content/Context;

    iput-object p4, p0, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda10;->f$2:Lcom/geely/drivemem/state/ChargeSession$Summary;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-wide v0, p0, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda10;->f$0:J

    iget-object v2, p0, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda10;->f$1:Landroid/content/Context;

    iget-object v3, p0, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda10;->f$2:Lcom/geely/drivemem/state/ChargeSession$Summary;

    invoke-static {v0, v1, v2, v3}, Lcom/geely/drivemem/state/ChargeSession;->lambda$commitOrUpdateSession$4(JLandroid/content/Context;Lcom/geely/drivemem/state/ChargeSession$Summary;)V

    return-void
.end method
