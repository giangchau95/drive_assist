.class public final Lcom/geely/drivemem/ui/ChargeCostDialog;
.super Ljava/lang/Object;
.source "ChargeCostDialog.java"

.method private constructor <init>()V
  .registers 1
  .prologue
  .line 29
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static formatVnd(J)Ljava/lang/String;
  .registers 8
  .prologue
  .line 154
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    const-string v1, "%,d"
    const/4 v2, 1
    new-array v2, v2, [Ljava/lang/Object;
    const/4 v3, 0
    invoke-static { p0, p1 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    aput-object v4, v2, v3
    invoke-static { v0, v1, v2 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public static show(Landroid/content/Context;JDIILjava/lang/Double;Ljava/lang/Runnable;)Landroid/app/AlertDialog;
  .registers 22
  .prologue
  .line 33
    new-instance v5, Landroid/app/AlertDialog$Builder;
    invoke-direct { v5, p0 }, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
  .line 35
    new-instance v10, Landroid/widget/LinearLayout;
    invoke-direct { v10, p0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 36
    const/4 v2, 1
    invoke-virtual { v10, v2 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 37
    sget v2, Lcom/geely/drivemem/util/Style;->CARD:I
    invoke-static { v2, p0 }, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v2
    invoke-virtual { v10, v2 }, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 38
    const/16 v2, 24
    invoke-static { p0, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
  .line 39
    invoke-virtual { v10, v2, v2, v2, v2 }, Landroid/widget/LinearLayout;->setPadding(IIII)V
  .line 40
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;
    const/16 v3, 520
  .line 41
    invoke-static { p0, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
    const/4 v4, -2
    invoke-direct { v2, v3, v4 }, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
  .line 40
    invoke-virtual { v10, v2 }, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 43
    new-instance v2, Landroid/widget/TextView;
    invoke-direct { v2, p0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 44
    sget v3, Lcom/geely/drivemem/R$string;->charge_cost_input_title:I
    invoke-virtual { p0, v3 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 45
    sget v3, Lcom/geely/drivemem/util/Style;->TEXT:I
    invoke-virtual { v2, v3 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 46
    const/high16 v3, 0x41b00000
    invoke-virtual { v2, v3 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 47
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-virtual { v2, v3 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  .line 48
    invoke-virtual { v10, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 50
    if-ltz p5, :L3
    if-ltz p6, :L3
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    move/from16 v0, p5
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, "% \u2794 "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    move/from16 v0, p6
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, "%"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
  :L0
  .line 51
    new-instance v3, Landroid/widget/TextView;
    invoke-direct { v3, p0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 52
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
    const-string v6, "+%.1f kWh  \u2022  %s"
    const/4 v7, 2
    new-array v7, v7, [Ljava/lang/Object;
    const/4 v8, 0
    invoke-static/range { p3 .. p4 }, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    move-result-object v9
    aput-object v9, v7, v8
    const/4 v8, 1
    aput-object v2, v7, v8
    invoke-static { v4, v6, v7 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v3, v2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 53
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-virtual { v3, v2 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 54
    const/high16 v2, 0x41700000
    invoke-virtual { v3, v2 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 55
    const/4 v2, 0
    const/4 v4, 4
    invoke-static { p0, v4 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v4
    const/4 v6, 0
    const/16 v7, 14
    invoke-static { p0, v7 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v7
    invoke-virtual { v3, v2, v4, v6, v7 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 56
    invoke-virtual { v10, v3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 58
    new-instance v4, Landroid/widget/EditText;
    invoke-direct { v4, p0 }, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V
  .line 59
    sget v2, Lcom/geely/drivemem/R$string;->charge_cost_input_hint:I
    invoke-virtual { p0, v2 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v4, v2 }, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
  .line 60
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT:I
    invoke-virtual { v4, v2 }, Landroid/widget/EditText;->setTextColor(I)V
  .line 61
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-virtual { v4, v2 }, Landroid/widget/EditText;->setHintTextColor(I)V
  .line 62
    const/high16 v2, 0x41b00000
    invoke-virtual { v4, v2 }, Landroid/widget/EditText;->setTextSize(F)V
  .line 63
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-virtual { v4, v2 }, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V
  .line 64
    const/4 v2, 2
    invoke-virtual { v4, v2 }, Landroid/widget/EditText;->setInputType(I)V
  .line 65
    const/4 v2, 0
    new-array v2, v2, [Landroid/text/InputFilter;
    invoke-virtual { v4, v2 }, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V
  .line 66
    sget v2, Lcom/geely/drivemem/util/Style;->CARD_HI:I
    invoke-static { v2, p0 }, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v2
    invoke-virtual { v4, v2 }, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 67
    const/16 v2, 14
    invoke-static { p0, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
  .line 68
    invoke-virtual { v4, v2, v2, v2, v2 }, Landroid/widget/EditText;->setPadding(IIII)V
  .line 69
    if-nez p7, :L4
    const-wide/16 v2, 0
  :L1
    invoke-static { v2, v3 }, Lcom/geely/drivemem/ui/ChargeCostDialog;->formatVnd(J)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v4, v2 }, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
  .line 70
    new-instance v2, Lcom/geely/drivemem/ui/ChargeCostDialog$1;
    invoke-direct { v2, v4 }, Lcom/geely/drivemem/ui/ChargeCostDialog$1;-><init>(Landroid/widget/EditText;)V
    invoke-virtual { v4, v2 }, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
  .line 83
    invoke-virtual { v4 }, Landroid/widget/EditText;->selectAll()V
  .line 84
    invoke-virtual { v10, v4 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 86
    new-instance v2, Landroid/widget/LinearLayout;
    invoke-direct { v2, p0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 87
    const/4 v3, 0
    invoke-virtual { v2, v3 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 88
    const v3, 8388629
    invoke-virtual { v2, v3 }, Landroid/widget/LinearLayout;->setGravity(I)V
  .line 89
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, -1
    const/4 v7, -2
    invoke-direct { v3, v6, v7 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 91
    const/16 v6, 20
    invoke-static { p0, v6 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v6
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
  .line 92
    invoke-virtual { v2, v3 }, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 94
    invoke-virtual { v5, v10 }, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    move-result-object v3
    invoke-virtual { v3 }, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    move-result-object v8
  .line 95
    invoke-virtual { v8 }, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;
    move-result-object v3
    if-eqz v3, :L2
  .line 96
    invoke-virtual { v8 }, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;
    move-result-object v3
    const v5, 17170445
    invoke-virtual { v3, v5 }, Landroid/view/Window;->setBackgroundDrawableResource(I)V
  :L2
  .line 99
    const/high16 v3, 0x1040000
    invoke-virtual { p0, v3 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v3
    const/4 v5, 0
    new-instance v6, Lcom/geely/drivemem/ui/ChargeCostDialog$2;
    invoke-direct { v6, v8 }, Lcom/geely/drivemem/ui/ChargeCostDialog$2;-><init>(Landroid/app/AlertDialog;)V
    invoke-static { p0, v3, v5, v6 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v3
  .line 101
    invoke-virtual { v2, v3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 102
    const/16 v3, 10
    invoke-static { v2, p0, v3 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 104
    sget v3, Lcom/geely/drivemem/R$string;->charge_cost_btn_per_kwh:I
  .line 105
    invoke-virtual { p0, v3 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v3
    const/4 v5, 0
    new-instance v6, Lcom/geely/drivemem/ui/ChargeCostDialog$3;
    move-wide/from16 v0, p3
    invoke-direct { v6, v4, v0, v1 }, Lcom/geely/drivemem/ui/ChargeCostDialog$3;-><init>(Landroid/widget/EditText;D)V
  .line 104
    invoke-static { p0, v3, v5, v6 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v3
  .line 112
    invoke-virtual { v2, v3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 113
    const/16 v3, 10
    invoke-static { v2, p0, v3 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 115
    sget v3, Lcom/geely/drivemem/R$string;->charge_cost_btn_save:I
    invoke-virtual { p0, v3 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v11
    const/4 v12, 1
    new-instance v3, Lcom/geely/drivemem/ui/ChargeCostDialog$4;
    move-object v5, p0
    move-wide v6, p1
    move-object/from16 v9, p8
    invoke-direct/range { v3 .. v9 }, Lcom/geely/drivemem/ui/ChargeCostDialog$4;-><init>(Landroid/widget/EditText;Landroid/content/Context;JLandroid/app/AlertDialog;Ljava/lang/Runnable;)V
    invoke-static { p0, v11, v12, v3 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v3
  .line 129
    invoke-virtual { v2, v3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 130
    invoke-virtual { v10, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 132
    invoke-virtual { v8 }, Landroid/app/AlertDialog;->show()V
  .line 134
    invoke-virtual { v4 }, Landroid/widget/EditText;->requestFocus()Z
  .line 135
    new-instance v2, Landroid/os/Handler;
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v3
    invoke-direct { v2, v3 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    new-instance v3, Lcom/geely/drivemem/ui/ChargeCostDialog$5;
    invoke-direct { v3, v4, p0 }, Lcom/geely/drivemem/ui/ChargeCostDialog$5;-><init>(Landroid/widget/EditText;Landroid/content/Context;)V
    const-wide/16 v4, 150
    invoke-virtual { v2, v3, v4, v5 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
  .line 143
    return-object v8
  :L3
  .line 50
    const-string v2, ""
    goto/16 :L0
  :L4
  .line 69
    invoke-virtual/range { p7 .. p7 }, Ljava/lang/Double;->doubleValue()D
    move-result-wide v2
    invoke-static { v2, v3 }, Ljava/lang/Math;->round(D)J
    move-result-wide v2
    goto/16 :L1
.end method

.method static valueFromText(Ljava/lang/String;)J
  .registers 4
  .prologue
    const/16 v2, 12
  .line 147
    const-string v0, "[^0-9]"
    const-string v1, ""
    invoke-virtual { p0, v0, v1 }, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 148
    invoke-virtual { v0 }, Ljava/lang/String;->isEmpty()Z
    move-result v1
    if-eqz v1, :L1
    const-wide/16 v0, 0
  :L0
  .line 150
    return-wide v0
  :L1
  .line 149
    invoke-virtual { v0 }, Ljava/lang/String;->length()I
    move-result v1
    if-le v1, v2, :L2
    const/4 v1, 0
    invoke-virtual { v0, v1, v2 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v0
  :L2
  .line 150
    invoke-static { v0 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v0
    goto :L0
.end method
