.class public final synthetic Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda7;->f$0:Landroid/content/Context;

    iput-wide p2, p0, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda7;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda7;->f$0:Landroid/content/Context;

    iget-wide v1, p0, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda7;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/geely/drivemem/state/ChargeSession;->lambda$dismissSession$9(Landroid/content/Context;J)V

    return-void
.end method
