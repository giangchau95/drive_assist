.class public final synthetic Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Z

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Landroid/content/Context;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda9;->f$0:Ljava/io/File;

    iput-object p2, p0, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda9;->f$1:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda9;->f$2:Z

    iput p4, p0, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda9;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda9;->f$0:Ljava/io/File;

    iget-object v1, p0, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda9;->f$1:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda9;->f$2:Z

    iget v3, p0, Lcom/geely/drivemem/ui/ChargeStatsView$$ExternalSyntheticLambda9;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/geely/drivemem/ui/ChargeStatsView;->lambda$refresh$2(Ljava/io/File;Landroid/content/Context;ZI)V

    return-void
.end method
