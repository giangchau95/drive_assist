.class public final synthetic Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/geely/drivemem/util/UsbExport$Callback;


# instance fields
.field public final synthetic f$0:Lcom/geely/drivemem/ui/ChargeStatsView;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/drivemem/ui/ChargeStatsView;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda1;->f$0:Lcom/geely/drivemem/ui/ChargeStatsView;

    iput-object p2, p0, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onDone(ZLjava/io/File;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda1;->f$0:Lcom/geely/drivemem/ui/ChargeStatsView;

    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/geely/drivemem/ui/ChargeStatsView;->$r8$lambda$1Q2QOFUI6152glQI-M4fhIjQ9Zw(Lcom/geely/drivemem/ui/ChargeStatsView;Landroid/content/Context;ZLjava/io/File;I)V

    return-void
.end method
