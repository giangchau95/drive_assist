.class public final Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;
.super Ljava/lang/Object;
.source "ChargeSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/state/ChargeSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionSnapshot"
.end annotation


# instance fields
.field public final avgPowerW:D

.field public final cost:Ljava/lang/Double;

.field public final endWallMs:J

.field public final kwh:D

.field public final maxChargeV:D

.field public final odoStart:D

.field public final sampleCount:I

.field public final sessionRowId:J

.field public final socEnd:I

.field public final socStart:I

.field public final startSampleId:J

.field public final startWallMs:J


# direct methods
.method public constructor <init>(JJJJIIDDDIDLjava/lang/Double;)V
    .locals 3

    move-object v0, p0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 183
    iput-wide v1, v0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->sessionRowId:J

    move-wide v1, p3

    .line 184
    iput-wide v1, v0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->startWallMs:J

    move-wide v1, p5

    .line 185
    iput-wide v1, v0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->endWallMs:J

    move-wide v1, p7

    .line 186
    iput-wide v1, v0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->startSampleId:J

    move v1, p9

    .line 187
    iput v1, v0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->socStart:I

    move v1, p10

    .line 188
    iput v1, v0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->socEnd:I

    move-wide v1, p11

    .line 189
    iput-wide v1, v0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->kwh:D

    move-wide/from16 v1, p13

    .line 190
    iput-wide v1, v0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->avgPowerW:D

    move-wide/from16 v1, p15

    .line 191
    iput-wide v1, v0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->maxChargeV:D

    move/from16 v1, p17

    .line 192
    iput v1, v0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->sampleCount:I

    move-wide/from16 v1, p18

    .line 193
    iput-wide v1, v0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->odoStart:D

    move-object/from16 v1, p20

    .line 194
    iput-object v1, v0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->cost:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public toSummary(J)Lcom/geely/drivemem/state/ChargeSession$Summary;
    .locals 24

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    .line 198
    new-instance v21, Lcom/geely/drivemem/state/ChargeSession$Summary;

    move-object/from16 v1, v21

    iget-wide v4, v0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->startWallMs:J

    iget-wide v6, v0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->endWallMs:J

    iget v8, v0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->socStart:I

    iget v9, v0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->socEnd:I

    iget-wide v10, v0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->kwh:D

    iget-wide v12, v0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->avgPowerW:D

    iget-wide v14, v0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->maxChargeV:D

    move-object/from16 p1, v1

    iget v1, v0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->sampleCount:I

    move/from16 v16, v1

    move-wide/from16 v22, v2

    iget-wide v1, v0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->odoStart:D

    move-wide/from16 v17, v1

    iget-object v1, v0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->cost:Ljava/lang/Double;

    move-object/from16 v19, v1

    const/16 v20, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v2, v22

    invoke-direct/range {v1 .. v20}, Lcom/geely/drivemem/state/ChargeSession$Summary;-><init>(JJJIIDDDIDLjava/lang/Double;Z)V

    return-object v21
.end method
