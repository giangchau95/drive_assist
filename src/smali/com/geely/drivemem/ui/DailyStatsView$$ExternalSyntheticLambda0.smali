.class public final synthetic Lcom/geely/drivemem/ui/DailyStatsView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/geely/drivemem/ui/DailyStatsView;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/drivemem/ui/DailyStatsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/drivemem/ui/DailyStatsView$$ExternalSyntheticLambda0;->f$0:Lcom/geely/drivemem/ui/DailyStatsView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/geely/drivemem/ui/DailyStatsView$$ExternalSyntheticLambda0;->f$0:Lcom/geely/drivemem/ui/DailyStatsView;

    invoke-virtual {v0}, Lcom/geely/drivemem/ui/DailyStatsView;->refresh()V

    return-void
.end method
