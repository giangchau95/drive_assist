.class public final Lcom/geely/drivemem/ui/FullChargeReminder;
.super Ljava/lang/Object;
.source "FullChargeReminder.java"

.field private static showing:Z

.method private constructor <init>()V
  .registers 1
  .prologue
  .line 17
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static synthetic access$000()Z
  .registers 1
  .prologue
  .line 16
    sget-boolean v0, Lcom/geely/drivemem/ui/FullChargeReminder;->showing:Z
    return v0
.end method

.method static synthetic access$002(Z)Z
  .registers 1
  .prologue
  .line 16
    sput-boolean p0, Lcom/geely/drivemem/ui/FullChargeReminder;->showing:Z
    return p0
.end method

.method static synthetic access$100(Landroid/app/Activity;J)V
  .registers 4
  .prologue
  .line 16
    invoke-static { p0, p1, p2 }, Lcom/geely/drivemem/ui/FullChargeReminder;->show(Landroid/app/Activity;J)V
    return-void
.end method

.method public static check(Landroid/app/Activity;)V
  .registers 5
  .prologue
  .line 23
    sget-boolean v0, Lcom/geely/drivemem/ui/FullChargeReminder;->showing:Z
    if-nez v0, :L0
    invoke-static { }, Lcom/geely/drivemem/state/CarState;->isParked()Z
    move-result v0
    if-nez v0, :L1
  :L0
  .line 37
    return-void
  :L1
  .line 24
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    invoke-static { p0 }, Lcom/geely/drivemem/util/FullCharge;->snoozeUntil(Landroid/content/Context;)J
    move-result-wide v2
    cmp-long v0, v0, v2
    if-ltz v0, :L0
  .line 25
    new-instance v0, Ljava/lang/Thread;
    new-instance v1, Lcom/geely/drivemem/ui/FullChargeReminder$1;
    invoke-direct { v1, p0 }, Lcom/geely/drivemem/ui/FullChargeReminder$1;-><init>(Landroid/app/Activity;)V
    const-string v2, "full-charge-check"
    invoke-direct { v0, v1, v2 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 36
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
    goto :L0
.end method

.method private static show(Landroid/app/Activity;J)V
  .registers 14
  .prologue
    const/16 v9, 12
    const/4 v8, -2
    const/4 v7, 1
    const/4 v6, 0
  .line 40
    sput-boolean v7, Lcom/geely/drivemem/ui/FullChargeReminder;->showing:Z
  .line 41
    invoke-static { p0, p1, p2 }, Lcom/geely/drivemem/util/FullCharge;->baseMs(Landroid/content/Context;J)J
    move-result-wide v0
    invoke-static { v0, v1 }, Lcom/geely/drivemem/util/FullCharge;->daysSince(J)I
    move-result v0
  .line 42
    new-instance v1, Landroid/widget/LinearLayout;
    invoke-direct { v1, p0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 43
    invoke-virtual { v1, v7 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 44
    sget v2, Lcom/geely/drivemem/util/Style;->CARD:I
    invoke-static { v2, p0 }, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v2
    invoke-virtual { v1, v2 }, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 45
    const/16 v2, 28
    invoke-static { p0, v2 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v2
  .line 46
    invoke-virtual { v1, v2, v2, v2, v2 }, Landroid/widget/LinearLayout;->setPadding(IIII)V
  .line 47
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;
    const/16 v3, 680
    invoke-static { p0, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
    invoke-direct { v2, v3, v8 }, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
    invoke-virtual { v1, v2 }, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 48
    new-instance v2, Landroid/widget/TextView;
    invoke-direct { v2, p0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 49
    const-string v3, "Time for a full charge"
    invoke-virtual { v2, v3 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 50
    sget v3, Lcom/geely/drivemem/util/Style;->TEXT:I
    invoke-virtual { v2, v3 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 51
    const/high16 v3, 0x41f00000
    invoke-virtual { v2, v3 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 52
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-virtual { v2, v3 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  .line 53
    invoke-virtual { v1, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 54
    new-instance v2, Landroid/widget/TextView;
    invoke-direct { v2, p0 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
  .line 55
    const-wide/16 v4, 0
    cmp-long v3, p1, v4
    if-lez v3, :L2
  .line 56
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v3, " days since the last 100% charge ("
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-static { p1, p2 }, Lcom/geely/drivemem/util/FullCharge;->dateText(J)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v3, ")."
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  :L0
  .line 58
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v3, "\n\nAn LFP battery should be charged to 100% at least once or twice a month. It lets the battery system recalibrate, so the percentage and range stay accurate. Charge to 100% the next time you plug in."
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 61
    sget v0, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I
    invoke-virtual { v2, v0 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 62
    const/high16 v0, 0x41b00000
    invoke-virtual { v2, v0 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 63
    invoke-static { p0, v9 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v0
    const/16 v3, 8
    invoke-static { p0, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
    invoke-virtual { v2, v6, v0, v6, v3 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 64
    invoke-virtual { v1, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 65
    new-instance v0, Landroid/widget/LinearLayout;
    invoke-direct { v0, p0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 66
    invoke-virtual { v0, v6 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 67
    const v2, 8388629
    invoke-virtual { v0, v2 }, Landroid/widget/LinearLayout;->setGravity(I)V
  .line 68
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -1
    invoke-direct { v2, v3, v8 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 70
    const/16 v3, 20
    invoke-static { p0, v3 }, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I
    move-result v3
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
  .line 71
    invoke-virtual { v0, v2 }, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 72
    new-instance v2, Landroid/app/AlertDialog$Builder;
    invoke-direct { v2, p0 }, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    invoke-virtual { v2, v1 }, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    move-result-object v2
  .line 73
    invoke-virtual { v2 }, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;
    move-result-object v3
    if-eqz v3, :L1
    invoke-virtual { v2 }, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;
    move-result-object v3
    const v4, 17170445
    invoke-virtual { v3, v4 }, Landroid/view/Window;->setBackgroundDrawableResource(I)V
  :L1
  .line 74
    new-instance v3, Lcom/geely/drivemem/ui/FullChargeReminder$2;
    invoke-direct { v3 }, Lcom/geely/drivemem/ui/FullChargeReminder$2;-><init>()V
    invoke-virtual { v2, v3 }, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
  .line 77
    const-string v3, "Remind me tomorrow"
    new-instance v4, Lcom/geely/drivemem/ui/FullChargeReminder$3;
    invoke-direct { v4, p0, v2 }, Lcom/geely/drivemem/ui/FullChargeReminder$3;-><init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V
    invoke-static { p0, v3, v6, v4 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v3
    invoke-virtual { v0, v3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 80
    invoke-static { v0, p0, v9 }, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
  .line 81
    const-string v3, "OK"
    new-instance v4, Lcom/geely/drivemem/ui/FullChargeReminder$4;
    invoke-direct { v4, p0, v2 }, Lcom/geely/drivemem/ui/FullChargeReminder$4;-><init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V
    invoke-static { p0, v3, v7, v4 }, Lcom/geely/drivemem/util/Style;->cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    move-result-object v3
    invoke-virtual { v0, v3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 84
    invoke-virtual { v1, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 85
    invoke-virtual { v2 }, Landroid/app/AlertDialog;->show()V
  .line 86
    return-void
  :L2
  .line 57
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "No 100% charge recorded in the last "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v3, " days."
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    goto/16 :L0
.end method
