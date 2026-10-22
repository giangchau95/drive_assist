.class final Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$Curves;
.super Ljava/lang/Object;
.source "ChargeCurrentCurveDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Curves"
.end annotation


# instance fields
.field final batteryTemp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation
.end field

.field final outsideTemp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation
.end field

.field final power:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$Curves;->power:Ljava/util/List;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$Curves;->outsideTemp:Ljava/util/List;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$Curves;->batteryTemp:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/geely/drivemem/ui/ChargeCurrentCurveDialog$Curves;-><init>()V

    return-void
.end method
