.class Lcom/geely/drivemem/ui/AppsView$3;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "AppsView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/geely/drivemem/ui/AppsView;->refresh()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/geely/drivemem/ui/AppsView;

.method constructor <init>(Lcom/geely/drivemem/ui/AppsView;)V
  .registers 2
  .prologue
  .line 136
    iput-object p1, p0, Lcom/geely/drivemem/ui/AppsView$3;->this$0:Lcom/geely/drivemem/ui/AppsView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L1
  .catch Ljava/lang/Throwable; { :L3 .. :L8 } :L1
  .registers 13
  .prologue
    const/4 v1, 0
    const-wide/16 v10, 0
    const/4 v2, 0
  .line 138
    new-instance v4, Ljava/util/ArrayList;
    invoke-direct { v4 }, Ljava/util/ArrayList;-><init>()V
  :L0
  .line 141
    new-instance v0, Ljava/net/URL;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "https://raw.githubusercontent.com/giangchau95/drive_assist/main/apps/catalog.json?t="
    invoke-virtual { v3, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v6
    invoke-virtual { v3, v6, v7 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-direct { v0, v3 }, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    invoke-virtual { v0 }, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    move-result-object v0
    check-cast v0, Ljava/net/HttpURLConnection;
  .line 142
    const/16 v3, 10000
    invoke-virtual { v0, v3 }, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
  .line 143
    const/16 v3, 15000
    invoke-virtual { v0, v3 }, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
  .line 144
    invoke-virtual { v0 }, Ljava/net/HttpURLConnection;->getResponseCode()I
    move-result v3
    const/16 v5, 200
    if-eq v3, v5, :L3
    new-instance v1, Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "HTTP "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v0 }, Ljava/net/HttpURLConnection;->getResponseCode()I
    move-result v0
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v1, v0 }, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    throw v1
  :L1
  .line 165
    move-exception v0
  .line 166
    invoke-virtual { v0 }, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    move-result-object v1
    if-nez v1, :L11
    invoke-virtual { v0 }, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    move-result-object v0
  :L2
  .line 170
    iget-object v1, p0, Lcom/geely/drivemem/ui/AppsView$3;->this$0:Lcom/geely/drivemem/ui/AppsView;
    invoke-static { v1 }, Lcom/geely/drivemem/ui/AppsView;->access$800(Lcom/geely/drivemem/ui/AppsView;)Landroid/os/Handler;
    move-result-object v1
    new-instance v2, Lcom/geely/drivemem/ui/AppsView$3$1;
    invoke-direct { v2, p0, v0, v4 }, Lcom/geely/drivemem/ui/AppsView$3$1;-><init>(Lcom/geely/drivemem/ui/AppsView$3;Ljava/lang/String;Ljava/util/List;)V
    invoke-virtual { v1, v2 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  .line 177
    return-void
  :L3
  .line 145
    invoke-virtual { v0 }, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    move-result-object v3
  .line 146
    new-instance v5, Ljava/io/ByteArrayOutputStream;
    invoke-direct { v5 }, Ljava/io/ByteArrayOutputStream;-><init>()V
  .line 147
    const/16 v6, 8192
    new-array v6, v6, [B
  :L4
  .line 149
    invoke-virtual { v3, v6 }, Ljava/io/InputStream;->read([B)I
    move-result v7
    if-lez v7, :L5
    const/4 v8, 0
    invoke-virtual { v5, v6, v8, v7 }, Ljava/io/ByteArrayOutputStream;->write([BII)V
    goto :L4
  :L5
  .line 150
    invoke-virtual { v0 }, Ljava/net/HttpURLConnection;->disconnect()V
  .line 151
    new-instance v0, Lorg/json/JSONObject;
    const-string v3, "UTF-8"
    invoke-virtual { v5, v3 }, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    invoke-direct { v0, v3 }, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    const-string v3, "apps"
    invoke-virtual { v0, v3 }, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    move-result-object v5
    move v3, v2
  :L6
  .line 152
    invoke-virtual { v5 }, Lorg/json/JSONArray;->length()I
    move-result v0
    if-ge v3, v0, :L10
  .line 153
    invoke-virtual { v5, v3 }, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    move-result-object v0
  .line 154
    new-instance v6, Lcom/geely/drivemem/ui/AppsView$App;
    const/4 v7, 0
    invoke-direct { v6, v7 }, Lcom/geely/drivemem/ui/AppsView$App;-><init>(Lcom/geely/drivemem/ui/AppsView$1;)V
  .line 155
    const-string v7, "package"
    invoke-virtual { v0, v7 }, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    iput-object v7, v6, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
  .line 156
    const-string v7, "name"
    iget-object v8, v6, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-virtual { v0, v7, v8 }, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    iput-object v7, v6, Lcom/geely/drivemem/ui/AppsView$App;->name:Ljava/lang/String;
  .line 157
    const-string v7, "description"
    invoke-virtual { v0, v7 }, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    iput-object v7, v6, Lcom/geely/drivemem/ui/AppsView$App;->desc:Ljava/lang/String;
  .line 158
    const-string v7, "versionName"
    invoke-virtual { v0, v7 }, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    iput-object v7, v6, Lcom/geely/drivemem/ui/AppsView$App;->versionName:Ljava/lang/String;
  .line 159
    const-string v7, "icon"
    invoke-virtual { v0, v7 }, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    iput-object v7, v6, Lcom/geely/drivemem/ui/AppsView$App;->icon:Ljava/lang/String;
  .line 160
    const-string v7, "versionCode"
    const-wide/16 v8, 0
    invoke-virtual { v0, v7, v8, v9 }, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J
    move-result-wide v8
    iput-wide v8, v6, Lcom/geely/drivemem/ui/AppsView$App;->versionCode:J
  .line 161
    const-string v7, "size"
    const-wide/16 v8, 0
    invoke-virtual { v0, v7, v8, v9 }, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J
    move-result-wide v8
    iput-wide v8, v6, Lcom/geely/drivemem/ui/AppsView$App;->size:J
  .line 162
    const-string v7, "apk"
    invoke-virtual { v0, v7 }, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    const-string v8, "https://"
    invoke-virtual { v7, v8 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v7
    if-eqz v7, :L9
    const-string v7, "sha256"
    invoke-virtual { v0, v7 }, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/String;->length()I
    move-result v0
    const/16 v7, 64
    if-ne v0, v7, :L9
    iget-wide v8, v6, Lcom/geely/drivemem/ui/AppsView$App;->versionCode:J
    cmp-long v0, v8, v10
    if-lez v0, :L9
    const/4 v0, 1
  :L7
    iput-boolean v0, v6, Lcom/geely/drivemem/ui/AppsView$App;->hasApk:Z
  .line 163
    iget-object v0, v6, Lcom/geely/drivemem/ui/AppsView$App;->pkg:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->length()I
    move-result v0
    if-lez v0, :L8
    invoke-interface { v4, v6 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L8
  .line 152
    add-int/lit8 v0, v3, 1
    move v3, v0
    goto/16 :L6
  :L9
    move v0, v2
  .line 162
    goto :L7
  :L10
    move-object v0, v1
  .line 167
    goto/16 :L2
  :L11
  .line 166
    invoke-virtual { v0 }, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    move-result-object v0
    goto/16 :L2
.end method
