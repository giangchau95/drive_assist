.class public final Lcom/geely/drivemem/state/ParkingState$Snapshot;
.super Ljava/lang/Object;
.source "ParkingState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/state/ParkingState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation


# instance fields
.field public final currentSoc:Ljava/lang/Integer;

.field public final currentTemp:Ljava/lang/Float;

.field public final startMs:J

.field public final startSoc:Ljava/lang/Integer;

.field public final startTemp:Ljava/lang/Float;


# direct methods
.method constructor <init>(JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/geely/drivemem/state/ParkingState$Snapshot;->startMs:J

    iput-object p3, p0, Lcom/geely/drivemem/state/ParkingState$Snapshot;->startSoc:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/geely/drivemem/state/ParkingState$Snapshot;->currentSoc:Ljava/lang/Integer;

    .line 27
    iput-object p5, p0, Lcom/geely/drivemem/state/ParkingState$Snapshot;->startTemp:Ljava/lang/Float;

    iput-object p6, p0, Lcom/geely/drivemem/state/ParkingState$Snapshot;->currentTemp:Ljava/lang/Float;

    return-void
.end method
