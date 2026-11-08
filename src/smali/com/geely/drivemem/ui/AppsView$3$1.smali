.class Lcom/geely/drivemem/ui/AppsView$3$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "AppsView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/AppsView$3;->run()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$1:Lcom/geely/drivemem/ui/AppsView$3;

.field final synthetic val$fe:Ljava/lang/String;

.field final synthetic val$fo:Ljava/util/List;

.method constructor <init>(Lcom/geely/drivemem/ui/AppsView$3;Ljava/lang/String;Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 4
  .prologue
  .line 169
    iput-object p1, p0, Lcom/geely/drivemem/ui/AppsView$3$1;->this$1:Lcom/geely/drivemem/ui/AppsView$3;
    iput-object p2, p0, Lcom/geely/drivemem/ui/AppsView$3$1;->val$fe:Ljava/lang/String;
    iput-object p3, p0, Lcom/geely/drivemem/ui/AppsView$3$1;->val$fo:Ljava/util/List;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .prologue
  .line 171
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView$3$1;->this$1:Lcom/geely/drivemem/ui/AppsView$3;
    iget-object v0, v0, Lcom/geely/drivemem/ui/AppsView$3;->this$0:Lcom/geely/drivemem/ui/AppsView;
    const/4 v1, 0
    invoke-static { v0, v1 }, Lcom/geely/drivemem/ui/AppsView;->access$502(Lcom/geely/drivemem/ui/AppsView;Z)Z
  .line 172
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView$3$1;->val$fe:Ljava/lang/String;
    if-nez v0, :L1
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView$3$1;->this$1:Lcom/geely/drivemem/ui/AppsView$3;
    iget-object v0, v0, Lcom/geely/drivemem/ui/AppsView$3;->this$0:Lcom/geely/drivemem/ui/AppsView;
    iget-object v1, p0, Lcom/geely/drivemem/ui/AppsView$3$1;->val$fo:Ljava/util/List;
    invoke-static { v0, v1 }, Lcom/geely/drivemem/ui/AppsView;->access$602(Lcom/geely/drivemem/ui/AppsView;Ljava/util/List;)Ljava/util/List;
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView$3$1;->this$1:Lcom/geely/drivemem/ui/AppsView$3;
    iget-object v0, v0, Lcom/geely/drivemem/ui/AppsView$3;->this$0:Lcom/geely/drivemem/ui/AppsView;
    const/4 v1, 0
    invoke-static { v0, v1 }, Lcom/geely/drivemem/ui/AppsView;->access$702(Lcom/geely/drivemem/ui/AppsView;Ljava/lang/String;)Ljava/lang/String;
  :L0
  .line 173
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView$3$1;->this$1:Lcom/geely/drivemem/ui/AppsView$3;
    iget-object v0, v0, Lcom/geely/drivemem/ui/AppsView$3;->this$0:Lcom/geely/drivemem/ui/AppsView;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/AppsView;->access$300(Lcom/geely/drivemem/ui/AppsView;)V
  .line 174
    return-void
  :L1
  .line 172
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView$3$1;->this$1:Lcom/geely/drivemem/ui/AppsView$3;
    iget-object v0, v0, Lcom/geely/drivemem/ui/AppsView$3;->this$0:Lcom/geely/drivemem/ui/AppsView;
    iget-object v1, p0, Lcom/geely/drivemem/ui/AppsView$3$1;->val$fe:Ljava/lang/String;
    invoke-static { v0, v1 }, Lcom/geely/drivemem/ui/AppsView;->access$702(Lcom/geely/drivemem/ui/AppsView;Ljava/lang/String;)Ljava/lang/String;
    goto :L0
.end method
