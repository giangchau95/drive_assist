.class public Lcom/geely/drivemem/ui/AppsView;
.super Landroid/widget/LinearLayout;
.source "AppsView.java"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/geely/drivemem/ui/AppsView$App;
  }
.end annotation

.field public final static CATALOG_URL:Ljava/lang/String; = "https://raw.githubusercontent.com/giangchau95/drive_assist/main/apps/catalog.json"

.field private final static ICONS:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Landroid/graphics/Bitmap;",
      ">;"
    }
  .end annotation
.end field

.field final static INSTALL_APP:Ljava/lang/String; = "com.geely.modehelper.INSTALL_APP"

.field final static MIN_HELPER_VC_STORE:I = 29911176

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

.field private final refreshBtn:Landroid/widget/ImageView;

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

.method static constructor <clinit>()V
  .registers 1
  .prologue
  .line 182
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    sput-object v0, Lcom/geely/drivemem/ui/AppsView;->ICONS:Ljava/util/Map;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 11
  .prologue
    const/16 v7, 48
    const/4 v6, -2
    const/4 v5, 1
    const/4 v4, 0
  .line 78
    invoke-direct { p0, p1, p2 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .line 52
    new-instance v0, Landroid/os/Handler;
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    iput-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->ui:Landroid/os/Handler;
  .line 56
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->apps:Ljava/util/List;
  .line 59
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->state:Ljava/util/Map;
  .line 60
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->msg:Ljava/util/Map;
  .line 61
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->pct:Ljava/util/Map;
  .line 62
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->started:Ljava/util/Map;
  .line 65
    new-instance v0, Lcom/geely/drivemem/ui/AppsView$1;
    invoke-direct { v0, p0 }, Lcom/geely/drivemem/ui/AppsView$1;-><init>(Lcom/geely/drivemem/ui/AppsView;)V
    iput-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->receiver:Landroid/content/BroadcastReceiver;
  .line 79
    invoke-virtual { p0, v5 }, Lcom/geely/drivemem/ui/AppsView;->setOrientation(I)V
  .line 80
    new-instance v0, Landroid/widget/LinearLayout;
    invoke-direct { v0, p1 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 81
    invoke-virtual { v0, v4 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 82
    const/16 v1, 16
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setGravity(I)V
  .line 83
    new-instance v1, Landroid/widget/LinearLayout;
    invoke-direct { v1, p1 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 84
    invoke-virtual { v1, v5 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 85
    new-instance v2, Landroid/widget/TextView;
    invoke-direct { v2, p1 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 86
    const-string v3, "Apps"
    invoke-virtual { v2, v3 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 87
    const/high16 v3, 0x41e00000
    invoke-virtual { v2, v3 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 88
    sget v3, Lcom/geely/drivemem/util/Style;->TEXT:I
    invoke-virtual { v2, v3 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 89
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-virtual { v2, v3 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  .line 90
    invoke-virtual { v1, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 91
    new-instance v2, Landroid/widget/TextView;
    invoke-direct { v2, p1 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    iput-object v2, p0, Lcom/geely/drivemem/ui/AppsView;->hint:Landroid/widget/TextView;
  .line 92
    iget-object v2, p0, Lcom/geely/drivemem/ui/AppsView;->hint:Landroid/widget/TextView;
    const/high16 v3, 0x41800000
    invoke-virtual { v2, v3 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 93
    iget-object v2, p0, Lcom/geely/drivemem/ui/AppsView;->hint:Landroid/widget/TextView;
    sget v3, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-virtual { v2, v3 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 94
    iget-object v2, p0, Lcom/geely/drivemem/ui/AppsView;->hint:Landroid/widget/TextView;
    invoke-virtual { v1, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 95
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x3f800000
    invoke-direct { v2, v4, v6, v3 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual { v0, v1, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 96
    new-instance v1, Landroid/widget/ImageView;
    invoke-direct { v1, p1 }, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
    iput-object v1, p0, Lcom/geely/drivemem/ui/AppsView;->refreshBtn:Landroid/widget/ImageView;
  .line 97
    iget-object v1, p0, Lcom/geely/drivemem/ui/AppsView;->refreshBtn:Landroid/widget/ImageView;
    invoke-static { p1, v4 }, Lcom/geely/drivemem/ui/AppsView;->glyph(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    move-result-object v2
    invoke-virtual { v1, v2 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
  .line 98
    iget-object v1, p0, Lcom/geely/drivemem/ui/AppsView;->refreshBtn:Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;
    invoke-virtual { v1, v2 }, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
  .line 99
    iget-object v1, p0, Lcom/geely/drivemem/ui/AppsView;->refreshBtn:Landroid/widget/ImageView;
    sget v2, Lcom/geely/drivemem/util/Style;->CARD_HI:I
    const/16 v3, 14
    invoke-static { v2, p1, v3 }, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;I)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v2
    invoke-virtual { v1, v2 }, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 100
    const/16 v1, 11
    invoke-static { p1, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
  .line 101
    iget-object v2, p0, Lcom/geely/drivemem/ui/AppsView;->refreshBtn:Landroid/widget/ImageView;
    invoke-virtual { v2, v1, v1, v1, v1 }, Landroid/widget/ImageView;->setPadding(IIII)V
  .line 102
    iget-object v1, p0, Lcom/geely/drivemem/ui/AppsView;->refreshBtn:Landroid/widget/ImageView;
    new-instance v2, Lcom/geely/drivemem/ui/AppsView$2;
    invoke-direct { v2, p0 }, Lcom/geely/drivemem/ui/AppsView$2;-><init>(Lcom/geely/drivemem/ui/AppsView;)V
    invoke-virtual { v1, v2 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 105
    iget-object v1, p0, Lcom/geely/drivemem/ui/AppsView;->refreshBtn:Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
    invoke-static { p1, v7 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
    invoke-static { p1, v7 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v4
    invoke-direct { v2, v3, v4 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual { v0, v1, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 106
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, -1
    invoke-direct { v1, v2, v6 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 107
    const/16 v2, 18
    invoke-static { p1, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
  .line 108
    invoke-virtual { p0, v0, v1 }, Lcom/geely/drivemem/ui/AppsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 109
    new-instance v0, Landroid/widget/LinearLayout;
    invoke-direct { v0, p1 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->list:Landroid/widget/LinearLayout;
  .line 110
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->list:Landroid/widget/LinearLayout;
    invoke-virtual { v0, v5 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 111
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->list:Landroid/widget/LinearLayout;
    invoke-virtual { p0, v0 }, Lcom/geely/drivemem/ui/AppsView;->addView(Landroid/view/View;)V
  .line 112
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

.method static synthetic access$1100(Lcom/geely/drivemem/ui/AppsView;Ljava/lang/String;)V
  .registers 2
  .prologue
  .line 38
    invoke-direct { p0, p1 }, Lcom/geely/drivemem/ui/AppsView;->open(Ljava/lang/String;)V
    return-void
.end method

.method static synthetic access$1200(Lcom/geely/drivemem/ui/AppsView;Lcom/geely/drivemem/ui/AppsView$App;)V
  .registers 2
  .prologue
  .line 38
    invoke-direct { p0, p1 }, Lcom/geely/drivemem/ui/AppsView;->confirmUninstall(Lcom/geely/drivemem/ui/AppsView$App;)V
    return-void
.end method

.method static synthetic access$1300(Lcom/geely/drivemem/ui/AppsView;Lcom/geely/drivemem/ui/AppsView$App;Ljava/lang/String;Ljava/lang/String;)V
  .registers 4
  .prologue
  .line 38
    invoke-direct { p0, p1, p2, p3 }, Lcom/geely/drivemem/ui/AppsView;->send(Lcom/geely/drivemem/ui/AppsView$App;Ljava/lang/String;Ljava/lang/String;)V
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

.method static synthetic access$900()Ljava/util/Map;
  .registers 1
  .prologue
  .line 38
    sget-object v0, Lcom/geely/drivemem/ui/AppsView;->ICONS:Ljava/util/Map;
    return-object v0
.end method

.method private btn(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
  .registers 9
  .prologue
    const/16 v2, 8
    const/4 v3, 0
  .line 292
    new-instance v1, Landroid/widget/TextView;
    invoke-direct { v1, p1 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 293
    invoke-virtual { v1, p2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 294
    const/high16 v0, 0x41880000
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 295
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  .line 296
    const/16 v0, 17
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setGravity(I)V
  .line 297
    const/4 v0, 1
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setSingleLine(Z)V
  .line 298
    invoke-virtual { v1, v3 }, Landroid/widget/TextView;->setIncludeFontPadding(Z)V
  .line 299
    invoke-static { p1, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v0
    invoke-static { p1, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
    invoke-virtual { v1, v0, v3, v2, v3 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 300
    if-eqz p3, :L1
    sget v0, Lcom/geely/drivemem/util/Style;->CARD_ON:I
  :L0
  .line 301
    invoke-static { v0 }, Lcom/geely/drivemem/util/Style;->onFill(I)I
    move-result v2
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 302
    const/16 v2, 12
    invoke-static { v0, p1, v2 }, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;I)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v0
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 303
    new-instance v0, Lcom/geely/drivemem/ui/AppsView$4;
    invoke-direct { v0, p0, p4 }, Lcom/geely/drivemem/ui/AppsView$4;-><init>(Lcom/geely/drivemem/ui/AppsView;Ljava/lang/Runnable;)V
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 304
    return-object v1
  :L1
  .line 300
    sget v0, Lcom/geely/drivemem/util/Style;->CARD_HI:I
    goto :L0
.end method

.method private card(Landroid/content/Context;Lcom/geely/drivemem/ui/AppsView$App;)Landroid/view/View;
  .registers 23
  .prologue
  .line 371
    move-object/from16 v0, p2
    iget-object v2, v0, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    move-object/from16 v0, p0
    invoke-direct { v0, v2 }, Lcom/geely/drivemem/ui/AppsView;->installedVc(Ljava/lang/String;)J
    move-result-wide v8
  .line 372
    move-object/from16 v0, p0
    iget-object v2, v0, Lcom/geely/drivemem/ui/AppsView;->state:Ljava/util/Map;
    move-object/from16 v0, p2
    iget-object v3, v0, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-interface { v2, v3 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
  .line 373
    invoke-static { v2 }, Lcom/geely/drivemem/ui/AppsView;->working(Ljava/lang/String;)Z
    move-result v4
  .line 374
    if-eqz v4, :L35
    move-object/from16 v0, p0
    iget-object v3, v0, Lcom/geely/drivemem/ui/AppsView;->started:Ljava/util/Map;
    move-object/from16 v0, p2
    iget-object v5, v0, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-interface { v3, v5 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L35
    const-string v3, "start"
    invoke-virtual { v3, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L35
  .line 375
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
    if-lez v3, :L35
  .line 376
    move-object/from16 v0, p0
    iget-object v2, v0, Lcom/geely/drivemem/ui/AppsView;->state:Ljava/util/Map;
    move-object/from16 v0, p2
    iget-object v3, v0, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    const-string v4, "error"
    invoke-interface { v2, v3, v4 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 377
    move-object/from16 v0, p0
    iget-object v2, v0, Lcom/geely/drivemem/ui/AppsView;->msg:Ljava/util/Map;
    move-object/from16 v0, p2
    iget-object v3, v0, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    const-string v4, "No response from ModeHelper. Run the Drive Assist installer once to update it."
    invoke-interface { v2, v3, v4 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 378
    const-string v3, "error"
  .line 379
    const/4 v2, 0
    move v6, v2
    move-object v7, v3
  :L0
  .line 381
    const-wide/16 v2, 0
    cmp-long v2, v8, v2
    if-ltz v2, :L13
    const/4 v2, 1
    move v5, v2
  :L1
  .line 382
    if-eqz v5, :L14
    move-object/from16 v0, p2
    iget-boolean v2, v0, Lcom/geely/drivemem/ui/AppsView$App;->hasApk:Z
    if-eqz v2, :L14
    move-object/from16 v0, p2
    iget-wide v2, v0, Lcom/geely/drivemem/ui/AppsView$App;->versionCode:J
    cmp-long v2, v8, v2
    if-gez v2, :L14
    const/4 v2, 1
    move v3, v2
  :L2
  .line 384
    new-instance v8, Landroid/widget/LinearLayout;
    move-object/from16 v0, p1
    invoke-direct { v8, v0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 385
    const/4 v2, 1
    invoke-virtual { v8, v2 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 386
    const/16 v2, 16
    move-object/from16 v0, p1
    invoke-static { v0, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
  .line 387
    invoke-virtual { v8, v2, v2, v2, v2 }, Landroid/widget/LinearLayout;->setPadding(IIII)V
  .line 388
    invoke-static { }, Lcom/geely/drivemem/util/Style;->cardFillColor()I
    move-result v2
    move-object/from16 v0, p1
    invoke-static { v2, v0 }, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v2
    invoke-virtual { v8, v2 }, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 389
    const/16 v2, 210
    move-object/from16 v0, p1
    invoke-static { v0, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
    invoke-virtual { v8, v2 }, Landroid/widget/LinearLayout;->setMinimumHeight(I)V
  .line 392
    new-instance v4, Landroid/widget/LinearLayout;
    move-object/from16 v0, p1
    invoke-direct { v4, v0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 393
    const/4 v2, 0
    invoke-virtual { v4, v2 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 394
    const/16 v2, 16
    invoke-virtual { v4, v2 }, Landroid/widget/LinearLayout;->setGravity(I)V
  .line 395
    new-instance v2, Landroid/widget/ImageView;
    move-object/from16 v0, p1
    invoke-direct { v2, v0 }, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
  .line 396
    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;
    invoke-virtual { v2, v9 }, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
  .line 397
    move-object/from16 v0, p0
    move-object/from16 v1, p2
    invoke-direct { v0, v1, v2 }, Lcom/geely/drivemem/ui/AppsView;->loadIcon(Lcom/geely/drivemem/ui/AppsView$App;Landroid/widget/ImageView;)V
  .line 398
    const/16 v9, 14
    move-object/from16 v0, p1
    invoke-static { v0, v9 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v9
  .line 399
    new-instance v10, Lcom/geely/drivemem/ui/AppsView$6;
    move-object/from16 v0, p0
    invoke-direct { v10, v0, v9 }, Lcom/geely/drivemem/ui/AppsView$6;-><init>(Lcom/geely/drivemem/ui/AppsView;I)V
    invoke-virtual { v2, v10 }, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
  .line 402
    const/4 v9, 1
    invoke-virtual { v2, v9 }, Landroid/widget/ImageView;->setClipToOutline(Z)V
  .line 403
    const/16 v9, 56
    move-object/from16 v0, p1
    invoke-static { v0, v9 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v9
  .line 404
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct { v10, v9, v9 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 405
    const/16 v9, 12
    move-object/from16 v0, p1
    invoke-static { v0, v9 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v9
    iput v9, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
  .line 406
    invoke-virtual { v4, v2, v10 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 407
    new-instance v9, Landroid/widget/LinearLayout;
    move-object/from16 v0, p1
    invoke-direct { v9, v0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 408
    const/4 v2, 1
    invoke-virtual { v9, v2 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 409
    new-instance v2, Landroid/widget/TextView;
    move-object/from16 v0, p1
    invoke-direct { v2, v0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 410
    move-object/from16 v0, p2
    iget-object v10, v0, Lcom/geely/drivemem/ui/AppsView$App;->name:Ljava/lang/String;
    invoke-virtual { v2, v10 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 411
    const/high16 v10, 0x41980000
    invoke-virtual { v2, v10 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 412
    sget v10, Lcom/geely/drivemem/util/Style;->TEXT:I
    invoke-virtual { v2, v10 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 413
    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-virtual { v2, v10 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  .line 414
    const/4 v10, 2
    invoke-virtual { v2, v10 }, Landroid/widget/TextView;->setMaxLines(I)V
  .line 415
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-virtual { v2, v10 }, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
  .line 416
    invoke-virtual { v9, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 417
    new-instance v10, Ljava/lang/StringBuilder;
    invoke-direct { v10 }, Ljava/lang/StringBuilder;-><init>()V
  .line 418
    if-eqz v5, :L3
    const-string v2, "v"
    invoke-virtual { v10, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    move-object/from16 v0, p2
    iget-object v11, v0, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    move-object/from16 v0, p0
    invoke-direct { v0, v11 }, Lcom/geely/drivemem/ui/AppsView;->installedName(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v11
    invoke-virtual { v2, v11 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L3
  .line 419
    if-eqz v3, :L15
    const-string v2, "  \u2192  v"
    invoke-virtual { v10, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    move-object/from16 v0, p2
    iget-object v11, v0, Lcom/geely/drivemem/ui/AppsView$App;->versionName:Ljava/lang/String;
    invoke-virtual { v2, v11 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L4
  .line 421
    move-object/from16 v0, p2
    iget-boolean v2, v0, Lcom/geely/drivemem/ui/AppsView$App;->hasApk:Z
    if-eqz v2, :L6
    move-object/from16 v0, p2
    iget-wide v12, v0, Lcom/geely/drivemem/ui/AppsView$App;->size:J
    const-wide/16 v14, 0
    cmp-long v2, v12, v14
    if-lez v2, :L6
    invoke-virtual { v10 }, Ljava/lang/StringBuilder;->length()I
    move-result v2
    if-lez v2, :L16
    const-string v2, "  \u00b7  "
  :L5
    invoke-virtual { v10, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;
    const-string v12, "%.0f MB"
    const/4 v13, 1
    new-array v13, v13, [Ljava/lang/Object;
    const/4 v14, 0
    move-object/from16 v0, p2
    iget-wide v0, v0, Lcom/geely/drivemem/ui/AppsView$App;->size:J
    move-wide/from16 v16, v0
    move-wide/from16 v0, v16
    long-to-double v0, v0
    move-wide/from16 v16, v0
    const-wide/high16 v18, 0x4130000000000000L
    div-double v16, v16, v18
    invoke-static/range { v16 .. v17 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v15
    aput-object v15, v13, v14
    invoke-static { v11, v12, v13 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v11
    invoke-virtual { v2, v11 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L6
  .line 422
    new-instance v2, Landroid/widget/TextView;
    move-object/from16 v0, p1
    invoke-direct { v2, v0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 423
    invoke-virtual { v10 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v10
    invoke-virtual { v2, v10 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 424
    const/high16 v10, 0x41600000
    invoke-virtual { v2, v10 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 425
    sget v10, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-virtual { v2, v10 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 426
    const/4 v10, 1
    invoke-virtual { v2, v10 }, Landroid/widget/TextView;->setSingleLine(Z)V
  .line 427
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-virtual { v2, v10 }, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
  .line 428
    invoke-virtual { v9, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 429
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, 0
    const/4 v11, -2
    const/high16 v12, 0x3f800000
    invoke-direct { v2, v10, v11, v12 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual { v4, v9, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 430
    if-eqz v3, :L17
    const-string v2, "Update"
    const-string v9, "#FF9F0A"
    invoke-static { v9 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v9
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    invoke-direct { v0, v1, v2, v9 }, Lcom/geely/drivemem/ui/AppsView;->pill(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    move-result-object v2
  :L7
  .line 433
    new-instance v9, Landroid/widget/LinearLayout;
    move-object/from16 v0, p1
    invoke-direct { v9, v0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 434
    const v10, 8388613
    invoke-virtual { v9, v10 }, Landroid/widget/LinearLayout;->setGravity(I)V
  .line 435
    invoke-virtual { v9, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 436
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, -1
    const/4 v11, -2
    invoke-direct { v2, v10, v11 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 437
    const/16 v10, 8
    move-object/from16 v0, p1
    invoke-static { v0, v10 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v10
    iput v10, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
  .line 438
    invoke-virtual { v8, v9, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 439
    invoke-virtual { v8, v4 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 441
    new-instance v2, Landroid/widget/TextView;
    move-object/from16 v0, p1
    invoke-direct { v2, v0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 442
    move-object/from16 v0, p2
    iget-object v4, v0, Lcom/geely/drivemem/ui/AppsView$App;->desc:Ljava/lang/String;
    invoke-virtual { v2, v4 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 443
    const/high16 v4, 0x41700000
    invoke-virtual { v2, v4 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 444
    sget v4, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-virtual { v2, v4 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 445
    const/4 v4, 2
    invoke-virtual { v2, v4 }, Landroid/widget/TextView;->setMaxLines(I)V
  .line 446
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-virtual { v2, v4 }, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
  .line 447
    const/4 v4, 0
    const/16 v9, 12
    move-object/from16 v0, p1
    invoke-static { v0, v9 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v9
    const/4 v10, 0
    const/4 v11, 0
    invoke-virtual { v2, v4, v9, v10, v11 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 448
    invoke-virtual { v8, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 450
    new-instance v2, Landroid/view/View;
    move-object/from16 v0, p1
    invoke-direct { v2, v0 }, Landroid/view/View;-><init>(Landroid/content/Context;)V
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, 1
    const/4 v10, 0
    const/high16 v11, 0x3f800000
    invoke-direct { v4, v9, v10, v11 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual { v8, v2, v4 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 453
    if-eqz v6, :L24
  .line 454
    move-object/from16 v0, p0
    iget-object v2, v0, Lcom/geely/drivemem/ui/AppsView;->msg:Ljava/util/Map;
    move-object/from16 v0, p2
    iget-object v4, v0, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-interface { v2, v4 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
  .line 455
    new-instance v9, Landroid/widget/TextView;
    move-object/from16 v0, p1
    invoke-direct { v9, v0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 456
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-static { v7 }, Lcom/geely/drivemem/ui/AppsView;->label(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v10
    invoke-virtual { v4, v10 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v10
    move-object/from16 v0, p0
    iget-object v4, v0, Lcom/geely/drivemem/ui/AppsView;->pct:Ljava/util/Map;
    move-object/from16 v0, p2
    iget-object v11, v0, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-interface { v4, v11 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    if-eqz v4, :L21
    const-string v4, "download"
    invoke-virtual { v4, v7 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :L21
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v11, " "
    invoke-virtual { v4, v11 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    move-object/from16 v0, p0
    iget-object v11, v0, Lcom/geely/drivemem/ui/AppsView;->pct:Ljava/util/Map;
    move-object/from16 v0, p2
    iget-object v12, v0, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-interface { v11, v12 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v11
    invoke-virtual { v4, v11 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v4
    const-string v11, "%"
    invoke-virtual { v4, v11 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
  :L8
    invoke-virtual { v10, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
  .line 457
    if-eqz v2, :L22
    invoke-virtual { v2 }, Ljava/lang/String;->length()I
    move-result v10
    if-lez v10, :L22
    new-instance v10, Ljava/lang/StringBuilder;
    invoke-direct { v10 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v11, "  \u00b7  "
    invoke-virtual { v10, v11 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v10
    invoke-virtual { v10, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
  :L9
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
  .line 456
    invoke-virtual { v9, v2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 458
    const/high16 v2, 0x41600000
    invoke-virtual { v9, v2 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 459
    sget v2, Lcom/geely/drivemem/util/Style;->ACCENT:I
    invoke-virtual { v9, v2 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 460
    const/4 v2, 1
    invoke-virtual { v9, v2 }, Landroid/widget/TextView;->setSingleLine(Z)V
  .line 461
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-virtual { v9, v2 }, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
  .line 462
    const/4 v2, 0
    const/16 v4, 10
    move-object/from16 v0, p1
    invoke-static { v0, v4 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v4
    const/4 v10, 0
    const/4 v11, 4
    move-object/from16 v0, p1
    invoke-static { v0, v11 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v11
    invoke-virtual { v9, v2, v4, v10, v11 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 463
    invoke-virtual { v8, v9 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 464
    new-instance v4, Landroid/widget/ProgressBar;
    const/4 v2, 0
    const v9, 16842872
    move-object/from16 v0, p1
    invoke-direct { v4, v0, v2, v9 }, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 465
    const/16 v2, 100
    invoke-virtual { v4, v2 }, Landroid/widget/ProgressBar;->setMax(I)V
  .line 466
    move-object/from16 v0, p0
    iget-object v2, v0, Lcom/geely/drivemem/ui/AppsView;->pct:Ljava/util/Map;
    move-object/from16 v0, p2
    iget-object v9, v0, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-interface { v2, v9 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
  .line 467
    const-string v9, "download"
    invoke-virtual { v9, v7 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v7
    if-eqz v7, :L23
    if-eqz v2, :L23
    invoke-virtual { v2 }, Ljava/lang/Integer;->intValue()I
    move-result v2
    invoke-virtual { v4, v2 }, Landroid/widget/ProgressBar;->setProgress(I)V
  :L10
  .line 468
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, -1
    const/16 v9, 8
    move-object/from16 v0, p1
    invoke-static { v0, v9 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v9
    invoke-direct { v2, v7, v9 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual { v8, v4, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  :L11
  .line 481
    new-instance v4, Landroid/widget/LinearLayout;
    move-object/from16 v0, p1
    invoke-direct { v4, v0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 482
    const/4 v2, 0
    invoke-virtual { v4, v2 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 483
    const/16 v2, 16
    invoke-virtual { v4, v2 }, Landroid/widget/LinearLayout;->setGravity(I)V
  .line 484
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, -1
    const/4 v9, -2
    invoke-direct { v2, v7, v9 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 485
    const/16 v7, 14
    move-object/from16 v0, p1
    invoke-static { v0, v7 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v7
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
  .line 486
    invoke-virtual { v8, v4, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 487
    const/16 v2, 46
    move-object/from16 v0, p1
    invoke-static { v0, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v7
  .line 488
    if-eqz v6, :L30
  .line 489
    const-string v2, "Working\u2026"
    const/4 v3, 0
    new-instance v5, Lcom/geely/drivemem/ui/AppsView$7;
    move-object/from16 v0, p0
    invoke-direct { v5, v0 }, Lcom/geely/drivemem/ui/AppsView$7;-><init>(Lcom/geely/drivemem/ui/AppsView;)V
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    invoke-direct { v0, v1, v2, v3, v5 }, Lcom/geely/drivemem/ui/AppsView;->btn(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v2
  .line 490
    const v3, 1058642330
    invoke-virtual { v2, v3 }, Landroid/widget/TextView;->setAlpha(F)V
  .line 491
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0
    const/high16 v6, 0x3f800000
    invoke-direct { v3, v5, v7, v6 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual { v4, v2, v3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  :L12
  .line 514
    return-object v8
  :L13
  .line 381
    const/4 v2, 0
    move v5, v2
    goto/16 :L1
  :L14
  .line 382
    const/4 v2, 0
    move v3, v2
    goto/16 :L2
  :L15
  .line 420
    if-nez v5, :L4
    move-object/from16 v0, p2
    iget-boolean v2, v0, Lcom/geely/drivemem/ui/AppsView$App;->hasApk:Z
    if-eqz v2, :L4
    const-string v2, "v"
    invoke-virtual { v10, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    move-object/from16 v0, p2
    iget-object v11, v0, Lcom/geely/drivemem/ui/AppsView$App;->versionName:Ljava/lang/String;
    invoke-virtual { v2, v11 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto/16 :L4
  :L16
  .line 421
    const-string v2, ""
    goto/16 :L5
  :L17
  .line 431
    if-eqz v5, :L18
    const-string v2, "Installed"
    const-string v9, "#30D158"
    invoke-static { v9 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v9
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    invoke-direct { v0, v1, v2, v9 }, Lcom/geely/drivemem/ui/AppsView;->pill(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    move-result-object v2
    goto/16 :L7
  :L18
  .line 432
    move-object/from16 v0, p2
    iget-boolean v2, v0, Lcom/geely/drivemem/ui/AppsView$App;->hasApk:Z
    if-eqz v2, :L20
    const-string v2, "Not installed"
  :L19
    sget v9, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    invoke-direct { v0, v1, v2, v9 }, Lcom/geely/drivemem/ui/AppsView;->pill(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    move-result-object v2
    goto/16 :L7
  :L20
    const-string v2, "Not available"
    goto :L19
  :L21
  .line 456
    const-string v4, ""
    goto/16 :L8
  :L22
  .line 457
    const-string v2, ""
    goto/16 :L9
  :L23
  .line 467
    const/4 v2, 1
    invoke-virtual { v4, v2 }, Landroid/widget/ProgressBar;->setIndeterminate(Z)V
    goto/16 :L10
  :L24
  .line 469
    const-string v2, "error"
    invoke-virtual { v2, v7 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :L25
    move-object/from16 v0, p2
    iget-boolean v2, v0, Lcom/geely/drivemem/ui/AppsView$App;->hasApk:Z
    if-nez v2, :L11
    if-nez v5, :L11
  :L25
  .line 470
    new-instance v4, Landroid/widget/TextView;
    move-object/from16 v0, p1
    invoke-direct { v4, v0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 471
    const-string v2, "error"
    invoke-virtual { v2, v7 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L28
    move-object/from16 v0, p0
    iget-object v2, v0, Lcom/geely/drivemem/ui/AppsView;->msg:Ljava/util/Map;
    move-object/from16 v0, p2
    iget-object v9, v0, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-interface { v2, v9 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/CharSequence;
  :L26
    invoke-virtual { v4, v2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 472
    const/high16 v2, 0x41600000
    invoke-virtual { v4, v2 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 473
    const-string v2, "error"
    invoke-virtual { v2, v7 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L29
    const-string v2, "#FF9F0A"
    invoke-static { v2 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v2
  :L27
    invoke-virtual { v4, v2 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 474
    const/4 v2, 3
    invoke-virtual { v4, v2 }, Landroid/widget/TextView;->setMaxLines(I)V
  .line 475
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-virtual { v4, v2 }, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
  .line 476
    const/4 v2, 0
    const/16 v7, 10
    move-object/from16 v0, p1
    invoke-static { v0, v7 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v7
    const/4 v9, 0
    const/4 v10, 0
    invoke-virtual { v4, v2, v7, v9, v10 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 477
    invoke-virtual { v8, v4 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    goto/16 :L11
  :L28
  .line 471
    const-string v2, "The APK has not been added to the catalog yet."
    goto :L26
  :L29
  .line 473
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    goto :L27
  :L30
  .line 492
    if-eqz v5, :L34
  .line 493
    if-eqz v3, :L31
  .line 494
    const-string v2, "Update"
    const/4 v5, 1
    new-instance v6, Lcom/geely/drivemem/ui/AppsView$8;
    move-object/from16 v0, p0
    move-object/from16 v1, p2
    invoke-direct { v6, v0, v1 }, Lcom/geely/drivemem/ui/AppsView$8;-><init>(Lcom/geely/drivemem/ui/AppsView;Lcom/geely/drivemem/ui/AppsView$App;)V
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    invoke-direct { v0, v1, v2, v5, v6 }, Lcom/geely/drivemem/ui/AppsView;->btn(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v2
  .line 495
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0
    const/high16 v9, 0x3f800000
    invoke-direct { v5, v6, v7, v9 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
  .line 496
    const/16 v6, 8
    move-object/from16 v0, p1
    invoke-static { v0, v6 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v6
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
  .line 497
    invoke-virtual { v4, v2, v5 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  :L31
  .line 499
    const-string v5, "Open"
    if-nez v3, :L33
    const/4 v2, 1
  :L32
    new-instance v3, Lcom/geely/drivemem/ui/AppsView$9;
    move-object/from16 v0, p0
    move-object/from16 v1, p2
    invoke-direct { v3, v0, v1 }, Lcom/geely/drivemem/ui/AppsView$9;-><init>(Lcom/geely/drivemem/ui/AppsView;Lcom/geely/drivemem/ui/AppsView$App;)V
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    invoke-direct { v0, v1, v5, v2, v3 }, Lcom/geely/drivemem/ui/AppsView;->btn(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v2
  .line 500
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0
    const/high16 v6, 0x3f800000
    invoke-direct { v3, v5, v7, v6 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
  .line 501
    const/16 v5, 8
    move-object/from16 v0, p1
    invoke-static { v0, v5 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v5
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
  .line 502
    invoke-virtual { v4, v2, v3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 503
    new-instance v2, Landroid/widget/ImageView;
    move-object/from16 v0, p1
    invoke-direct { v2, v0 }, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
  .line 504
    const/4 v3, 1
    move-object/from16 v0, p1
    invoke-static { v0, v3 }, Lcom/geely/drivemem/ui/AppsView;->glyph(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    move-result-object v3
    invoke-virtual { v2, v3 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
  .line 505
    sget v3, Lcom/geely/drivemem/util/Style;->CARD_HI:I
    const/16 v5, 12
    move-object/from16 v0, p1
    invoke-static { v3, v0, v5 }, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;I)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v3
    invoke-virtual { v2, v3 }, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 506
    const/16 v3, 9
    move-object/from16 v0, p1
    invoke-static { v0, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
  .line 507
    invoke-virtual { v2, v3, v3, v3, v3 }, Landroid/widget/ImageView;->setPadding(IIII)V
  .line 508
    new-instance v3, Lcom/geely/drivemem/ui/AppsView$10;
    move-object/from16 v0, p0
    move-object/from16 v1, p2
    invoke-direct { v3, v0, v1 }, Lcom/geely/drivemem/ui/AppsView$10;-><init>(Lcom/geely/drivemem/ui/AppsView;Lcom/geely/drivemem/ui/AppsView$App;)V
    invoke-virtual { v2, v3 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 509
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct { v3, v7, v7 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual { v4, v2, v3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    goto/16 :L12
  :L33
  .line 499
    const/4 v2, 0
    goto :L32
  :L34
  .line 510
    move-object/from16 v0, p2
    iget-boolean v2, v0, Lcom/geely/drivemem/ui/AppsView$App;->hasApk:Z
    if-eqz v2, :L12
  .line 511
    const-string v2, "Install"
    const/4 v3, 1
    new-instance v5, Lcom/geely/drivemem/ui/AppsView$11;
    move-object/from16 v0, p0
    move-object/from16 v1, p2
    invoke-direct { v5, v0, v1 }, Lcom/geely/drivemem/ui/AppsView$11;-><init>(Lcom/geely/drivemem/ui/AppsView;Lcom/geely/drivemem/ui/AppsView$App;)V
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    invoke-direct { v0, v1, v2, v3, v5 }, Lcom/geely/drivemem/ui/AppsView;->btn(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v2
  .line 512
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0
    const/high16 v6, 0x3f800000
    invoke-direct { v3, v5, v7, v6 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual { v4, v2, v3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    goto/16 :L12
  :L35
    move v6, v4
    move-object v7, v2
    goto/16 :L0
.end method

.method private columns()I
  .registers 4
  .prologue
  .line 251
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/AppsView;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v0
  .line 252
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    int-to-float v1, v1
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F
    div-float v0, v1, v0
    const/high16 v1, 0x435c0000
    sub-float/2addr v0, v1
  .line 253
    const/high16 v1, 0x43960000
    div-float/2addr v0, v1
    float-to-int v0, v0
  .line 254
    const/4 v1, 1
    const/4 v2, 4
    invoke-static { v2, v0 }, Ljava/lang/Math;->min(II)I
    move-result v0
    invoke-static { v1, v0 }, Ljava/lang/Math;->max(II)I
    move-result v0
    return v0
.end method

.method private confirmUninstall(Lcom/geely/drivemem/ui/AppsView$App;)V
  .registers 5
  .prologue
  .line 582
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/AppsView;->helperProblem()Ljava/lang/String;
    move-result-object v0
  .line 583
    if-eqz v0, :L1
    iget-object v1, p1, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-direct { p0, v1, v0 }, Lcom/geely/drivemem/ui/AppsView;->fail(Ljava/lang/String;Ljava/lang/String;)V
  :L0
  .line 593
    return-void
  :L1
  .line 584
    new-instance v0, Landroid/app/AlertDialog$Builder;
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/AppsView;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Uninstall "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget-object v2, p1, Lcom/geely/drivemem/ui/AppsView$App;->name:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, "?"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
  .line 585
    invoke-virtual { v0, v1 }, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    move-result-object v0
    const-string v1, "The app and its data will be removed from the car."
  .line 586
    invoke-virtual { v0, v1 }, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    move-result-object v0
    const/high16 v1, 0x1040000
    const/4 v2, 0
  .line 587
    invoke-virtual { v0, v1, v2 }, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    move-result-object v0
    const-string v1, "Uninstall"
    new-instance v2, Lcom/geely/drivemem/ui/AppsView$13;
    invoke-direct { v2, p0, p1 }, Lcom/geely/drivemem/ui/AppsView$13;-><init>(Lcom/geely/drivemem/ui/AppsView;Lcom/geely/drivemem/ui/AppsView$App;)V
  .line 588
    invoke-virtual { v0, v1, v2 }, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    move-result-object v0
  .line 592
    invoke-virtual { v0 }, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    goto :L0
.end method

.method private fail(Ljava/lang/String;Ljava/lang/String;)V
  .registers 5
  .prologue
  .line 536
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->state:Ljava/util/Map;
    const-string v1, "error"
    invoke-interface { v0, p1, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 537
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->msg:Ljava/util/Map;
    invoke-interface { v0, p1, p2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 538
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/AppsView;->render()V
  .line 539
    return-void
.end method

.method private static glyph(Landroid/content/Context;I)Landroid/graphics/Bitmap;
  .registers 16
  .prologue
  .line 186
    const/16 v0, 30
    invoke-static { p0, v0 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v6
  .line 187
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static { v6, v6, v0 }, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v7
  .line 188
    new-instance v0, Landroid/graphics/Canvas;
    invoke-direct { v0, v7 }, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
  .line 189
    new-instance v5, Landroid/graphics/Paint;
    const/4 v1, 1
    invoke-direct { v5, v1 }, Landroid/graphics/Paint;-><init>(I)V
  .line 190
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 191
    int-to-float v1, v6
    const v2, 1035489772
    mul-float/2addr v1, v2
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 192
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V
  .line 193
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V
  .line 194
    if-nez p1, :L1
  .line 195
    sget v1, Lcom/geely/drivemem/util/Style;->TEXT:I
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setColor(I)V
  .line 196
    int-to-float v1, v6
    const/high16 v2, 0x40000000
    div-float v8, v1, v2
    int-to-float v1, v6
    const/high16 v2, 0x40000000
    div-float v9, v1, v2
    int-to-float v1, v6
    const v2, 1050924810
    mul-float v10, v1, v2
  .line 197
    new-instance v1, Landroid/graphics/RectF;
    sub-float v2, v8, v10
    sub-float v3, v9, v10
    add-float v4, v8, v10
    add-float v11, v9, v10
    invoke-direct { v1, v2, v3, v4, v11 }, Landroid/graphics/RectF;-><init>(FFFF)V
  .line 198
    const/high16 v2, 0x420c0000
    const v3, 1133412352
  .line 199
    const/4 v4, 0
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
  .line 200
    add-float v1, v2, v3
    float-to-double v2, v1
    invoke-static { v2, v3 }, Ljava/lang/Math;->toRadians(D)D
    move-result-wide v2
  .line 201
    float-to-double v4, v10
    invoke-static { v2, v3 }, Ljava/lang/Math;->cos(D)D
    move-result-wide v12
    mul-double/2addr v4, v12
    double-to-float v1, v4
    add-float/2addr v1, v8
    float-to-double v4, v10
    invoke-static { v2, v3 }, Ljava/lang/Math;->sin(D)D
    move-result-wide v10
    mul-double/2addr v4, v10
    double-to-float v4, v4
    add-float/2addr v4, v9
  .line 202
    invoke-static { v2, v3 }, Ljava/lang/Math;->sin(D)D
    move-result-wide v8
    neg-double v8, v8
    double-to-float v5, v8
    invoke-static { v2, v3 }, Ljava/lang/Math;->cos(D)D
    move-result-wide v8
    double-to-float v8, v8
  .line 203
    invoke-static { v2, v3 }, Ljava/lang/Math;->cos(D)D
    move-result-wide v10
    double-to-float v9, v10
    invoke-static { v2, v3 }, Ljava/lang/Math;->sin(D)D
    move-result-wide v2
    double-to-float v2, v2
  .line 204
    int-to-float v3, v6
    const v10, 1045220557
    mul-float/2addr v3, v10
    int-to-float v6, v6
    const v10, 1041194025
    mul-float/2addr v6, v10
  .line 205
    new-instance v10, Landroid/graphics/Path;
    invoke-direct { v10 }, Landroid/graphics/Path;-><init>()V
  .line 206
    mul-float/2addr v5, v3
    add-float/2addr v5, v1
    mul-float/2addr v3, v8
    add-float/2addr v3, v4
    invoke-virtual { v10, v5, v3 }, Landroid/graphics/Path;->moveTo(FF)V
  .line 207
    mul-float v3, v9, v6
    add-float/2addr v3, v1
    mul-float v5, v2, v6
    add-float/2addr v5, v4
    invoke-virtual { v10, v3, v5 }, Landroid/graphics/Path;->lineTo(FF)V
  .line 208
    mul-float v3, v9, v6
    sub-float/2addr v1, v3
    mul-float/2addr v2, v6
    sub-float v2, v4, v2
    invoke-virtual { v10, v1, v2 }, Landroid/graphics/Path;->lineTo(FF)V
  .line 209
    invoke-virtual { v10 }, Landroid/graphics/Path;->close()V
  .line 210
    new-instance v1, Landroid/graphics/Paint;
    const/4 v2, 1
    invoke-direct { v1, v2 }, Landroid/graphics/Paint;-><init>(I)V
  .line 211
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT:I
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setColor(I)V
  .line 212
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 213
    invoke-virtual { v0, v10, v1 }, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
  :L0
  .line 229
    return-object v7
  :L1
  .line 215
    const v1, -38037
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setColor(I)V
  .line 216
    int-to-float v1, v6
    const v2, 1043878380
    mul-float/2addr v1, v2
    int-to-float v2, v6
    const v3, 1048911544
    mul-float/2addr v2, v3
    int-to-float v3, v6
    const v4, 1062333317
    mul-float/2addr v3, v4
    int-to-float v4, v6
    const v8, 1048911544
    mul-float/2addr v4, v8
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
  .line 217
    int-to-float v1, v6
    const v2, 1052938076
    mul-float/2addr v1, v2
    int-to-float v2, v6
    const v3, 1048911544
    mul-float/2addr v2, v3
    int-to-float v3, v6
    const v4, 1052938076
    mul-float/2addr v3, v4
    int-to-float v4, v6
    const v8, 1041194025
    mul-float/2addr v4, v8
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
  .line 218
    int-to-float v1, v6
    const v2, 1052938076
    mul-float/2addr v1, v2
    int-to-float v2, v6
    const v3, 1041194025
    mul-float/2addr v2, v3
    int-to-float v3, v6
    const v4, 1058977874
    mul-float/2addr v3, v4
    int-to-float v4, v6
    const v8, 1041194025
    mul-float/2addr v4, v8
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
  .line 219
    int-to-float v1, v6
    const v2, 1058977874
    mul-float/2addr v1, v2
    int-to-float v2, v6
    const v3, 1041194025
    mul-float/2addr v2, v3
    int-to-float v3, v6
    const v4, 1058977874
    mul-float/2addr v3, v4
    int-to-float v4, v6
    const v8, 1048911544
    mul-float/2addr v4, v8
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
  .line 220
    new-instance v1, Landroid/graphics/Path;
    invoke-direct { v1 }, Landroid/graphics/Path;-><init>()V
  .line 221
    int-to-float v2, v6
    const v3, 1048911544
    mul-float/2addr v2, v3
    int-to-float v3, v6
    const v4, 1048911544
    mul-float/2addr v3, v4
    invoke-virtual { v1, v2, v3 }, Landroid/graphics/Path;->moveTo(FF)V
  .line 222
    int-to-float v2, v6
    const v3, 1050253722
    mul-float/2addr v2, v3
    int-to-float v3, v6
    const v4, 1062668861
    mul-float/2addr v3, v4
    invoke-virtual { v1, v2, v3 }, Landroid/graphics/Path;->lineTo(FF)V
  .line 223
    int-to-float v2, v6
    const v3, 1060320051
    mul-float/2addr v2, v3
    int-to-float v3, v6
    const v4, 1062668861
    mul-float/2addr v3, v4
    invoke-virtual { v1, v2, v3 }, Landroid/graphics/Path;->lineTo(FF)V
  .line 224
    int-to-float v2, v6
    const v3, 1060991140
    mul-float/2addr v2, v3
    int-to-float v3, v6
    const v4, 1048911544
    mul-float/2addr v3, v4
    invoke-virtual { v1, v2, v3 }, Landroid/graphics/Path;->lineTo(FF)V
  .line 225
    invoke-virtual { v0, v1, v5 }, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
  .line 226
    int-to-float v1, v6
    const v2, 1054615798
    mul-float/2addr v1, v2
    int-to-float v2, v6
    const v3, 1054280253
    mul-float/2addr v2, v3
    int-to-float v3, v6
    const v4, 1054615798
    mul-float/2addr v3, v4
    int-to-float v4, v6
    const v8, 1060320051
    mul-float/2addr v4, v8
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
  .line 227
    int-to-float v1, v6
    const v2, 1058139013
    mul-float/2addr v1, v2
    int-to-float v2, v6
    const v3, 1054280253
    mul-float/2addr v2, v3
    int-to-float v3, v6
    const v4, 1058139013
    mul-float/2addr v3, v4
    int-to-float v4, v6
    const v6, 1060320051
    mul-float/2addr v4, v6
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    goto/16 :L0
.end method

.method private helperProblem()Ljava/lang/String;
  .catch Ljava/lang/Throwable; { :L2 .. :L3 } :L4
  .registers 4
  .prologue
  .line 543
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/AppsView;->getContext()Landroid/content/Context;
    move-result-object v1
  .line 544
    invoke-static { }, Lcom/geely/drivemem/net/OtaUpdater;->blockedReason()Ljava/lang/String;
    move-result-object v0
  .line 545
    if-eqz v0, :L1
  :L0
  .line 551
    return-object v0
  :L1
  .line 546
    invoke-static { v1 }, Lcom/geely/drivemem/net/OtaUpdater;->helperInstalled(Landroid/content/Context;)Z
    move-result v0
    if-nez v0, :L2
    const-string v0, "ModeHelper is not installed. Run the Drive Assist installer once."
    goto :L0
  :L2
  .line 548
    invoke-virtual { v1 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0
    const-string v1, "com.geely.modehelper"
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    move-result-object v0
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
  .line 549
    const v1, 29911176
    if-ge v0, v1, :L5
    const-string v0, "ModeHelper is outdated. Run the Drive Assist installer once to update it."
  :L3
    goto :L0
  :L4
  .line 550
    move-exception v0
  :L5
  .line 551
    const/4 v0, 0
    goto :L0
.end method

.method private install(Lcom/geely/drivemem/ui/AppsView$App;)V
  .registers 4
  .prologue
  .line 576
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/AppsView;->helperProblem()Ljava/lang/String;
    move-result-object v0
  .line 577
    if-eqz v0, :L1
    iget-object v1, p1, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-direct { p0, v1, v0 }, Lcom/geely/drivemem/ui/AppsView;->fail(Ljava/lang/String;Ljava/lang/String;)V
  :L0
  .line 579
    return-void
  :L1
  .line 578
    const-string v0, "com.geely.modehelper.INSTALL_APP"
    const-string v1, ""
    invoke-direct { p0, p1, v0, v1 }, Lcom/geely/drivemem/ui/AppsView;->send(Lcom/geely/drivemem/ui/AppsView$App;Ljava/lang/String;Ljava/lang/String;)V
    goto :L0
.end method

.method private installedName(Ljava/lang/String;)Ljava/lang/String;
  .catch Ljava/lang/Throwable; { :L0 .. :L3 } :L4
  .registers 4
  :L0
  .prologue
  .line 241
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/AppsView;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0
    const/4 v1, 0
    invoke-virtual { v0, p1, v1 }, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    move-result-object v0
  .line 242
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    if-nez v1, :L2
    const-string v0, "?"
  :L1
  .line 243
    return-object v0
  :L2
  .line 242
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
  :L3
    goto :L1
  :L4
  .line 243
    move-exception v0
    const-string v0, "?"
    goto :L1
.end method

.method private installedVc(Ljava/lang/String;)J
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L3
  .registers 4
  :L0
  .prologue
  .line 234
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/AppsView;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0
    const/4 v1, 0
    invoke-virtual { v0, p1, v1 }, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    move-result-object v0
  .line 235
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
  :L1
    int-to-long v0, v0
  :L2
  .line 236
    return-wide v0
  :L3
    move-exception v0
    const-wide/16 v0, -1
    goto :L2
.end method

.method private static label(Ljava/lang/String;)Ljava/lang/String;
  .registers 2
  .prologue
  .line 518
    const-string v0, "catalog"
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    const-string v0, "Checking"
  :L0
  .line 522
    return-object v0
  :L1
  .line 519
    const-string v0, "download"
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
    const-string v0, "Downloading"
    goto :L0
  :L2
  .line 520
    const-string v0, "verify"
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L3
    const-string v0, "Verifying"
    goto :L0
  :L3
  .line 521
    const-string v0, "install"
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L4
    const-string v0, "Installing"
    goto :L0
  :L4
  .line 522
    const-string v0, "Starting"
    goto :L0
.end method

.method private loadIcon(Lcom/geely/drivemem/ui/AppsView$App;Landroid/widget/ImageView;)V
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L2
  .registers 9
  .prologue
  .line 324
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/AppsView;->getContext()Landroid/content/Context;
    move-result-object v1
  :L0
  .line 326
    invoke-virtual { v1 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0
    iget-object v2, p1, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    move-result-object v0
  .line 327
    iget-object v2, p1, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-direct { p0, v2 }, Lcom/geely/drivemem/ui/AppsView;->installedVc(Ljava/lang/String;)J
    move-result-wide v2
    const-wide/16 v4, 0
    cmp-long v2, v2, v4
    if-ltz v2, :L3
    if-eqz v0, :L3
    invoke-virtual { p2, v0 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  :L1
  .line 368
    return-void
  :L2
  .line 328
    move-exception v0
  :L3
  .line 329
    sget-object v0, Lcom/geely/drivemem/ui/AppsView;->ICONS:Ljava/util/Map;
    iget-object v2, p1, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-interface { v0, v2 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/graphics/Bitmap;
  .line 330
    if-nez v0, :L4
  .line 331
    new-instance v2, Ljava/io/File;
    invoke-virtual { v1 }, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    move-result-object v3
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "storeicon-"
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    iget-object v5, p1, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    const-string v5, ".png"
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-direct { v2, v3, v4 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 332
    invoke-virtual { v2 }, Ljava/io/File;->exists()Z
    move-result v3
    if-eqz v3, :L4
  .line 333
    invoke-virtual { v2 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    move-result-object v0
  .line 334
    if-eqz v0, :L4
    sget-object v2, Lcom/geely/drivemem/ui/AppsView;->ICONS:Ljava/util/Map;
    iget-object v3, p1, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-interface { v2, v3, v0 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L4
  .line 337
    if-eqz v0, :L5
    invoke-virtual { p2, v0 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    goto :L1
  :L5
  .line 338
    sget v0, Lcom/geely/drivemem/util/Style;->CARD_HI:I
    const/16 v2, 14
    invoke-static { v0, v1, v2 }, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;I)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v0
    invoke-virtual { p2, v0 }, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 339
    iget-object v0, p1, Lcom/geely/drivemem/ui/AppsView$App;->icon:Ljava/lang/String;
    if-eqz v0, :L1
    iget-object v0, p1, Lcom/geely/drivemem/ui/AppsView$App;->icon:Ljava/lang/String;
    const-string v2, "https://"
    invoke-virtual { v0, v2 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L1
  .line 340
    new-instance v0, Ljava/lang/Thread;
    new-instance v2, Lcom/geely/drivemem/ui/AppsView$5;
    invoke-direct { v2, p0, p1, v1, p2 }, Lcom/geely/drivemem/ui/AppsView$5;-><init>(Lcom/geely/drivemem/ui/AppsView;Lcom/geely/drivemem/ui/AppsView$App;Landroid/content/Context;Landroid/widget/ImageView;)V
    const-string v1, "apps-icon"
    invoke-direct { v0, v2, v1 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 367
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
    goto :L1
.end method

.method private open(Ljava/lang/String;)V
  .catch Ljava/lang/Throwable; { :L0 .. :L3 } :L4
  .registers 7
  .prologue
    const/4 v4, 0
  :L0
  .line 527
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/AppsView;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    move-result-object v0
  .line 528
    if-eqz v0, :L2
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/AppsView;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
  :L1
  .line 533
    return-void
  :L2
  .line 529
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
  .line 530
    move-exception v0
  .line 531
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

.method private pill(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
  .registers 8
  .prologue
  .line 308
    new-instance v0, Landroid/widget/TextView;
    invoke-direct { v0, p1 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 309
    invoke-virtual { v0, p2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 310
    const/high16 v1, 0x41500000
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 311
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  .line 312
    invoke-virtual { v0, p3 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 313
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setSingleLine(Z)V
  .line 314
    const/16 v1, 10
    invoke-static { p1, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
    const/4 v2, 3
    invoke-static { p1, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
  .line 315
    invoke-virtual { v0, v1, v2, v1, v2 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 316
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;
    invoke-direct { v1 }, Landroid/graphics/drawable/GradientDrawable;-><init>()V
  .line 317
    const/16 v2, 12
    invoke-static { p1, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
    int-to-float v2, v2
    invoke-virtual { v1, v2 }, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V
  .line 318
    const v2, 16777215
    and-int/2addr v2, p3
    const/high16 v3, 0x26000000
    or-int/2addr v2, v3
    invoke-virtual { v1, v2 }, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
  .line 319
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 320
    return-object v0
.end method

.method private render()V
  .registers 12
  .prologue
    const/4 v10, -2
    const/high16 v9, 0x3f800000
    const/4 v3, 0
  .line 258
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/AppsView;->getContext()Landroid/content/Context;
    move-result-object v4
  .line 259
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->list:Landroid/widget/LinearLayout;
    invoke-virtual { v0 }, Landroid/widget/LinearLayout;->removeAllViews()V
  .line 260
    iget-boolean v0, p0, Lcom/geely/drivemem/ui/AppsView;->loading:Z
    if-eqz v0, :L4
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->apps:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->isEmpty()Z
    move-result v0
    if-eqz v0, :L4
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->hint:Landroid/widget/TextView;
    const-string v1, "Loading the app list\u2026"
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L0
  .line 263
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/AppsView;->columns()I
    move-result v5
  .line 264
    const/16 v0, 14
    invoke-static { v4, v0 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v6
  .line 265
    const/4 v0, 0
    move v2, v3
  :L1
  .line 266
    iget-object v1, p0, Lcom/geely/drivemem/ui/AppsView;->apps:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->size()I
    move-result v1
    if-ge v2, v1, :L6
  .line 267
    rem-int v1, v2, v5
    if-nez v1, :L2
  .line 268
    new-instance v0, Landroid/widget/LinearLayout;
    invoke-direct { v0, v4 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 269
    invoke-virtual { v0, v3 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 270
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, -1
    invoke-direct { v1, v7, v10 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 271
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
  .line 272
    iget-object v7, p0, Lcom/geely/drivemem/ui/AppsView;->list:Landroid/widget/LinearLayout;
    invoke-virtual { v7, v0, v1 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  :L2
    move-object v1, v0
  .line 274
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct { v7, v3, v10, v9 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
  .line 275
    rem-int v0, v2, v5
    add-int/lit8 v8, v5, -1
    if-eq v0, v8, :L3
    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
  :L3
  .line 276
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->apps:Ljava/util/List;
    invoke-interface { v0, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/geely/drivemem/ui/AppsView$App;
    invoke-direct { p0, v4, v0 }, Lcom/geely/drivemem/ui/AppsView;->card(Landroid/content/Context;Lcom/geely/drivemem/ui/AppsView$App;)Landroid/view/View;
    move-result-object v0
    invoke-virtual { v1, v0, v7 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 266
    add-int/lit8 v2, v2, 1
    move-object v0, v1
    goto :L1
  :L4
  .line 261
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->loadError:Ljava/lang/String;
    if-eqz v0, :L5
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->apps:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->isEmpty()Z
    move-result v0
    if-eqz v0, :L5
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->hint:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Could not load the app list: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget-object v2, p0, Lcom/geely/drivemem/ui/AppsView;->loadError:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto :L0
  :L5
  .line 262
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->hint:Landroid/widget/TextView;
    const-string v1, "Install and update apps for your car. Only while parked and not charging."
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto :L0
  :L6
  .line 279
    if-eqz v0, :L9
  .line 280
    invoke-virtual { v0 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v1
    sub-int v2, v5, v1
    move v1, v3
  :L7
  .line 281
    if-ge v1, v2, :L9
  .line 282
    new-instance v5, Landroid/view/View;
    invoke-direct { v5, v4 }, Landroid/view/View;-><init>(Landroid/content/Context;)V
  .line 283
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 1
    invoke-direct { v7, v3, v8, v9 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
  .line 284
    add-int/lit8 v8, v2, -1
    if-eq v1, v8, :L8
    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
  :L8
  .line 285
    iput v3, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
  .line 286
    invoke-virtual { v0, v5, v7 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 281
    add-int/lit8 v1, v1, 1
    goto :L7
  :L9
  .line 289
    return-void
.end method

.method private send(Lcom/geely/drivemem/ui/AppsView$App;Ljava/lang/String;Ljava/lang/String;)V
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L2
  .registers 10
  .prologue
  .line 555
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/AppsView;->getContext()Landroid/content/Context;
    move-result-object v0
  :L0
  .line 557
    new-instance v1, Landroid/content/Intent;
    invoke-direct { v1, p2 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    const-string v2, "com.geely.modehelper"
    invoke-virtual { v1, v2 }, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    move-result-object v1
  .line 558
    const/16 v2, 32
    invoke-virtual { v1, v2 }, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
  .line 559
    const-string v2, "pkg"
    iget-object v3, p1, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-virtual { v1, v2, v3 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
  .line 560
    invoke-virtual { v0, v1 }, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
  .line 561
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->state:Ljava/util/Map;
    iget-object v1, p1, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    const-string v2, "start"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 562
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->msg:Ljava/util/Map;
    iget-object v1, p1, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-interface { v0, v1, p3 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 563
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->pct:Ljava/util/Map;
    iget-object v1, p1, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    const/4 v2, 0
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 564
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->started:Ljava/util/Map;
    iget-object v1, p1, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    invoke-static { v2, v3 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 565
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/AppsView;->render()V
  .line 566
    iget-object v0, p1, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
  .line 567
    iget-object v1, p0, Lcom/geely/drivemem/ui/AppsView;->ui:Landroid/os/Handler;
    new-instance v2, Lcom/geely/drivemem/ui/AppsView$12;
    invoke-direct { v2, p0, v0 }, Lcom/geely/drivemem/ui/AppsView$12;-><init>(Lcom/geely/drivemem/ui/AppsView;Ljava/lang/String;)V
    const-wide/16 v4, 21000
    invoke-virtual { v1, v2, v4, v5 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
  :L1
  .line 573
    return-void
  :L2
  .line 570
    move-exception v0
  .line 571
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
    goto :L1
.end method

.method private static working(Ljava/lang/String;)Z
  .registers 2
  .prologue
  .line 247
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
  .line 115
    invoke-super { p0 }, Landroid/widget/LinearLayout;->onAttachedToWindow()V
  .line 116
    iget-boolean v0, p0, Lcom/geely/drivemem/ui/AppsView;->registered:Z
    if-nez v0, :L0
  .line 117
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/AppsView;->getContext()Landroid/content/Context;
    move-result-object v0
    iget-object v1, p0, Lcom/geely/drivemem/ui/AppsView;->receiver:Landroid/content/BroadcastReceiver;
    new-instance v2, Landroid/content/IntentFilter;
    const-string v3, "com.geely.modehelper.STORE_STATUS"
    invoke-direct { v2, v3 }, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
    invoke-virtual { v0, v1, v2 }, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
  .line 118
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/geely/drivemem/ui/AppsView;->registered:Z
  :L0
  .line 120
    return-void
.end method

.method protected onDetachedFromWindow()V
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L3
  .registers 3
  .prologue
  .line 123
    iget-boolean v0, p0, Lcom/geely/drivemem/ui/AppsView;->registered:Z
    if-eqz v0, :L2
  :L0
  .line 124
    invoke-virtual { p0 }, Lcom/geely/drivemem/ui/AppsView;->getContext()Landroid/content/Context;
    move-result-object v0
    iget-object v1, p0, Lcom/geely/drivemem/ui/AppsView;->receiver:Landroid/content/BroadcastReceiver;
    invoke-virtual { v0, v1 }, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
  :L1
  .line 125
    const/4 v0, 0
    iput-boolean v0, p0, Lcom/geely/drivemem/ui/AppsView;->registered:Z
  :L2
  .line 127
    invoke-super { p0 }, Landroid/widget/LinearLayout;->onDetachedFromWindow()V
  .line 128
    return-void
  :L3
  .line 124
    move-exception v0
    goto :L1
.end method

.method public refresh()V
  .registers 4
  .prologue
  .line 132
    iget-boolean v0, p0, Lcom/geely/drivemem/ui/AppsView;->loading:Z
    if-eqz v0, :L1
  :L0
  .line 179
    return-void
  :L1
  .line 133
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/geely/drivemem/ui/AppsView;->loading:Z
  .line 134
    const/4 v0, 0
    iput-object v0, p0, Lcom/geely/drivemem/ui/AppsView;->loadError:Ljava/lang/String;
  .line 135
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/AppsView;->render()V
  .line 136
    new-instance v0, Ljava/lang/Thread;
    new-instance v1, Lcom/geely/drivemem/ui/AppsView$3;
    invoke-direct { v1, p0 }, Lcom/geely/drivemem/ui/AppsView$3;-><init>(Lcom/geely/drivemem/ui/AppsView;)V
    const-string v2, "apps-catalog"
    invoke-direct { v0, v1, v2 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 178
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
    goto :L0
.end method
