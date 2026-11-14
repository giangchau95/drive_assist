.class Lcom/geely/drivemem/ui/AppsView$14;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnClickListener;
.source "AppsView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/AppsView;->confirmUninstall(Lcom/geely/drivemem/ui/AppsView$App;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/AppsView;

.field final synthetic val$a:Lcom/geely/drivemem/ui/AppsView$App;

.method constructor <init>(Lcom/geely/drivemem/ui/AppsView;Lcom/geely/drivemem/ui/AppsView$App;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 3
  .prologue
  .line 603
    iput-object p1, p0, Lcom/geely/drivemem/ui/AppsView$14;->this$0:Lcom/geely/drivemem/ui/AppsView;
    iput-object p2, p0, Lcom/geely/drivemem/ui/AppsView$14;->val$a:Lcom/geely/drivemem/ui/AppsView$App;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
  .registers 7
  .prologue
  .line 605
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView$14;->this$0:Lcom/geely/drivemem/ui/AppsView;
    iget-object v1, p0, Lcom/geely/drivemem/ui/AppsView$14;->val$a:Lcom/geely/drivemem/ui/AppsView$App;
    const-string v2, "com.geely.modehelper.UNINSTALL_APP"
    const-string v3, ""
    invoke-static { v0, v1, v2, v3 }, Lcom/geely/drivemem/ui/AppsView;->access$1300(Lcom/geely/drivemem/ui/AppsView;Lcom/geely/drivemem/ui/AppsView$App;Ljava/lang/String;Ljava/lang/String;)V
  .line 606
    return-void
.end method
