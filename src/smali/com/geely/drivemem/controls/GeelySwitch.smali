.class public Lcom/geely/drivemem/controls/GeelySwitch;
.super Landroid/widget/Switch;
.source "GeelySwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/drivemem/controls/GeelySwitch$OnToggle;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOCK_S:I = 0x5


# instance fields
.field private final knob:I

.field private listener:Lcom/geely/drivemem/controls/GeelySwitch$OnToggle;

.field private lockSeconds:I

.field private final off:I

.field private suppress:Z

.field private final ui:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$UQongxbv2yiOTB8tdbJprjzyMIM(Lcom/geely/drivemem/controls/GeelySwitch;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/geely/drivemem/controls/GeelySwitch;->lambda$new$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$zWtUsvGb43e1AzbIXo6NCQ1gE-c(Lcom/geely/drivemem/controls/GeelySwitch;)V
    .locals 0

    invoke-direct {p0}, Lcom/geely/drivemem/controls/GeelySwitch;->lambda$lock$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 19
    sget v0, Lcom/geely/drivemem/util/Style;->CARD_HI:I

    iput v0, p0, Lcom/geely/drivemem/controls/GeelySwitch;->off:I

    .line 20
    sget-boolean v1, Lcom/geely/drivemem/util/Style;->LIGHT:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const v1, -0xd0b09

    :goto_0
    iput v1, p0, Lcom/geely/drivemem/controls/GeelySwitch;->knob:I

    .line 22
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/geely/drivemem/controls/GeelySwitch;->ui:Landroid/os/Handler;

    const/4 v2, 0x5

    .line 23
    iput v2, p0, Lcom/geely/drivemem/controls/GeelySwitch;->lockSeconds:I

    const/4 v2, 0x0

    .line 25
    iput-boolean v2, p0, Lcom/geely/drivemem/controls/GeelySwitch;->suppress:Z

    const v3, 0x10100a0

    .line 30
    filled-new-array {v3}, [I

    move-result-object v3

    new-array v4, v2, [I

    filled-new-array {v3, v4}, [[I

    move-result-object v3

    .line 31
    new-instance v4, Landroid/content/res/ColorStateList;

    sget v5, Lcom/geely/drivemem/util/Style;->ACCENT:I

    filled-new-array {v5, v0}, [I

    move-result-object v0

    invoke-direct {v4, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v4}, Lcom/geely/drivemem/controls/GeelySwitch;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 32
    new-instance v0, Landroid/content/res/ColorStateList;

    filled-new-array {v1, v1}, [I

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v0}, Lcom/geely/drivemem/controls/GeelySwitch;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    const/16 v0, 0x40

    .line 34
    invoke-static {p1, v0}, Lcom/geely/drivemem/controls/GeelySwitch;->dp(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/geely/drivemem/controls/GeelySwitch;->setSwitchMinWidth(I)V

    const/16 v0, 0x8

    .line 35
    invoke-static {p1, v0}, Lcom/geely/drivemem/controls/GeelySwitch;->dp(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/geely/drivemem/controls/GeelySwitch;->setSwitchPadding(I)V

    const v0, 0x3fcccccd    # 1.6f

    .line 36
    invoke-virtual {p0, v0}, Lcom/geely/drivemem/controls/GeelySwitch;->setScaleX(F)V

    invoke-virtual {p0, v0}, Lcom/geely/drivemem/controls/GeelySwitch;->setScaleY(F)V

    const/16 v0, 0x12

    .line 37
    invoke-static {p1, v0}, Lcom/geely/drivemem/controls/GeelySwitch;->dp(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0xc

    invoke-static {p1, v1}, Lcom/geely/drivemem/controls/GeelySwitch;->dp(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, v0, v2, p1, v2}, Lcom/geely/drivemem/controls/GeelySwitch;->setPadding(IIII)V

    .line 38
    invoke-virtual {p0, v2}, Lcom/geely/drivemem/controls/GeelySwitch;->setShowText(Z)V

    .line 40
    new-instance p1, Lcom/geely/drivemem/controls/GeelySwitch$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/geely/drivemem/controls/GeelySwitch$$ExternalSyntheticLambda1;-><init>(Lcom/geely/drivemem/controls/GeelySwitch;)V

    invoke-super {p0, p1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private static dp(Landroid/content/Context;I)I
    .locals 0

    int-to-float p1, p1

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private synthetic lambda$lock$1()V
    .locals 1

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p0, v0}, Lcom/geely/drivemem/controls/GeelySwitch;->setEnabled(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/geely/drivemem/controls/GeelySwitch;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 41
    iget-boolean p1, p0, Lcom/geely/drivemem/controls/GeelySwitch;->suppress:Z

    if-eqz p1, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/geely/drivemem/controls/GeelySwitch;->listener:Lcom/geely/drivemem/controls/GeelySwitch$OnToggle;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lcom/geely/drivemem/controls/GeelySwitch$OnToggle;->onToggle(Z)V

    .line 43
    :cond_1
    invoke-direct {p0}, Lcom/geely/drivemem/controls/GeelySwitch;->lock()V

    return-void
.end method

.method private lock()V
    .locals 6

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0}, Lcom/geely/drivemem/controls/GeelySwitch;->setEnabled(Z)V

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/geely/drivemem/controls/GeelySwitch;->setAlpha(F)V

    .line 64
    iget-object v0, p0, Lcom/geely/drivemem/controls/GeelySwitch;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/geely/drivemem/controls/GeelySwitch$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/geely/drivemem/controls/GeelySwitch$$ExternalSyntheticLambda0;-><init>(Lcom/geely/drivemem/controls/GeelySwitch;)V

    iget v2, p0, Lcom/geely/drivemem/controls/GeelySwitch;->lockSeconds:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public setAccent(I)V
    .locals 3

    const v0, 0xffffff

    and-int/2addr p1, v0

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    const v0, 0x10100a0

    .line 53
    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    filled-new-array {v0, v1}, [[I

    move-result-object v0

    .line 54
    new-instance v1, Landroid/content/res/ColorStateList;

    iget v2, p0, Lcom/geely/drivemem/controls/GeelySwitch;->off:I

    filled-new-array {p1, v2}, [I

    move-result-object p1

    invoke-direct {v1, v0, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v1}, Lcom/geely/drivemem/controls/GeelySwitch;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCheckedSilently(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/geely/drivemem/controls/GeelySwitch;->suppress:Z

    invoke-virtual {p0, p1}, Lcom/geely/drivemem/controls/GeelySwitch;->setChecked(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/geely/drivemem/controls/GeelySwitch;->suppress:Z

    return-void
.end method

.method public setLockSeconds(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/geely/drivemem/controls/GeelySwitch;->lockSeconds:I

    return-void
.end method

.method public setOnToggle(Lcom/geely/drivemem/controls/GeelySwitch$OnToggle;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/geely/drivemem/controls/GeelySwitch;->listener:Lcom/geely/drivemem/controls/GeelySwitch$OnToggle;

    return-void
.end method
