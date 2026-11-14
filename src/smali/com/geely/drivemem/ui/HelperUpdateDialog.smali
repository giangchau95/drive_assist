.class public final Lcom/geely/drivemem/ui/HelperUpdateDialog;
.super Ljava/lang/Object;
.source "HelperUpdateDialog.java"

.field private static showing:Z

.method private constructor <init>()V
  .registers 1
  .prologue
  .line 18
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static synthetic access$002(Z)Z
  .registers 1
  .prologue
  .line 17
    sput-boolean p0, Lcom/geely/drivemem/ui/HelperUpdateDialog;->showing:Z
    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;)Landroid/content/SharedPreferences;
  .registers 2
  .prologue
  .line 17
    invoke-static { p0 }, Lcom/geely/drivemem/ui/HelperUpdateDialog;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v0
    return-object v0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
  .registers 3
  .prologue
  .line 22
    const-string v0, "helper_prefs"
    const/4 v1, 0
    invoke-virtual { p0, v0, v1 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    return-object v0
.end method

.method public static show(Landroid/app/Activity;Lcom/geely/drivemem/net/OtaUpdater$Info;)Z
  .registers 11
  .prologue
    const/16 v8, 12
    const/4 v7, -2
    const/4 v0, 1
    const/4 v1, 0
  .line 30
    sget-boolean v2, Lcom/geely/drivemem/ui/HelperUpdateDialog;->showing:Z
    if-nez v2, :L0
    invoke-virtual { p0 }, Landroid/app/Activity;->isFinishing()Z
    move-result v2
    if-nez v2, :L0
    invoke-static { p0 }, Lcom/geely/drivemem/ui/HelperUpdateDialog;->snoozed(Landroid/content/Context;)Z
    move-result v2
    if-eqz v2, :L2
  :L0
    move v0, v1
  :L1
  .line 85
    return v0
  :L2
  .line 31
    sput-boolean v0, Lcom/geely/drivemem/ui/HelperUpdateDialog;->showing:Z
  .line 32
    new-instance v2, Landroid/widget/LinearLayout;
    invoke-direct { v2, p0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 33
    invoke-virtual { v2, v0 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 34
    sget v3, Lcom/geely/drivemem/util/Style;->CARD:I
    invoke-static { v3, p0 }, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v3
    invoke-virtual { v2, v3 }, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 35
    const/16 v3, 28
    invoke-static { p0, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
  .line 36
    invoke-virtual { v2, v3, v3, v3, v3 }, Landroid/widget/LinearLayout;->setPadding(IIII)V
  .line 37
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;
    const/16 v4, 640
    invoke-static { p0, v4 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v4
    invoke-direct { v3, v4, v7 }, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
    invoke-virtual { v2, v3 }, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 38
    new-instance v3, Landroid/widget/TextView;
    invoke-direct { v3, p0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 39
    const-string v4, "ModeHelper update available"
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 40
    sget v4, Lcom/geely/drivemem/util/Style;->TEXT:I
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 41
    const/high16 v4, 0x41f00000
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 42
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  .line 43
    invoke-virtual { v2, v3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 44
    new-instance v3, Landroid/widget/TextView;
    invoke-direct { v3, p0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 45
    const-string v4, "A newer ModeHelper is available. It is the background service that installs Drive Assist updates and apps from the Apps tab.\n\nUpdate it now? This takes a few seconds and nothing else on the car is touched. You can only update while the car is parked and not charging."
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 48
    sget v4, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 49
    const/high16 v4, 0x41b00000
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 50
    invoke-static { p0, v8 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v4
    const/16 v5, 8
    invoke-static { p0, v5 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v5
    invoke-virtual { v3, v1, v4, v1, v5 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 51
    invoke-virtual { v2, v3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 52
    new-instance v4, Landroid/widget/LinearLayout;
    invoke-direct { v4, p0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 53
    const v5, 8388629
    invoke-virtual { v4, v5 }, Landroid/widget/LinearLayout;->setGravity(I)V
  .line 54
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, -1
    invoke-direct { v5, v6, v7 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 56
    const/16 v6, 20
    invoke-static { p0, v6 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v6
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
  .line 57
    invoke-virtual { v4, v5 }, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 58
    new-instance v5, Landroid/app/AlertDialog$Builder;
    invoke-direct { v5, p0 }, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    invoke-virtual { v5, v2 }, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    move-result-object v5
    invoke-virtual { v5 }, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    move-result-object v5
  .line 59
    invoke-virtual { v5 }, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;
    move-result-object v6
    if-eqz v6, :L3
    invoke-virtual { v5 }, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;
    move-result-object v6
    const v7, 17170445
    invoke-virtual { v6, v7 }, Landroid/view/Window;->setBackgroundDrawableResource(I)V
  :L3
  .line 60
    new-instance v6, Lcom/geely/drivemem/ui/HelperUpdateDialog$1;
    invoke-direct { v6 }, Lcom/geely/drivemem/ui/HelperUpdateDialog$1;-><init>()V
    invoke-virtual { v5, v6 }, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
  .line 63
    const-string v6, "Later"
    new-instance v7, Lcom/geely/drivemem/ui/HelperUpdateDialog$2;
    invoke-direct { v7, p0, v5 }, Lcom/geely/drivemem/ui/HelperUpdateDialog$2;-><init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V
    invoke-static { p0, v6, v1, v7 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v1
    invoke-virtual { v4, v1 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 69
    invoke-static { v4, p0, v8 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 70
    const-string v1, "Update ModeHelper"
    new-instance v6, Lcom/geely/drivemem/ui/HelperUpdateDialog$3;
    invoke-direct { v6, p0, p1, v3, v5 }, Lcom/geely/drivemem/ui/HelperUpdateDialog$3;-><init>(Landroid/app/Activity;Lcom/geely/drivemem/net/OtaUpdater$Info;Landroid/widget/TextView;Landroid/app/AlertDialog;)V
    invoke-static { p0, v1, v0, v6 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v1
    invoke-virtual { v4, v1 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 83
    invoke-virtual { v2, v4 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 84
    invoke-virtual { v5 }, Landroid/app/AlertDialog;->show()V
    goto/16 :L1
.end method

.method public static snoozed(Landroid/content/Context;)Z
  .registers 7
  .prologue
  .line 25
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    invoke-static { p0 }, Lcom/geely/drivemem/ui/HelperUpdateDialog;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v2
    const-string v3, "snooze_until"
    const-wide/16 v4, 0
    invoke-interface { v2, v3, v4, v5 }, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    move-result-wide v2
    cmp-long v0, v0, v2
    if-gez v0, :L1
    const/4 v0, 1
  :L0
    return v0
  :L1
    const/4 v0, 0
    goto :L0
.end method
