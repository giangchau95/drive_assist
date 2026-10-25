.class public final Lcom/geely/drivemem/sensors/OdoStats$DailySeries;
.super Ljava/lang/Object;
.source "OdoStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/sensors/OdoStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DailySeries"
.end annotation


# instance fields
.field public final km:[D

.field public final labels:[Ljava/lang/String;


# direct methods
.method constructor <init>([D[Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/drivemem/sensors/OdoStats$DailySeries;->km:[D

    iput-object p2, p0, Lcom/geely/drivemem/sensors/OdoStats$DailySeries;->labels:[Ljava/lang/String;

    return-void
.end method
