.class final Lcom/geely/drivemem/car/CarDataHub$ParkDuration;
.super Ljava/lang/Object;
.source "CarDataHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/car/CarDataHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParkDuration"
.end annotation


# instance fields
.field final code:I

.field final key:Ljava/lang/String;

.field final label:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/geely/drivemem/car/CarDataHub$ParkDuration;->code:I

    iput-object p2, p0, Lcom/geely/drivemem/car/CarDataHub$ParkDuration;->key:Ljava/lang/String;

    iput-object p3, p0, Lcom/geely/drivemem/car/CarDataHub$ParkDuration;->label:Ljava/lang/String;

    return-void
.end method
