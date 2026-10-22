.class public abstract Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;
.super Ljava/lang/Object;
.source "DailyStatsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/sensors/DailyStatsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DaySession"
.end annotation


# instance fields
.field public final durationLabel:Ljava/lang/String;

.field public final endMs:J

.field public final startMs:J

.field public final timeLabel:Ljava/lang/String;


# direct methods
.method protected constructor <init>(JJ)V
    .locals 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-wide p1, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;->startMs:J

    .line 60
    iput-wide p3, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;->endMs:J

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->-$$Nest$sfgetTIME_FMT()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2013 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-lez v1, :cond_0

    .line 62
    invoke-static {}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->-$$Nest$sfgetTIME_FMT()Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "in progress"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;->timeLabel:Ljava/lang/String;

    if-lez v1, :cond_1

    goto :goto_1

    .line 63
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    :goto_1
    invoke-static {p1, p2, p3, p4}, Lcom/geely/drivemem/sensors/DailyStatsProvider;->-$$Nest$smformatDuration(JJ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/drivemem/sensors/DailyStatsProvider$DaySession;->durationLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract isTrip()Z
.end method

.method public isValet()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
