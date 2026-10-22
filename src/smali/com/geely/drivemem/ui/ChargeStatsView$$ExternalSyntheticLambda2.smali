.class public final synthetic Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/geely/drivemem/ui/ChargeStatsView;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/drivemem/ui/ChargeStatsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda2;->f$0:Lcom/geely/drivemem/ui/ChargeStatsView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda2;->f$0:Lcom/geely/drivemem/ui/ChargeStatsView;

    invoke-virtual {v0}, Lcom/geely/drivemem/ui/ChargeStatsView;->refresh()V

    return-void
.end method
