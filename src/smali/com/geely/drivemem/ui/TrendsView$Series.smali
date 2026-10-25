.class final Lcom/geely/drivemem/ui/TrendsView$Series;
.super Ljava/lang/Object;
.source "TrendsView.java"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/geely/drivemem/ui/TrendsView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 26
  name = "Series"
.end annotation

.field final cost:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List",
      "<",
      "Ljava/lang/Double;",
      ">;"
    }
  .end annotation
.end field

.field final dist:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List",
      "<",
      "Ljava/lang/Double;",
      ">;"
    }
  .end annotation
.end field

.field final eff:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List",
      "<",
      "Ljava/lang/Double;",
      ">;"
    }
  .end annotation
.end field

.field final energy:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List",
      "<",
      "Ljava/lang/Double;",
      ">;"
    }
  .end annotation
.end field

.field estimated:Z

.field final labels:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List",
      "<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.method private constructor <init>()V
  .registers 2
  .prologue
  .line 171
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 172
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$Series;->labels:Ljava/util/List;
  .line 173
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$Series;->energy:Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$Series;->dist:Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$Series;->cost:Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcom/geely/drivemem/ui/TrendsView$Series;->eff:Ljava/util/List;
    return-void
.end method

.method synthetic constructor <init>(Lcom/geely/drivemem/ui/TrendsView$1;)V
  .registers 2
  .prologue
  .line 171
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/TrendsView$Series;-><init>()V
    return-void
.end method
