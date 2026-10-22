.class public final Lcom/geely/drivemem/ui/OtaDialog;
.super Ljava/lang/Object;
.source "OtaDialog.java"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/geely/drivemem/ui/OtaDialog$Listener;
  }
.end annotation

.method private constructor <init>()V
  .registers 1
  .prologue
  .line 20
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Landroid/widget/TextView;)V
  .registers 2
  .prologue
  .line 19
    invoke-static { p0, p1 }, Lcom/geely/drivemem/ui/OtaDialog;->confirmUninstall(Landroid/app/Activity;Landroid/widget/TextView;)V
    return-void
.end method

.method private static confirmUninstall(Landroid/app/Activity;Landroid/widget/TextView;)V
  .registers 10
  .prologue
    const/16 v7, 12
    const/4 v6, 1
    const/4 v4, -2
    const/4 v5, 0
  .line 25
    new-instance v0, Landroid/widget/LinearLayout;
    invoke-direct { v0, p0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 26
    invoke-virtual { v0, v6 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 27
    sget v1, Lcom/geely/drivemem/util/Style;->CARD:I
    invoke-static { v1, p0 }, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 28
    const/16 v1, 28
    invoke-static { p0, v1 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v1
  .line 29
    invoke-virtual { v0, v1, v1, v1, v1 }, Landroid/widget/LinearLayout;->setPadding(IIII)V
  .line 30
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;
    const/16 v2, 640
    invoke-static { p0, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
    invoke-direct { v1, v2, v4 }, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 31
    new-instance v1, Landroid/widget/TextView;
    invoke-direct { v1, p0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 32
    const-string v2, "Uninstall everything?"
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 33
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT:I
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 34
    const/high16 v2, 0x41e00000
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 35
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  .line 36
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 37
    new-instance v1, Landroid/widget/TextView;
    invoke-direct { v1, p0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 38
    const-string v2, "This removes Drive Assist and ModeHelper from the car and deletes all recorded statistics. This cannot be undone."
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 39
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 40
    const/high16 v2, 0x41b00000
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 41
    invoke-static { p0, v7 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
    const/16 v3, 8
    invoke-static { p0, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
    invoke-virtual { v1, v5, v2, v5, v3 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 42
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 43
    new-instance v1, Landroid/widget/LinearLayout;
    invoke-direct { v1, p0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 44
    invoke-virtual { v1, v5 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 45
    const v2, 8388629
    invoke-virtual { v1, v2 }, Landroid/widget/LinearLayout;->setGravity(I)V
  .line 46
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -1
    invoke-direct { v2, v3, v4 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 48
    const/16 v3, 20
    invoke-static { p0, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
  .line 49
    invoke-virtual { v1, v2 }, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 50
    new-instance v2, Landroid/app/AlertDialog$Builder;
    invoke-direct { v2, p0 }, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    invoke-virtual { v2, v0 }, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    move-result-object v2
  .line 51
    invoke-virtual { v2 }, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;
    move-result-object v3
    if-eqz v3, :L0
    invoke-virtual { v2 }, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;
    move-result-object v3
    const v4, 17170445
    invoke-virtual { v3, v4 }, Landroid/view/Window;->setBackgroundDrawableResource(I)V
  :L0
  .line 52
    const-string v3, "Cancel"
    new-instance v4, Lcom/geely/drivemem/ui/OtaDialog$1;
    invoke-direct { v4, v2 }, Lcom/geely/drivemem/ui/OtaDialog$1;-><init>(Landroid/app/AlertDialog;)V
    invoke-static { p0, v3, v5, v4 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v3
    invoke-virtual { v1, v3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 55
    invoke-static { v1, p0, v7 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 56
    const-string v3, "Uninstall all"
    new-instance v4, Lcom/geely/drivemem/ui/OtaDialog$2;
    invoke-direct { v4, v2, p0, p1 }, Lcom/geely/drivemem/ui/OtaDialog$2;-><init>(Landroid/app/AlertDialog;Landroid/app/Activity;Landroid/widget/TextView;)V
    invoke-static { p0, v3, v6, v4 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v3
  .line 69
    const-string v4, "#FF453A"
    invoke-static { v4 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v4
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 70
    invoke-virtual { v1, v3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 71
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 72
    invoke-virtual { v2 }, Landroid/app/AlertDialog;->show()V
  .line 73
    return-void
.end method

.method public static show(Landroid/app/Activity;Lcom/geely/drivemem/net/OtaUpdater$Info;Lcom/geely/drivemem/ui/OtaDialog$Listener;)Landroid/app/AlertDialog;
  .registers 24
  .prologue
  .line 76
    new-instance v2, Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0
    invoke-direct { v2, v0 }, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
  .line 77
    new-instance v17, Landroid/widget/LinearLayout;
    move-object/from16 v0, v17
    move-object/from16 v1, p0
    invoke-direct { v0, v1 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 78
    const/4 v3, 1
    move-object/from16 v0, v17
    invoke-virtual { v0, v3 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 79
    sget v3, Lcom/geely/drivemem/util/Style;->CARD:I
    move-object/from16 v0, p0
    invoke-static { v3, v0 }, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v3
    move-object/from16 v0, v17
    invoke-virtual { v0, v3 }, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 80
    const/16 v3, 28
    move-object/from16 v0, p0
    invoke-static { v0, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
  .line 81
    move-object/from16 v0, v17
    invoke-virtual { v0, v3, v3, v3, v3 }, Landroid/widget/LinearLayout;->setPadding(IIII)V
  .line 82
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;
    const/16 v4, 760
    move-object/from16 v0, p0
    invoke-static { v0, v4 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v4
    const/4 v5, -2
    invoke-direct { v3, v4, v5 }, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
    move-object/from16 v0, v17
    invoke-virtual { v0, v3 }, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 84
    new-instance v3, Landroid/widget/TextView;
    move-object/from16 v0, p0
    invoke-direct { v3, v0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 85
    const-string v4, "Settings & update"
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 86
    sget v4, Lcom/geely/drivemem/util/Style;->TEXT:I
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 87
    const/high16 v4, 0x41f00000
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 88
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  .line 89
    move-object/from16 v0, v17
    invoke-virtual { v0, v3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 91
    new-instance v3, Landroid/widget/TextView;
    move-object/from16 v0, p0
    invoke-direct { v3, v0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 92
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "Installed: "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-static/range { p0 .. p0 }, Lcom/geely/drivemem/net/OtaUpdater;->installedVersionName(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    const-string v5, "  (build "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
  .line 93
    invoke-static/range { p0 .. p0 }, Lcom/geely/drivemem/net/OtaUpdater;->installedVersionCode(Landroid/content/Context;)I
    move-result v5
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v4
    const-string v5, ")"
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
  .line 92
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 94
    sget v4, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 95
    const/high16 v4, 0x41b00000
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 96
    const/4 v4, 0
    const/16 v5, 8
    move-object/from16 v0, p0
    invoke-static { v0, v5 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v5
    const/4 v6, 0
    const/16 v7, 12
    move-object/from16 v0, p0
    invoke-static { v0, v7 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v7
    invoke-virtual { v3, v4, v5, v6, v7 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 97
    move-object/from16 v0, v17
    invoke-virtual { v0, v3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 100
    new-instance v3, Landroid/widget/TextView;
    move-object/from16 v0, p0
    invoke-direct { v3, v0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 101
    const-string v4, "OBD2 dongle (optional)"
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 102
    sget v4, Lcom/geely/drivemem/util/Style;->TEXT:I
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 103
    const/high16 v4, 0x41c00000
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 104
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  .line 105
    move-object/from16 v0, v17
    invoke-virtual { v0, v3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 106
    new-instance v3, Landroid/widget/TextView;
    move-object/from16 v0, p0
    invoke-direct { v3, v0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 107
    const-string v4, "Read-only: reads battery SoC, voltage, current and temperature from the BMS through an ELM327 dongle. Gives measured energy and the consumption-by-speed chart. Pair the dongle first in the car's Bluetooth settings (BLE dongles need no pairing)."
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 110
    sget v4, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 111
    const/high16 v4, 0x41980000
    invoke-virtual { v3, v4 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 112
    const/4 v4, 0
    const/4 v5, 4
    move-object/from16 v0, p0
    invoke-static { v0, v5 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v5
    const/4 v6, 0
    const/16 v7, 8
    move-object/from16 v0, p0
    invoke-static { v0, v7 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v7
    invoke-virtual { v3, v4, v5, v6, v7 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 113
    move-object/from16 v0, v17
    invoke-virtual { v0, v3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 114
    new-instance v3, Landroid/widget/LinearLayout;
    move-object/from16 v0, p0
    invoke-direct { v3, v0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 115
    const/4 v4, 0
    invoke-virtual { v3, v4 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 116
    const/16 v4, 16
    invoke-virtual { v3, v4 }, Landroid/widget/LinearLayout;->setGravity(I)V
  .line 117
    new-instance v4, Landroid/widget/TextView;
    move-object/from16 v0, p0
    invoke-direct { v4, v0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 118
    const/high16 v5, 0x41b00000
    invoke-virtual { v4, v5 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 119
    sget v5, Lcom/geely/drivemem/util/Style;->TEXT:I
    invoke-virtual { v4, v5 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 120
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0
    const/4 v7, -2
    const/high16 v8, 0x3f800000
    invoke-direct { v5, v6, v7, v8 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual { v3, v4, v5 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 121
    const/4 v5, 1
    new-array v5, v5, [Landroid/widget/TextView;
  .line 122
    new-instance v6, Lcom/geely/drivemem/ui/OtaDialog$3;
    move-object/from16 v0, p0
    invoke-direct { v6, v0, v4, v5 }, Lcom/geely/drivemem/ui/OtaDialog$3;-><init>(Landroid/app/Activity;Landroid/widget/TextView;[Landroid/widget/TextView;)V
  .line 130
    const/4 v4, 0
    const-string v7, "Turn on"
    const/4 v8, 0
    new-instance v9, Lcom/geely/drivemem/ui/OtaDialog$4;
    move-object/from16 v0, p0
    invoke-direct { v9, v0, v6 }, Lcom/geely/drivemem/ui/OtaDialog$4;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V
    move-object/from16 v0, p0
    invoke-static { v0, v7, v8, v9 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v7
    aput-object v7, v5, v4
  .line 137
    const/4 v4, 0
    aget-object v4, v5, v4
    invoke-virtual { v3, v4 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 138
    move-object/from16 v0, v17
    invoke-virtual { v0, v3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 139
    new-instance v18, Lcom/geely/drivemem/ui/OtaDialog$5;
    move-object/from16 v0, v18
    move-object/from16 v1, p0
    invoke-direct { v0, v1, v6 }, Lcom/geely/drivemem/ui/OtaDialog$5;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V
  .line 144
    invoke-static/range { v18 .. v18 }, Lcom/geely/drivemem/sensors/Obd2Reader;->subscribe(Lcom/geely/drivemem/sensors/Obd2Reader$Listener;)V
  .line 145
    invoke-interface { v6 }, Ljava/lang/Runnable;->run()V
  .line 146
    new-instance v3, Landroid/view/View;
    move-object/from16 v0, p0
    invoke-direct { v3, v0 }, Landroid/view/View;-><init>(Landroid/content/Context;)V
  .line 147
    const v4, 872415231
    invoke-virtual { v3, v4 }, Landroid/view/View;->setBackgroundColor(I)V
  .line 148
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, -1
    const/4 v6, 1
    invoke-direct { v4, v5, v6 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 149
    const/16 v5, 14
    move-object/from16 v0, p0
    invoke-static { v0, v5 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v5
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    const/16 v5, 14
    move-object/from16 v0, p0
    invoke-static { v0, v5 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v5
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
  .line 150
    move-object/from16 v0, v17
    invoke-virtual { v0, v3, v4 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 152
    new-instance v4, Landroid/widget/TextView;
    move-object/from16 v0, p0
    invoke-direct { v4, v0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 153
    sget v3, Lcom/geely/drivemem/util/Style;->TEXT:I
    invoke-virtual { v4, v3 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 154
    const/high16 v3, 0x41c00000
    invoke-virtual { v4, v3 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 155
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-virtual { v4, v3 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  .line 156
    move-object/from16 v0, v17
    invoke-virtual { v0, v4 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 158
    new-instance v5, Landroid/widget/TextView;
    move-object/from16 v0, p0
    invoke-direct { v5, v0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 159
    sget v3, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-virtual { v5, v3 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 160
    const/high16 v3, 0x41a80000
    invoke-virtual { v5, v3 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 161
    const/4 v3, 0
    const/16 v6, 10
    move-object/from16 v0, p0
    invoke-static { v0, v6 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v6
    const/4 v7, 0
    const/4 v8, 0
    invoke-virtual { v5, v3, v6, v7, v8 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 162
    new-instance v3, Landroid/widget/ScrollView;
    move-object/from16 v0, p0
    invoke-direct { v3, v0 }, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V
  .line 163
    invoke-virtual { v3, v5 }, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V
  .line 164
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, -1
    const/16 v8, 220
  .line 165
    move-object/from16 v0, p0
    invoke-static { v0, v8 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v8
    invoke-direct { v6, v7, v8 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 164
    move-object/from16 v0, v17
    invoke-virtual { v0, v3, v6 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 167
    new-instance v19, Landroid/widget/LinearLayout;
    move-object/from16 v0, v19
    move-object/from16 v1, p0
    invoke-direct { v0, v1 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 168
    const/4 v3, 0
    move-object/from16 v0, v19
    invoke-virtual { v0, v3 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 169
    const v3, 8388629
    move-object/from16 v0, v19
    invoke-virtual { v0, v3 }, Landroid/widget/LinearLayout;->setGravity(I)V
  .line 170
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, -1
    const/4 v7, -2
    invoke-direct { v3, v6, v7 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 172
    const/16 v6, 20
    move-object/from16 v0, p0
    invoke-static { v0, v6 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v6
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
  .line 173
    move-object/from16 v0, v19
    invoke-virtual { v0, v3 }, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 175
    move-object/from16 v0, v17
    invoke-virtual { v2, v0 }, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    move-result-object v8
  .line 176
    invoke-virtual { v8 }, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;
    move-result-object v2
    if-eqz v2, :L0
  .line 177
    invoke-virtual { v8 }, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;
    move-result-object v2
    const v3, 17170445
    invoke-virtual { v2, v3 }, Landroid/view/Window;->setBackgroundDrawableResource(I)V
  :L0
  .line 179
    const/4 v2, 1
    new-array v9, v2, [Lcom/geely/drivemem/net/OtaUpdater$Info;
  .line 180
    const/4 v2, 1
    new-array v6, v2, [Landroid/widget/TextView;
  .line 181
    const/4 v2, 1
    new-array v15, v2, [Landroid/widget/TextView;
  .line 182
    const/4 v2, 1
    new-array v3, v2, [Z
  .line 184
    new-instance v2, Lcom/geely/drivemem/ui/OtaDialog$6;
    move-object/from16 v7, p0
    move-object/from16 v10, p2
    invoke-direct/range { v2 .. v10 }, Lcom/geely/drivemem/ui/OtaDialog$6;-><init>([ZLandroid/widget/TextView;Landroid/widget/TextView;[Landroid/widget/TextView;Landroid/app/Activity;Landroid/app/AlertDialog;[Lcom/geely/drivemem/net/OtaUpdater$Info;Lcom/geely/drivemem/ui/OtaDialog$Listener;)V
  .line 218
    const-string v3, "Uninstall all"
    const/4 v7, 0
    new-instance v10, Lcom/geely/drivemem/ui/OtaDialog$7;
    move-object/from16 v0, p0
    invoke-direct { v10, v0, v4 }, Lcom/geely/drivemem/ui/OtaDialog$7;-><init>(Landroid/app/Activity;Landroid/widget/TextView;)V
    move-object/from16 v0, p0
    invoke-static { v0, v3, v7, v10 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v3
  .line 221
    const-string v7, "#FF453A"
    invoke-static { v7 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v7
    invoke-virtual { v3, v7 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 222
    move-object/from16 v0, v19
    invoke-virtual { v0, v3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 223
    new-instance v3, Landroid/view/View;
    move-object/from16 v0, p0
    invoke-direct { v3, v0 }, Landroid/view/View;-><init>(Landroid/content/Context;)V
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, 0
    const/4 v11, 0
    const/high16 v12, 0x3f800000
    invoke-direct { v7, v10, v11, v12 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    move-object/from16 v0, v19
    invoke-virtual { v0, v3, v7 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 224
    const-string v3, "Close"
    const/4 v7, 0
    new-instance v10, Lcom/geely/drivemem/ui/OtaDialog$8;
    invoke-direct { v10, v8 }, Lcom/geely/drivemem/ui/OtaDialog$8;-><init>(Landroid/app/AlertDialog;)V
    move-object/from16 v0, p0
    invoke-static { v0, v3, v7, v10 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v3
  .line 227
    move-object/from16 v0, v19
    invoke-virtual { v0, v3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 228
    const/16 v3, 12
    move-object/from16 v0, v19
    move-object/from16 v1, p0
    invoke-static { v0, v1, v3 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 229
    const/4 v3, 0
    const-string v7, "Check for updates"
    const/4 v10, 0
    move-object/from16 v0, p0
    invoke-static { v0, v7, v10, v2 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v7
    aput-object v7, v15, v3
  .line 230
    const/4 v3, 0
    aget-object v3, v15, v3
    move-object/from16 v0, v19
    invoke-virtual { v0, v3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 231
    const/16 v3, 12
    move-object/from16 v0, v19
    move-object/from16 v1, p0
    invoke-static { v0, v1, v3 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 232
    const/4 v3, 0
    const-string v7, "Update now"
    const/16 v20, 1
    new-instance v10, Lcom/geely/drivemem/ui/OtaDialog$9;
    move-object/from16 v11, p0
    move-object v12, v9
    move-object v13, v4
    move-object v14, v6
    move-object/from16 v16, v8
    invoke-direct/range { v10 .. v16 }, Lcom/geely/drivemem/ui/OtaDialog$9;-><init>(Landroid/app/Activity;[Lcom/geely/drivemem/net/OtaUpdater$Info;Landroid/widget/TextView;[Landroid/widget/TextView;[Landroid/widget/TextView;Landroid/app/AlertDialog;)V
    move-object/from16 v0, p0
    move/from16 v1, v20
    invoke-static { v0, v7, v1, v10 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v7
    aput-object v7, v6, v3
  .line 254
    const/4 v3, 0
    aget-object v3, v6, v3
    const/16 v7, 8
    invoke-virtual { v3, v7 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 255
    const/4 v3, 0
    aget-object v3, v6, v3
    move-object/from16 v0, v19
    invoke-virtual { v0, v3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 256
    move-object/from16 v0, v17
    move-object/from16 v1, v19
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 258
    new-instance v3, Lcom/geely/drivemem/ui/OtaDialog$10;
    move-object/from16 v0, v18
    invoke-direct { v3, v0 }, Lcom/geely/drivemem/ui/OtaDialog$10;-><init>(Lcom/geely/drivemem/sensors/Obd2Reader$Listener;)V
    invoke-virtual { v8, v3 }, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
  .line 261
    invoke-virtual { v8 }, Landroid/app/AlertDialog;->show()V
  .line 262
    if-eqz p1, :L2
  .line 263
    const/4 v2, 0
    aput-object p1, v9, v2
  .line 264
    const-string v2, "#30D158"
    invoke-static { v2 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v2
    invoke-virtual { v4, v2 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 265
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "New version available: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    move-object/from16 v0, p1
    iget-object v3, v0, Lcom/geely/drivemem/net/OtaUpdater$Info;->versionName:Ljava/lang/String;
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v4, v2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 266
    move-object/from16 v0, p1
    iget-object v2, v0, Lcom/geely/drivemem/net/OtaUpdater$Info;->changelog:Ljava/lang/String;
    invoke-virtual { v5, v2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 267
    const/4 v2, 0
    aget-object v2, v6, v2
    const/4 v3, 0
    invoke-virtual { v2, v3 }, Landroid/widget/TextView;->setVisibility(I)V
  :L1
  .line 271
    return-object v8
  :L2
  .line 269
    invoke-interface { v2 }, Ljava/lang/Runnable;->run()V
    goto :L1
.end method
