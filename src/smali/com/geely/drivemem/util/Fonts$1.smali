.class Lcom/geely/drivemem/util/Fonts$1;
.super Ljava/lang/Object;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.source "Fonts.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/util/Fonts;->install(Landroid/app/Application;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.method constructor <init>()V
  .registers 1
  .prologue
  .line 50
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
  .registers 3
  .prologue
  .line 51
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
  .registers 2
  .prologue
  .line 57
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
  .registers 2
  .prologue
  .line 54
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
  .registers 3
  .prologue
  .line 53
    invoke-virtual { p1 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v0
    invoke-static { v0 }, Lcom/geely/drivemem/util/Fonts;->watch(Landroid/view/View;)V
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
  .registers 3
  .prologue
  .line 56
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
  .registers 2
  .prologue
  .line 52
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
  .registers 2
  .prologue
  .line 55
    return-void
.end method
