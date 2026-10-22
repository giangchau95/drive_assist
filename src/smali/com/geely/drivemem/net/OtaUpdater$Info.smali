.class public final Lcom/geely/drivemem/net/OtaUpdater$Info;
.super Ljava/lang/Object;
.source "OtaUpdater.java"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/geely/drivemem/net/OtaUpdater;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 25
  name = "Info"
.end annotation

.field public apkUrl:Ljava/lang/String;

.field public changelog:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 33
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method
