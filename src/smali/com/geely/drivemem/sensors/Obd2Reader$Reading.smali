.class public final Lcom/geely/drivemem/sensors/Obd2Reader$Reading;
.super Ljava/lang/Object;
.source "Obd2Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/sensors/Obd2Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reading"
.end annotation


# instance fields
.field public final atMs:J

.field public final battTempC:Ljava/lang/Double;

.field public final current:Ljava/lang/Double;

.field public final powerKw:Ljava/lang/Double;

.field public final soc:Ljava/lang/Double;

.field public final speedKmh:Ljava/lang/Integer;

.field public final voltage:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;J)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/geely/drivemem/sensors/Obd2Reader$Reading;->soc:Ljava/lang/Double;

    .line 121
    iput-object p2, p0, Lcom/geely/drivemem/sensors/Obd2Reader$Reading;->voltage:Ljava/lang/Double;

    .line 122
    iput-object p3, p0, Lcom/geely/drivemem/sensors/Obd2Reader$Reading;->current:Ljava/lang/Double;

    .line 123
    iput-object p4, p0, Lcom/geely/drivemem/sensors/Obd2Reader$Reading;->battTempC:Ljava/lang/Double;

    .line 124
    iput-object p5, p0, Lcom/geely/drivemem/sensors/Obd2Reader$Reading;->powerKw:Ljava/lang/Double;

    .line 125
    iput-object p6, p0, Lcom/geely/drivemem/sensors/Obd2Reader$Reading;->speedKmh:Ljava/lang/Integer;

    .line 126
    iput-wide p7, p0, Lcom/geely/drivemem/sensors/Obd2Reader$Reading;->atMs:J

    return-void
.end method
