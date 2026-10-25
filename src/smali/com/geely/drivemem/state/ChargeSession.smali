.class public final Lcom/geely/drivemem/state/ChargeSession;
.super Ljava/lang/Object;
.source "ChargeSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/drivemem/state/ChargeSession$Listener;,
        Lcom/geely/drivemem/state/ChargeSession$ProgressListener;,
        Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;,
        Lcom/geely/drivemem/state/ChargeSession$Summary;
    }
.end annotation


# static fields
.field private static final CAPACITY_WH:D = 39600.0

.field public static final CHARGE_GRACE_PERIOD_MS:J = 0x2bf20L

.field private static final FMT:Ljava/text/SimpleDateFormat;

.field public static final FULL_TAIL_MS:J = 0x927c0L

.field public static final MIN_CHARGE_DURATION_MS:J = 0xea60L

.field public static final MIN_CHARGE_KWH:D = 0.05

.field static final NAME:Ljava/lang/String; = "charge.log"

.field private static final PREFS:Ljava/lang/String; = "drivemem"

.field private static final PREF_CHARGE_OPEN_COST:Ljava/lang/String; = "charge_open_cost"

.field private static final PREF_CHARGE_OPEN_MAX_V:Ljava/lang/String; = "charge_open_max_v"

.field private static final PREF_CHARGE_OPEN_ODO_START:Ljava/lang/String; = "charge_open_odo_start"

.field private static final PREF_CHARGE_OPEN_ROW_ID:Ljava/lang/String; = "charge_open_row_id"

.field private static final PREF_CHARGE_OPEN_SAMPLE_COUNT:Ljava/lang/String; = "charge_open_sample_count"

.field private static final PREF_CHARGE_OPEN_SOC_END:Ljava/lang/String; = "charge_open_soc_end"

.field private static final PREF_CHARGE_OPEN_START_MS:Ljava/lang/String; = "charge_open_start_ms"

.field private static final PREF_CHARGE_OPEN_START_SAMPLE_ID:Ljava/lang/String; = "charge_open_start_sample_id"

.field private static final PREF_CHARGE_OPEN_START_SOC:Ljava/lang/String; = "charge_open_start_soc"

.field private static final PREF_CHARGE_OPEN_WH_ACCUM:Ljava/lang/String; = "charge_open_wh_accum"

.field static final TAG:Ljava/lang/String; = "DriveMem"

.field private static chargeGraceRunnable:Ljava/lang/Runnable;

.field private static currentCost:Ljava/lang/Double;

.field private static currentSessionRowId:J

.field private static fullSinceMonoMs:J

.field private static lastSampleMonoMs:J

.field private static volatile listener:Lcom/geely/drivemem/state/ChargeSession$Listener;

.field private static maxChargeV:D

.field private static odoStart:D

.field private static pauseWallMs:J

.field private static volatile progressListener:Lcom/geely/drivemem/state/ChargeSession$ProgressListener;

.field private static sampleCount:I

.field private static sessionActive:Z

.field private static socEnd:I

.field private static socStart:I

.field private static startSampleId:J

.field private static startWallMs:J

.field private static volatile subscribed:Z

.field private static wasCharging:Z

.field private static whAccum:D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/geely/drivemem/state/ChargeSession;->FMT:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 44
    sput-boolean v0, Lcom/geely/drivemem/state/ChargeSession;->subscribed:Z

    const-wide/16 v1, 0x0

    .line 224
    sput-wide v1, Lcom/geely/drivemem/state/ChargeSession;->startWallMs:J

    sput-wide v1, Lcom/geely/drivemem/state/ChargeSession;->pauseWallMs:J

    sput-wide v1, Lcom/geely/drivemem/state/ChargeSession;->lastSampleMonoMs:J

    const-wide/16 v3, -0x1

    sput-wide v3, Lcom/geely/drivemem/state/ChargeSession;->startSampleId:J

    .line 225
    sput-wide v1, Lcom/geely/drivemem/state/ChargeSession;->fullSinceMonoMs:J

    const/4 v1, -0x1

    .line 226
    sput v1, Lcom/geely/drivemem/state/ChargeSession;->socStart:I

    sput v1, Lcom/geely/drivemem/state/ChargeSession;->socEnd:I

    const-wide/16 v1, 0x0

    .line 227
    sput-wide v1, Lcom/geely/drivemem/state/ChargeSession;->whAccum:D

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 228
    sput-wide v1, Lcom/geely/drivemem/state/ChargeSession;->maxChargeV:D

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 229
    sput-wide v1, Lcom/geely/drivemem/state/ChargeSession;->odoStart:D

    .line 230
    sput v0, Lcom/geely/drivemem/state/ChargeSession;->sampleCount:I

    .line 231
    sput-boolean v0, Lcom/geely/drivemem/state/ChargeSession;->wasCharging:Z

    .line 232
    sput-boolean v0, Lcom/geely/drivemem/state/ChargeSession;->sessionActive:Z

    .line 233
    sput-wide v3, Lcom/geely/drivemem/state/ChargeSession;->currentSessionRowId:J

    const/4 v0, 0x0

    .line 234
    sput-object v0, Lcom/geely/drivemem/state/ChargeSession;->currentCost:Ljava/lang/Double;

    .line 235
    sput-object v0, Lcom/geely/drivemem/state/ChargeSession;->chargeGraceRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activeRowId()J
    .locals 2

    .line 249
    sget-wide v0, Lcom/geely/drivemem/state/ChargeSession;->currentSessionRowId:J

    return-wide v0
.end method

