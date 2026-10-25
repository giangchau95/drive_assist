.class public final Lcom/geely/drivemem/state/TripSession$WeekSummary;
.super Ljava/lang/Object;
.source "TripSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/state/TripSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeekSummary"
.end annotation


# instance fields
.field public final drivingMs:J

.field public final trips:I


# direct methods
.method constructor <init>(IJ)V
    .locals 0

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/geely/drivemem/state/TripSession$WeekSummary;->trips:I

    iput-wide p2, p0, Lcom/geely/drivemem/state/TripSession$WeekSummary;->drivingMs:J

    return-void
.end method
