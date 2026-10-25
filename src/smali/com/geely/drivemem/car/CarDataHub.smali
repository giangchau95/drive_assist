.class public final Lcom/geely/drivemem/car/CarDataHub;
.super Ljava/lang/Object;
.source "CarDataHub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/drivemem/car/CarDataHub$ParkDuration;,
        Lcom/geely/drivemem/car/CarDataHub$Entity;,
        Lcom/geely/drivemem/car/CarDataHub$Read;,
        Lcom/geely/drivemem/car/CarDataHub$WriteResult;,
        Lcom/geely/drivemem/car/CarDataHub$Write;,
        Lcom/geely/drivemem/car/CarDataHub$Range;,
        Lcom/geely/drivemem/car/CarDataHub$ValueSet;
    }
.end annotation


# static fields
.field private static final PARK_DURATIONS:[Lcom/geely/drivemem/car/CarDataHub$ParkDuration;

.field private static final REGISTRY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/geely/drivemem/car/CarDataHub$Entity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x7

    .line 93
    new-array v0, v0, [Lcom/geely/drivemem/car/CarDataHub$ParkDuration;

    new-instance v1, Lcom/geely/drivemem/car/CarDataHub$ParkDuration;

    const-string v2, "30min"

    const-string v3, "30 min"

    const/4 v4, 0x2

    invoke-direct {v1, v4, v2, v3}, Lcom/geely/drivemem/car/CarDataHub$ParkDuration;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/geely/drivemem/car/CarDataHub$ParkDuration;

    const-string v2, "1h"

    const-string v3, "1 h"

    const/4 v5, 0x4

    invoke-direct {v1, v5, v2, v3}, Lcom/geely/drivemem/car/CarDataHub$ParkDuration;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/geely/drivemem/car/CarDataHub$ParkDuration;

    const-string v2, "2h"

    const-string v3, "2 h"

    const/4 v6, 0x6

    invoke-direct {v1, v6, v2, v3}, Lcom/geely/drivemem/car/CarDataHub$ParkDuration;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/geely/drivemem/car/CarDataHub$ParkDuration;

    const-string v2, "3h"

    const-string v3, "3 h"

    const/16 v4, 0x8

    invoke-direct {v1, v4, v2, v3}, Lcom/geely/drivemem/car/CarDataHub$ParkDuration;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/geely/drivemem/car/CarDataHub$ParkDuration;

    const-string v2, "4h"

    const-string v3, "4 h"

    const/16 v4, 0xa

    invoke-direct {v1, v4, v2, v3}, Lcom/geely/drivemem/car/CarDataHub$ParkDuration;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/geely/drivemem/car/CarDataHub$ParkDuration;

    const-string v2, "5h"

    const-string v3, "5 h"

    const/16 v4, 0xc

    invoke-direct {v1, v4, v2, v3}, Lcom/geely/drivemem/car/CarDataHub$ParkDuration;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/geely/drivemem/car/CarDataHub$ParkDuration;

    const-string v2, "unlimited"

    const-string v3, "Ilimitado"

    const/16 v4, 0x13

    invoke-direct {v1, v4, v2, v3}, Lcom/geely/drivemem/car/CarDataHub$ParkDuration;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    sput-object v0, Lcom/geely/drivemem/car/CarDataHub;->PARK_DURATIONS:[Lcom/geely/drivemem/car/CarDataHub$ParkDuration;

    .line 131
    invoke-static {}, Lcom/geely/drivemem/car/CarDataHub;->buildRegistry()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/geely/drivemem/car/CarDataHub;->REGISTRY:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Lcom/geely/drivemem/car/CarAccess;Ljava/lang/String;Ljava/lang/Object;)Lcom/geely/drivemem/car/CarDataHub$WriteResult;
    .locals 4

    .line 147
    const-string v0, ": "

    .line 0
    const-string v1, "value not in closed set: "

    .line 147
    sget-object v2, Lcom/geely/drivemem/car/CarDataHub;->REGISTRY:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/drivemem/car/CarDataHub$Entity;

    if-nez v2, :cond_0

    .line 148
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "unknown entity: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/geely/drivemem/car/CarDataHub$WriteResult;->-$$Nest$smrejected(Ljava/lang/String;)Lcom/geely/drivemem/car/CarDataHub$WriteResult;

    move-result-object p0

    return-object p0

    .line 149
    :cond_0
    iget-object v3, v2, Lcom/geely/drivemem/car/CarDataHub$Entity;->write:Lcom/geely/drivemem/car/CarDataHub$Write;

    if-nez v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "read-only entity: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/geely/drivemem/car/CarDataHub$WriteResult;->-$$Nest$smrejected(Ljava/lang/String;)Lcom/geely/drivemem/car/CarDataHub$WriteResult;

    move-result-object p0

    return-object p0

    .line 153
    :cond_1
    :try_start_0
    iget-object v3, v2, Lcom/geely/drivemem/car/CarDataHub$Entity;->range:Lcom/geely/drivemem/car/CarDataHub$Range;

    if-eqz v3, :cond_2

    .line 154
    iget-object v1, v2, Lcom/geely/drivemem/car/CarDataHub$Entity;->range:Lcom/geely/drivemem/car/CarDataHub$Range;

    invoke-virtual {v1, p2}, Lcom/geely/drivemem/car/CarDataHub$Range;->clamp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 155
    :cond_2
    iget-object v3, v2, Lcom/geely/drivemem/car/CarDataHub$Entity;->valueSet:Lcom/geely/drivemem/car/CarDataHub$ValueSet;

    if-eqz v3, :cond_4

    .line 156
    iget-object v3, v2, Lcom/geely/drivemem/car/CarDataHub$Entity;->valueSet:Lcom/geely/drivemem/car/CarDataHub$ValueSet;

    invoke-virtual {v3, p2}, Lcom/geely/drivemem/car/CarDataHub$ValueSet;->resolve(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_3

    .line 157
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/geely/drivemem/car/CarDataHub$WriteResult;->-$$Nest$smrejected(Ljava/lang/String;)Lcom/geely/drivemem/car/CarDataHub$WriteResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :cond_3
    move-object p2, v3

    .line 167
    :cond_4
    :goto_0
    :try_start_1
    iget-object v1, v2, Lcom/geely/drivemem/car/CarDataHub$Entity;->write:Lcom/geely/drivemem/car/CarDataHub$Write;

    invoke-interface {v1, p0, p2}, Lcom/geely/drivemem/car/CarDataHub$Write;->write(Lcom/geely/drivemem/car/CarAccess;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 168
    invoke-static {p2}, Lcom/geely/drivemem/car/CarDataHub$WriteResult;->-$$Nest$smok(Ljava/lang/Object;)Lcom/geely/drivemem/car/CarDataHub$WriteResult;

    move-result-object p0

    goto :goto_1

    :cond_5
    const-string p0, "write failed"

    invoke-static {p0}, Lcom/geely/drivemem/car/CarDataHub$WriteResult;->-$$Nest$smrejected(Ljava/lang/String;)Lcom/geely/drivemem/car/CarDataHub$WriteResult;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-object p0

    :catch_0
    move-exception p0

    .line 173
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "write failed for "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/geely/drivemem/car/CarDataHub$WriteResult;->-$$Nest$smrejected(Ljava/lang/String;)Lcom/geely/drivemem/car/CarDataHub$WriteResult;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    .line 163
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "invalid value for "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/geely/drivemem/car/CarDataHub$WriteResult;->-$$Nest$smrejected(Ljava/lang/String;)Lcom/geely/drivemem/car/CarDataHub$WriteResult;

    move-result-object p0

    return-object p0
.end method

.method private static buildRegistry()Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/geely/drivemem/car/CarDataHub$Entity;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 180
    new-instance v8, Lcom/geely/drivemem/car/CarDataHub$Entity;

    new-instance v3, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda0;-><init>()V

    new-instance v4, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda9;

    invoke-direct {v4}, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda9;-><init>()V

    const v1, 0x22010101

    .line 184
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v1, 0x22010102

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v1, 0x22010103

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v9, "eco"

    const-string v11, "comfort"

    const-string v13, "sport"

    filled-new-array/range {v9 .. v14}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/geely/drivemem/car/CarDataHub$ValueSet;->of([Ljava/lang/Object;)Lcom/geely/drivemem/car/CarDataHub$ValueSet;

    move-result-object v6

    const/4 v7, 0x0

    const-string v2, "drive_mode"

    const/4 v5, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/geely/drivemem/car/CarDataHub$Entity;-><init>(Ljava/lang/String;Lcom/geely/drivemem/car/CarDataHub$Read;Lcom/geely/drivemem/car/CarDataHub$Write;Lcom/geely/drivemem/car/CarDataHub$Range;Lcom/geely/drivemem/car/CarDataHub$ValueSet;Lcom/geely/drivemem/car/CarDataHub-IA;)V

    .line 180
    const-string v1, "drive_mode"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v1, Lcom/geely/drivemem/car/CarDataHub$Entity;

    new-instance v11, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda10;

    invoke-direct {v11}, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda10;-><init>()V

    new-instance v12, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda11;

    invoke-direct {v12}, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda11;-><init>()V

    const v2, 0x20020501

    .line 194
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v2, 0x20020502

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v2, 0x20020503

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v3, "low"

    const-string v5, "mid"

    const-string v7, "high"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/geely/drivemem/car/CarDataHub$ValueSet;->of([Ljava/lang/Object;)Lcom/geely/drivemem/car/CarDataHub$ValueSet;

    move-result-object v14

    const/4 v15, 0x0

    const-string v10, "regen_mode"

    const/4 v13, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/geely/drivemem/car/CarDataHub$Entity;-><init>(Ljava/lang/String;Lcom/geely/drivemem/car/CarDataHub$Read;Lcom/geely/drivemem/car/CarDataHub$Write;Lcom/geely/drivemem/car/CarDataHub$Range;Lcom/geely/drivemem/car/CarDataHub$ValueSet;Lcom/geely/drivemem/car/CarDataHub-IA;)V

    .line 190
    const-string v2, "regen_mode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v1, Lcom/geely/drivemem/car/CarDataHub$Entity;

    new-instance v5, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda12;

    invoke-direct {v5}, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda12;-><init>()V

    new-instance v6, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda13;

    invoke-direct {v6}, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda13;-><init>()V

    .line 204
    invoke-static {}, Lcom/geely/drivemem/car/CarDataHub;->parkValueSetPairs()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/geely/drivemem/car/CarDataHub$ValueSet;->of([Ljava/lang/Object;)Lcom/geely/drivemem/car/CarDataHub$ValueSet;

    move-result-object v8

    const/4 v9, 0x0

    const-string v4, "park_mode"

    const/4 v7, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/geely/drivemem/car/CarDataHub$Entity;-><init>(Ljava/lang/String;Lcom/geely/drivemem/car/CarDataHub$Read;Lcom/geely/drivemem/car/CarDataHub$Write;Lcom/geely/drivemem/car/CarDataHub$Range;Lcom/geely/drivemem/car/CarDataHub$ValueSet;Lcom/geely/drivemem/car/CarDataHub-IA;)V

    .line 200
    const-string v2, "park_mode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    new-instance v1, Lcom/geely/drivemem/car/CarDataHub$Entity;

    new-instance v5, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda1;-><init>()V

    new-instance v6, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda2;-><init>()V

    const/4 v8, 0x0

    const-string v4, "ambient_color"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/geely/drivemem/car/CarDataHub$Entity;-><init>(Ljava/lang/String;Lcom/geely/drivemem/car/CarDataHub$Read;Lcom/geely/drivemem/car/CarDataHub$Write;Lcom/geely/drivemem/car/CarDataHub$Range;Lcom/geely/drivemem/car/CarDataHub$ValueSet;Lcom/geely/drivemem/car/CarDataHub-IA;)V

    const-string v2, "ambient_color"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance v1, Lcom/geely/drivemem/car/CarDataHub$Entity;

    new-instance v5, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda3;-><init>()V

    new-instance v6, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda4;-><init>()V

    new-instance v7, Lcom/geely/drivemem/car/CarDataHub$Range;

    const-wide/16 v2, 0x0

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    invoke-direct {v7, v2, v3, v8, v9}, Lcom/geely/drivemem/car/CarDataHub$Range;-><init>(DD)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v4, "ambient_brightness"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/geely/drivemem/car/CarDataHub$Entity;-><init>(Ljava/lang/String;Lcom/geely/drivemem/car/CarDataHub$Read;Lcom/geely/drivemem/car/CarDataHub$Write;Lcom/geely/drivemem/car/CarDataHub$Range;Lcom/geely/drivemem/car/CarDataHub$ValueSet;Lcom/geely/drivemem/car/CarDataHub-IA;)V

    const-string v2, "ambient_brightness"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v1, Lcom/geely/drivemem/car/CarDataHub$Entity;

    new-instance v5, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda5;

    invoke-direct {v5}, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda5;-><init>()V

    new-instance v6, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda6;

    invoke-direct {v6}, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda6;-><init>()V

    const v2, 0x24100103

    .line 225
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x24100101

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "on"

    const-string v7, "off"

    filled-new-array {v4, v2, v7, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/geely/drivemem/car/CarDataHub$ValueSet;->of([Ljava/lang/Object;)Lcom/geely/drivemem/car/CarDataHub$ValueSet;

    move-result-object v8

    const-string v4, "charging"

    const/4 v7, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/geely/drivemem/car/CarDataHub$Entity;-><init>(Ljava/lang/String;Lcom/geely/drivemem/car/CarDataHub$Read;Lcom/geely/drivemem/car/CarDataHub$Write;Lcom/geely/drivemem/car/CarDataHub$Range;Lcom/geely/drivemem/car/CarDataHub$ValueSet;Lcom/geely/drivemem/car/CarDataHub-IA;)V

    .line 221
    const-string v2, "charging"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v1, Lcom/geely/drivemem/car/CarDataHub$Entity;

    new-instance v5, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda7;

    invoke-direct {v5}, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda7;-><init>()V

    new-instance v6, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda8;

    invoke-direct {v6}, Lcom/geely/drivemem/car/CarDataHub$$ExternalSyntheticLambda8;-><init>()V

    new-instance v7, Lcom/geely/drivemem/car/CarDataHub$Range;

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    const-wide/high16 v8, 0x4040000000000000L    # 32.0

    invoke-direct {v7, v2, v3, v8, v9}, Lcom/geely/drivemem/car/CarDataHub$Range;-><init>(DD)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v4, "charge_current_limit"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/geely/drivemem/car/CarDataHub$Entity;-><init>(Ljava/lang/String;Lcom/geely/drivemem/car/CarDataHub$Read;Lcom/geely/drivemem/car/CarDataHub$Write;Lcom/geely/drivemem/car/CarDataHub$Range;Lcom/geely/drivemem/car/CarDataHub$ValueSet;Lcom/geely/drivemem/car/CarDataHub-IA;)V

    const-string v2, "charge_current_limit"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lcom/geely/drivemem/car/CarDataHub$Entity;
    .locals 1

    .line 134
    sget-object v0, Lcom/geely/drivemem/car/CarDataHub;->REGISTRY:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/geely/drivemem/car/CarDataHub$Entity;

    return-object p0
.end method

.method static synthetic lambda$buildRegistry$0(Lcom/geely/drivemem/car/CarAccess;)Ljava/lang/Object;
    .locals 0

    .line 181
    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarAccess;->readDrive()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$buildRegistry$1(Lcom/geely/drivemem/car/CarAccess;Ljava/lang/Object;)Z
    .locals 0

    .line 182
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/geely/drivemem/car/CarAccess;->writeDrive(I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$buildRegistry$10(Lcom/geely/drivemem/car/CarAccess;)Ljava/lang/Object;
    .locals 0

    .line 222
    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarAccess;->readCharging()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$buildRegistry$11(Lcom/geely/drivemem/car/CarAccess;Ljava/lang/Object;)Z
    .locals 0

    .line 223
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/geely/drivemem/car/CarAccess;->setCharging(I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$buildRegistry$12(Lcom/geely/drivemem/car/CarAccess;)Ljava/lang/Object;
    .locals 2

    const v0, 0x24100600

    const/4 v1, 0x0

    .line 231
    invoke-virtual {p0, v0, v1}, Lcom/geely/drivemem/car/CarAccess;->readIntRaw(II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$buildRegistry$13(Lcom/geely/drivemem/car/CarAccess;Ljava/lang/Object;)Z
    .locals 0

    .line 232
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/geely/drivemem/car/CarAccess;->setChargeCurrentLimit(I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$buildRegistry$2(Lcom/geely/drivemem/car/CarAccess;)Ljava/lang/Object;
    .locals 0

    .line 191
    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarAccess;->readRegen()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$buildRegistry$3(Lcom/geely/drivemem/car/CarAccess;Ljava/lang/Object;)Z
    .locals 0

    .line 192
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/geely/drivemem/car/CarAccess;->writeRegen(I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$buildRegistry$4(Lcom/geely/drivemem/car/CarAccess;)Ljava/lang/Object;
    .locals 0

    .line 201
    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarAccess;->readParkMode()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$buildRegistry$5(Lcom/geely/drivemem/car/CarAccess;Ljava/lang/Object;)Z
    .locals 0

    .line 202
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/geely/drivemem/car/CarAccess;->setParkMode(I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$buildRegistry$6(Lcom/geely/drivemem/car/CarAccess;)Ljava/lang/Object;
    .locals 0

    .line 212
    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarAccess;->readAmbientColor()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$buildRegistry$7(Lcom/geely/drivemem/car/CarAccess;Ljava/lang/Object;)Z
    .locals 0

    .line 213
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/geely/drivemem/car/CarAccess;->setAmbientColor(I)Z

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$buildRegistry$8(Lcom/geely/drivemem/car/CarAccess;)Ljava/lang/Object;
    .locals 0

    .line 217
    invoke-virtual {p0}, Lcom/geely/drivemem/car/CarAccess;->readAmbientBrightness()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$buildRegistry$9(Lcom/geely/drivemem/car/CarAccess;Ljava/lang/Object;)Z
    .locals 0

    .line 218
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/geely/drivemem/car/CarAccess;->setAmbientBrightness(I)Z

    move-result p0

    return p0
.end method

.method public static parkCode(Ljava/lang/String;)I
    .locals 5

    if-eqz p0, :cond_1

    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 116
    sget-object v0, Lcom/geely/drivemem/car/CarDataHub;->PARK_DURATIONS:[Lcom/geely/drivemem/car/CarDataHub$ParkDuration;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/geely/drivemem/car/CarDataHub$ParkDuration;->label:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget p0, v3, Lcom/geely/drivemem/car/CarDataHub$ParkDuration;->code:I

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x13

    return p0
.end method

.method public static parkLabel(I)Ljava/lang/String;
    .locals 5

    and-int/lit16 p0, p0, 0xff

    .line 107
    sget-object v0, Lcom/geely/drivemem/car/CarDataHub;->PARK_DURATIONS:[Lcom/geely/drivemem/car/CarDataHub$ParkDuration;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/geely/drivemem/car/CarDataHub$ParkDuration;->code:I

    if-ne v4, p0, :cond_0

    iget-object p0, v3, Lcom/geely/drivemem/car/CarDataHub$ParkDuration;->label:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "cod 0x%02X"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parkValueSetPairs()[Ljava/lang/Object;
    .locals 6

    .line 122
    sget-object v0, Lcom/geely/drivemem/car/CarDataHub;->PARK_DURATIONS:[Lcom/geely/drivemem/car/CarDataHub$ParkDuration;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 123
    const-string v1, "off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 124
    :goto_0
    sget-object v1, Lcom/geely/drivemem/car/CarDataHub;->PARK_DURATIONS:[Lcom/geely/drivemem/car/CarDataHub$ParkDuration;

    array-length v3, v1

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 125
    aget-object v5, v1, v2

    iget-object v5, v5, Lcom/geely/drivemem/car/CarDataHub$ParkDuration;->key:Ljava/lang/String;

    aput-object v5, v0, v4

    add-int/lit8 v3, v3, 0x3

    .line 126
    aget-object v1, v1, v2

    iget v1, v1, Lcom/geely/drivemem/car/CarDataHub$ParkDuration;->code:I

    const v4, 0x201b0100

    or-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static read(Lcom/geely/drivemem/car/CarAccess;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 139
    sget-object v0, Lcom/geely/drivemem/car/CarDataHub;->REGISTRY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/geely/drivemem/car/CarDataHub$Entity;

    if-eqz p1, :cond_1

    .line 140
    iget-object v0, p1, Lcom/geely/drivemem/car/CarDataHub$Entity;->read:Lcom/geely/drivemem/car/CarDataHub$Read;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/geely/drivemem/car/CarDataHub$Entity;->read:Lcom/geely/drivemem/car/CarDataHub$Read;

    invoke-interface {p1, p0}, Lcom/geely/drivemem/car/CarDataHub$Read;->read(Lcom/geely/drivemem/car/CarAccess;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method
