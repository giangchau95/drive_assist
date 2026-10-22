.class Lcom/geely/drivemem/net/OtaUpdater$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "OtaUpdater.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/net/OtaUpdater;->check(Landroid/content/Context;Lcom/geely/drivemem/net/OtaUpdater$Callback;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$app:Landroid/content/Context;

.field final synthetic val$cb:Lcom/geely/drivemem/net/OtaUpdater$Callback;

.field final synthetic val$main:Landroid/os/Handler;

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/geely/drivemem/net/OtaUpdater$Callback;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 4
  .prologue
  .line 77
    iput-object p1, p0, Lcom/geely/drivemem/net/OtaUpdater$1;->val$app:Landroid/content/Context;
    iput-object p2, p0, Lcom/geely/drivemem/net/OtaUpdater$1;->val$main:Landroid/os/Handler;
    iput-object p3, p0, Lcom/geely/drivemem/net/OtaUpdater$1;->val$cb:Lcom/geely/drivemem/net/OtaUpdater$Callback;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L8
  .catch Ljava/lang/Throwable; { :L5 .. :L7 } :L8
  .catch Ljava/lang/Throwable; { :L10 .. :L11 } :L8
  .registers 8
  .prologue
    const/4 v1, 0
    const/4 v3, 0
  :L0
  .line 79
  .line 82
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "https://raw.githubusercontent.com/giangchau95/drive_assist/main/update/version.json?t="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v4
    invoke-virtual { v0, v4, v5 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 83
    new-instance v2, Ljava/net/URL;
    invoke-direct { v2, v0 }, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    invoke-virtual { v2 }, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    move-result-object v0
    check-cast v0, Ljava/net/HttpURLConnection;
  .line 84
    const/16 v2, 15000
    invoke-virtual { v0, v2 }, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
  .line 85
    const/16 v2, 20000
    invoke-virtual { v0, v2 }, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
  .line 86
    const/4 v2, 0
    invoke-virtual { v0, v2 }, Ljava/net/HttpURLConnection;->setUseCaches(Z)V
  .line 87
    const-string v2, "User-Agent"
    const-string v4, "DriveAssist"
    invoke-virtual { v0, v2, v4 }, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
  .line 88
    invoke-virtual { v0 }, Ljava/net/HttpURLConnection;->getResponseCode()I
    move-result v2
  .line 89
    const/16 v4, 200
    if-eq v2, v4, :L5
  .line 90
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "HTTP "
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L1
    move-result-object v0
    move-object v2, v1
  :L2
    move-object v4, v0
  :L3
  .line 112
    if-eqz v2, :L12
    iget v0, v2, Lcom/geely/drivemem/net/OtaUpdater$Info;->versionCode:I
    iget-object v1, p0, Lcom/geely/drivemem/net/OtaUpdater$1;->val$app:Landroid/content/Context;
    invoke-static { v1 }, Lcom/geely/drivemem/net/OtaUpdater;->installedVersionCode(Landroid/content/Context;)I
    move-result v1
    if-le v0, v1, :L12
    const/4 v0, 1
  :L4
  .line 113
    iget-object v1, p0, Lcom/geely/drivemem/net/OtaUpdater$1;->val$main:Landroid/os/Handler;
    new-instance v3, Lcom/geely/drivemem/net/OtaUpdater$1$1;
    invoke-direct { v3, p0, v2, v0, v4 }, Lcom/geely/drivemem/net/OtaUpdater$1$1;-><init>(Lcom/geely/drivemem/net/OtaUpdater$1;Lcom/geely/drivemem/net/OtaUpdater$Info;ZLjava/lang/String;)V
    invoke-virtual { v1, v3 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  .line 116
    return-void
  :L5
  .line 92
    invoke-virtual { v0 }, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    move-result-object v0
  .line 93
    new-instance v2, Ljava/io/ByteArrayOutputStream;
    invoke-direct { v2 }, Ljava/io/ByteArrayOutputStream;-><init>()V
  .line 94
    const/16 v4, 4096
    new-array v4, v4, [B
  :L6
  .line 96
    invoke-virtual { v0, v4 }, Ljava/io/InputStream;->read([B)I
    move-result v5
    if-lez v5, :L10
    const/4 v6, 0
    invoke-virtual { v2, v4, v6, v5 }, Ljava/io/ByteArrayOutputStream;->write([BII)V
  :L7
    goto :L6
  :L8
  .line 105
    move-exception v0
  .line 106
    const-string v2, "DriveMemOta"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "check failed: "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static { v2, v4 }, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
  .line 107
    invoke-virtual { v0 }, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :L9
    invoke-virtual { v0 }, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    move-result-object v0
  :L9
    invoke-static { v0 }, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    move-object v4, v0
    move-object v2, v1
  .line 108
    goto :L3
  :L10
  .line 97
    invoke-virtual { v0 }, Ljava/io/InputStream;->close()V
  .line 98
    new-instance v0, Lorg/json/JSONObject;
    new-instance v4, Ljava/lang/String;
    invoke-virtual { v2 }, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object v2
    const-string v5, "UTF-8"
    invoke-direct { v4, v2, v5 }, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    invoke-direct { v0, v4 }, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
  .line 99
    new-instance v2, Lcom/geely/drivemem/net/OtaUpdater$Info;
    invoke-direct { v2 }, Lcom/geely/drivemem/net/OtaUpdater$Info;-><init>()V
  .line 100
    const-string v4, "versionCode"
    invoke-virtual { v0, v4 }, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    move-result v4
    iput v4, v2, Lcom/geely/drivemem/net/OtaUpdater$Info;->versionCode:I
  .line 101
    const-string v4, "versionName"
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "build "
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    iget v6, v2, Lcom/geely/drivemem/net/OtaUpdater$Info;->versionCode:I
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v0, v4, v5 }, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    iput-object v4, v2, Lcom/geely/drivemem/net/OtaUpdater$Info;->versionName:Ljava/lang/String;
  .line 102
    const-string v4, "apkUrl"
    const-string v5, "https://raw.githubusercontent.com/giangchau95/drive_assist/main/update/drive_assist.apk"
    invoke-virtual { v0, v4, v5 }, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    iput-object v4, v2, Lcom/geely/drivemem/net/OtaUpdater$Info;->apkUrl:Ljava/lang/String;
  .line 103
    const-string v4, "changelog"
    const-string v5, ""
    invoke-virtual { v0, v4, v5 }, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iput-object v0, v2, Lcom/geely/drivemem/net/OtaUpdater$Info;->changelog:Ljava/lang/String;
  :L11
    move-object v0, v1
    goto/16 :L2
  :L12
    move v0, v3
  .line 112
    goto/16 :L4
.end method
