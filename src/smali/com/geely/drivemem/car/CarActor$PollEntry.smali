.class final Lcom/geely/drivemem/car/CarActor$PollEntry;
.super Ljava/lang/Object;
.source "CarActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/car/CarActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PollEntry"
.end annotation


# instance fields
.field final intervalMs:I

.field final key:Ljava/lang/String;

.field volatile lastRunMs:J

.field final poller:Lcom/geely/drivemem/car/CarActor$Poller;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/geely/drivemem/car/CarActor$Poller;)V
    .locals 2

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 254
    iput-wide v0, p0, Lcom/geely/drivemem/car/CarActor$PollEntry;->lastRunMs:J

    .line 256
    iput-object p1, p0, Lcom/geely/drivemem/car/CarActor$PollEntry;->key:Ljava/lang/String;

    iput p2, p0, Lcom/geely/drivemem/car/CarActor$PollEntry;->intervalMs:I

    iput-object p3, p0, Lcom/geely/drivemem/car/CarActor$PollEntry;->poller:Lcom/geely/drivemem/car/CarActor$Poller;

    return-void
.end method
