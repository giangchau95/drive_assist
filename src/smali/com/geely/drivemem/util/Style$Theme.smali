.class public final Lcom/geely/drivemem/util/Style$Theme;
.super Ljava/lang/Object;
.source "Style.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/util/Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Theme"
.end annotation


# instance fields
.field public final blurbRes:I

.field final dark:Lcom/geely/drivemem/util/Style$Palette;

.field public final id:Ljava/lang/String;

.field final light:Lcom/geely/drivemem/util/Style$Palette;

.field public final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/geely/drivemem/util/Style$Palette;Lcom/geely/drivemem/util/Style$Palette;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/geely/drivemem/util/Style$Theme;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/geely/drivemem/util/Style$Theme;->name:Ljava/lang/String;

    iput p3, p0, Lcom/geely/drivemem/util/Style$Theme;->blurbRes:I

    .line 113
    iput-object p4, p0, Lcom/geely/drivemem/util/Style$Theme;->dark:Lcom/geely/drivemem/util/Style$Palette;

    iput-object p5, p0, Lcom/geely/drivemem/util/Style$Theme;->light:Lcom/geely/drivemem/util/Style$Palette;

    return-void
.end method


# virtual methods
.method public hasLightVariant()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/geely/drivemem/util/Style$Theme;->light:Lcom/geely/drivemem/util/Style$Palette;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
