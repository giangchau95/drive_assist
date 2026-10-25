.class public final Lcom/geely/drivemem/state/ChargeSession$Summary;
.super Ljava/lang/Object;
.source "ChargeSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/state/ChargeSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Summary"
.end annotation


# static fields
.field private static final ROW_FMT:Ljava/text/SimpleDateFormat;


# instance fields
.field public final avgPowerW:D

.field public final cost:Ljava/lang/Double;

.field public final dismissed:Z

.field public final endWallMs:J

.field public final id:J

.field public final kwh:D

.field public final maxChargeV:D

.field public final odoStart:D

.field public final samples:I

.field public final socEnd:I

.field public final socStart:I

.field public final startWallMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 132
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMM  HH:mm"

    .line 133
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/geely/drivemem/state/ChargeSession$Summary;->ROW_FMT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(JJIIDDID)V
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move/from16 v15, p11

    move-wide/from16 v16, p12

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v1, -0x1

    const-wide/high16 v13, 0x7ff8000000000000L    # Double.NaN

    .line 95
    invoke-direct/range {v0 .. v19}, Lcom/geely/drivemem/state/ChargeSession$Summary;-><init>(JJJIIDDDIDLjava/lang/Double;Z)V

    return-void
.end method

.method public constructor <init>(JJJIIDDDIDLjava/lang/Double;Z)V
    .locals 3

    move-object v0, p0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 108
    iput-wide v1, v0, Lcom/geely/drivemem/state/ChargeSession$Summary;->id:J

    move-wide v1, p3

    .line 109
    iput-wide v1, v0, Lcom/geely/drivemem/state/ChargeSession$Summary;->startWallMs:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/geely/drivemem/state/ChargeSession$Summary;->endWallMs:J

    move v1, p7

    .line 110
    iput v1, v0, Lcom/geely/drivemem/state/ChargeSession$Summary;->socStart:I

    move v1, p8

    iput v1, v0, Lcom/geely/drivemem/state/ChargeSession$Summary;->socEnd:I

    move-wide v1, p9

    .line 111
    iput-wide v1, v0, Lcom/geely/drivemem/state/ChargeSession$Summary;->kwh:D

    move-wide v1, p11

    iput-wide v1, v0, Lcom/geely/drivemem/state/ChargeSession$Summary;->avgPowerW:D

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/geely/drivemem/state/ChargeSession$Summary;->maxChargeV:D

    move/from16 v1, p15

    .line 112
    iput v1, v0, Lcom/geely/drivemem/state/ChargeSession$Summary;->samples:I

    move-wide/from16 v1, p16

    .line 113
    iput-wide v1, v0, Lcom/geely/drivemem/state/ChargeSession$Summary;->odoStart:D

    move-object/from16 v1, p18

    .line 114
    iput-object v1, v0, Lcom/geely/drivemem/state/ChargeSession$Summary;->cost:Ljava/lang/Double;

    move/from16 v1, p19

    .line 115
    iput-boolean v1, v0, Lcom/geely/drivemem/state/ChargeSession$Summary;->dismissed:Z

    return-void
.end method

.method public constructor <init>(JJJIIDDIDLjava/lang/Double;Z)V
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move/from16 v15, p13

    move-wide/from16 v16, p14

    move-object/from16 v18, p16

    move/from16 v19, p17

    const-wide/high16 v13, 0x7ff8000000000000L    # Double.NaN

    .line 101
    invoke-direct/range {v0 .. v19}, Lcom/geely/drivemem/state/ChargeSession$Summary;-><init>(JJJIIDDDIDLjava/lang/Double;Z)V

    return-void
.end method


# virtual methods
.method public costLabel()Ljava/lang/String;
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/geely/drivemem/state/ChargeSession$Summary;->cost:Ljava/lang/Double;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 152
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/drivemem/state/ChargeSession$Summary;->cost:Ljava/lang/Double;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%,.0f \u20ab"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public costPerKwhLabel()Ljava/lang/String;
    .locals 5

    .line 156
    iget-object v0, p0, Lcom/geely/drivemem/state/ChargeSession$Summary;->cost:Ljava/lang/Double;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/geely/drivemem/state/ChargeSession$Summary;->kwh:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/drivemem/state/ChargeSession$Summary;->cost:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-wide v3, p0, Lcom/geely/drivemem/state/ChargeSession$Summary;->kwh:D

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%,.0f \u20ab/kWh"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public durationLabel()Ljava/lang/String;
    .locals 6

    .line 127
    invoke-virtual {p0}, Lcom/geely/drivemem/state/ChargeSession$Summary;->durationS()J

    move-result-wide v0

    const-wide/16 v2, 0xe10

    .line 128
    div-long v4, v0, v2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%02d"

    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public durationS()J
    .locals 4

    .line 122
    iget-wide v0, p0, Lcom/geely/drivemem/state/ChargeSession$Summary;->endWallMs:J

    iget-wide v2, p0, Lcom/geely/drivemem/state/ChargeSession$Summary;->startWallMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasChargeVoltage()Z
    .locals 4

    .line 120
    iget-wide v0, p0, Lcom/geely/drivemem/state/ChargeSession$Summary;->maxChargeV:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/geely/drivemem/state/ChargeSession$Summary;->maxChargeV:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDcfc()Z
    .locals 2

    .line 119
    iget-wide v0, p0, Lcom/geely/drivemem/state/ChargeSession$Summary;->maxChargeV:D

    invoke-static {v0, v1}, Lcom/geely/drivemem/state/ChargeSession;->isDcfc(D)Z

    move-result v0

    return v0
.end method

.method public subtitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 146
    sget v0, Lcom/geely/drivemem/R$string;->charge_row_subtitle:I

    iget v1, p0, Lcom/geely/drivemem/state/ChargeSession$Summary;->socStart:I

    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/geely/drivemem/state/ChargeSession$Summary;->socEnd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Lcom/geely/drivemem/state/ChargeSession$Summary;->kwh:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, p0, Lcom/geely/drivemem/state/ChargeSession$Summary;->avgPowerW:D

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 146
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public title()Ljava/lang/String;
    .locals 6

    .line 138
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/geely/drivemem/state/ChargeSession$Summary;->ROW_FMT:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/geely/drivemem/state/ChargeSession$Summary;->startWallMs:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u2192 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/geely/drivemem/state/ChargeSession$Summary;->endWallMs:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
