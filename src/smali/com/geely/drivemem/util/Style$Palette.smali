.class public final Lcom/geely/drivemem/util/Style$Palette;
.super Ljava/lang/Object;
.source "Style.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/util/Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Palette"
.end annotation


# instance fields
.field final accent:I

.field final art:I

.field final bgBottom:I

.field final bgTop:I

.field final card:I

.field final cardHi:I

.field final cardOn:I

.field final cool:I

.field final followAmbient:Z

.field final heat:I

.field final light:Z

.field final outline:Z

.field final radiusDp:I

.field final strokeColor:I

.field final strokeDp:I

.field final text:I

.field final textDim:I

.field final textOn:I


# direct methods
.method constructor <init>(IIIIIIIIIIIIIIZZZI)V
    .locals 2

    move-object v0, p0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 92
    iput v1, v0, Lcom/geely/drivemem/util/Style$Palette;->bgTop:I

    move v1, p2

    iput v1, v0, Lcom/geely/drivemem/util/Style$Palette;->bgBottom:I

    move v1, p3

    iput v1, v0, Lcom/geely/drivemem/util/Style$Palette;->card:I

    move v1, p4

    .line 93
    iput v1, v0, Lcom/geely/drivemem/util/Style$Palette;->cardHi:I

    move v1, p5

    iput v1, v0, Lcom/geely/drivemem/util/Style$Palette;->cardOn:I

    move v1, p6

    iput v1, v0, Lcom/geely/drivemem/util/Style$Palette;->text:I

    move v1, p7

    .line 94
    iput v1, v0, Lcom/geely/drivemem/util/Style$Palette;->textDim:I

    move v1, p8

    iput v1, v0, Lcom/geely/drivemem/util/Style$Palette;->textOn:I

    move v1, p9

    iput v1, v0, Lcom/geely/drivemem/util/Style$Palette;->accent:I

    move v1, p10

    .line 95
    iput v1, v0, Lcom/geely/drivemem/util/Style$Palette;->cool:I

    move v1, p11

    iput v1, v0, Lcom/geely/drivemem/util/Style$Palette;->heat:I

    move v1, p12

    .line 96
    iput v1, v0, Lcom/geely/drivemem/util/Style$Palette;->radiusDp:I

    move v1, p13

    iput v1, v0, Lcom/geely/drivemem/util/Style$Palette;->strokeDp:I

    move/from16 v1, p14

    iput v1, v0, Lcom/geely/drivemem/util/Style$Palette;->strokeColor:I

    move/from16 v1, p15

    .line 97
    iput-boolean v1, v0, Lcom/geely/drivemem/util/Style$Palette;->outline:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/geely/drivemem/util/Style$Palette;->light:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/geely/drivemem/util/Style$Palette;->followAmbient:Z

    move/from16 v1, p18

    .line 98
    iput v1, v0, Lcom/geely/drivemem/util/Style$Palette;->art:I

    return-void
.end method
