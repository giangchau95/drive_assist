.class public final Lcom/geely/drivemem/ui/ChargeSocChart;
.super Landroid/widget/ScrollView;
.source "ChargeSocChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/drivemem/ui/ChargeSocChart$Plot;,
        Lcom/geely/drivemem/ui/ChargeSocChart$Listener;
    }
.end annotation


# instance fields
.field private listener:Lcom/geely/drivemem/ui/ChargeSocChart$Listener;

.field private final plot:Lcom/geely/drivemem/ui/ChargeSocChart$Plot;


# direct methods
.method public static synthetic $r8$lambda$iF6iqfVWVlxSsc_hPPG9TZPnvdo(Lcom/geely/drivemem/ui/ChargeSocChart;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/geely/drivemem/ui/ChargeSocChart;->lambda$select$0(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetlistener(Lcom/geely/drivemem/ui/ChargeSocChart;)Lcom/geely/drivemem/ui/ChargeSocChart$Listener;
    .locals 0

    iget-object p0, p0, Lcom/geely/drivemem/ui/ChargeSocChart;->listener:Lcom/geely/drivemem/ui/ChargeSocChart$Listener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Lcom/geely/drivemem/ui/ChargeSocChart;->setVerticalScrollBarEnabled(Z)V

    const/4 v0, 0x2

    .line 31
    invoke-virtual {p0, v0}, Lcom/geely/drivemem/ui/ChargeSocChart;->setOverScrollMode(I)V

    .line 32
    new-instance v0, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;

    invoke-direct {v0, p0, p1}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;-><init>(Lcom/geely/drivemem/ui/ChargeSocChart;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/geely/drivemem/ui/ChargeSocChart;->plot:Lcom/geely/drivemem/ui/ChargeSocChart$Plot;

    .line 33
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Lcom/geely/drivemem/ui/ChargeSocChart;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$select$0(I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeSocChart;->plot:Lcom/geely/drivemem/ui/ChargeSocChart$Plot;

    .line 52
    invoke-virtual {v0, p1}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->barCenterY(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/geely/drivemem/ui/ChargeSocChart;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 51
    invoke-virtual {p0, v0, p1}, Lcom/geely/drivemem/ui/ChargeSocChart;->smoothScrollTo(II)V

    return-void
.end method


# virtual methods
.method public select(JZ)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeSocChart;->plot:Lcom/geely/drivemem/ui/ChargeSocChart$Plot;

    invoke-static {v0, p1, p2}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->-$$Nest$fputselectedId(Lcom/geely/drivemem/ui/ChargeSocChart$Plot;J)V

    .line 48
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeSocChart;->plot:Lcom/geely/drivemem/ui/ChargeSocChart$Plot;

    invoke-virtual {v0}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->invalidate()V

    if-eqz p3, :cond_0

    .line 50
    iget-object p3, p0, Lcom/geely/drivemem/ui/ChargeSocChart;->plot:Lcom/geely/drivemem/ui/ChargeSocChart$Plot;

    invoke-virtual {p3, p1, p2}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->indexOf(J)I

    move-result p1

    if-ltz p1, :cond_0

    .line 51
    new-instance p2, Lcom/geely/drivemem/ui/ChargeSocChart$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/geely/drivemem/ui/ChargeSocChart$$ExternalSyntheticLambda0;-><init>(Lcom/geely/drivemem/ui/ChargeSocChart;I)V

    invoke-virtual {p0, p2}, Lcom/geely/drivemem/ui/ChargeSocChart;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setListener(Lcom/geely/drivemem/ui/ChargeSocChart$Listener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/geely/drivemem/ui/ChargeSocChart;->listener:Lcom/geely/drivemem/ui/ChargeSocChart$Listener;

    return-void
.end method

.method public setSessions(Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/drivemem/state/ChargeSession$Summary;",
            ">;J)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeSocChart;->plot:Lcom/geely/drivemem/ui/ChargeSocChart$Plot;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->-$$Nest$fputsessions(Lcom/geely/drivemem/ui/ChargeSocChart$Plot;Ljava/util/List;)V

    .line 40
    iget-object v0, p0, Lcom/geely/drivemem/ui/ChargeSocChart;->plot:Lcom/geely/drivemem/ui/ChargeSocChart$Plot;

    invoke-static {v0, p2, p3}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->-$$Nest$fputselectedId(Lcom/geely/drivemem/ui/ChargeSocChart$Plot;J)V

    .line 41
    iget-object p2, p0, Lcom/geely/drivemem/ui/ChargeSocChart;->plot:Lcom/geely/drivemem/ui/ChargeSocChart$Plot;

    invoke-virtual {p0}, Lcom/geely/drivemem/ui/ChargeSocChart;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2e

    add-int/lit8 p1, p1, 0x2e

    invoke-static {p3, p1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->setMinimumHeight(I)V

    .line 42
    iget-object p1, p0, Lcom/geely/drivemem/ui/ChargeSocChart;->plot:Lcom/geely/drivemem/ui/ChargeSocChart$Plot;

    invoke-virtual {p1}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->requestLayout()V

    .line 43
    iget-object p1, p0, Lcom/geely/drivemem/ui/ChargeSocChart;->plot:Lcom/geely/drivemem/ui/ChargeSocChart$Plot;

    invoke-virtual {p1}, Lcom/geely/drivemem/ui/ChargeSocChart$Plot;->invalidate()V

    return-void
.end method
