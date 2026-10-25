.class public final Lcom/geely/drivemem/car/CarDataHub$ValueSet;
.super Ljava/lang/Object;
.source "CarDataHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/car/CarDataHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValueSet"
.end annotation


# instance fields
.field private final byName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/drivemem/car/CarDataHub$ValueSet;->byName:Ljava/util/Map;

    return-void
.end method

.method public static varargs of([Ljava/lang/Object;)Lcom/geely/drivemem/car/CarDataHub$ValueSet;
    .locals 4

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    .line 43
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 44
    aget-object v2, p0, v1

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Lcom/geely/drivemem/car/CarDataHub$ValueSet;

    invoke-direct {p0, v0}, Lcom/geely/drivemem/car/CarDataHub$ValueSet;-><init>(Ljava/util/Map;)V

    return-object p0
.end method


# virtual methods
.method public resolve(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    .line 49
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/geely/drivemem/car/CarDataHub$ValueSet;->byName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/geely/drivemem/car/CarDataHub$ValueSet;->byName:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method
