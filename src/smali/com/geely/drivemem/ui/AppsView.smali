.class public Lcom/geely/drivemem/ui/AppsView;
.super Landroid/widget/LinearLayout;
.source "AppsView.java"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/geely/drivemem/ui/AppsView$App;
  }
.end annotation

.field public final static CATALOG_URL:Ljava/lang/String; = "https://raw.githubusercontent.com/giangchau95/drive_assist/store-test/apps/catalog.json"

.field final static INSTALL_APP:Ljava/lang/String; = "com.geely.modehelper.INSTALL_APP"

.field final static MIN_HELPER_VC_STORE:I = 29897994

.field final static STATUS_ACTION:Ljava/lang/String; = "com.geely.modehelper.STORE_STATUS"

.field private apps:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List",
      "<",
      "Lcom/geely/drivemem/ui/AppsView$App;",
      ">;"
    }
  .end annotation
.end field

.field private final hint:Landroid/widget/TextView;

.field private final list:Landroid/widget/LinearLayout;

.field private loadError:Ljava/lang/String;

.field private loading:Z

.field private final msg:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field private final pct:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/Integer;",
      ">;"
    }
  .end annotation
.end field

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private registered:Z

.field private final started:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/Long;",
      ">;"
    }
  .end annotation
.end field

.field private final state:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field private final ui:Landroid/os/Handler;

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 8
  .prologue
    const/4 v4, 1
    const/4 v3, 0
    const/high16 v2, 0x41880000
  .line 77
    invoke-direct { p0, p1, p2 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .line 52
    new-instance v0, Landroid/os/Handler;
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    iput-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->ui:Landroid/os/Handler;
  .line 55
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->apps:Ljava/util/List;
  .line 58
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->state:Ljava/util/Map;
  .line 59
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->msg:Ljava/util/Map;
  .line 60
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->pct:Ljava/util/Map;
  .line 61
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->started:Ljava/util/Map;
  .line 64
    new-instance v0, Lcom/geely/drivemem/ui/AppsView$1;
    invoke-direct { v0, p0 }, Lcom/geely/drivemem/ui/AppsView$1;-><init>(Lcom/geely/drivemem/ui/AppsView;)V
    iput-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->receiver:Landroid/content/BroadcastReceiver;
  .line 78
    invoke-virtual { p0, v4 }, Lcom/geely/drivemem/ui/AppsView;->setOrientation(I)V
  .line 79
    new-instance v0, Landroid/widget/TextView;
    invoke-direct { v0, p1 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 80
    const-string v1, "APPS"
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 81
    invoke-virtual { v0, v2 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 82
    sget v1, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 83
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  .line 84
    const v1, 1025758986
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setLetterSpacing(F)V
  .line 85
    invoke-virtual { p0, v0 }, Lcom/geely/drivemem/ui/AppsView;->addView(Landroid/view/View;)V
  .line 86
    new-instance v0, Landroid/widget/TextView;
    invoke-direct { v0, p1 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->hint:Landroid/widget/TextView;
  .line 87
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->hint:Landroid/widget/TextView;
    invoke-virtual { v0, v2 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 88
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->hint:Landroid/widget/TextView;
    sget v1, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 89
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->hint:Landroid/widget/TextView;
    const/16 v1, 8
    invoke-static { p1, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
    const/16 v2, 14
    invoke-static { p1, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
    invoke-virtual { v0, v3, v1, v3, v2 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 90
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->hint:Landroid/widget/TextView;
    invoke-virtual { p0, v0 }, Lcom/geely/drivemem/ui/AppsView;->addView(Landroid/view/View;)V
  .line 91
    new-instance v0, Landroid/widget/LinearLayout;
    invoke-direct { v0, p1 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->list:Landroid/widget/LinearLayout;
  .line 92
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->list:Landroid/widget/LinearLayout;
    invoke-virtual { v0, v4 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 93
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->list:Landroid/widget/LinearLayout;
    invoke-virtual { p0, v0 }, Lcom/geely/drivemem/ui/AppsView;->addView(Landroid/view/View;)V
  .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/geely/drivemem/ui/AppsView;)Ljava/util/Map;
  .registers 2
  .prologue
  .line 38
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->state:Ljava/util/Map;
    return-object v0
.end method

.method static synthetic access$100(Lcom/geely/drivemem/ui/AppsView;)Ljava/util/Map;
  .registers 2
  .prologue
  .line 38
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->msg:Ljava/util/Map;
    return-object v0
.end method

.method static synthetic access$1000(Lcom/geely/drivemem/ui/AppsView;Lcom/geely/drivemem/ui/AppsView$App;)V
  .registers 2
  .prologue
  .line 38
    invoke-direct { p0, p1 }, Lcom/geely/drivemem/ui/AppsView;->install(Lcom/geely/drivemem/ui/AppsView$App;)V
    return-void
.end method

.method static synthetic access$200(Lcom/geely/drivemem/ui/AppsView;)Ljava/util/Map;
  .registers 2
  .prologue
  .line 38
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->pct:Ljava/util/Map;
    return-object v0
.end method

.method static synthetic access$300(Lcom/geely/drivemem/ui/AppsView;)V
  .registers 1
  .prologue
  .line 38
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/AppsView;->render()V
    return-void
.end method

.method static synthetic access$502(Lcom/geely/drivemem/ui/AppsView;Z)Z
  .registers 2
  .prologue
  .line 38
    iput-boolean p1, p0, Lcom/geely/drivemem/ui/AppsView;->loading:Z
    return p1
.end method

.method static synthetic access$602(Lcom/geely/drivemem/ui/AppsView;Ljava/util/List;)Ljava/util/List;
  .registers 2
  .prologue
  .line 38
    iput-object p1, p0, Lcom/geely/drivemem/ui/AppsView;->apps:Ljava/util/List;
    return-object p1
.end method

.method static synthetic access$702(Lcom/geely/drivemem/ui/AppsView;Ljava/lang/String;)Ljava/lang/String;
  .registers 2
  .prologue
  .line 38
    iput-object p1, p0, Lcom/geely/drivemem/ui/AppsView;->loadError:Ljava/lang/String;
    return-object p1
.end method

.method static synthetic access$800(Lcom/geely/drivemem/ui/AppsView;)Landroid/os/Handler;
  .registers 2
  .prologue
  .line 38
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->ui:Landroid/os/Handler;
    return-object v0
.end method

.method static synthetic access$900(Lcom/geely/drivemem/ui/AppsView;Ljava/lang/String;)V
  .registers 2
  .prologue
  .line 38
    invoke-direct { p0, p1 }, Lcom/geely/drivemem/ui/AppsView;->open(Ljava/lang/String;)V
    return-void
.end method

.method private card(Landroid/content/Context;Lcom/geely/drivemem/ui/AppsView$App;)Landroid/view/View;
  .catch Ljava/lang/Throwable; { :L1 .. :L2 } :L25
  .registers 21
  .prologue
  .line 197
    move-object/from16 v0, p2
    iget-object v2, v0, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    move-object/from16 v0, p0
    invoke-direct { v0, v2 }, Lcom/geely/drivemem/ui/AppsView;->installedVc(Ljava/lang/String;)J
    move-result-wide v8
  .line 198
    move-object/from16 v0, p0
    iget-object v2, v0, Lcom/geely/drivemem/ui/AppsView;->state:Ljava/util/Map;
    move-object/from16 v0, p2
    iget-object v3, v0, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-interface { v2, v3 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
  .line 199
    invoke-static { v2 }, Lcom/geely/drivemem/ui/AppsView;->working(Ljava/lang/String;)Z
    move-result v4
  .line 200
    if-eqz v4, :L27
    move-object/from16 v0, p0
    iget-object v3, v0, Lcom/geely/drivemem/ui/AppsView;->started:Ljava/util/Map;
    move-object/from16 v0, p2
    iget-object v5, v0, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-interface { v3, v5 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L27
    const-string v3, "start"
    invoke-virtual { v3, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L27
  .line 201
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v6
    move-object/from16 v0, p0
    iget-object v3, v0, Lcom/geely/drivemem/ui/AppsView;->started:Ljava/util/Map;
    move-object/from16 v0, p2
    iget-object v5, v0, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-interface { v3, v5 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Long;
    invoke-virtual { v3 }, Ljava/lang/Long;->longValue()J
    move-result-wide v10
    sub-long/2addr v6, v10
    const-wide/16 v10, 20000
    cmp-long v3, v6, v10
    if-lez v3, :L27
  .line 202
    move-object/from16 v0, p0
    iget-object v2, v0, Lcom/geely/drivemem/ui/AppsView;->state:Ljava/util/Map;
    move-object/from16 v0, p2
    iget-object v3, v0, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    const-string v4, "error"
    invoke-interface { v2, v3, v4 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 203
    move-object/from16 v0, p0
    iget-object v2, v0, Lcom/geely/drivemem/ui/AppsView;->msg:Ljava/util/Map;
    move-object/from16 v0, p2
    iget-object v3, v0, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    const-string v4, "No response from ModeHelper. Run the Drive Assist installer once to update it."
    invoke-interface { v2, v3, v4 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 204
    const-string v4, "error"
  .line 205
    const/4 v2, 0
    move v3, v2
    move-object v5, v4
  :L0
  .line 207
    new-instance v7, Landroid/widget/LinearLayout;
    move-object/from16 v0, p1
    invoke-direct { v7, v0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 208
    const/4 v2, 0
    invoke-virtual { v7, v2 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 209
    const/16 v2, 16
    invoke-virtual { v7, v2 }, Landroid/widget/LinearLayout;->setGravity(I)V
  .line 210
    const/16 v2, 18
    move-object/from16 v0, p1
    invoke-static { v0, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
  .line 211
    invoke-virtual { v7, v2, v2, v2, v2 }, Landroid/widget/LinearLayout;->setPadding(IIII)V
  .line 212
    invoke-static { }, Lcom/geely/drivemem/util/Style;->cardFillColor()I
    move-result v2
    move-object/from16 v0, p1
    invoke-static { v2, v0 }, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v2
    invoke-virtual { v7, v2 }, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 213
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, -1
    const/4 v6, -2
    invoke-direct { v2, v4, v6 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 214
    const/16 v4, 12
    move-object/from16 v0, p1
    invoke-static { v0, v4 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v4
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
  .line 215
    invoke-virtual { v7, v2 }, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 217
    new-instance v4, Landroid/widget/ImageView;
    move-object/from16 v0, p1
    invoke-direct { v4, v0 }, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
  .line 218
    const/4 v2, 0
  :L1
  .line 219
    invoke-virtual/range { p1 .. p1 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v6
    move-object/from16 v0, p2
    iget-object v10, v0, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-virtual { v6, v10 }, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
  :L2
    move-result-object v2
  :L3
  .line 220
    if-eqz v2, :L12
    invoke-virtual { v4, v2 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  :L4
  .line 224
    const/16 v2, 64
    move-object/from16 v0, p1
    invoke-static { v0, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
  .line 225
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct { v6, v2, v2 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 226
    const/16 v2, 18
    move-object/from16 v0, p1
    invoke-static { v0, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
    iput v2, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
  .line 227
    invoke-virtual { v7, v4, v6 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 229
    new-instance v10, Landroid/widget/LinearLayout;
    move-object/from16 v0, p1
    invoke-direct { v10, v0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 230
    const/4 v2, 1
    invoke-virtual { v10, v2 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 231
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0
    const/4 v6, -2
    const/high16 v11, 0x3f800000
    invoke-direct { v2, v4, v6, v11 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual { v7, v10, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 232
    new-instance v2, Landroid/widget/TextView;
    move-object/from16 v0, p1
    invoke-direct { v2, v0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 233
    move-object/from16 v0, p2
    iget-object v4, v0, Lcom/geely/drivemem/ui/AppsView$App;->name:Ljava/lang/String;
    invoke-virtual { v2, v4 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 234
    const/high16 v4, 0x41a80000
    invoke-virtual { v2, v4 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 235
    sget v4, Lcom/geely/drivemem/util/Style;->TEXT:I
    invoke-virtual { v2, v4 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 236
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-virtual { v2, v4 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  .line 237
    invoke-virtual { v10, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 238
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
  .line 239
    const-wide/16 v12, 0
    cmp-long v4, v8, v12
    if-ltz v4, :L13
    const-string v4, "Installed "
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    move-object/from16 v0, p2
    iget-object v6, v0, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    move-object/from16 v0, p0
    invoke-direct { v0, v6 }, Lcom/geely/drivemem/ui/AppsView;->installedName(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    invoke-virtual { v4, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L5
  .line 240
    move-object/from16 v0, p2
    iget-boolean v4, v0, Lcom/geely/drivemem/ui/AppsView$App;->hasApk:Z
    if-eqz v4, :L6
  .line 241
    const-string v4, "   \u00b7   Latest "
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    move-object/from16 v0, p2
    iget-object v6, v0, Lcom/geely/drivemem/ui/AppsView$App;->versionName:Ljava/lang/String;
    invoke-virtual { v4, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 242
    move-object/from16 v0, p2
    iget-wide v12, v0, Lcom/geely/drivemem/ui/AppsView$App;->size:J
    const-wide/16 v14, 0
    cmp-long v4, v12, v14
    if-lez v4, :L6
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
    const-string v6, "   \u00b7   %.0f MB"
    const/4 v11, 1
    new-array v11, v11, [Ljava/lang/Object;
    const/4 v12, 0
    move-object/from16 v0, p2
    iget-wide v14, v0, Lcom/geely/drivemem/ui/AppsView$App;->size:J
    long-to-double v14, v14
    const-wide/high16 v16, 0x4130000000000000L
    div-double v14, v14, v16
    invoke-static { v14, v15 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v13
    aput-object v13, v11, v12
    invoke-static { v4, v6, v11 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L6
  .line 244
    new-instance v4, Landroid/widget/TextView;
    move-object/from16 v0, p1
    invoke-direct { v4, v0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 245
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v4, v2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 246
    const/high16 v2, 0x41880000
    invoke-virtual { v4, v2 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 247
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-virtual { v4, v2 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 248
    const/4 v2, 0
    const/4 v6, 2
    move-object/from16 v0, p1
    invoke-static { v0, v6 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v6
    const/4 v11, 0
    const/4 v12, 0
    invoke-virtual { v4, v2, v6, v11, v12 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 249
    invoke-virtual { v10, v4 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 250
    const/4 v6, 0
  .line 251
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
  .line 252
    if-eqz v3, :L16
  .line 253
    move-object/from16 v0, p0
    iget-object v2, v0, Lcom/geely/drivemem/ui/AppsView;->msg:Ljava/util/Map;
    move-object/from16 v0, p2
    iget-object v4, v0, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-interface { v2, v4 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
  .line 254
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-static { v5 }, Lcom/geely/drivemem/ui/AppsView;->label(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    invoke-virtual { v4, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    move-object/from16 v0, p0
    iget-object v4, v0, Lcom/geely/drivemem/ui/AppsView;->pct:Ljava/util/Map;
    move-object/from16 v0, p2
    iget-object v11, v0, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-interface { v4, v11 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    if-eqz v4, :L14
    const-string v4, "download"
    invoke-virtual { v4, v5 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :L14
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, " "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    move-object/from16 v0, p0
    iget-object v5, v0, Lcom/geely/drivemem/ui/AppsView;->pct:Ljava/util/Map;
    move-object/from16 v0, p2
    iget-object v11, v0, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-interface { v5, v11 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v4
    const-string v5, "%"
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
  :L7
    invoke-virtual { v6, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
  .line 255
    if-eqz v2, :L15
    invoke-virtual { v2 }, Ljava/lang/String;->length()I
    move-result v5
    if-lez v5, :L15
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "  \u00b7  "
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
  :L8
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
  .line 256
    sget v2, Lcom/geely/drivemem/util/Style;->ACCENT:I
    move v4, v2
  :L9
  .line 269
    if-eqz v5, :L10
  .line 270
    new-instance v2, Landroid/widget/TextView;
    move-object/from16 v0, p1
    invoke-direct { v2, v0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 271
    invoke-virtual { v2, v5 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 272
    const/high16 v5, 0x41880000
    invoke-virtual { v2, v5 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 273
    invoke-virtual { v2, v4 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 274
    const/4 v4, 0
    const/4 v5, 4
    move-object/from16 v0, p1
    invoke-static { v0, v5 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v5
    const/4 v6, 0
    const/4 v11, 0
    invoke-virtual { v2, v4, v5, v6, v11 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 275
    invoke-virtual { v10, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  :L10
  .line 278
    new-instance v4, Landroid/widget/LinearLayout;
    move-object/from16 v0, p1
    invoke-direct { v4, v0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 279
    const/4 v2, 0
    invoke-virtual { v4, v2 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 280
    invoke-virtual { v7, v4 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 281
    if-eqz v3, :L20
  .line 282
    const-string v2, "Working\u2026"
    const/4 v3, 0
    new-instance v5, Lcom/geely/drivemem/ui/AppsView$4;
    move-object/from16 v0, p0
    invoke-direct { v5, v0 }, Lcom/geely/drivemem/ui/AppsView$4;-><init>(Lcom/geely/drivemem/ui/AppsView;)V
    move-object/from16 v0, p1
    invoke-static { v0, v2, v3, v5 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v2
  .line 283
    const v3, 1058642330
    invoke-virtual { v2, v3 }, Landroid/widget/TextView;->setAlpha(F)V
  .line 284
    invoke-virtual { v4, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  :L11
  .line 302
    return-object v7
  :L12
  .line 222
    sget v2, Lcom/geely/drivemem/util/Style;->CARD_HI:I
    const/16 v6, 14
    move-object/from16 v0, p1
    invoke-static { v2, v0, v6 }, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;I)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v2
    invoke-virtual { v4, v2 }, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    goto/16 :L4
  :L13
  .line 239
    const-string v4, "Not installed"
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto/16 :L5
  :L14
  .line 254
    const-string v4, ""
    goto/16 :L7
  :L15
  .line 255
    const-string v2, ""
    goto :L8
  :L16
  .line 257
    const-string v4, "error"
    invoke-virtual { v4, v5 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :L17
  .line 258
    move-object/from16 v0, p0
    iget-object v2, v0, Lcom/geely/drivemem/ui/AppsView;->msg:Ljava/util/Map;
    move-object/from16 v0, p2
    iget-object v4, v0, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-interface { v2, v4 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
  .line 259
    const-string v4, "#FF9F0A"
    invoke-static { v4 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v4
    move-object v5, v2
    goto/16 :L9
  :L17
  .line 260
    move-object/from16 v0, p2
    iget-boolean v4, v0, Lcom/geely/drivemem/ui/AppsView$App;->hasApk:Z
    if-nez v4, :L18
  .line 261
    const-string v5, "The APK has not been uploaded to the catalog yet."
    move v4, v2
    goto/16 :L9
  :L18
  .line 262
    const-wide/16 v4, 0
    cmp-long v4, v8, v4
    if-ltz v4, :L19
    move-object/from16 v0, p2
    iget-wide v4, v0, Lcom/geely/drivemem/ui/AppsView$App;->versionCode:J
    cmp-long v4, v8, v4
    if-gez v4, :L19
  .line 263
    const-string v5, "Update available"
  .line 264
    const-string v2, "#FF9F0A"
    invoke-static { v2 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v2
    move v4, v2
    goto/16 :L9
  :L19
  .line 265
    const-wide/16 v4, 0
    cmp-long v4, v8, v4
    if-ltz v4, :L26
  .line 266
    const-string v5, "Up to date"
  .line 267
    const-string v2, "#30D158"
    invoke-static { v2 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v2
    move v4, v2
    goto/16 :L9
  :L20
  .line 286
    const-wide/16 v2, 0
    cmp-long v2, v8, v2
    if-ltz v2, :L24
  .line 287
    const-string v3, "Open"
    move-object/from16 v0, p2
    iget-boolean v2, v0, Lcom/geely/drivemem/ui/AppsView$App;->hasApk:Z
    if-eqz v2, :L21
    move-object/from16 v0, p2
    iget-wide v10, v0, Lcom/geely/drivemem/ui/AppsView$App;->versionCode:J
    cmp-long v2, v8, v10
    if-ltz v2, :L23
  :L21
    const/4 v2, 1
  :L22
    new-instance v5, Lcom/geely/drivemem/ui/AppsView$5;
    move-object/from16 v0, p0
    move-object/from16 v1, p2
    invoke-direct { v5, v0, v1 }, Lcom/geely/drivemem/ui/AppsView$5;-><init>(Lcom/geely/drivemem/ui/AppsView;Lcom/geely/drivemem/ui/AppsView$App;)V
    move-object/from16 v0, p1
    invoke-static { v0, v3, v2, v5 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v2
    invoke-virtual { v4, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 290
    move-object/from16 v0, p2
    iget-boolean v2, v0, Lcom/geely/drivemem/ui/AppsView$App;->hasApk:Z
    if-eqz v2, :L11
    move-object/from16 v0, p2
    iget-wide v2, v0, Lcom/geely/drivemem/ui/AppsView$App;->versionCode:J
    cmp-long v2, v8, v2
    if-gez v2, :L11
  .line 291
    const/16 v2, 10
    move-object/from16 v0, p1
    invoke-static { v4, v0, v2 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 292
    const-string v2, "Update"
    const/4 v3, 1
    new-instance v5, Lcom/geely/drivemem/ui/AppsView$6;
    move-object/from16 v0, p0
    move-object/from16 v1, p2
    invoke-direct { v5, v0, v1 }, Lcom/geely/drivemem/ui/AppsView$6;-><init>(Lcom/geely/drivemem/ui/AppsView;Lcom/geely/drivemem/ui/AppsView$App;)V
    move-object/from16 v0, p1
    invoke-static { v0, v2, v3, v5 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v2
    invoke-virtual { v4, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    goto/16 :L11
  :L23
  .line 287
    const/4 v2, 0
    goto :L22
  :L24
  .line 296
    move-object/from16 v0, p2
    iget-boolean v2, v0, Lcom/geely/drivemem/ui/AppsView$App;->hasApk:Z
    if-eqz v2, :L11
  .line 297
    const-string v2, "Install"
    const/4 v3, 1
    new-instance v5, Lcom/geely/drivemem/ui/AppsView$7;
    move-object/from16 v0, p0
    move-object/from16 v1, p2
    invoke-direct { v5, v0, v1 }, Lcom/geely/drivemem/ui/AppsView$7;-><init>(Lcom/geely/drivemem/ui/AppsView;Lcom/geely/drivemem/ui/AppsView$App;)V
    move-object/from16 v0, p1
    invoke-static { v0, v2, v3, v5 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v2
    invoke-virtual { v4, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    goto/16 :L11
  :L25
  .line 219
    move-exception v6
    goto/16 :L3
  :L26
    move v4, v2
    move-object v5, v6
    goto/16 :L9
  :L27
    move v3, v4
    move-object v5, v2
    goto/16 :L0
.end method

.method private fail(Ljava/lang/String;Ljava/lang/String;)V
  .registers 5
  .prologue
  .line 324
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->state:Ljava/util/Map;
    const-string v1, "error"
    invoke-interface { v0, p1, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 325
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->msg:Ljava/util/Map;
    invoke-interface { v0, p1, p2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 326
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/AppsView;->render()V
  .line 327
    return-void
.end method

.method private install(Lcom/geely/drivemem/ui/AppsView$App;)V
  .catch Ljava/lang/Throwable; { :L2 .. :L3 } :L4
  .catch Ljava/lang/Throwable; { :L5 .. :L6 } :L7
  .registers 8
  .prologue
  .line 330
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/AppsView;->getContext()Landroid/content/Context;
    move-result-object v0
  .line 331
    invoke-static { }, Lcom/geely/drivemem/net/OtaUpdater;->blockedReason()Ljava/lang/String;
    move-result-object v1
  .line 332
    if-eqz v1, :L1
    iget-object v0, p1, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-direct { p0, v0, v1 }, Lcom/geely/drivemem/ui/AppsView;->fail(Ljava/lang/String;Ljava/lang/String;)V
  :L0
  .line 355
    return-void
  :L1
  .line 333
    invoke-static { v0 }, Lcom/geely/drivemem/net/OtaUpdater;->helperInstalled(Landroid/content/Context;)Z
    move-result v1
    if-nez v1, :L2
    iget-object v0, p1, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    const-string v1, "ModeHelper is not installed. Run the Drive Assist installer once."
    invoke-direct { p0, v0, v1 }, Lcom/geely/drivemem/ui/AppsView;->fail(Ljava/lang/String;Ljava/lang/String;)V
    goto :L0
  :L2
  .line 335
    invoke-virtual { v0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v1
    const-string v2, "com.geely.modehelper"
    const/4 v3, 0
    invoke-virtual { v1, v2, v3 }, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    move-result-object v1
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
  .line 336
    const v2, 29897994
    if-ge v1, v2, :L5
    iget-object v1, p1, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    const-string v2, "ModeHelper is outdated. Run the Drive Assist installer once to update it."
    invoke-direct { p0, v1, v2 }, Lcom/geely/drivemem/ui/AppsView;->fail(Ljava/lang/String;Ljava/lang/String;)V
  :L3
    goto :L0
  :L4
  .line 337
    move-exception v1
  :L5
  .line 339
    new-instance v1, Landroid/content/Intent;
    const-string v2, "com.geely.modehelper.INSTALL_APP"
    invoke-direct { v1, v2 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    const-string v2, "com.geely.modehelper"
    invoke-virtual { v1, v2 }, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    move-result-object v1
  .line 340
    const/16 v2, 32
    invoke-virtual { v1, v2 }, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
  .line 341
    const-string v2, "pkg"
    iget-object v3, p1, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-virtual { v1, v2, v3 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
  .line 342
    invoke-virtual { v0, v1 }, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
  .line 343
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->state:Ljava/util/Map;
    iget-object v1, p1, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    const-string v2, "start"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 344
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->msg:Ljava/util/Map;
    iget-object v1, p1, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    const-string v2, ""
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 345
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->pct:Ljava/util/Map;
    iget-object v1, p1, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    const/4 v2, 0
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 346
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->started:Ljava/util/Map;
    iget-object v1, p1, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    invoke-static { v2, v3 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 347
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/AppsView;->render()V
  .line 348
    iget-object v0, p1, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
  .line 349
    iget-object v1, p0, Lcom/geely/drivemem/ui/AppsView;->ui:Landroid/os/Handler;
    new-instance v2, Lcom/geely/drivemem/ui/AppsView$8;
    invoke-direct { v2, p0, v0 }, Lcom/geely/drivemem/ui/AppsView$8;-><init>(Lcom/geely/drivemem/ui/AppsView;Ljava/lang/String;)V
    const-wide/16 v4, 21000
    invoke-virtual { v1, v2, v4, v5 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
  :L6
    goto/16 :L0
  :L7
  .line 352
    move-exception v0
  .line 353
    iget-object v1, p1, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Could not start: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p0, v1, v0 }, Lcom/geely/drivemem/ui/AppsView;->fail(Ljava/lang/String;Ljava/lang/String;)V
    goto/16 :L0
.end method

.method private installedName(Ljava/lang/String;)Ljava/lang/String;
  .catch Ljava/lang/Throwable; { :L0 .. :L3 } :L4
  .registers 4
  :L0
  .prologue
  .line 172
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/AppsView;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0
    const/4 v1, 0
    invoke-virtual { v0, p1, v1 }, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    move-result-object v0
  .line 173
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    if-nez v1, :L2
    const-string v0, "?"
  :L1
  .line 174
    return-object v0
  :L2
  .line 173
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
  :L3
    goto :L1
  :L4
  .line 174
    move-exception v0
    const-string v0, "?"
    goto :L1
.end method

.method private installedVc(Ljava/lang/String;)J
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L3
  .registers 4
  :L0
  .prologue
  .line 165
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/AppsView;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0
    const/4 v1, 0
    invoke-virtual { v0, p1, v1 }, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    move-result-object v0
  .line 166
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
  :L1
    int-to-long v0, v0
  :L2
  .line 167
    return-wide v0
  :L3
    move-exception v0
    const-wide/16 v0, -1
    goto :L2
.end method

.method private static label(Ljava/lang/String;)Ljava/lang/String;
  .registers 2
  .prologue
  .line 306
    const-string v0, "catalog"
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    const-string v0, "Checking"
  :L0
  .line 310
    return-object v0
  :L1
  .line 307
    const-string v0, "download"
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
    const-string v0, "Downloading"
    goto :L0
  :L2
  .line 308
    const-string v0, "verify"
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L3
    const-string v0, "Verifying"
    goto :L0
  :L3
  .line 309
    const-string v0, "install"
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L4
    const-string v0, "Installing"
    goto :L0
  :L4
  .line 310
    const-string v0, "Starting"
    goto :L0
.end method

.method private open(Ljava/lang/String;)V
  .catch Ljava/lang/Throwable; { :L0 .. :L3 } :L4
  .registers 7
  .prologue
    const/4 v4, 0
  :L0
  .line 315
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/AppsView;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    move-result-object v0
  .line 316
    if-eqz v0, :L2
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/AppsView;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
  :L1
  .line 321
    return-void
  :L2
  .line 317
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/AppsView;->getContext()Landroid/content/Context;
    move-result-object v0
    const-string v1, "This app has no launcher screen"
    const/4 v2, 0
    invoke-static { v0, v1, v2 }, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/widget/Toast;->show()V
  :L3
    goto :L1
  :L4
  .line 318
    move-exception v0
  .line 319
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/AppsView;->getContext()Landroid/content/Context;
    move-result-object v1
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Could not open: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0, v4 }, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/widget/Toast;->show()V
    goto :L1
.end method

.method private render()V
  .registers 6
  .prologue
    const/4 v4, 0
  .line 182
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/AppsView;->getContext()Landroid/content/Context;
    move-result-object v1
  .line 183
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->list:Landroid/widget/LinearLayout;
    invoke-virtual { v0 }, Landroid/widget/LinearLayout;->removeAllViews()V
  .line 184
    iget-boolean v0, p0, Lcom/geely/drivemem/ui/AppsView;->loading:Z
    if-eqz v0, :L2
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->apps:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->isEmpty()Z
    move-result v0
    if-eqz v0, :L2
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->hint:Landroid/widget/TextView;
    const-string v2, "Loading the app list\u2026"
    invoke-virtual { v0, v2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L0
  .line 187
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->apps:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v2
  :L1
    invoke-interface { v2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L4
    invoke-interface { v2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/geely/drivemem/ui/AppsView$App;
    iget-object v3, p0, Lcom/geely/drivemem/ui/AppsView;->list:Landroid/widget/LinearLayout;
    invoke-direct { p0, v1, v0 }, Lcom/geely/drivemem/ui/AppsView;->card(Landroid/content/Context;Lcom/geely/drivemem/ui/AppsView$App;)Landroid/view/View;
    move-result-object v0
    invoke-virtual { v3, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    goto :L1
  :L2
  .line 185
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->loadError:Ljava/lang/String;
    if-eqz v0, :L3
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->apps:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->isEmpty()Z
    move-result v0
    if-eqz v0, :L3
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->hint:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Could not load the app list: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    iget-object v3, p0, Lcom/geely/drivemem/ui/AppsView;->loadError:Ljava/lang/String;
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0, v2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto :L0
  :L3
  .line 186
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->hint:Landroid/widget/TextView;
    const-string v2, "Install and update apps over the internet. Only while parked and not charging."
    invoke-virtual { v0, v2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto :L0
  :L4
  .line 188
    new-instance v2, Landroid/widget/LinearLayout;
    invoke-direct { v2, v1 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 189
    const/4 v0, 6
    invoke-static { v1, v0 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v0
    invoke-virtual { v2, v4, v0, v4, v4 }, Landroid/widget/LinearLayout;->setPadding(IIII)V
  .line 190
    iget-boolean v0, p0, Lcom/geely/drivemem/ui/AppsView;->loading:Z
    if-eqz v0, :L6
    const-string v0, "Refreshing\u2026"
  :L5
    new-instance v3, Lcom/geely/drivemem/ui/AppsView$3;
    invoke-direct { v3, p0 }, Lcom/geely/drivemem/ui/AppsView$3;-><init>(Lcom/geely/drivemem/ui/AppsView;)V
    invoke-static { v1, v0, v4, v3 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v0
    invoke-virtual { v2, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 193
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->list:Landroid/widget/LinearLayout;
    invoke-virtual { v0, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 194
    return-void
  :L6
  .line 190
    const-string v0, "Refresh list"
    goto :L5
.end method

.method private static working(Ljava/lang/String;)Z
  .registers 2
  .prologue
  .line 178
    if-eqz p0, :L1
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    if-lez v0, :L1
    const-string v0, "done"
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "error"
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    const/4 v0, 1
  :L0
    return v0
  :L1
    const/4 v0, 0
    goto :L0
.end method

.method protected onAttachedToWindow()V
  .registers 5
  .prologue
  .line 97
    invoke-super { p0 }, Landroid/widget/LinearLayout;->onAttachedToWindow()V
  .line 98
    iget-boolean v0, p0, Lcom/geely/drivemem/ui/AppsView;->registered:Z
    if-nez v0, :L0
  .line 99
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/AppsView;->getContext()Landroid/content/Context;
    move-result-object v0
    iget-object v1, p0, Lcom/geely/drivemem/ui/AppsView;->receiver:Landroid/content/BroadcastReceiver;
    new-instance v2, Landroid/content/IntentFilter;
    const-string v3, "com.geely.modehelper.STORE_STATUS"
    invoke-direct { v2, v3 }, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
    invoke-virtual { v0, v1, v2 }, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
  .line 100
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/geely/drivemem/ui/AppsView;->registered:Z
  :L0
  .line 102
    return-void
.end method

.method protected onDetachedFromWindow()V
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L3
  .registers 3
  .prologue
  .line 105
    iget-boolean v0, p0, Lcom/geely/drivemem/ui/AppsView;->registered:Z
    if-eqz v0, :L2
  :L0
  .line 106
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/AppsView;->getContext()Landroid/content/Context;
    move-result-object v0
    iget-object v1, p0, Lcom/geely/drivemem/ui/AppsView;->receiver:Landroid/content/BroadcastReceiver;
    invoke-virtual { v0, v1 }, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
  :L1
  .line 107
    const/4 v0, 0
    iput-boolean v0, p0, Lcom/geely/drivemem/ui/AppsView;->registered:Z
  :L2
  .line 109
    invoke-super { p0 }, Landroid/widget/LinearLayout;->onDetachedFromWindow()V
  .line 110
    return-void
  :L3
  .line 106
    move-exception v0
    goto :L1
.end method

.method public refresh()V
  .registers 4
  .prologue
  .line 114
    iget-boolean v0, p0, Lcom/geely/drivemem/ui/AppsView;->loading:Z
    if-eqz v0, :L1
  :L0
  .line 160
    return-void
  :L1
  .line 115
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/geely/drivemem/ui/AppsView;->loading:Z
  .line 116
    const/4 v0, 0
    iput-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->loadError:Ljava/lang/String;
  .line 117
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/AppsView;->render()V
  .line 118
    new-instance v0, Ljava/lang/Thread;
    new-instance v1, Lcom/geely/drivemem/ui/AppsView$2;
    invoke-direct { v1, p0 }, Lcom/geely/drivemem/ui/AppsView$2;-><init>(Lcom/geely/drivemem/ui/AppsView;)V
    const-string v2, "apps-catalog"
    invoke-direct { v0, v1, v2 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 159
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
    goto :L0
.end method