.method private static asFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 1

    .line 577
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Float;

    return-object p0

    .line 578
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static asInt(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    .line 571
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    .line 572
    :cond_0
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static captureSnapshot(J)Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;
    .locals 23

    .line 204
    sget-wide v0, Lcom/geely/drivemem/state/ChargeSession;->startWallMs:J

    sub-long v0, p0, v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 205
    sget-wide v2, Lcom/geely/drivemem/state/ChargeSession;->whAccum:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v13, v2, v4

    long-to-double v0, v0

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v4

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-lez v6, :cond_0

    div-double/2addr v2, v0

    move-wide v15, v2

    goto :goto_0

    :cond_0
    move-wide v15, v4

    .line 208
    :goto_0
    new-instance v0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;

    move-object v2, v0

    sget-wide v3, Lcom/geely/drivemem/state/ChargeSession;->currentSessionRowId:J

    sget-wide v5, Lcom/geely/drivemem/state/ChargeSession;->startWallMs:J

    sget-wide v9, Lcom/geely/drivemem/state/ChargeSession;->startSampleId:J

    sget v11, Lcom/geely/drivemem/state/ChargeSession;->socStart:I

    sget v12, Lcom/geely/drivemem/state/ChargeSession;->socEnd:I

    sget-wide v17, Lcom/geely/drivemem/state/ChargeSession;->maxChargeV:D

    sget v19, Lcom/geely/drivemem/state/ChargeSession;->sampleCount:I

    sget-wide v20, Lcom/geely/drivemem/state/ChargeSession;->odoStart:D

    sget-object v22, Lcom/geely/drivemem/state/ChargeSession;->currentCost:Ljava/lang/Double;

    move-wide/from16 v7, p0

    invoke-direct/range {v2 .. v22}, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;-><init>(JJJJIIDDDIDLjava/lang/Double;)V

    return-object v0
.end method

.method public static clearOpenSession(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 896
    :cond_0
    const-string v0, "drivemem"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p0}, Lcom/geely/drivemem/state/ChargeSession;->clearOpenSession(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static clearOpenSession(Landroid/content/SharedPreferences;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 901
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "charge_open_start_ms"

    .line 902
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "charge_open_start_soc"

    .line 903
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "charge_open_soc_end"

    .line 904
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "charge_open_start_sample_id"

    .line 905
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "charge_open_wh_accum"

    .line 906
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "charge_open_row_id"

    .line 907
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "charge_open_odo_start"

    .line 908
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "charge_open_max_v"

    .line 909
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "charge_open_sample_count"

    .line 910
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "charge_open_cost"

    .line 911
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 912
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static commitOrUpdateSession(Landroid/content/Context;J)V
    .locals 4

    .line 370
    invoke-static {p1, p2}, Lcom/geely/drivemem/state/ChargeSession;->captureSnapshot(J)Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;

    move-result-object p1

    if-nez p0, :cond_3

    .line 372
    iget-wide v0, p1, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->sessionRowId:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    iget-wide v0, p1, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->sessionRowId:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    .line 373
    :goto_0
    sput-wide v0, Lcom/geely/drivemem/state/ChargeSession;->currentSessionRowId:J

    .line 374
    invoke-virtual {p1, v0, v1}, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->toSummary(J)Lcom/geely/drivemem/state/ChargeSession$Summary;

    move-result-object p0

    .line 375
    sget-object p1, Lcom/geely/drivemem/state/ChargeSession;->listener:Lcom/geely/drivemem/state/ChargeSession$Listener;

    if-eqz p1, :cond_1

    .line 376
    invoke-interface {p1, p0}, Lcom/geely/drivemem/state/ChargeSession$Listener;->onSession(Lcom/geely/drivemem/state/ChargeSession$Summary;)V

    .line 377
    :cond_1
    sget-object p1, Lcom/geely/drivemem/state/ChargeSession;->progressListener:Lcom/geely/drivemem/state/ChargeSession$ProgressListener;

    if-eqz p1, :cond_2

    .line 378
    invoke-interface {p1, p0}, Lcom/geely/drivemem/state/ChargeSession$ProgressListener;->onCompleted(Lcom/geely/drivemem/state/ChargeSession$Summary;)V

    .line 379
    :cond_2
    const-string p1, "charge.completed"

    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/geely/drivemem/car/EntityBus;->publish(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V

    return-void

    .line 382
    :cond_3
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/geely/drivemem/car/CarDb;->latestSampleId()J

    move-result-wide v0

    .line 383
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p2

    new-instance v2, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0, v1, p0}, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda0;-><init>(Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;JLandroid/content/Context;)V

    invoke-virtual {p2, v2}, Lcom/geely/drivemem/car/CarDb;->write(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static currentKwh()D
    .locals 4

    .line 254
    sget-wide v0, Lcom/geely/drivemem/state/ChargeSession;->whAccum:D

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static currentPauseWallMs()J
    .locals 2

    .line 253
    sget-wide v0, Lcom/geely/drivemem/state/ChargeSession;->pauseWallMs:J

    return-wide v0
.end method

.method public static currentSocEnd()I
    .locals 1

    .line 251
    sget v0, Lcom/geely/drivemem/state/ChargeSession;->socEnd:I

    return v0
.end method

.method public static currentSocStart()I
    .locals 1

    .line 250
    sget v0, Lcom/geely/drivemem/state/ChargeSession;->socStart:I

    return v0
.end method

.method public static currentStartWallMs()J
    .locals 2

    .line 252
    sget-wide v0, Lcom/geely/drivemem/state/ChargeSession;->startWallMs:J

    return-wide v0
.end method

.method public static debugState()Ljava/lang/String;
    .locals 4

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sessionActive="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/geely/drivemem/state/ChargeSession;->sessionActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " wasCharging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/geely/drivemem/state/ChargeSession;->wasCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inGrace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/geely/drivemem/state/ChargeSession;->chargeGraceRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " startWallMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/geely/drivemem/state/ChargeSession;->startWallMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " socStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/geely/drivemem/state/ChargeSession;->socStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " socEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/geely/drivemem/state/ChargeSession;->socEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " whAccum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-wide v2, Lcom/geely/drivemem/state/ChargeSession;->whAccum:D

    .line 278
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.3f"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " samples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/geely/drivemem/state/ChargeSession;->sampleCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dismissSession(Landroid/content/Context;J)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 705
    :cond_0
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object v0

    new-instance v1, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v0, v1}, Lcom/geely/drivemem/car/CarDb;->write(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized ensureSubscribed(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/geely/drivemem/state/ChargeSession;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-boolean v1, Lcom/geely/drivemem/state/ChargeSession;->subscribed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 49
    :try_start_1
    sput-boolean v1, Lcom/geely/drivemem/state/ChargeSession;->subscribed:Z

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 51
    invoke-static {p0}, Lcom/geely/drivemem/state/ChargeSession;->recoverOpenSession(Landroid/content/Context;)V

    .line 52
    const-string v1, "car.is_charging"

    new-instance v2, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/geely/drivemem/car/EntityBus;->subscribe(Ljava/lang/String;Lcom/geely/drivemem/car/EntityBus$Listener;)V

    .line 57
    const-string v1, "telemetry.tick"

    new-instance v2, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/geely/drivemem/car/EntityBus;->subscribe(Ljava/lang/String;Lcom/geely/drivemem/car/EntityBus$Listener;)V

    .line 64
    invoke-static {}, Lcom/geely/drivemem/state/CarState;->ensureSubscribed()V

    .line 65
    new-instance v1, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/geely/drivemem/state/CarState;->addListener(Lcom/geely/drivemem/state/CarState$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static estimateRemainingMs(IJ)Ljava/lang/Long;
    .locals 9

    const-wide/16 v0, 0x0

    const/16 v2, 0x64

    if-lt p0, v2, :cond_0

    .line 263
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 264
    :cond_0
    sget-wide v3, Lcom/geely/drivemem/state/ChargeSession;->whAccum:D

    const-wide/16 v5, 0x0

    cmpg-double v7, v3, v5

    const/4 v8, 0x0

    if-lez v7, :cond_3

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    long-to-double p1, p1

    const-wide v0, 0x414b774000000000L    # 3600000.0

    div-double/2addr p1, v0

    div-double/2addr v3, p1

    cmpg-double p1, v3, v5

    if-gtz p1, :cond_2

    return-object v8

    :cond_2
    sub-int/2addr v2, p0

    int-to-double p0, v2

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr p0, v5

    const-wide v5, 0x40e3560000000000L    # 39600.0

    mul-double/2addr p0, v5

    div-double/2addr p0, v3

    mul-double/2addr p0, v0

    double-to-long p0, p0

    .line 268
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v8
.end method

.method public static file(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    .line 585
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 586
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 587
    :cond_0
    new-instance p0, Ljava/io/File;

    const-string v1, "charge.log"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public static finalizeGracePeriod(Landroid/content/Context;)V
    .locals 12

    .line 439
    invoke-static {}, Lcom/geely/drivemem/car/CarActor;->assertCarThread()V

    .line 440
    sget-object v0, Lcom/geely/drivemem/state/ChargeSession;->chargeGraceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 441
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object v0

    sget-object v1, Lcom/geely/drivemem/state/ChargeSession;->chargeGraceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/geely/drivemem/car/CarActor;->cancelOnCarThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 442
    sput-object v0, Lcom/geely/drivemem/state/ChargeSession;->chargeGraceRunnable:Ljava/lang/Runnable;

    .line 445
    :cond_1
    sget-boolean v0, Lcom/geely/drivemem/state/ChargeSession;->sessionActive:Z

    if-nez v0, :cond_2

    return-void

    .line 447
    :cond_2
    sget-wide v0, Lcom/geely/drivemem/state/ChargeSession;->pauseWallMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 448
    :goto_0
    sget-wide v4, Lcom/geely/drivemem/state/ChargeSession;->startWallMs:J

    sub-long v4, v0, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 449
    sget-wide v6, Lcom/geely/drivemem/state/ChargeSession;->whAccum:D

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    .line 451
    invoke-static {v6, v7, v4, v5}, Lcom/geely/drivemem/state/ChargeSession;->isQualified(DJ)Z

    move-result v10

    const-string v11, "DriveMem"

    if-eqz v10, :cond_5

    .line 452
    sget-wide v4, Lcom/geely/drivemem/state/ChargeSession;->currentSessionRowId:J

    cmp-long v2, v4, v2

    if-gtz v2, :cond_4

    .line 453
    invoke-static {p0, v0, v1}, Lcom/geely/drivemem/state/ChargeSession;->commitOrUpdateSession(Landroid/content/Context;J)V

    .line 455
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chargesession: grace period expired, session finalized id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v1, Lcom/geely/drivemem/state/ChargeSession;->currentSessionRowId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 457
    :cond_5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 459
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    long-to-double v2, v4

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 457
    const-string v2, "Charge discarded (below 0.05 kWh / 60s threshold): kwh=%.3f, duration=%.1fs"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    sget-object v0, Lcom/geely/drivemem/state/ChargeSession;->progressListener:Lcom/geely/drivemem/state/ChargeSession$ProgressListener;

    if-eqz v0, :cond_6

    .line 461
    invoke-interface {v0}, Lcom/geely/drivemem/state/ChargeSession$ProgressListener;->onIdle()V

    :cond_6
    :goto_1
    if-eqz p0, :cond_7

    .line 464
    invoke-static {p0}, Lcom/geely/drivemem/state/ChargeSession;->clearOpenSession(Landroid/content/Context;)V

    .line 465
    :cond_7
    invoke-static {}, Lcom/geely/drivemem/state/ChargeSession;->resetSessionState()V

    return-void
.end method

.method public static finalizeSession(Landroid/content/Context;)Z
    .locals 0

    .line 469
    invoke-static {}, Lcom/geely/drivemem/car/CarActor;->assertCarThread()V

    .line 470
    invoke-static {p0}, Lcom/geely/drivemem/state/ChargeSession;->finalizeGracePeriod(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static finalizeSession(Landroid/content/Context;J)Z
    .locals 0

    .line 475
    invoke-static {}, Lcom/geely/drivemem/car/CarActor;->assertCarThread()V

    .line 476
    invoke-static {p0}, Lcom/geely/drivemem/state/ChargeSession;->finalizeGracePeriod(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static frozenFullTailWh([[Ljava/lang/Object;)D
    .locals 12

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    move-object v0, p0

    .line 806
    invoke-static/range {v0 .. v7}, Lcom/geely/drivemem/state/ChargeSession;->replayTelemetry([[Ljava/lang/Object;DIDIZ)[D

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const/4 v10, -0x1

    const/4 v11, 0x1

    const-wide/16 v5, 0x0

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    move-object v4, p0

    .line 807
    invoke-static/range {v4 .. v11}, Lcom/geely/drivemem/state/ChargeSession;->replayTelemetry([[Ljava/lang/Object;DIDIZ)[D

    move-result-object p0

    aget-wide v0, p0, v1

    sub-double/2addr v2, v0

    return-wide v2
.end method

.method public static getLatestUndismissed(Landroid/content/Context;)Lcom/geely/drivemem/state/ChargeSession$Summary;
    .locals 25

    .line 656
    invoke-static/range {p0 .. p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT id, start_ms, end_ms, soc_start, soc_end, kwh, avg_power_w, max_charge_v, samples, odo_start_km, cost, dismissed FROM charge_session WHERE dismissed = 0 ORDER BY end_ms DESC LIMIT 1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 660
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    .line 661
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    :goto_0
    move-wide/from16 v18, v3

    const/16 v0, 0xa

    .line 662
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move-object/from16 v23, v2

    goto :goto_2

    :cond_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_1

    :goto_2
    const/16 v0, 0xb

    .line 663
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    move/from16 v24, v2

    goto :goto_3

    :cond_2
    move/from16 v24, v3

    .line 664
    :goto_3
    new-instance v0, Lcom/geely/drivemem/state/ChargeSession$Summary;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v2, 0x5

    .line 665
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v21

    move-object v5, v0

    invoke-direct/range {v5 .. v24}, Lcom/geely/drivemem/state/ChargeSession$Summary;-><init>(JJJIIDDDIDLjava/lang/Double;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isChargeGraceScheduled()Z
    .locals 1

    .line 248
    sget-object v0, Lcom/geely/drivemem/state/ChargeSession;->chargeGraceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCharging()Z
    .locals 1

    .line 245
    sget-boolean v0, Lcom/geely/drivemem/state/ChargeSession;->wasCharging:Z

    return v0
.end method

.method public static isCurrentFlowing()Z
    .locals 1

    .line 247
    sget-boolean v0, Lcom/geely/drivemem/state/ChargeSession;->wasCharging:Z

    return v0
.end method

.method public static isDcfc(D)Z
    .locals 2

    .line 241
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x406f400000000000L    # 250.0

    cmpl-double p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isQualified(DJ)Z
    .locals 2

    const-wide v0, 0x3fa999999999999aL    # 0.05

    cmpl-double p0, p0, v0

    if-gez p0, :cond_1

    const-wide/32 p0, 0xea60

    cmp-long p0, p2, p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSessionActive()Z
    .locals 1

    .line 246
    sget-boolean v0, Lcom/geely/drivemem/state/ChargeSession;->sessionActive:Z

    return v0
.end method

.method static synthetic lambda$commitOrUpdateSession$4(JLandroid/content/Context;Lcom/geely/drivemem/state/ChargeSession$Summary;)V
    .locals 4

    .line 417
    sget-wide v0, Lcom/geely/drivemem/state/ChargeSession;->currentSessionRowId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    sget-boolean v0, Lcom/geely/drivemem/state/ChargeSession;->sessionActive:Z

    if-eqz v0, :cond_0

    .line 418
    sput-wide p0, Lcom/geely/drivemem/state/ChargeSession;->currentSessionRowId:J

    .line 419
    invoke-static {p2}, Lcom/geely/drivemem/state/ChargeSession;->persistOpenSession(Landroid/content/Context;)V

    .line 421
    :cond_0
    sget-object p0, Lcom/geely/drivemem/state/ChargeSession;->listener:Lcom/geely/drivemem/state/ChargeSession$Listener;

    if-eqz p0, :cond_1

    .line 422
    invoke-interface {p0, p3}, Lcom/geely/drivemem/state/ChargeSession$Listener;->onSession(Lcom/geely/drivemem/state/ChargeSession$Summary;)V

    .line 423
    :cond_1
    sget-object p0, Lcom/geely/drivemem/state/ChargeSession;->progressListener:Lcom/geely/drivemem/state/ChargeSession$ProgressListener;

    if-eqz p0, :cond_2

    .line 424
    invoke-interface {p0, p3}, Lcom/geely/drivemem/state/ChargeSession$ProgressListener;->onCompleted(Lcom/geely/drivemem/state/ChargeSession$Summary;)V

    .line 425
    :cond_2
    const-string p0, "charge.completed"

    invoke-static {p3}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/geely/drivemem/car/EntityBus;->publish(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V

    return-void
.end method

.method static synthetic lambda$commitOrUpdateSession$5(Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;JLandroid/content/Context;)V
    .locals 9

    .line 385
    const-string v0, "kwh"

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 386
    const-string v2, "start_ms"

    iget-wide v3, p0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->startWallMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 387
    const-string v2, "end_ms"

    iget-wide v3, p0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->endWallMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 388
    const-string v2, "start_sample_id"

    iget-wide v3, p0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->startSampleId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 389
    const-string v2, "end_sample_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 390
    const-string p1, "soc_start"

    iget p2, p0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->socStart:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 391
    const-string p1, "soc_end"

    iget p2, p0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->socEnd:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    iget-wide p1, p0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->kwh:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 393
    const-string p1, "avg_power_w"

    iget-wide v2, p0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->avgPowerW:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 394
    iget-wide p1, p0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->maxChargeV:D

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "max_charge_v"

    iget-wide v2, p0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->maxChargeV:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 395
    :cond_0
    const-string p1, "samples"

    iget p2, p0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->sampleCount:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 396
    iget-wide p1, p0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->odoStart:D

    const-wide/16 v2, 0x0

    cmpl-double p1, p1, v2

    if-ltz p1, :cond_1

    const-string p1, "odo_start_km"

    iget-wide v2, p0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->odoStart:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 397
    :cond_1
    const-string p1, "dismissed"

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 398
    iget-object p1, p0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->cost:Ljava/lang/Double;

    if-eqz p1, :cond_2

    const-string p1, "cost"

    iget-object v2, p0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->cost:Ljava/lang/Double;

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 400
    :cond_2
    iget-wide v2, p0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->sessionRowId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    const/4 v4, 0x0

    .line 401
    const-string v5, "charge_session"

    if-gtz p1, :cond_3

    .line 402
    :try_start_1
    invoke-static {p3}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1, v5, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0

    .line 404
    :cond_3
    invoke-static {p3}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v6, "id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, p2

    invoke-virtual {p1, v5, v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 407
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->toSummary(J)Lcom/geely/drivemem/state/ChargeSession$Summary;

    move-result-object p1

    .line 408
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 409
    const-string v1, "session_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "occurred_ms"

    iget-wide v5, p0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->endWallMs:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 410
    const-string v1, "soc"

    iget v5, p0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->socEnd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v5, p0, Lcom/geely/drivemem/state/ChargeSession$SessionSnapshot;->kwh:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 411
    invoke-static {p3}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "charge_stop_event"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v4, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 415
    invoke-static {p3}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object p0

    .line 416
    new-instance p2, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda10;

    invoke-direct {p2, v2, v3, p3, p1}, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda10;-><init>(JLandroid/content/Context;Lcom/geely/drivemem/state/ChargeSession$Summary;)V

    if-eqz p0, :cond_4

    .line 428
    invoke-virtual {p0, p2}, Lcom/geely/drivemem/car/CarActor;->runOnCarThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 430
    :cond_4
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 433
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "chargesession commitOrUpdateSession: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DriveMem"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method static synthetic lambda$dismissSession$8(J)V
    .locals 0

    .line 712
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0

    const-string p1, "charge.dismissed"

    invoke-static {p1, p0}, Lcom/geely/drivemem/car/EntityBus;->publish(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V

    return-void
.end method

.method static synthetic lambda$dismissSession$9(Landroid/content/Context;J)V
    .locals 7

    .line 707
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 708
    const-string v1, "dismissed"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 709
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "charge_session"

    const-string v4, "id = ?"

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 710
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 712
    new-instance v0, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda6;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/geely/drivemem/car/CarActor;->runOnCarThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 714
    :cond_0
    const-string p0, "charge.dismissed"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/geely/drivemem/car/EntityBus;->publish(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 717
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "chargesession dismissSession: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DriveMem"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$ensureSubscribed$0(Landroid/content/Context;Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V
    .locals 1

    .line 53
    iget-object p1, p2, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v0, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne p1, v0, :cond_2

    iget-object p1, p2, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    instance-of p1, p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    iget-object p1, p2, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 55
    :goto_0
    invoke-static {p0, p2}, Lcom/geely/drivemem/state/ChargeSession;->onChargingEdge(Landroid/content/Context;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic lambda$ensureSubscribed$1(Landroid/content/Context;Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V
    .locals 1

    .line 58
    iget-object p1, p2, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v0, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne p1, v0, :cond_0

    .line 60
    iget-object p1, p2, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    .line 61
    invoke-static {p0, p1}, Lcom/geely/drivemem/state/ChargeSession;->onTelemetryTick(Landroid/content/Context;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$ensureSubscribed$2(Landroid/content/Context;Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 66
    invoke-static {p0}, Lcom/geely/drivemem/state/ChargeSession;->onParkExit(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onChargingEdge$3(Landroid/content/Context;)V
    .locals 0

    .line 360
    invoke-static {p0}, Lcom/geely/drivemem/state/ChargeSession;->finalizeGracePeriod(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$recoverFromPreferences$10(Landroid/content/Context;)V
    .locals 0

    .line 776
    invoke-static {p0}, Lcom/geely/drivemem/state/ChargeSession;->finalizeGracePeriod(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$updateCost$6(J)V
    .locals 0

    .line 692
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p0

    const-string p1, "charge.cost_updated"

    invoke-static {p1, p0}, Lcom/geely/drivemem/car/EntityBus;->publish(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V

    return-void
.end method

.method static synthetic lambda$updateCost$7(DLandroid/content/Context;J)V
    .locals 5

    .line 680
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 681
    const-string v1, "cost"

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 682
    invoke-static {p2}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string p1, "charge_session"

    const-string v1, "id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 683
    invoke-static {p2}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string p1, "UPDATE daily_stat SET charge_cost = (  SELECT COALESCE(SUM(cost), 0) FROM charge_session   WHERE date(charge_session.start_ms/1000,\'unixepoch\',\'localtime\') = daily_stat.date) WHERE date IN (  SELECT date(start_ms/1000,\'unixepoch\',\'localtime\') FROM charge_session WHERE id = ?)"

    .line 689
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 683
    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 690
    invoke-static {p2}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 692
    new-instance p1, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3, p4}, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda1;-><init>(J)V

    invoke-virtual {p0, p1}, Lcom/geely/drivemem/car/CarActor;->runOnCarThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 694
    :cond_0
    const-string p0, "charge.cost_updated"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/drivemem/car/CarActor$Reading;->ok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/geely/drivemem/car/EntityBus;->publish(Ljava/lang/String;Lcom/geely/drivemem/car/CarActor$Reading;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 697
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "chargesession updateCost: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DriveMem"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static onChargingEdge(Landroid/content/Context;Z)V
    .locals 6

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/geely/drivemem/state/ChargeSession;->onChargingEdge(Landroid/content/Context;ZJJ)V

    return-void
.end method

.method public static onChargingEdge(Landroid/content/Context;ZJJ)V
    .locals 11

    move-object v0, p0

    move v1, p1

    .line 306
    invoke-static {}, Lcom/geely/drivemem/car/CarActor;->assertCarThread()V

    .line 307
    sget-boolean v2, Lcom/geely/drivemem/state/ChargeSession;->wasCharging:Z

    if-ne v1, v2, :cond_0

    return-void

    .line 308
    :cond_0
    const-string v2, "DriveMem"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_a

    .line 310
    sget-object v1, Lcom/geely/drivemem/state/ChargeSession;->chargeGraceRunnable:Ljava/lang/Runnable;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v1, :cond_7

    sget-boolean v8, Lcom/geely/drivemem/state/ChargeSession;->sessionActive:Z

    if-eqz v8, :cond_1

    sget-wide v8, Lcom/geely/drivemem/state/ChargeSession;->currentSessionRowId:J

    cmp-long v8, v8, v4

    if-lez v8, :cond_1

    goto/16 :goto_4

    .line 324
    :cond_1
    sput-wide p2, Lcom/geely/drivemem/state/ChargeSession;->startWallMs:J

    .line 325
    sput-wide v4, Lcom/geely/drivemem/state/ChargeSession;->pauseWallMs:J

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_2

    .line 326
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object v8

    invoke-virtual {v8}, Lcom/geely/drivemem/car/CarDb;->latestSampleId()J

    move-result-wide v8

    goto :goto_0

    :cond_2
    move-wide v8, v1

    :goto_0
    sput-wide v8, Lcom/geely/drivemem/state/ChargeSession;->startSampleId:J

    .line 327
    sput-wide p4, Lcom/geely/drivemem/state/ChargeSession;->lastSampleMonoMs:J

    if-eqz v0, :cond_3

    .line 328
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object v8

    const-string v9, "telemetry.battery"

    invoke-virtual {v8, v9}, Lcom/geely/drivemem/car/CarActor;->get(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v8

    goto :goto_1

    :cond_3
    move-object v8, v7

    :goto_1
    if-eqz v8, :cond_4

    .line 329
    iget-object v9, v8, Lcom/geely/drivemem/car/CarActor$Reading;->status:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    sget-object v10, Lcom/geely/drivemem/car/CarActor$Reading$Status;->OK:Lcom/geely/drivemem/car/CarActor$Reading$Status;

    if-ne v9, v10, :cond_4

    iget-object v9, v8, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/Integer;

    if-eqz v9, :cond_4

    .line 330
    iget-object v8, v8, Lcom/geely/drivemem/car/CarActor$Reading;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    goto :goto_2

    :cond_4
    move-object v8, v7

    :goto_2
    if-eqz v8, :cond_5

    .line 331
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_3

    :cond_5
    const/4 v8, -0x1

    :goto_3
    sput v8, Lcom/geely/drivemem/state/ChargeSession;->socStart:I

    .line 332
    sput v8, Lcom/geely/drivemem/state/ChargeSession;->socEnd:I

    const-wide/16 v8, 0x0

    .line 333
    sput-wide v8, Lcom/geely/drivemem/state/ChargeSession;->whAccum:D

    .line 334
    sput-wide v4, Lcom/geely/drivemem/state/ChargeSession;->fullSinceMonoMs:J

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    .line 335
    sput-wide v4, Lcom/geely/drivemem/state/ChargeSession;->maxChargeV:D

    .line 336
    sput v3, Lcom/geely/drivemem/state/ChargeSession;->sampleCount:I

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 337
    sput-wide v3, Lcom/geely/drivemem/state/ChargeSession;->odoStart:D

    .line 338
    sput-wide v1, Lcom/geely/drivemem/state/ChargeSession;->currentSessionRowId:J

    .line 339
    sput-object v7, Lcom/geely/drivemem/state/ChargeSession;->currentCost:Ljava/lang/Double;

    .line 340
    sput-boolean v6, Lcom/geely/drivemem/state/ChargeSession;->wasCharging:Z

    .line 341
    sput-boolean v6, Lcom/geely/drivemem/state/ChargeSession;->sessionActive:Z

    if-eqz v0, :cond_6

    .line 342
    invoke-static {p0}, Lcom/geely/drivemem/state/ChargeSession;->persistOpenSession(Landroid/content/Context;)V

    .line 343
    :cond_6
    sget-object v0, Lcom/geely/drivemem/state/ChargeSession;->progressListener:Lcom/geely/drivemem/state/ChargeSession$ProgressListener;

    if-eqz v0, :cond_e

    .line 344
    sget v1, Lcom/geely/drivemem/state/ChargeSession;->socStart:I

    sget v2, Lcom/geely/drivemem/state/ChargeSession;->socEnd:I

    sget-wide v3, Lcom/geely/drivemem/state/ChargeSession;->startWallMs:J

    move-wide v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/geely/drivemem/state/ChargeSession$ProgressListener;->onProgress(IIJJ)V

    goto/16 :goto_5

    :cond_7
    :goto_4
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    .line 312
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object v1

    sget-object v3, Lcom/geely/drivemem/state/ChargeSession;->chargeGraceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lcom/geely/drivemem/car/CarActor;->cancelOnCarThread(Ljava/lang/Runnable;)V

    .line 314
    :cond_8
    sput-object v7, Lcom/geely/drivemem/state/ChargeSession;->chargeGraceRunnable:Ljava/lang/Runnable;

    .line 315
    sput-wide v4, Lcom/geely/drivemem/state/ChargeSession;->pauseWallMs:J

    .line 316
    sput-wide p4, Lcom/geely/drivemem/state/ChargeSession;->lastSampleMonoMs:J

    .line 317
    sput-boolean v6, Lcom/geely/drivemem/state/ChargeSession;->wasCharging:Z

    .line 318
    sput-boolean v6, Lcom/geely/drivemem/state/ChargeSession;->sessionActive:Z

    if-eqz v0, :cond_9

    .line 319
    invoke-static {p0}, Lcom/geely/drivemem/state/ChargeSession;->persistOpenSession(Landroid/content/Context;)V

    .line 320
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chargesession: charge resumed within grace period, merging into session id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Lcom/geely/drivemem/state/ChargeSession;->currentSessionRowId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    sget-object v0, Lcom/geely/drivemem/state/ChargeSession;->progressListener:Lcom/geely/drivemem/state/ChargeSession$ProgressListener;

    if-eqz v0, :cond_e

    .line 322
    sget v1, Lcom/geely/drivemem/state/ChargeSession;->socStart:I

    sget v2, Lcom/geely/drivemem/state/ChargeSession;->socEnd:I

    sget-wide v3, Lcom/geely/drivemem/state/ChargeSession;->startWallMs:J

    move-wide v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/geely/drivemem/state/ChargeSession$ProgressListener;->onProgress(IIJJ)V

    goto :goto_5

    .line 348
    :cond_a
    sput-boolean v3, Lcom/geely/drivemem/state/ChargeSession;->wasCharging:Z

    .line 349
    sput-wide p2, Lcom/geely/drivemem/state/ChargeSession;->pauseWallMs:J

    .line 350
    sget-wide v6, Lcom/geely/drivemem/state/ChargeSession;->startWallMs:J

    sub-long v6, p2, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 351
    sget-wide v5, Lcom/geely/drivemem/state/ChargeSession;->whAccum:D

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    .line 353
    invoke-static {v5, v6, v3, v4}, Lcom/geely/drivemem/state/ChargeSession;->isQualified(DJ)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 354
    sget-wide v3, Lcom/geely/drivemem/state/ChargeSession;->pauseWallMs:J

    invoke-static {p0, v3, v4}, Lcom/geely/drivemem/state/ChargeSession;->commitOrUpdateSession(Landroid/content/Context;J)V

    .line 357
    :cond_b
    sget-object v1, Lcom/geely/drivemem/state/ChargeSession;->chargeGraceRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_c

    if-eqz v0, :cond_c

    .line 358
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object v1

    sget-object v3, Lcom/geely/drivemem/state/ChargeSession;->chargeGraceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lcom/geely/drivemem/car/CarActor;->cancelOnCarThread(Ljava/lang/Runnable;)V

    .line 360
    :cond_c
    new-instance v1, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda8;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/geely/drivemem/state/ChargeSession;->chargeGraceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_d

    .line 362
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object v1

    sget-object v3, Lcom/geely/drivemem/state/ChargeSession;->chargeGraceRunnable:Ljava/lang/Runnable;

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v1, v3, v4, v5}, Lcom/geely/drivemem/car/CarActor;->runOnCarThreadDelayed(Ljava/lang/Runnable;J)V

    .line 363
    invoke-static {p0}, Lcom/geely/drivemem/state/ChargeSession;->persistOpenSession(Landroid/content/Context;)V

    .line 365
    :cond_d
    const-string v0, "chargesession: charge stopped, 180s grace period started"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_5
    return-void
.end method

.method public static onParkExit(Landroid/content/Context;)V
    .locals 3

    .line 283
    invoke-static {}, Lcom/geely/drivemem/car/CarActor;->assertCarThread()V

    .line 284
    sget-object v0, Lcom/geely/drivemem/state/ChargeSession;->chargeGraceRunnable:Ljava/lang/Runnable;

    const-string v1, "DriveMem"

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/geely/drivemem/state/ChargeSession;->sessionActive:Z

    if-eqz v0, :cond_0

    sget-boolean v2, Lcom/geely/drivemem/state/ChargeSession;->wasCharging:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    .line 287
    sget-boolean v0, Lcom/geely/drivemem/state/ChargeSession;->wasCharging:Z

    if-eqz v0, :cond_2

    .line 288
    const-string v0, "chargesession: car shifted out of Park while charging \u2014 finalizing session immediately"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 289
    sput-boolean v0, Lcom/geely/drivemem/state/ChargeSession;->wasCharging:Z

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/geely/drivemem/state/ChargeSession;->pauseWallMs:J

    .line 291
    invoke-static {p0, v0, v1}, Lcom/geely/drivemem/state/ChargeSession;->commitOrUpdateSession(Landroid/content/Context;J)V

    .line 292
    invoke-static {p0}, Lcom/geely/drivemem/state/ChargeSession;->finalizeGracePeriod(Landroid/content/Context;)V

    goto :goto_1

    .line 285
    :cond_1
    :goto_0
    const-string v0, "chargesession: car shifted out of Park during pause \u2014 finalizing session immediately"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {p0}, Lcom/geely/drivemem/state/ChargeSession;->finalizeGracePeriod(Landroid/content/Context;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static onTelemetryTick(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 526
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/geely/drivemem/state/ChargeSession;->onTelemetryTick(Landroid/content/Context;Ljava/util/Map;J)V

    return-void
.end method

.method public static onTelemetryTick(Landroid/content/Context;Ljava/util/Map;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .line 530
    invoke-static {}, Lcom/geely/drivemem/car/CarActor;->assertCarThread()V

    if-eqz p0, :cond_0

    .line 531
    invoke-static {p0}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/geely/drivemem/car/CarActor;->get()Lcom/geely/drivemem/car/CarActor;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 533
    const-string v1, "car.is_charging"

    invoke-virtual {v0, v1}, Lcom/geely/drivemem/car/CarActor;->get(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/drivemem/car/CarActor;->chargingFrom(Lcom/geely/drivemem/car/CarActor$Reading;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 534
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-boolean v2, Lcom/geely/drivemem/state/ChargeSession;->wasCharging:Z

    if-eq v1, v2, :cond_1

    .line 535
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/geely/drivemem/state/ChargeSession;->onChargingEdge(Landroid/content/Context;Z)V

    .line 538
    :cond_1
    sget-boolean v0, Lcom/geely/drivemem/state/ChargeSession;->wasCharging:Z

    if-nez v0, :cond_2

    return-void

    .line 539
    :cond_2
    const-string v0, "battery"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/drivemem/state/ChargeSession;->asInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 540
    const-string v1, "charge_a"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/geely/drivemem/state/ChargeSession;->asFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v1

    .line 541
    const-string v2, "charge_v"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/geely/drivemem/state/ChargeSession;->asFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v2

    .line 542
    const-string v3, "odometer"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/drivemem/state/ChargeSession;->asFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    if-eqz v0, :cond_3

    .line 544
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/geely/drivemem/state/ChargeSession;->socEnd:I

    :cond_3
    const-wide/16 v3, 0x0

    if-eqz v0, :cond_4

    .line 545
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_4

    .line 546
    sget-wide v5, Lcom/geely/drivemem/state/ChargeSession;->fullSinceMonoMs:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_5

    sput-wide p2, Lcom/geely/drivemem/state/ChargeSession;->fullSinceMonoMs:J

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 548
    sput-wide v3, Lcom/geely/drivemem/state/ChargeSession;->fullSinceMonoMs:J

    .line 550
    :cond_5
    :goto_1
    sget-wide v5, Lcom/geely/drivemem/state/ChargeSession;->fullSinceMonoMs:J

    cmp-long v0, v5, v3

    const/4 v7, 0x1

    if-eqz v0, :cond_6

    sub-long v5, p2, v5

    const-wide/32 v8, 0x927c0

    cmp-long v0, v5, v8

    if-lez v0, :cond_6

    move v0, v7

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 551
    :goto_2
    sget-wide v5, Lcom/geely/drivemem/state/ChargeSession;->odoStart:D

    const-wide/16 v8, 0x0

    cmpg-double v5, v5, v8

    if-gez v5, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v5, p1

    sput-wide v5, Lcom/geely/drivemem/state/ChargeSession;->odoStart:D

    :cond_7
    if-eqz v2, :cond_9

    .line 552
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v5, 0x0

    cmpl-float p1, p1, v5

    if-lez p1, :cond_9

    sget-wide v5, Lcom/geely/drivemem/state/ChargeSession;->maxChargeV:D

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v5, p1

    sget-wide v8, Lcom/geely/drivemem/state/ChargeSession;->maxChargeV:D

    cmpl-double p1, v5, v8

    if-lez p1, :cond_9

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v5, p1

    sput-wide v5, Lcom/geely/drivemem/state/ChargeSession;->maxChargeV:D

    :cond_9
    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    .line 558
    sget-wide v5, Lcom/geely/drivemem/state/ChargeSession;->lastSampleMonoMs:J

    cmp-long p1, v5, v3

    if-eqz p1, :cond_a

    if-nez v0, :cond_a

    sub-long v3, p2, v5

    long-to-double v3, v3

    const-wide v5, 0x414b774000000000L    # 3600000.0

    div-double/2addr v3, v5

    .line 560
    sget-wide v5, Lcom/geely/drivemem/state/ChargeSession;->whAccum:D

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr p1, v0

    float-to-double v0, p1

    mul-double/2addr v0, v3

    add-double/2addr v5, v0

    sput-wide v5, Lcom/geely/drivemem/state/ChargeSession;->whAccum:D

    .line 561
    sget p1, Lcom/geely/drivemem/state/ChargeSession;->sampleCount:I

    add-int/2addr p1, v7

    sput p1, Lcom/geely/drivemem/state/ChargeSession;->sampleCount:I

    .line 563
    :cond_a
    sput-wide p2, Lcom/geely/drivemem/state/ChargeSession;->lastSampleMonoMs:J

    if-eqz p0, :cond_b

    .line 564
    invoke-static {p0}, Lcom/geely/drivemem/state/ChargeSession;->persistOpenSession(Landroid/content/Context;)V

    .line 566
    :cond_b
    sget-object v0, Lcom/geely/drivemem/state/ChargeSession;->progressListener:Lcom/geely/drivemem/state/ChargeSession$ProgressListener;

    if-eqz v0, :cond_c

    .line 567
    sget v1, Lcom/geely/drivemem/state/ChargeSession;->socStart:I

    sget v2, Lcom/geely/drivemem/state/ChargeSession;->socEnd:I

    sget-wide v3, Lcom/geely/drivemem/state/ChargeSession;->startWallMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface/range {v0 .. v6}, Lcom/geely/drivemem/state/ChargeSession$ProgressListener;->onProgress(IIJJ)V

    :cond_c
    return-void
.end method

.method public static onTelemetryTick(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 522
    invoke-static {v0, p0}, Lcom/geely/drivemem/state/ChargeSession;->onTelemetryTick(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method private static parseLine(Ljava/lang/String;)Lcom/geely/drivemem/state/ChargeSession$Summary;
    .locals 19

    const/4 v0, 0x0

    .line 618
    :try_start_0
    const-string v1, "\t"

    const/4 v2, -0x1

    move-object/from16 v3, p0

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 619
    array-length v2, v1

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    return-object v0

    .line 620
    :cond_0
    sget-object v2, Lcom/geely/drivemem/state/ChargeSession;->FMT:Ljava/text/SimpleDateFormat;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const/4 v4, 0x1

    .line 621
    aget-object v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const/4 v2, 0x3

    .line 622
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v2, 0x4

    .line 623
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v2, 0x5

    .line 624
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    const/4 v2, 0x6

    .line 625
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const/4 v2, 0x7

    .line 626
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 629
    array-length v2, v1

    if-le v2, v3, :cond_1

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide/from16 v17, v1

    .line 630
    new-instance v1, Lcom/geely/drivemem/state/ChargeSession$Summary;

    move-object v5, v1

    invoke-direct/range {v5 .. v18}, Lcom/geely/drivemem/state/ChargeSession$Summary;-><init>(JJIIDDID)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    return-object v0
.end method

.method public static persistOpenSession(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 875
    :cond_0
    const-string v0, "drivemem"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p0}, Lcom/geely/drivemem/state/ChargeSession;->persistOpenSession(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static persistOpenSession(Landroid/content/SharedPreferences;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 880
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "charge_open_start_ms"

    sget-wide v1, Lcom/geely/drivemem/state/ChargeSession;->startWallMs:J

    .line 881
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "charge_open_start_soc"

    sget v1, Lcom/geely/drivemem/state/ChargeSession;->socStart:I

    .line 882
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "charge_open_soc_end"

    sget v1, Lcom/geely/drivemem/state/ChargeSession;->socEnd:I

    .line 883
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "charge_open_start_sample_id"

    sget-wide v1, Lcom/geely/drivemem/state/ChargeSession;->startSampleId:J

    .line 884
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-wide v0, Lcom/geely/drivemem/state/ChargeSession;->whAccum:D

    .line 885
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-string v2, "charge_open_wh_accum"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "charge_open_row_id"

    sget-wide v1, Lcom/geely/drivemem/state/ChargeSession;->currentSessionRowId:J

    .line 886
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-wide v0, Lcom/geely/drivemem/state/ChargeSession;->odoStart:D

    .line 887
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-string v2, "charge_open_odo_start"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-wide v0, Lcom/geely/drivemem/state/ChargeSession;->maxChargeV:D

    .line 888
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-string v2, "charge_open_max_v"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "charge_open_sample_count"

    sget v1, Lcom/geely/drivemem/state/ChargeSession;->sampleCount:I

    .line 889
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 890
    sget-object v0, Lcom/geely/drivemem/state/ChargeSession;->currentCost:Ljava/lang/Double;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    const-string v1, "charge_open_cost"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 891
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static readLog(Landroid/content/Context;)Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/geely/drivemem/state/ChargeSession$Summary;",
            ">;"
        }
    .end annotation

    .line 638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 639
    invoke-static/range {p0 .. p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT id, start_ms, end_ms, soc_start, soc_end, kwh, avg_power_w, max_charge_v, samples, odo_start_km, cost, dismissed FROM charge_session ORDER BY start_ms ASC"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 643
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x7

    .line 644
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    goto :goto_1

    :cond_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    :goto_1
    move-wide/from16 v19, v4

    const/16 v2, 0xa

    .line 645
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v24, v3

    goto :goto_2

    :cond_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object/from16 v24, v2

    :goto_2
    const/16 v2, 0xb

    .line 646
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    move/from16 v25, v4

    goto :goto_3

    :cond_2
    move/from16 v25, v5

    .line 647
    :goto_3
    new-instance v2, Lcom/geely/drivemem/state/ChargeSession$Summary;

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v4, 0x3

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v4, 0x4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v4, 0x5

    .line 648
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v15

    const/4 v4, 0x6

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v17

    const/16 v4, 0x8

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const/16 v4, 0x9

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v22

    move-object v6, v2

    invoke-direct/range {v6 .. v25}, Lcom/geely/drivemem/state/ChargeSession$Summary;-><init>(JJJIIDDDIDLjava/lang/Double;Z)V

    .line 647
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 650
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static readOneFile(Ljava/io/File;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/geely/drivemem/state/ChargeSession$Summary;",
            ">;)V"
        }
    .end annotation

    .line 598
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 601
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    .line 604
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 606
    :cond_2
    invoke-static {v2}, Lcom/geely/drivemem/state/ChargeSession;->parseLine(Ljava/lang/String;)Lcom/geely/drivemem/state/ChargeSession$Summary;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 607
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 612
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 610
    :goto_1
    :try_start_3
    const-string v1, "DriveMem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chargesession: readOneFile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_4

    .line 612
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :cond_4
    :goto_2
    return-void

    :catchall_3
    move-exception p0

    if-eqz v0, :cond_5

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 613
    :catchall_4
    :cond_5
    throw p0
.end method

.method public static recoverFromPreferences(Landroid/content/SharedPreferences;Landroid/content/Context;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 738
    :cond_0
    const-string v3, "charge_open_start_ms"

    const-wide/16 v4, -0x1

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gtz v3, :cond_1

    return v2

    .line 741
    :cond_1
    const-string v3, "charge_open_start_soc"

    const/4 v10, -0x1

    invoke-interface {v0, v3, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 742
    const-string v10, "charge_open_soc_end"

    invoke-interface {v0, v10, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 743
    const-string v11, "charge_open_start_sample_id"

    invoke-interface {v0, v11, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 744
    const-string v13, "charge_open_wh_accum"

    invoke-interface {v0, v13, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v13

    .line 745
    const-string v15, "charge_open_row_id"

    invoke-interface {v0, v15, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    .line 746
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v8

    const-string v15, "charge_open_odo_start"

    invoke-interface {v0, v15, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    const-wide/high16 v15, 0x7ff8000000000000L    # Double.NaN

    move/from16 v17, v3

    .line 747
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    const-string v15, "charge_open_max_v"

    invoke-interface {v0, v15, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 748
    const-string v15, "charge_open_sample_count"

    const/4 v1, 0x0

    invoke-interface {v0, v15, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 749
    const-string v1, "charge_open_cost"

    move/from16 v16, v15

    const/high16 v15, -0x40800000    # -1.0f

    invoke-interface {v0, v1, v15}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const/4 v1, 0x1

    .line 751
    sput-boolean v1, Lcom/geely/drivemem/state/ChargeSession;->sessionActive:Z

    .line 752
    sput-wide v6, Lcom/geely/drivemem/state/ChargeSession;->startWallMs:J

    .line 753
    sput v17, Lcom/geely/drivemem/state/ChargeSession;->socStart:I

    .line 754
    sput v10, Lcom/geely/drivemem/state/ChargeSession;->socEnd:I

    .line 755
    sput-wide v11, Lcom/geely/drivemem/state/ChargeSession;->startSampleId:J

    .line 756
    sput-wide v13, Lcom/geely/drivemem/state/ChargeSession;->whAccum:D

    .line 757
    sput-wide v4, Lcom/geely/drivemem/state/ChargeSession;->currentSessionRowId:J

    .line 758
    sput-wide v8, Lcom/geely/drivemem/state/ChargeSession;->odoStart:D

    .line 759
    sput-wide v2, Lcom/geely/drivemem/state/ChargeSession;->maxChargeV:D

    .line 760
    sput v16, Lcom/geely/drivemem/state/ChargeSession;->sampleCount:I

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    const/4 v3, 0x0

    if-ltz v2, :cond_2

    float-to-double v4, v0

    .line 761
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    sput-object v0, Lcom/geely/drivemem/state/ChargeSession;->currentCost:Ljava/lang/Double;

    .line 762
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Lcom/geely/drivemem/state/ChargeSession;->lastSampleMonoMs:J

    move-object/from16 v0, p1

    if-eqz v0, :cond_3

    .line 764
    invoke-static/range {p1 .. p1}, Lcom/geely/drivemem/car/CarActor;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarActor;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/geely/drivemem/car/CarActor;->get()Lcom/geely/drivemem/car/CarActor;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_4

    .line 765
    const-string v4, "car.is_charging"

    invoke-virtual {v2, v4}, Lcom/geely/drivemem/car/CarActor;->get(Ljava/lang/String;)Lcom/geely/drivemem/car/CarActor$Reading;

    move-result-object v4

    invoke-static {v4}, Lcom/geely/drivemem/car/CarActor;->chargingFrom(Lcom/geely/drivemem/car/CarActor$Reading;)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v3

    .line 766
    :goto_2
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 767
    sput-boolean v1, Lcom/geely/drivemem/state/ChargeSession;->wasCharging:Z

    const-wide/16 v4, 0x0

    .line 768
    sput-wide v4, Lcom/geely/drivemem/state/ChargeSession;->pauseWallMs:J

    .line 769
    sput-object v3, Lcom/geely/drivemem/state/ChargeSession;->chargeGraceRunnable:Ljava/lang/Runnable;

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 771
    sput-boolean v3, Lcom/geely/drivemem/state/ChargeSession;->wasCharging:Z

    .line 772
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/geely/drivemem/state/ChargeSession;->pauseWallMs:J

    .line 773
    sget-object v3, Lcom/geely/drivemem/state/ChargeSession;->chargeGraceRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    .line 774
    invoke-virtual {v2, v3}, Lcom/geely/drivemem/car/CarActor;->cancelOnCarThread(Ljava/lang/Runnable;)V

    .line 776
    :cond_6
    new-instance v3, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda9;

    invoke-direct {v3, v0}, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda9;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/geely/drivemem/state/ChargeSession;->chargeGraceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    const-wide/32 v4, 0x2bf20

    .line 778
    invoke-virtual {v2, v3, v4, v5}, Lcom/geely/drivemem/car/CarActor;->runOnCarThreadDelayed(Ljava/lang/Runnable;J)V

    .line 782
    :cond_7
    :goto_3
    const-string v2, "DriveMem"

    if-eqz v0, :cond_8

    const-wide/16 v3, 0x0

    cmp-long v3, v11, v3

    if-ltz v3, :cond_8

    .line 784
    :try_start_0
    invoke-static {v0, v11, v12}, Lcom/geely/drivemem/state/ChargeSession;->replaySamplesFromDb(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "charge recovery: replay telemetry failed: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_8
    :goto_4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-wide v3, Lcom/geely/drivemem/state/ChargeSession;->startWallMs:J

    .line 792
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-wide v4, Lcom/geely/drivemem/state/ChargeSession;->whAccum:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    sget v5, Lcom/geely/drivemem/state/ChargeSession;->socStart:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lcom/geely/drivemem/state/ChargeSession;->socEnd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-wide v7, Lcom/geely/drivemem/state/ChargeSession;->currentSessionRowId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v3

    .line 790
    const-string v4, "charge recovery: restored open session from %d (wh=%.1f, socStart=%d, socEnd=%d, rowId=%d)"

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    sget-object v3, Lcom/geely/drivemem/state/ChargeSession;->progressListener:Lcom/geely/drivemem/state/ChargeSession$ProgressListener;

    if-eqz v3, :cond_9

    .line 795
    sget v4, Lcom/geely/drivemem/state/ChargeSession;->socStart:I

    sget v5, Lcom/geely/drivemem/state/ChargeSession;->socEnd:I

    sget-wide v6, Lcom/geely/drivemem/state/ChargeSession;->startWallMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface/range {v3 .. v9}, Lcom/geely/drivemem/state/ChargeSession$ProgressListener;->onProgress(IIJJ)V

    :cond_9
    return v1
.end method

.method public static recoverOpenSession(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 725
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/geely/drivemem/state/ChargeSession;->recoverOpenSessionUnsafe(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chargesession recovery: failed, continuing without it: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DriveMem"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static recoverOpenSessionUnsafe(Landroid/content/Context;)V
    .locals 2

    .line 732
    const-string v0, "drivemem"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 733
    invoke-static {v0, p0}, Lcom/geely/drivemem/state/ChargeSession;->recoverFromPreferences(Landroid/content/SharedPreferences;Landroid/content/Context;)Z

    return-void
.end method

.method private static replaySamplesFromDb(Landroid/content/Context;J)V
    .locals 11

    .line 848
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/drivemem/car/CarDb;->latestSampleId()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    return-void

    .line 850
    :cond_0
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarDb;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    .line 853
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v3, v0

    .line 850
    const-string p1, "SELECT ts_ms, charge_a, charge_v, battery_pct FROM telemetry_sample WHERE id BETWEEN ? AND ? ORDER BY id ASC"

    invoke-virtual {p0, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 855
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 856
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_4

    .line 857
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 858
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    move-object v1, v6

    goto :goto_1

    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 859
    :goto_1
    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v6

    goto :goto_2

    :cond_2
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 860
    :goto_2
    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 861
    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3, v1, v7, v6}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 863
    :cond_4
    new-array v1, p2, [[Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, [[Ljava/lang/Object;

    sget-wide v5, Lcom/geely/drivemem/state/ChargeSession;->whAccum:D

    sget v7, Lcom/geely/drivemem/state/ChargeSession;->sampleCount:I

    sget-wide v8, Lcom/geely/drivemem/state/ChargeSession;->maxChargeV:D

    sget v10, Lcom/geely/drivemem/state/ChargeSession;->socEnd:I

    invoke-static/range {v4 .. v10}, Lcom/geely/drivemem/state/ChargeSession;->replayTelemetry([[Ljava/lang/Object;DIDI)[D

    move-result-object p1

    .line 864
    aget-wide v4, p1, p2

    sput-wide v4, Lcom/geely/drivemem/state/ChargeSession;->whAccum:D

    .line 865
    aget-wide v0, p1, v0

    double-to-int p2, v0

    sput p2, Lcom/geely/drivemem/state/ChargeSession;->sampleCount:I

    .line 866
    aget-wide v0, p1, v2

    sput-wide v0, Lcom/geely/drivemem/state/ChargeSession;->maxChargeV:D

    .line 867
    aget-wide p1, p1, v3

    double-to-int p1, p1

    sput p1, Lcom/geely/drivemem/state/ChargeSession;->socEnd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 869
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 870
    throw p1
.end method

.method public static replayTelemetry([[Ljava/lang/Object;DIDI)[D
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move v6, p6

    .line 800
    invoke-static/range {v0 .. v7}, Lcom/geely/drivemem/state/ChargeSession;->replayTelemetry([[Ljava/lang/Object;DIDIZ)[D

    move-result-object p0

    return-object p0
.end method

.method private static replayTelemetry([[Ljava/lang/Object;DIDIZ)[D
    .locals 28

    move-object/from16 v0, p0

    .line 817
    array-length v1, v0

    const/4 v4, 0x0

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move v10, v4

    move v13, v10

    const-wide/16 v11, 0x0

    const-wide/16 v14, -0x1

    const-wide/16 v16, -0x1

    :goto_0
    const/16 v18, 0x3

    const/16 v19, 0x2

    const/16 v20, 0x1

    if-ge v10, v1, :cond_8

    aget-object v21, v0, v10

    .line 818
    aget-object v22, v21, v4

    check-cast v22, Ljava/lang/Number;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Number;->longValue()J

    move-result-wide v22

    .line 819
    aget-object v24, v21, v20

    const/16 v25, 0x0

    if-eqz v24, :cond_0

    check-cast v24, Ljava/lang/Number;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Number;->floatValue()F

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    goto :goto_1

    :cond_0
    move-object/from16 v24, v25

    .line 820
    :goto_1
    aget-object v19, v21, v19

    if-eqz v19, :cond_1

    check-cast v19, Ljava/lang/Number;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->floatValue()F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    .line 821
    :cond_1
    aget-object v18, v21, v18

    const-wide/16 v26, 0x0

    if-eqz v18, :cond_3

    .line 822
    check-cast v18, Ljava/lang/Number;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->intValue()I

    move-result v9

    const/16 v5, 0x64

    if-ge v9, v5, :cond_2

    const-wide/16 v14, -0x1

    goto :goto_2

    :cond_2
    cmp-long v5, v14, v26

    if-gez v5, :cond_3

    move-wide/from16 v14, v22

    :cond_3
    :goto_2
    if-eqz p7, :cond_4

    cmp-long v5, v14, v26

    if-ltz v5, :cond_4

    sub-long v5, v22, v14

    const-wide/32 v18, 0x927c0

    cmp-long v5, v5, v18

    if-lez v5, :cond_4

    goto :goto_3

    :cond_4
    move/from16 v20, v4

    :goto_3
    const/4 v5, 0x0

    if-eqz v25, :cond_6

    .line 827
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v6, v6, v5

    if-lez v6, :cond_6

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v2, v6

    cmpl-double v2, v2, v7

    if-lez v2, :cond_6

    .line 828
    :cond_5
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    move-wide v7, v2

    :cond_6
    if-eqz v24, :cond_7

    if-eqz v25, :cond_7

    .line 830
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_7

    cmp-long v2, v16, v26

    if-lez v2, :cond_7

    if-nez v20, :cond_7

    sub-long v2, v22, v16

    long-to-double v2, v2

    const-wide v5, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v5

    const-wide/16 v5, 0x0

    cmpl-double v16, v2, v5

    if-lez v16, :cond_7

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v16, v2, v16

    if-gez v16, :cond_7

    .line 833
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v16

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v17

    mul-float v5, v16, v17

    float-to-double v5, v5

    mul-double/2addr v5, v2

    add-double/2addr v11, v5

    add-int/lit8 v13, v13, 0x1

    :cond_7
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v16, v22

    goto/16 :goto_0

    :cond_8
    move-wide/from16 v2, p1

    .line 840
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    move/from16 v2, p3

    .line 841
    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    int-to-double v5, v9

    const/4 v9, 0x4

    new-array v9, v9, [D

    aput-wide v0, v9, v4

    aput-wide v2, v9, v20

    aput-wide v7, v9, v19

    aput-wide v5, v9, v18

    return-object v9
.end method

.method public static resetForTesting()V
    .locals 0

    .line 515
    invoke-static {}, Lcom/geely/drivemem/state/ChargeSession;->resetSessionState()V

    return-void
.end method

.method private static resetSessionState()V
    .locals 8

    const/4 v0, 0x0

    .line 485
    sput-boolean v0, Lcom/geely/drivemem/state/ChargeSession;->sessionActive:Z

    .line 486
    sput-boolean v0, Lcom/geely/drivemem/state/ChargeSession;->wasCharging:Z

    const/4 v1, 0x0

    .line 487
    sput-object v1, Lcom/geely/drivemem/state/ChargeSession;->chargeGraceRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    .line 488
    sput-wide v2, Lcom/geely/drivemem/state/ChargeSession;->startWallMs:J

    .line 489
    sput-wide v2, Lcom/geely/drivemem/state/ChargeSession;->pauseWallMs:J

    .line 490
    sput-wide v2, Lcom/geely/drivemem/state/ChargeSession;->lastSampleMonoMs:J

    const-wide/16 v4, -0x1

    .line 491
    sput-wide v4, Lcom/geely/drivemem/state/ChargeSession;->startSampleId:J

    const/4 v6, -0x1

    .line 492
    sput v6, Lcom/geely/drivemem/state/ChargeSession;->socStart:I

    .line 493
    sput v6, Lcom/geely/drivemem/state/ChargeSession;->socEnd:I

    const-wide/16 v6, 0x0

    .line 494
    sput-wide v6, Lcom/geely/drivemem/state/ChargeSession;->whAccum:D

    .line 495
    sput-wide v2, Lcom/geely/drivemem/state/ChargeSession;->fullSinceMonoMs:J

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 496
    sput-wide v2, Lcom/geely/drivemem/state/ChargeSession;->maxChargeV:D

    .line 497
    sput v0, Lcom/geely/drivemem/state/ChargeSession;->sampleCount:I

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 498
    sput-wide v2, Lcom/geely/drivemem/state/ChargeSession;->odoStart:D

    .line 499
    sput-wide v4, Lcom/geely/drivemem/state/ChargeSession;->currentSessionRowId:J

    .line 500
    sput-object v1, Lcom/geely/drivemem/state/ChargeSession;->currentCost:Ljava/lang/Double;

    return-void
.end method

.method public static rotatedFile(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 591
    invoke-static {p0}, Lcom/geely/drivemem/state/ChargeSession;->file(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 592
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    const-string v1, "charge.log.1"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static setListener(Lcom/geely/drivemem/state/ChargeSession$Listener;)V
    .locals 0

    .line 42
    sput-object p0, Lcom/geely/drivemem/state/ChargeSession;->listener:Lcom/geely/drivemem/state/ChargeSession$Listener;

    return-void
.end method

.method public static setProgressListener(Lcom/geely/drivemem/state/ChargeSession$ProgressListener;)V
    .locals 0

    .line 81
    sput-object p0, Lcom/geely/drivemem/state/ChargeSession;->progressListener:Lcom/geely/drivemem/state/ChargeSession$ProgressListener;

    return-void
.end method

.method public static setSessionStateForTesting(ZZJIIDI)V
    .locals 0

    .line 505
    sput-boolean p0, Lcom/geely/drivemem/state/ChargeSession;->sessionActive:Z

    .line 506
    sput-boolean p1, Lcom/geely/drivemem/state/ChargeSession;->wasCharging:Z

    .line 507
    sput-wide p2, Lcom/geely/drivemem/state/ChargeSession;->startWallMs:J

    .line 508
    sput p4, Lcom/geely/drivemem/state/ChargeSession;->socStart:I

    .line 509
    sput p5, Lcom/geely/drivemem/state/ChargeSession;->socEnd:I

    .line 510
    sput-wide p6, Lcom/geely/drivemem/state/ChargeSession;->whAccum:D

    .line 511
    sput p8, Lcom/geely/drivemem/state/ChargeSession;->sampleCount:I

    return-void
.end method

.method public static updateCost(Landroid/content/Context;JD)V
    .locals 8

    .line 673
    sget-wide v0, Lcom/geely/drivemem/state/ChargeSession;->currentSessionRowId:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 674
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/geely/drivemem/state/ChargeSession;->currentCost:Ljava/lang/Double;

    if-eqz p0, :cond_0

    .line 675
    invoke-static {p0}, Lcom/geely/drivemem/state/ChargeSession;->persistOpenSession(Landroid/content/Context;)V

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 678
    :cond_1
    invoke-static {p0}, Lcom/geely/drivemem/car/CarDb;->get(Landroid/content/Context;)Lcom/geely/drivemem/car/CarDb;

    move-result-object v0

    new-instance v7, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda2;

    move-object v1, v7

    move-wide v2, p3

    move-object v4, p0

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/geely/drivemem/state/ChargeSession$$ExternalSyntheticLambda2;-><init>(DLandroid/content/Context;J)V

    invoke-virtual {v0, v7}, Lcom/geely/drivemem/car/CarDb;->write(Ljava/lang/Runnable;)V

    return-void
.end method
