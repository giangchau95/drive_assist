.class public final Lcom/geely/drivemem/util/Fonts;
.super Ljava/lang/Object;
.source "Fonts.java"

.field private final static WATCHED:Ljava/util/WeakHashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/WeakHashMap",
      "<",
      "Landroid/view/View;",
      "Ljava/lang/Boolean;",
      ">;"
    }
  .end annotation
.end field

.field private static bold:Landroid/graphics/Typeface;

.field private static med:Landroid/graphics/Typeface;

.field private static reg:Landroid/graphics/Typeface;

.field private static semi:Landroid/graphics/Typeface;

.method static constructor <clinit>()V
  .registers 1
  .prologue
  .line 18
    new-instance v0, Ljava/util/WeakHashMap;
    invoke-direct { v0 }, Ljava/util/WeakHashMap;-><init>()V
    sput-object v0, Lcom/geely/drivemem/util/Fonts;->WATCHED:Ljava/util/WeakHashMap;
    return-void
.end method

.method private constructor <init>()V
  .registers 1
  .prologue
  .line 20
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static apply(Landroid/view/View;)V
  .registers 5
  .prologue
    const/4 v2, 0
  .line 75
    sget-object v0, Lcom/geely/drivemem/util/Fonts;->reg:Landroid/graphics/Typeface;
    if-nez v0, :L1
  :L0
  .line 88
    return-void
  :L1
  .line 76
    instance-of v0, p0, Landroid/widget/TextView;
    if-eqz v0, :L4
    move-object v0, p0
  .line 77
    check-cast v0, Landroid/widget/TextView;
  .line 78
    invoke-virtual { v0 }, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;
    move-result-object v1
  .line 79
    sget-object v3, Lcom/geely/drivemem/util/Fonts;->reg:Landroid/graphics/Typeface;
    if-eq v1, v3, :L4
    sget-object v3, Lcom/geely/drivemem/util/Fonts;->med:Landroid/graphics/Typeface;
    if-eq v1, v3, :L4
    sget-object v3, Lcom/geely/drivemem/util/Fonts;->semi:Landroid/graphics/Typeface;
    if-eq v1, v3, :L4
    sget-object v3, Lcom/geely/drivemem/util/Fonts;->bold:Landroid/graphics/Typeface;
    if-eq v1, v3, :L4
    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;
    if-eq v1, v3, :L4
  .line 80
    if-eqz v1, :L6
    invoke-virtual { v1 }, Landroid/graphics/Typeface;->isBold()Z
    move-result v1
    if-eqz v1, :L6
    const/4 v1, 1
  :L2
  .line 81
    if-eqz v1, :L7
    sget-object v1, Lcom/geely/drivemem/util/Fonts;->bold:Landroid/graphics/Typeface;
  :L3
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  :L4
  .line 84
    instance-of v0, p0, Landroid/view/ViewGroup;
    if-eqz v0, :L0
  .line 85
    check-cast p0, Landroid/view/ViewGroup;
  .line 86
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v1
    move v0, v2
  :L5
    if-ge v0, v1, :L0
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
    invoke-static { v2 }, Lcom/geely/drivemem/util/Fonts;->apply(Landroid/view/View;)V
    add-int/lit8 v0, v0, 1
    goto :L5
  :L6
    move v1, v2
  .line 80
    goto :L2
  :L7
  .line 81
    sget-object v1, Lcom/geely/drivemem/util/Fonts;->reg:Landroid/graphics/Typeface;
    goto :L3
.end method

