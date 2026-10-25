.class public final synthetic Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/geely/drivemem/state/ChargeSession$Summary;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/geely/drivemem/state/ChargeSession$Summary;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda5;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda5;->f$1:Lcom/geely/drivemem/state/ChargeSession$Summary;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda5;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda5;->f$1:Lcom/geely/drivemem/state/ChargeSession$Summary;

    invoke-static {v0, v1, p1}, Lcom/geely/drivemem/ui/ChargeStatsView;->lambda$chargeRow$6(Landroid/content/Context;Lcom/geely/drivemem/state/ChargeSession$Summary;Landroid/view/View;)V

    return-void
.end method
