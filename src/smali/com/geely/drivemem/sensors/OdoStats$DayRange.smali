.class public final Lcom/geely/drivemem/sensors/OdoStats$DayRange;
.super Ljava/lang/Object;
.source "OdoStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/sensors/OdoStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DayRange"
.end annotation


# instance fields
.field public final date:Ljava/lang/String;

.field public final firstOdoKm:D

.field public final lastOdoKm:D


# direct methods
.method public constructor <init>(Ljava/lang/String;DD)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/geely/drivemem/sensors/OdoStats$DayRange;->date:Ljava/lang/String;

    iput-wide p2, p0, Lcom/geely/drivemem/sensors/OdoStats$DayRange;->firstOdoKm:D

    iput-wide p4, p0, Lcom/geely/drivemem/sensors/OdoStats$DayRange;->lastOdoKm:D

    return-void
.end method
