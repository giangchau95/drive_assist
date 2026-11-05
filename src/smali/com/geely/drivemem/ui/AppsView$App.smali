.class final Lcom/geely/drivemem/ui/AppsView$App;
.super Ljava/lang/Object;
.source "AppsView.java"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/geely/drivemem/ui/AppsView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 26
  name = "App"
.end annotation

.field desc:Ljava/lang/String;

.field hasApk:Z

.field name:Ljava/lang/String;

.field pkg:Ljava/lang/String;

.field size:J

.field versionCode:J

.field versionName:Ljava/lang/String;

.method private constructor <init>()V
  .registers 1
  .prologue
  .line 46
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method synthetic constructor <init>(Lcom/geely/drivemem/ui/AppsView$1;)V
  .registers 2
  .prologue
  .line 46
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/AppsView$App;-><init>()V
    return-void
.end method
