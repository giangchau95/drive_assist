.class final Lcom/geely/drivemem/car/CarActor$DeriveEntry;
.super Ljava/lang/Object;
.source "CarActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/car/CarActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeriveEntry"
.end annotation


# instance fields
.field final depKeys:[Ljava/lang/String;

.field final fn:Lcom/geely/drivemem/car/CarActor$DeriveFn;

.field final key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$DeriveFn;)V
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lcom/geely/drivemem/car/CarActor$DeriveEntry;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/geely/drivemem/car/CarActor$DeriveEntry;->depKeys:[Ljava/lang/String;

    iput-object p3, p0, Lcom/geely/drivemem/car/CarActor$DeriveEntry;->fn:Lcom/geely/drivemem/car/CarActor$DeriveFn;

    return-void
.end method
