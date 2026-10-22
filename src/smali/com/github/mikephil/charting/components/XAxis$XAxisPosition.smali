.class public final enum Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;
.super Ljava/lang/Enum;
.source "XAxis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/components/XAxis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "XAxisPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

.field public static final enum BOTH_SIDED:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

.field public static final enum BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

.field public static final enum BOTTOM_INSIDE:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

.field public static final enum TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

.field public static final enum TOP_INSIDE:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 59
    new-instance v0, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    new-instance v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    const-string v2, "BOTTOM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    new-instance v2, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    const-string v3, "BOTH_SIDED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTH_SIDED:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    new-instance v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    const-string v4, "TOP_INSIDE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP_INSIDE:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    new-instance v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    const-string v5, "BOTTOM_INSIDE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM_INSIDE:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    .line 58
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->$VALUES:[Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;
    .locals 1

    .line 58
    const-class v0, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    return-object p0
.end method

.method public static values()[Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;
    .locals 1

    .line 58
    sget-object v0, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->$VALUES:[Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v0}, [Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    return-object v0
.end method