.method public static b(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
  .registers 2
  .prologue
  .line 43
    sget-object v0, Lcom/geely/drivemem/util/Fonts;->bold:Landroid/graphics/Typeface;
    if-eqz v0, :L0
    sget-object p0, Lcom/geely/drivemem/util/Fonts;->bold:Landroid/graphics/Typeface;
  :L0
    return-object p0
.end method

.method public static get(Z)Landroid/graphics/Typeface;
  .registers 2
  .prologue
  .line 38
    if-eqz p0, :L1
    sget-object v0, Lcom/geely/drivemem/util/Fonts;->bold:Landroid/graphics/Typeface;
  :L0
    return-object v0
  :L1
    sget-object v0, Lcom/geely/drivemem/util/Fonts;->reg:Landroid/graphics/Typeface;
    goto :L0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
  .catchall { :L0 .. :L1 } :L8
  .catch Ljava/lang/Throwable; { :L3 .. :L4 } :L5
  .catchall { :L3 .. :L4 } :L8
  .catchall { :L6 .. :L7 } :L8
  .registers 7
  .prologue
  .line 23
    const-class v1, Lcom/geely/drivemem/util/Fonts;
    monitor-enter v1
  :L0
    sget-object v0, Lcom/geely/drivemem/util/Fonts;->reg:Landroid/graphics/Typeface;
  :L1
    if-eqz v0, :L3
  :L2
  .line 34
    monitor-exit v1
    return-void
  :L3
  .line 25
    invoke-virtual { p0 }, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    move-result-object v0
  .line 26
    const-string v2, "fonts/onest_regular.ttf"
    invoke-static { v0, v2 }, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    move-result-object v2
  .line 27
    const-string v3, "fonts/onest_medium.ttf"
    invoke-static { v0, v3 }, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    move-result-object v3
  .line 28
    const-string v4, "fonts/onest_semibold.ttf"
    invoke-static { v0, v4 }, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    move-result-object v4
  .line 29
    const-string v5, "fonts/onest_bold.ttf"
    invoke-static { v0, v5 }, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    move-result-object v0
  .line 30
    sput-object v3, Lcom/geely/drivemem/util/Fonts;->med:Landroid/graphics/Typeface;
    sput-object v4, Lcom/geely/drivemem/util/Fonts;->semi:Landroid/graphics/Typeface;
    sput-object v0, Lcom/geely/drivemem/util/Fonts;->bold:Landroid/graphics/Typeface;
    sput-object v2, Lcom/geely/drivemem/util/Fonts;->reg:Landroid/graphics/Typeface;
  :L4
    goto :L2
  :L5
  .line 31
    move-exception v0
  .line 32
    const/4 v0, 0
  :L6
    sput-object v0, Lcom/geely/drivemem/util/Fonts;->reg:Landroid/graphics/Typeface;
  :L7
    goto :L2
  :L8
  .line 23
    move-exception v0
    monitor-exit v1
    throw v0
.end method

.method public static install(Landroid/app/Application;)V
  .registers 2
  .prologue
  .line 48
    invoke-static { p0 }, Lcom/geely/drivemem/util/Fonts;->init(Landroid/content/Context;)V
  .line 49
    sget-object v0, Lcom/geely/drivemem/util/Fonts;->reg:Landroid/graphics/Typeface;
    if-nez v0, :L1
  :L0
  .line 59
    return-void
  :L1
  .line 50
    new-instance v0, Lcom/geely/drivemem/util/Fonts$1;
    invoke-direct { v0 }, Lcom/geely/drivemem/util/Fonts$1;-><init>()V
    invoke-virtual { p0, v0 }, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    goto :L0
.end method

.method public static r(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
  .registers 2
  .prologue
  .line 45
    sget-object v0, Lcom/geely/drivemem/util/Fonts;->reg:Landroid/graphics/Typeface;
    if-eqz v0, :L0
    sget-object p0, Lcom/geely/drivemem/util/Fonts;->reg:Landroid/graphics/Typeface;
  :L0
    return-object p0
.end method

.method public static watch(Landroid/view/View;)V
  .catchall { :L2 .. :L4 } :L3
  .catchall { :L5 .. :L6 } :L3
  .registers 4
  .prologue
  .line 63
    sget-object v0, Lcom/geely/drivemem/util/Fonts;->reg:Landroid/graphics/Typeface;
    if-eqz v0, :L0
    if-nez p0, :L1
  :L0
  .line 72
    return-void
  :L1
  .line 64
    sget-object v1, Lcom/geely/drivemem/util/Fonts;->WATCHED:Ljava/util/WeakHashMap;
    monitor-enter v1
  :L2
  .line 65
    sget-object v0, Lcom/geely/drivemem/util/Fonts;->WATCHED:Ljava/util/WeakHashMap;
    invoke-virtual { v0, p0 }, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
    monitor-exit v1
    goto :L0
  :L3
  .line 67
    move-exception v0
    monitor-exit v1
  :L4
    throw v0
  :L5
  .line 66
    sget-object v0, Lcom/geely/drivemem/util/Fonts;->WATCHED:Ljava/util/WeakHashMap;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    invoke-virtual { v0, p0, v2 }, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 67
    monitor-exit v1
  :L6
  .line 68
    invoke-static { p0 }, Lcom/geely/drivemem/util/Fonts;->apply(Landroid/view/View;)V
  .line 69
    invoke-virtual { p0 }, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object v0
    new-instance v1, Lcom/geely/drivemem/util/Fonts$2;
    invoke-direct { v1, p0 }, Lcom/geely/drivemem/util/Fonts$2;-><init>(Landroid/view/View;)V
    invoke-virtual { v0, v1 }, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    goto :L0
.end method

.method public static with(Landroid/view/View;)Landroid/view/View;
  .registers 1
  .prologue
  .line 41
    invoke-static { p0 }, Lcom/geely/drivemem/util/Fonts;->watch(Landroid/view/View;)V
    return-object p0
.end method
