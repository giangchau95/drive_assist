.class public final Lcom/geely/drivemem/state/ValetSession$Snapshot;
.super Ljava/lang/Object;
.source "ValetSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/state/ValetSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation


# instance fields
.field public final active:Z

.field public final currentSoc:Ljava/lang/Integer;

.field public final distanceKm:D

.field public final maxPowerKw:Ljava/lang/Double;

.field public final maxSpeedKmh:D

.field public final startMs:J

.field public final startSoc:Ljava/lang/Integer;


# direct methods
.method constructor <init>(ZJDDLjava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lcom/geely/drivemem/state/ValetSession$Snapshot;->active:Z

    iput-wide p2, p0, Lcom/geely/drivemem/state/ValetSession$Snapshot;->startMs:J

    iput-wide p4, p0, Lcom/geely/drivemem/state/ValetSession$Snapshot;->distanceKm:D

    .line 37
    iput-wide p6, p0, Lcom/geely/drivemem/state/ValetSession$Snapshot;->maxSpeedKmh:D

    iput-object p8, p0, Lcom/geely/drivemem/state/ValetSession$Snapshot;->maxPowerKw:Ljava/lang/Double;

    .line 38
    iput-object p9, p0, Lcom/geely/drivemem/state/ValetSession$Snapshot;->startSoc:Ljava/lang/Integer;

    iput-object p10, p0, Lcom/geely/drivemem/state/ValetSession$Snapshot;->currentSoc:Ljava/lang/Integer;

    return-void
.end method
