.class public final Lcom/geely/drivemem/sensors/OdoStats$Reading;
.super Ljava/lang/Object;
.source "OdoStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/sensors/OdoStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reading"
.end annotation


# instance fields
.field public final date:Ljava/lang/String;

.field public final odoKm:D


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/drivemem/sensors/OdoStats$Reading;->date:Ljava/lang/String;

    iput-wide p2, p0, Lcom/geely/drivemem/sensors/OdoStats$Reading;->odoKm:D

    return-void
.end method
