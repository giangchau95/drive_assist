.class final Lcom/geely/drivemem/ui/MonthlySummary$Data;
.super Ljava/lang/Object;
.source "MonthlySummary.java"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/geely/drivemem/ui/MonthlySummary;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 26
  name = "Data"
.end annotation

.field charges:I

.field cost:D

.field fullCharges:I

.field hasData:Z

.field hasPrev:Z

.field key:Ljava/lang/String;

.field km:D

.field kwhCharged:D

.field kwhUsed:D

.field name:Ljava/lang/String;

.field prevCost:D

.field prevKm:D

.method private constructor <init>()V
  .registers 1
  .prologue
  .line 33
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method synthetic constructor <init>(Lcom/geely/drivemem/ui/MonthlySummary$1;)V
  .registers 2
  .prologue
  .line 33
    invoke-direct { p0 }, Lcom/geely/drivemem/ui/MonthlySummary$Data;-><init>()V
    return-void
.end method
