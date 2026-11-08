.class Lcom/geely/drivemem/ui/AppsView$5;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "AppsView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/AppsView;->loadIcon(Lcom/geely/drivemem/ui/AppsView$App;Landroid/widget/ImageView;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/AppsView;

.field final synthetic val$a:Lcom/geely/drivemem/ui/AppsView$App;

.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$iv:Landroid/widget/ImageView;

.method constructor <init>(Lcom/geely/drivemem/ui/AppsView;Lcom/geely/drivemem/ui/AppsView$App;Landroid/content/Context;Landroid/widget/ImageView;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 5
  .prologue
  .line 340
    iput-object p1, p0, Lcom/geely/drivemem/ui/AppsView$5;->this$0:Lcom/geely/drivemem/ui/AppsView;
    iput-object p2, p0, Lcom/geely/drivemem/ui/AppsView$5;->val$a:Lcom/geely/drivemem/ui/AppsView$App;
    iput-object p3, p0, Lcom/geely/drivemem/ui/AppsView$5;->val$c:Landroid/content/Context;
    iput-object p4, p0, Lcom/geely/drivemem/ui/AppsView$5;->val$iv:Landroid/widget/ImageView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/Throwable; { :L0 .. :L5 } :L6
  .registers 8
  :L0
  .prologue
  .line 343
    new-instance v0, Ljava/net/URL;
    iget-object v1, p0, Lcom/geely/drivemem/ui/AppsView$5;->val$a:Lcom/geely/drivemem/ui/AppsView$App;
    iget-object v1, v1, Lcom/geely/drivemem/ui/AppsView$App;->icon:Ljava/lang/String;
    invoke-direct { v0, v1 }, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    invoke-virtual { v0 }, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    move-result-object v0
    check-cast v0, Ljava/net/HttpURLConnection;
  .line 344
    const/16 v1, 8000
    invoke-virtual { v0, v1 }, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
  .line 345
    const/16 v1, 10000
    invoke-virtual { v0, v1 }, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
  .line 346
    invoke-virtual { v0 }, Ljava/net/HttpURLConnection;->getResponseCode()I
    move-result v1
    const/16 v2, 200
    if-eq v1, v2, :L2
  :L1
  .line 366
    return-void
  :L2
  .line 347
    invoke-virtual { v0 }, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    move-result-object v1
  .line 348
    new-instance v2, Ljava/io/ByteArrayOutputStream;
    invoke-direct { v2 }, Ljava/io/ByteArrayOutputStream;-><init>()V
  .line 349
    const/16 v3, 8192
    new-array v3, v3, [B
  :L3
  .line 351
    invoke-virtual { v1, v3 }, Ljava/io/InputStream;->read([B)I
    move-result v4
    if-lez v4, :L4
  .line 352
    const/4 v5, 0
    invoke-virtual { v2, v3, v5, v4 }, Ljava/io/ByteArrayOutputStream;->write([BII)V
  .line 353
    invoke-virtual { v2 }, Ljava/io/ByteArrayOutputStream;->size()I
    move-result v4
    const/high16 v5, 0x100000
    if-le v4, v5, :L3
    goto :L1
  :L4
  .line 355
    invoke-virtual { v0 }, Ljava/net/HttpURLConnection;->disconnect()V
  .line 356
    invoke-virtual { v2 }, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object v0
  .line 357
    const/4 v1, 0
    array-length v2, v0
    invoke-static { v0, v1, v2 }, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    move-result-object v1
  .line 358
    if-eqz v1, :L1
  .line 359
    new-instance v2, Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/File;
    iget-object v4, p0, Lcom/geely/drivemem/ui/AppsView$5;->val$c:Landroid/content/Context;
    invoke-virtual { v4 }, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    move-result-object v4
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "storeicon-"
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    iget-object v6, p0, Lcom/geely/drivemem/ui/AppsView$5;->val$a:Lcom/geely/drivemem/ui/AppsView$App;
    iget-object v6, v6, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, ".png"
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-direct { v3, v4, v5 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-direct { v2, v3 }, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
  .line 360
    invoke-virtual { v2, v0 }, Ljava/io/FileOutputStream;->write([B)V
  .line 361
    invoke-virtual { v2 }, Ljava/io/FileOutputStream;->close()V
  .line 362
    iget-object v0, p0, Lcom/geely/drivemem/ui/AppsView$5;->this$0:Lcom/geely/drivemem/ui/AppsView;
    invoke-static { v0 }, Lcom/geely/drivemem/ui/AppsView;->access$800(Lcom/geely/drivemem/ui/AppsView;)Landroid/os/Handler;
    move-result-object v0
    new-instance v2, Lcom/geely/drivemem/ui/AppsView$5$1;
    invoke-direct { v2, p0, v1 }, Lcom/geely/drivemem/ui/AppsView$5$1;-><init>(Lcom/geely/drivemem/ui/AppsView$5;Landroid/graphics/Bitmap;)V
    invoke-virtual { v0, v2 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  :L5
    goto :L1
  :L6
  .line 365
    move-exception v0
    goto :L1
.end method
