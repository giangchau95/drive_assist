.class public final Lcom/geely/drivemem/state/CarState;
.super Ljava/lang/Object;
.source "CarState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/drivemem/state/CarState$Listener;
    }
.end annotation


# static fields
.field private static final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/drivemem/state/CarState$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile parked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/geely/drivemem/state/CarState;->listeners:Ljava/util/List;

    const/4 v0, 0x1

    .line 20
    sput-boolean v0, Lcom/geely/drivemem/state/CarState;->parked:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListener(Lcom/geely/drivemem/state/CarState$Listener;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 12
    sget-object v0, Lcom/geely/drivemem/state/CarState;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static ensureSubscribed()V
    .locals 0

    return-void
.end method

.method public static isParked()Z
    .locals 1

    .line 22
    sget-boolean v0, Lcom/geely/drivemem/state/CarState;->parked:Z

    return v0
.end method

.method public static removeListener(Lcom/geely/drivemem/state/CarState$Listener;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 13
    sget-object v0, Lcom/geely/drivemem/state/CarState;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static reportParked(Z)V
    .locals 2

    .line 30
    sget-boolean v0, Lcom/geely/drivemem/state/CarState;->parked:Z

    if-eq p0, v0, :cond_0

    .line 31
    sput-boolean p0, Lcom/geely/drivemem/state/CarState;->parked:Z

    .line 32
    sget-object v0, Lcom/geely/drivemem/state/CarState;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/drivemem/state/CarState$Listener;

    .line 33
    :try_start_0
    invoke-interface {v1, p0}, Lcom/geely/drivemem/state/CarState$Listener;->onParked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setListener(Lcom/geely/drivemem/state/CarState$Listener;)V
    .locals 1

    .line 15
    sget-object v0, Lcom/geely/drivemem/state/CarState;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p0, :cond_0

    .line 16
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static setParkedForTesting(Z)V
    .locals 0

    .line 48
    sput-boolean p0, Lcom/geely/drivemem/state/CarState;->parked:Z

    return-void
.end method
