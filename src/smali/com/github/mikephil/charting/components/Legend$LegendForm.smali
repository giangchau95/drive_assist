.class public final enum Lcom/github/mikephil/charting/components/Legend$LegendForm;
.super Ljava/lang/Enum;
.source "Legend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/components/Legend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LegendForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/mikephil/charting/components/Legend$LegendForm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field public static final enum CIRCLE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field public static final enum DEFAULT:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field public static final enum EMPTY:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field public static final enum LINE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field public static final enum NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field public static final enum SQUARE:Lcom/github/mikephil/charting/components/Legend$LegendForm;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 27
    new-instance v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/components/Legend$LegendForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 32
    new-instance v1, Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const-string v2, "EMPTY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/github/mikephil/charting/components/Legend$LegendForm;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/mikephil/charting/components/Legend$LegendForm;->EMPTY:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 37
    new-instance v2, Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const-string v3, "DEFAULT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/github/mikephil/charting/components/Legend$LegendForm;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/github/mikephil/charting/components/Legend$LegendForm;->DEFAULT:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 42
    new-instance v3, Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const-string v4, "SQUARE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/github/mikephil/charting/components/Legend$LegendForm;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/github/mikephil/charting/components/Legend$LegendForm;->SQUARE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 47
    new-instance v4, Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const-string v5, "CIRCLE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/github/mikephil/charting/components/Legend$LegendForm;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/github/mikephil/charting/components/Legend$LegendForm;->CIRCLE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 52
    new-instance v5, Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const-string v6, "LINE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/github/mikephil/charting/components/Legend$LegendForm;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/github/mikephil/charting/components/Legend$LegendForm;->LINE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 23
    filled-new-array/range {v0 .. v5}, [Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->$VALUES:[Lcom/github/mikephil/charting/components/Legend$LegendForm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/mikephil/charting/components/Legend$LegendForm;
    .locals 1

    .line 23
    const-class v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/components/Legend$LegendForm;

    return-object p0
.end method

.method public static values()[Lcom/github/mikephil/charting/components/Legend$LegendForm;
    .locals 1

    .line 23
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->$VALUES:[Lcom/github/mikephil/charting/components/Legend$LegendForm;

    invoke-virtual {v0}, [Lcom/github/mikephil/charting/components/Legend$LegendForm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/mikephil/charting/components/Legend$LegendForm;

    return-object v0
.end method
