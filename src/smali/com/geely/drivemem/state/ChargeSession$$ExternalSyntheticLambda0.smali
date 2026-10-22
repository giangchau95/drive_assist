.class public final synthetic Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;JLandroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda0;->f$0:Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;

    iput-wide p2, p0, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda0;->f$0:Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;

    iget-wide v1, p0, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/geely/drivemem/state/ChargeSession;->lambda$commitOrUpdateSession$5(Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;JLandroid/content/Context;)V

    return-void
.end method
