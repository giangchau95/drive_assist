.class public final synthetic Lcom/geely/drivemem/util/Style$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/LinearLayout;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;ILandroid/content/Context;Ljava/util/List;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/drivemem/util/Style$$ExternalSyntheticLambda4;->f$0:Landroid/widget/LinearLayout;

    iput p2, p0, Lcom/geely/drivemem/util/Style$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Lcom/geely/drivemem/util/Style$$ExternalSyntheticLambda4;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/geely/drivemem/util/Style$$ExternalSyntheticLambda4;->f$3:Ljava/util/List;

    iput p5, p0, Lcom/geely/drivemem/util/Style$$ExternalSyntheticLambda4;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/geely/drivemem/util/Style$$ExternalSyntheticLambda4;->f$0:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/geely/drivemem/util/Style$$ExternalSyntheticLambda4;->f$1:I

    iget-object v2, p0, Lcom/geely/drivemem/util/Style$$ExternalSyntheticLambda4;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/geely/drivemem/util/Style$$ExternalSyntheticLambda4;->f$3:Ljava/util/List;

    iget v4, p0, Lcom/geely/drivemem/util/Style$$ExternalSyntheticLambda4;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/geely/drivemem/util/Style;->lambda$packIntoColumns$5(Landroid/widget/LinearLayout;ILandroid/content/Context;Ljava/util/List;I)V

    return-void
.end method
