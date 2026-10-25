.class public Lcom/geely/drivemem/util/Style;
.super Ljava/lang/Object;
.source "Style.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/drivemem/util/Style$Theme;,
        Lcom/geely/drivemem/util/Style$Palette;
    }
.end annotation


# static fields
.field public static ACCENT:I = -0xe19001

.field public static final APPEARANCE_AUTO:Ljava/lang/String; = "auto"

.field public static final APPEARANCE_DARK:Ljava/lang/String; = "dark"

.field public static final APPEARANCE_LIGHT:Ljava/lang/String; = "light"

.field public static ART:I = 0x0

.field public static final ART_SKYLINE:I = 0x0

.field public static final ART_VAPOR:I = 0x1

.field public static BG_BOTTOM:I = -0xe8e4df

.field public static BG_TOP:I = -0xcfc9c0

.field public static CARD:I = -0xd1ccc5

.field public static final CARD_GAP_DP:I = 0x10

.field public static CARD_HI:I = -0xc5bfb8

.field public static CARD_ON:I = -0xe19001

.field public static final COLUMN_GAP_DP:I = 0x18

.field public static COOL:I = -0xde690d

.field public static DANGER:I = -0x1ac6cb

.field public static FOLLOW_AMBIENT:Z = true

.field public static GOOD:I = -0xbc5fb9

.field public static HEAT:I = -0x6800

.field public static LIGHT:Z = false

.field public static OUTLINE:Z = false

.field public static PURPLE:I = -0x71db56

.field public static RADIUS_DP:I = 0xe

.field public static STROKE_COLOR:I = 0x22ffffff

.field public static STROKE_DP:I = 0x1

.field public static TEXT:I = -0x13100d

.field public static TEXT_DIM:I = -0x756c60

.field public static TEXT_ON:I = -0x13100d

.field public static final THEMES:[Lcom/geely/drivemem/util/Style$Theme;

.field public static final UNIT_SCALE_HERO:F = 0.4f

.field public static final UNIT_SCALE_ROW:F = 0.68f

.field public static WARN:I = -0x4d00

.field private static current:Lcom/geely/drivemem/util/Style$Theme;

.field private static transientId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 46

    const/4 v0, 0x3

    .line 119
    new-array v0, v0, [Lcom/geely/drivemem/util/Style$Theme;

    new-instance v7, Lcom/geely/drivemem/util/Style$Theme;

    sget v4, Lcom/geely/drivemem/R$string;->theme_geely_blurb:I

    new-instance v5, Lcom/geely/drivemem/util/Style$Palette;

    move-object v8, v5

    const/16 v25, 0x1

    const/16 v26, 0x0

    const v9, -0xcfc9c0

    const v10, -0xe8e4df

    const v11, -0xd1ccc5

    const v12, -0xc5bfb8

    const v13, -0xe19001

    const v14, -0x13100d

    const v15, -0x756c60

    const v16, -0x13100d

    const v17, -0xe19001

    const v18, -0xde690d

    const/16 v19, -0x6800

    const/16 v20, 0x1e

    const/16 v21, 0x1

    const v22, 0x22ffffff

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v8 .. v26}, Lcom/geely/drivemem/util/Style$Palette;-><init>(IIIIIIIIIIIIIIZZZI)V

    new-instance v6, Lcom/geely/drivemem/util/Style$Palette;

    move-object/from16 v27, v6

    const/16 v44, 0x1

    const/16 v45, 0x0

    const v28, -0x2c241b

    const v29, -0x2c241b

    const/16 v30, -0x1

    const v31, -0x181512

    const v32, -0xe9971d    # -1.999288E38f

    const v33, -0xe4e0dc

    const v34, -0x9d9686

    const/16 v35, -0x1

    const v36, -0xe9971d    # -1.999288E38f

    const v37, -0xfd8843

    const v38, -0x19af00

    const/16 v39, 0x22

    const/16 v40, 0x1

    const/high16 v41, 0x1a000000

    const/16 v42, 0x0

    const/16 v43, 0x1

    invoke-direct/range {v27 .. v45}, Lcom/geely/drivemem/util/Style$Palette;-><init>(IIIIIIIIIIIIIIZZZI)V

    const-string v2, "geely"

    const-string v3, "Default"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/geely/drivemem/util/Style$Theme;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/geely/drivemem/util/Style$Palette;Lcom/geely/drivemem/util/Style$Palette;)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v2, Lcom/geely/drivemem/util/Style$Theme;

    sget v11, Lcom/geely/drivemem/R$string;->theme_noturno_blurb:I

    new-instance v3, Lcom/geely/drivemem/util/Style$Palette;

    move-object v12, v3

    const/16 v29, 0x0

    const/16 v30, 0x1

    const v13, -0xf4f4f3

    const/high16 v14, -0x1000000

    const v15, -0xebebea

    const v16, -0xdadad6

    const v17, -0x85b5f8

    const v18, -0x1b2335

    const v19, -0x818a98

    const/16 v20, -0xc21

    const/16 v21, -0x58da

    const v22, -0x805741

    const/16 v23, -0x48b3

    const/16 v24, 0x16

    const v26, 0x1affffff

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v12 .. v30}, Lcom/geely/drivemem/util/Style$Palette;-><init>(IIIIIIIIIIIIIIZZZI)V

    const/4 v13, 0x0

    const-string v9, "noturno"

    const-string v10, "Noturno"

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/geely/drivemem/util/Style$Theme;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/geely/drivemem/util/Style$Palette;Lcom/geely/drivemem/util/Style$Palette;)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Lcom/geely/drivemem/util/Style$Theme;

    sget v7, Lcom/geely/drivemem/R$string;->theme_neon_blurb:I

    new-instance v3, Lcom/geely/drivemem/util/Style$Palette;

    move-object v8, v3

    const/16 v26, 0x0

    const v9, -0xefebc6

    const v10, -0xfbfaf3

    const v11, -0xf3efd0

    const v12, -0xe4dca8

    const v13, -0xf4b3a2

    const v14, -0x190401

    const v15, -0x837048

    const v16, -0x190401

    const v17, -0xff1a01

    const v18, -0xff1a01

    const v19, -0xd26b

    const/16 v20, 0x2e

    const/16 v21, 0x2

    const v22, 0x5500e5ff

    const/16 v23, 0x1

    const/16 v24, 0x0

    invoke-direct/range {v8 .. v26}, Lcom/geely/drivemem/util/Style$Palette;-><init>(IIIIIIIIIIIIIIZZZI)V

    const/4 v9, 0x0

    const-string v5, "neon"

    const-string v6, "Neon"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/geely/drivemem/util/Style$Theme;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/geely/drivemem/util/Style$Palette;Lcom/geely/drivemem/util/Style$Palette;)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    sput-object v0, Lcom/geely/drivemem/util/Style;->THEMES:[Lcom/geely/drivemem/util/Style$Theme;

    .line 153
    aget-object v0, v0, v1

    sput-object v0, Lcom/geely/drivemem/util/Style;->current:Lcom/geely/drivemem/util/Style$Theme;

    const/4 v0, 0x0

    .line 170
    sput-object v0, Lcom/geely/drivemem/util/Style;->transientId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accentCard(ILandroid/content/Context;)Landroid/graphics/drawable/LayerDrawable;
    .locals 1

    const/4 v0, 0x1

    .line 365
    invoke-static {p0, p1, v0}, Lcom/geely/drivemem/util/Style;->stripCard(ILandroid/content/Context;Z)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static accentCardTop(ILandroid/content/Context;)Landroid/graphics/drawable/LayerDrawable;
    .locals 1

    const/4 v0, 0x0

    .line 370
    invoke-static {p0, p1, v0}, Lcom/geely/drivemem/util/Style;->stripCard(ILandroid/content/Context;Z)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static action(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Runnable;)Landroid/widget/TextView;
    .locals 2

    .line 514
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 515
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/geely/drivemem/util/Style;->onFill(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41900000    # 18.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    .line 516
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 p1, 0x11

    .line 517
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 518
    invoke-static {p2, p0}, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x10

    .line 519
    invoke-static {p0, p1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p1

    .line 520
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 521
    new-instance p1, Lcom/geely/drivemem/util/Style$$ExternalSyntheticLambda5;

    invoke-direct {p1, p3}, Lcom/geely/drivemem/util/Style$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p1, v1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 p2, 0x4

    .line 523
    invoke-static {p0, p2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p2

    const/16 p3, 0x8

    .line 524
    invoke-static {p0, p3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p2, p0, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 525
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static appearance(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 184
    const-string v0, "dark"

    invoke-static {p0, v0}, Lcom/geely/drivemem/util/Prefs;->getAppearance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static appendUnit(Landroid/text/SpannableStringBuilder;Ljava/lang/String;F)V
    .locals 2

    .line 459
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 460
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 461
    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {p1, p2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    const/16 v1, 0x21

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 462
    new-instance p1, Landroid/text/style/StyleSpan;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 463
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    sget p2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static apply(Landroid/content/Context;Lcom/geely/drivemem/util/Style$Theme;)V
    .locals 0

    .line 238
    sput-object p1, Lcom/geely/drivemem/util/Style;->current:Lcom/geely/drivemem/util/Style$Theme;

    .line 239
    invoke-static {p0, p1}, Lcom/geely/drivemem/util/Style;->resolvePalette(Landroid/content/Context;Lcom/geely/drivemem/util/Style$Theme;)Lcom/geely/drivemem/util/Style$Palette;

    move-result-object p0

    .line 240
    iget p1, p0, Lcom/geely/drivemem/util/Style$Palette;->bgTop:I

    sput p1, Lcom/geely/drivemem/util/Style;->BG_TOP:I

    iget p1, p0, Lcom/geely/drivemem/util/Style$Palette;->bgBottom:I

    sput p1, Lcom/geely/drivemem/util/Style;->BG_BOTTOM:I

    .line 241
    iget p1, p0, Lcom/geely/drivemem/util/Style$Palette;->card:I

    sput p1, Lcom/geely/drivemem/util/Style;->CARD:I

    iget p1, p0, Lcom/geely/drivemem/util/Style$Palette;->cardHi:I

    sput p1, Lcom/geely/drivemem/util/Style;->CARD_HI:I

    iget p1, p0, Lcom/geely/drivemem/util/Style$Palette;->cardOn:I

    sput p1, Lcom/geely/drivemem/util/Style;->CARD_ON:I

    .line 242
    iget p1, p0, Lcom/geely/drivemem/util/Style$Palette;->text:I

    sput p1, Lcom/geely/drivemem/util/Style;->TEXT:I

    iget p1, p0, Lcom/geely/drivemem/util/Style$Palette;->textDim:I

    sput p1, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    iget p1, p0, Lcom/geely/drivemem/util/Style$Palette;->textOn:I

    sput p1, Lcom/geely/drivemem/util/Style;->TEXT_ON:I

    .line 243
    iget p1, p0, Lcom/geely/drivemem/util/Style$Palette;->accent:I

    sput p1, Lcom/geely/drivemem/util/Style;->ACCENT:I

    iget p1, p0, Lcom/geely/drivemem/util/Style$Palette;->cool:I

    sput p1, Lcom/geely/drivemem/util/Style;->COOL:I

    iget p1, p0, Lcom/geely/drivemem/util/Style$Palette;->heat:I

    sput p1, Lcom/geely/drivemem/util/Style;->HEAT:I

    .line 244
    iget p1, p0, Lcom/geely/drivemem/util/Style$Palette;->radiusDp:I

    sput p1, Lcom/geely/drivemem/util/Style;->RADIUS_DP:I

    iget p1, p0, Lcom/geely/drivemem/util/Style$Palette;->strokeDp:I

    sput p1, Lcom/geely/drivemem/util/Style;->STROKE_DP:I

    iget p1, p0, Lcom/geely/drivemem/util/Style$Palette;->strokeColor:I

    sput p1, Lcom/geely/drivemem/util/Style;->STROKE_COLOR:I

    .line 245
    iget-boolean p1, p0, Lcom/geely/drivemem/util/Style$Palette;->outline:Z

    sput-boolean p1, Lcom/geely/drivemem/util/Style;->OUTLINE:Z

    iget-boolean p1, p0, Lcom/geely/drivemem/util/Style$Palette;->light:Z

    sput-boolean p1, Lcom/geely/drivemem/util/Style;->LIGHT:Z

    iget-boolean p1, p0, Lcom/geely/drivemem/util/Style$Palette;->followAmbient:Z

    sput-boolean p1, Lcom/geely/drivemem/util/Style;->FOLLOW_AMBIENT:Z

    .line 246
    iget p0, p0, Lcom/geely/drivemem/util/Style$Palette;->art:I

    sput p0, Lcom/geely/drivemem/util/Style;->ART:I

    return-void
.end method

.method public static backButton(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/widget/ImageView;
    .locals 12

    const/16 v0, 0x22

    .line 564
    invoke-static {p0, v0}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v0

    .line 565
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 566
    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 567
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 568
    new-instance v9, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v9, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 569
    sget v2, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 570
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v0, v0

    const v2, 0x3dae147b    # 0.085f

    mul-float/2addr v2, v0

    .line 571
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 572
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 573
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/high16 v2, 0x40000000    # 2.0f

    div-float v10, v0, v2

    const v2, 0x3e8f5c29    # 0.28f

    mul-float v11, v0, v2

    const v2, 0x3f428f5c    # 0.76f

    mul-float v5, v0, v2

    move-object v2, v8

    move v3, v11

    move v4, v10

    move v6, v10

    move-object v7, v9

    .line 577
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 578
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v3

    add-float v3, v11, v0

    sub-float v4, v10, v0

    .line 579
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 580
    invoke-virtual {v2, v11, v10}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr v10, v0

    .line 581
    invoke-virtual {v2, v3, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 582
    invoke-virtual {v8, v2, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 584
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 585
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v1, 0xa

    .line 586
    invoke-static {p0, v1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v1

    .line 587
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 588
    sget v1, Lcom/geely/drivemem/util/Style;->CARD:I

    invoke-static {v1, p0}, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 589
    new-instance p0, Lcom/geely/drivemem/util/Style$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1}, Lcom/geely/drivemem/util/Style$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object v0
.end method

.method public static blend(IIF)I
    .locals 4

    .line 276
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 277
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 278
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    sub-int/2addr p1, v3

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr v2, p1

    float-to-int p1, v2

    const/high16 p2, -0x1000000

    and-int/2addr p0, p2

    shl-int/lit8 p2, v0, 0x10

    or-int/2addr p0, p2

    shl-int/lit8 p2, v1, 0x8

    or-int/2addr p0, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public static button(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Runnable;)Landroid/widget/TextView;
    .locals 2

    .line 532
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 533
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/geely/drivemem/util/Style;->onFill(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41700000    # 15.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    .line 534
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 p1, 0x11

    .line 535
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 536
    invoke-static {p2, p0}, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x12

    .line 537
    invoke-static {p0, p1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p1

    const/16 p2, 0xc

    .line 538
    invoke-static {p0, p2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p2

    .line 539
    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 540
    new-instance p1, Lcom/geely/drivemem/util/Style$$ExternalSyntheticLambda3;

    invoke-direct {p1, p3}, Lcom/geely/drivemem/util/Style$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p2, 0x4

    .line 543
    invoke-static {p0, p2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p2

    const/16 p3, 0x8

    .line 544
    invoke-static {p0, p3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p0

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 545
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static byId(Ljava/lang/String;)Lcom/geely/drivemem/util/Style$Theme;
    .locals 6

    .line 164
    sget-object v0, Lcom/geely/drivemem/util/Style;->THEMES:[Lcom/geely/drivemem/util/Style$Theme;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v5, v4, Lcom/geely/drivemem/util/Style$Theme;->id:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    :cond_1
    sget-object p0, Lcom/geely/drivemem/util/Style;->THEMES:[Lcom/geely/drivemem/util/Style$Theme;

    aget-object p0, p0, v2

    return-object p0
.end method

.method public static card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 320
    sget v0, Lcom/geely/drivemem/util/Style;->RADIUS_DP:I

    invoke-static {p0, p1, v0}, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static card(ILandroid/content/Context;I)Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .line 324
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 325
    invoke-static {p1, p2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 326
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0

    .line 327
    :cond_0
    sget-boolean p2, Lcom/geely/drivemem/util/Style;->OUTLINE:Z

    if-eqz p2, :cond_4

    .line 328
    sget p2, Lcom/geely/drivemem/util/Style;->CARD:I

    if-ne p0, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 329
    :goto_0
    sget v1, Lcom/geely/drivemem/util/Style;->BG_BOTTOM:I

    if-eqz p2, :cond_2

    const v2, 0x3f0ccccd    # 0.55f

    goto :goto_1

    :cond_2
    const v2, 0x3f3851ec    # 0.72f

    :goto_1
    invoke-static {p0, v1, v2}, Lcom/geely/drivemem/util/Style;->blend(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 330
    sget v1, Lcom/geely/drivemem/util/Style;->STROKE_DP:I

    invoke-static {p1, v1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p1

    if-eqz p2, :cond_3

    sget p0, Lcom/geely/drivemem/util/Style;->STROKE_COLOR:I

    :cond_3
    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_2

    .line 332
    :cond_4
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 333
    sget p0, Lcom/geely/drivemem/util/Style;->STROKE_DP:I

    invoke-static {p1, p0}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p0

    sget p1, Lcom/geely/drivemem/util/Style;->STROKE_COLOR:I

    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :goto_2
    return-object v0
.end method

.method public static cardButton(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    .locals 1

    .line 551
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 552
    sget p2, Lcom/geely/drivemem/util/Style;->CARD_ON:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/geely/drivemem/util/Style;->CARD:I

    .line 553
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/geely/drivemem/util/Style;->onFill(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41900000    # 18.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0x11

    .line 554
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 555
    invoke-static {p2, p0}, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x12

    .line 556
    invoke-static {p0, p1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p0

    .line 557
    invoke-virtual {v0, p0, p0, p0, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    if-eqz p3, :cond_1

    .line 558
    new-instance p0, Lcom/geely/drivemem/util/Style$$ExternalSyntheticLambda1;

    invoke-direct {p0, p3}, Lcom/geely/drivemem/util/Style$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object v0
.end method

.method public static cardFillColor()I
    .locals 2

    .line 346
    sget v0, Lcom/geely/drivemem/util/Style;->CARD:I

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    return v0
.end method

.method public static chargeBar(Landroid/content/Context;IIFFI)Landroid/graphics/Bitmap;
    .locals 7

    const/4 p0, 0x1

    .line 733
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 732
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 734
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 735
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, p0}, Landroid/graphics/Paint;-><init>(I)V

    int-to-float v5, p2

    const/high16 p0, 0x40000000    # 2.0f

    div-float p2, v5, p0

    .line 738
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 739
    invoke-static {}, Lcom/geely/drivemem/util/Style;->tileFillColor()I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 740
    new-instance v2, Landroid/graphics/RectF;

    int-to-float p1, p1

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v2, p2, p2, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 742
    invoke-static {v2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p4

    invoke-static {v3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    mul-float v4, p1, p4

    .line 743
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    cmpl-float p4, p4, v3

    if-lez p4, :cond_0

    .line 745
    invoke-virtual {v6, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 746
    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4, v3, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p4, p2, p2, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 749
    :cond_0
    invoke-static {v2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    mul-float v4, p1, p2

    .line 750
    sget p1, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-virtual {v6, p1}, Landroid/graphics/Paint;->setColor(I)V

    const p1, 0x3df5c28f    # 0.12f

    mul-float/2addr p1, v5

    .line 751
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-virtual {v6, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v3, 0x0

    move v2, v4

    .line 752
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public static chargeRangeBar(Landroid/content/Context;IIFFILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 p0, 0x1

    .line 761
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 760
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 762
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 763
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, p0}, Landroid/graphics/Paint;-><init>(I)V

    int-to-float p2, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, p2, v3

    .line 766
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 767
    invoke-static {}, Lcom/geely/drivemem/util/Style;->tileFillColor()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 768
    new-instance v5, Landroid/graphics/RectF;

    int-to-float p1, p1

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v5, v4, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v5, 0x3f800000    # 1.0f

    .line 770
    invoke-static {v5, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {v6, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    mul-float/2addr p3, p1

    .line 771
    invoke-static {v5, p4}, Ljava/lang/Math;->min(FF)F

    move-result p4

    invoke-static {v6, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    mul-float/2addr p1, p4

    cmpg-float p4, p1, p3

    if-gez p4, :cond_0

    goto :goto_0

    :cond_0
    move v7, p3

    move p3, p1

    move p1, v7

    :goto_0
    add-float p4, p1, p2

    .line 773
    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 774
    invoke-virtual {v2, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 775
    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4, p1, v6, p3, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p4, v4, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz p6, :cond_1

    .line 777
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1

    .line 778
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4, p0}, Landroid/graphics/Paint;-><init>(I)V

    .line 779
    invoke-static {p5}, Lcom/geely/drivemem/util/Style;->onFill(I)I

    move-result p5

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setColor(I)V

    const p5, 0x3ee66666    # 0.45f

    mul-float/2addr p2, p5

    .line 780
    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 781
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 782
    invoke-virtual {p4, p0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 783
    invoke-virtual {p4}, Landroid/graphics/Paint;->descent()F

    move-result p0

    invoke-virtual {p4}, Landroid/graphics/Paint;->ascent()F

    move-result p2

    add-float/2addr p0, p2

    div-float/2addr p0, v3

    sub-float/2addr v4, p0

    add-float/2addr p1, p3

    div-float/2addr p1, v3

    .line 784
    invoke-virtual {v1, p6, p1, v4, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-object v0
.end method

.method public static cogButton(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/widget/ImageView;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x22

    .line 595
    invoke-static {v0, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v2

    .line 596
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 597
    invoke-static {v2, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 598
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 599
    new-instance v11, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v11, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 600
    sget v4, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 601
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v2, v2

    const v4, 0x3d99999a    # 0.075f

    mul-float/2addr v4, v2

    .line 602
    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 603
    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 v4, 0x40000000    # 2.0f

    div-float v12, v2, v4

    const v4, 0x3e23d70a    # 0.16f

    mul-float/2addr v4, v2

    const v5, 0x3e99999a    # 0.3f

    mul-float v13, v2, v5

    const v5, 0x3ed70a3d    # 0.42f

    mul-float/2addr v2, v5

    .line 609
    invoke-virtual {v10, v12, v12, v4, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 610
    invoke-virtual {v10, v12, v12, v13, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v15, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge v15, v4, :cond_0

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v6, v15

    mul-double/2addr v6, v4

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v6, v4

    .line 614
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v13

    add-float v5, v12, v4

    .line 615
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v4, v8

    mul-float/2addr v4, v13

    add-float v8, v12, v4

    move/from16 v16, v15

    .line 616
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v4, v14

    mul-float/2addr v4, v2

    add-float v9, v12, v4

    .line 617
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v4, v6

    mul-float/2addr v4, v2

    add-float v14, v12, v4

    move-object v4, v10

    move v6, v8

    move v7, v9

    move v8, v14

    move-object v9, v11

    .line 618
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v15, v16, 0x1

    goto :goto_0

    .line 621
    :cond_0
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 622
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v3, 0xa

    .line 623
    invoke-static {v0, v3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v3

    .line 624
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/4 v3, 0x0

    .line 626
    invoke-static {v3, v0}, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_1

    .line 627
    new-instance v0, Lcom/geely/drivemem/util/Style$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/geely/drivemem/util/Style$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object v2
.end method

.method public static configScreenBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 305
    sget-object v0, Lcom/geely/drivemem/util/Style;->current:Lcom/geely/drivemem/util/Style$Theme;

    iget-object v0, v0, Lcom/geely/drivemem/util/Style$Theme;->id:Ljava/lang/String;

    const-string v1, "geely"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/geely/drivemem/util/Style;->screenBg()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0

    .line 306
    :cond_0
    sget-object v0, Lcom/geely/drivemem/util/Style;->current:Lcom/geely/drivemem/util/Style$Theme;

    invoke-static {p0, v0}, Lcom/geely/drivemem/util/Style;->resolvedLight(Landroid/content/Context;Lcom/geely/drivemem/util/Style$Theme;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/geely/drivemem/R$drawable;->config_bg_day:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/geely/drivemem/R$drawable;->config_bg_night:I

    .line 307
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static configScreenBgSolid()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 316
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v1, Lcom/geely/drivemem/util/Style;->BG_TOP:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public static current()Lcom/geely/drivemem/util/Style$Theme;
    .locals 1

    .line 156
    sget-object v0, Lcom/geely/drivemem/util/Style;->current:Lcom/geely/drivemem/util/Style$Theme;

    return-object v0
.end method

.method private static darken(I)I
    .locals 3

    .line 639
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 640
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 641
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 642
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    .line 643
    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static dp(Landroid/content/Context;I)I
    .locals 0

    int-to-float p1, p1

    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static drawSwatchCard(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/geely/drivemem/util/Style$Palette;FFFFFI)V
    .locals 3

    .line 827
    iget v0, p2, Lcom/geely/drivemem/util/Style$Palette;->card:I

    if-ne p8, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 828
    :goto_0
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 829
    iget-boolean v1, p2, Lcom/geely/drivemem/util/Style$Palette;->outline:Z

    if-eqz v1, :cond_2

    iget v1, p2, Lcom/geely/drivemem/util/Style$Palette;->bgBottom:I

    if-eqz v0, :cond_1

    const v2, 0x3f0ccccd    # 0.55f

    goto :goto_1

    :cond_1
    const v2, 0x3f3851ec    # 0.72f

    :goto_1
    invoke-static {p8, v1, v2}, Lcom/geely/drivemem/util/Style;->blend(IIF)I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, p8

    :goto_2
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 830
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p3, p4, p5, p6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v1, p7, p7, p1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 831
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 832
    iget v1, p2, Lcom/geely/drivemem/util/Style$Palette;->strokeDp:I

    int-to-float v1, v1

    const v2, 0x3fb33333    # 1.4f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 833
    iget-boolean v1, p2, Lcom/geely/drivemem/util/Style$Palette;->outline:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    iget p8, p2, Lcom/geely/drivemem/util/Style$Palette;->strokeColor:I

    :goto_3
    invoke-virtual {p1, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 834
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, p3, p4, p5, p6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, p2, p7, p7, p1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 835
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public static edgeToEdge(Landroid/app/Activity;)V
    .locals 1

    .line 256
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, 0x4000000

    .line 257
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v0, -0x80000000

    .line 258
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 264
    sget-boolean v0, Lcom/geely/drivemem/util/Style;->LIGHT:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2500

    goto :goto_0

    :cond_0
    const/16 v0, 0x500

    .line 265
    :goto_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static effortScale(Landroid/content/Context;IIIZ)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 634
    invoke-static/range {v0 .. v5}, Lcom/geely/drivemem/util/Style;->effortScale(Landroid/content/Context;IIIZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static effortScale(Landroid/content/Context;IIIZZ)Landroid/graphics/Bitmap;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    .line 650
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 649
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 651
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 652
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v7, 0x8

    .line 655
    invoke-static {v0, v7}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v8

    int-to-float v8, v8

    .line 656
    invoke-static {v0, v7}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v7

    int-to-float v7, v7

    if-nez p3, :cond_0

    move v10, v3

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    const/high16 v11, 0x41200000    # 10.0f

    mul-float v12, v8, v11

    if-eqz v10, :cond_1

    int-to-float v13, v1

    sub-float/2addr v13, v12

    const/high16 v14, 0x41300000    # 11.0f

    div-float/2addr v13, v14

    goto :goto_1

    :cond_1
    const/16 v13, 0xf

    .line 665
    invoke-static {v0, v13}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v13

    int-to-float v13, v13

    :goto_1
    if-eqz v10, :cond_2

    move v1, v13

    goto :goto_2

    :cond_2
    int-to-float v1, v1

    sub-float/2addr v1, v12

    sub-float/2addr v1, v13

    div-float/2addr v1, v11

    :goto_2
    if-lez p3, :cond_3

    move v10, v3

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    const/4 v11, 0x0

    move v14, v11

    const/4 v12, 0x0

    :goto_4
    const/16 v15, 0xb

    if-ge v12, v15, :cond_13

    rsub-int/lit8 v15, v12, 0x5

    if-nez v15, :cond_4

    move/from16 v16, v13

    goto :goto_5

    :cond_4
    move/from16 v16, v1

    .line 673
    :goto_5
    new-instance v9, Landroid/graphics/RectF;

    add-float v3, v14, v16

    move/from16 p1, v1

    int-to-float v1, v2

    invoke-direct {v9, v14, v11, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x2

    if-nez v15, :cond_8

    if-nez p3, :cond_6

    .line 677
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 678
    sget v1, Lcom/geely/drivemem/util/Style;->TEXT:I

    if-eqz p5, :cond_5

    invoke-static {v1}, Lcom/geely/drivemem/util/Style;->darken(I)I

    move-result v1

    :cond_5
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    .line 680
    :cond_6
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 681
    invoke-static {v0, v1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 682
    sget v1, Lcom/geely/drivemem/util/Style;->CARD_HI:I

    if-eqz p5, :cond_7

    invoke-static {v1}, Lcom/geely/drivemem/util/Style;->darken(I)I

    move-result v1

    :cond_7
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_6
    const/16 v17, 0x1

    goto/16 :goto_b

    :cond_8
    if-lez v15, :cond_9

    const/4 v3, 0x1

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    .line 686
    :goto_7
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    if-eqz v3, :cond_a

    .line 687
    sget v18, Lcom/geely/drivemem/util/Style;->COOL:I

    goto :goto_8

    :cond_a
    sget v18, Lcom/geely/drivemem/util/Style;->HEAT:I

    :goto_8
    if-eqz p3, :cond_b

    if-ne v3, v10, :cond_b

    .line 688
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-gt v15, v11, :cond_b

    const/4 v11, 0x1

    goto :goto_9

    :cond_b
    const/4 v11, 0x0

    :goto_9
    if-eqz p4, :cond_c

    if-eqz p3, :cond_c

    if-ne v3, v10, :cond_c

    .line 690
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v17, 0x1

    add-int/lit8 v3, v3, 0x1

    if-ne v15, v3, :cond_d

    move/from16 v3, v17

    goto :goto_a

    :cond_c
    const/16 v17, 0x1

    :cond_d
    const/4 v3, 0x0

    :goto_a
    if-eqz v11, :cond_f

    .line 692
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz p5, :cond_e

    .line 693
    invoke-static/range {v18 .. v18}, Lcom/geely/drivemem/util/Style;->darken(I)I

    move-result v18

    :cond_e
    move/from16 v1, v18

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_b

    :cond_f
    if-eqz v3, :cond_11

    .line 695
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 696
    invoke-static {v0, v1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz p5, :cond_10

    .line 697
    invoke-static/range {v18 .. v18}, Lcom/geely/drivemem/util/Style;->darken(I)I

    move-result v18

    :cond_10
    move/from16 v1, v18

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_b

    .line 699
    :cond_11
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 700
    sget v1, Lcom/geely/drivemem/util/Style;->CARD_HI:I

    if-eqz p5, :cond_12

    invoke-static {v1}, Lcom/geely/drivemem/util/Style;->darken(I)I

    move-result v1

    :cond_12
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 703
    :goto_b
    invoke-virtual {v5, v9, v7, v7, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-float v16, v16, v8

    add-float v14, v14, v16

    add-int/lit8 v12, v12, 0x1

    move/from16 v1, p1

    move/from16 v3, v17

    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_13
    return-object v4
.end method

.method public static field(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/EditText;
    .locals 3

    .line 498
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 499
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p2, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41600000    # 14.0f

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p2, 0xa

    .line 500
    invoke-static {p0, p2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p2

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 501
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 502
    new-instance p2, Landroid/widget/EditText;

    invoke-direct {p2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 503
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p4}, Landroid/widget/EditText;->setInputType(I)V

    .line 504
    sget p3, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setTextColor(I)V

    const/high16 p3, 0x41880000    # 17.0f

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 505
    sget p3, Lcom/geely/drivemem/util/Style;->CARD:I

    invoke-static {p3, p0}, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p3, 0xc

    .line 506
    invoke-static {p0, p3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p0

    .line 507
    invoke-virtual {p2, p0, p0, p0, p0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 508
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public static gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
    .locals 3

    .line 840
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 841
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-static {p1, p2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static header(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 404
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 405
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/geely/drivemem/util/Style;->TEXT_DIM:I

    sget v1, Lcom/geely/drivemem/util/Style;->TEXT:I

    const v2, 0x3ee66666    # 0.45f

    invoke-static {p1, v1, v2}, Lcom/geely/drivemem/util/Style;->blend(IIF)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41880000    # 17.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const p1, 0x3d75c28f    # 0.06f

    .line 406
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    .line 407
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 p1, 0x10

    .line 408
    invoke-static {p0, p1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p1

    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method public static isTransient()Z
    .locals 1

    .line 175
    sget-object v0, Lcom/geely/drivemem/util/Style;->transientId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 1

    .line 468
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 469
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p0, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p0, 0x41b00000    # 22.0f

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    .line 470
    invoke-virtual {v0, p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-object v0
.end method

.method static synthetic lambda$action$0(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 521
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$backButton$3(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 589
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$button$1(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 540
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$cardButton$2(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 558
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$cogButton$4(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 627
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$packIntoColumns$5(Landroid/widget/LinearLayout;ILandroid/content/Context;Ljava/util/List;I)V
    .locals 2

    const/4 v0, 0x0

    .line 880
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 881
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 882
    invoke-static {p2, p0, p3, p4, p1}, Lcom/geely/drivemem/util/Style;->packIntoColumnsOnce(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;II)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static load(Landroid/content/Context;)V
    .locals 4

    .line 214
    sget-object v0, Lcom/geely/drivemem/util/Style;->THEMES:[Lcom/geely/drivemem/util/Style$Theme;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v2, v2, Lcom/geely/drivemem/util/Style$Theme;->id:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/geely/drivemem/util/Prefs;->getTheme(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 215
    const-string v3, "claro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    aget-object v2, v0, v1

    iget-object v2, v2, Lcom/geely/drivemem/util/Style$Theme;->id:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/geely/drivemem/util/Prefs;->setTheme(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    const-string v2, "light"

    invoke-static {p0, v2}, Lcom/geely/drivemem/util/Prefs;->setAppearance(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    aget-object v0, v0, v1

    iget-object v2, v0, Lcom/geely/drivemem/util/Style$Theme;->id:Ljava/lang/String;

    .line 221
    :cond_0
    sget-object v0, Lcom/geely/drivemem/util/Style;->transientId:Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v2, v0

    :cond_1
    invoke-static {v2}, Lcom/geely/drivemem/util/Style;->byId(Ljava/lang/String;)Lcom/geely/drivemem/util/Style$Theme;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/geely/drivemem/util/Style;->apply(Landroid/content/Context;Lcom/geely/drivemem/util/Style$Theme;)V

    return-void
.end method

.method public static margin(Landroid/view/View;IIIILandroid/content/Context;)V
    .locals 2

    .line 937
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 938
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 939
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p5, p1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p5, p2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p5, p3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p3

    invoke-static {p5, p4}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 940
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static mixWhite(IF)I
    .locals 1

    const/4 v0, -0x1

    .line 283
    invoke-static {p0, v0, p1}, Lcom/geely/drivemem/util/Style;->blend(IIF)I

    move-result p0

    return p0
.end method

.method public static onFill(I)I
    .locals 1

    .line 287
    sget v0, Lcom/geely/drivemem/util/Style;->CARD:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/geely/drivemem/util/Style;->CARD_HI:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget p0, Lcom/geely/drivemem/util/Style;->TEXT_ON:I

    goto :goto_1

    :cond_1
    :goto_0
    sget p0, Lcom/geely/drivemem/util/Style;->TEXT:I

    :goto_1
    return p0
.end method

.method public static outlinedCard(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .line 387
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 388
    sget-boolean v1, Lcom/geely/drivemem/util/Style;->OUTLINE:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/geely/drivemem/util/Style;->BG_BOTTOM:I

    const v2, 0x3f5c28f6    # 0.86f

    invoke-static {p0, v1, v2}, Lcom/geely/drivemem/util/Style;->blend(IIF)I

    move-result v1

    goto :goto_0

    :cond_0
    sget v1, Lcom/geely/drivemem/util/Style;->CARD:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 389
    sget v1, Lcom/geely/drivemem/util/Style;->RADIUS_DP:I

    invoke-static {p1, v1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 390
    sget-boolean v1, Lcom/geely/drivemem/util/Style;->OUTLINE:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/geely/drivemem/util/Style;->STROKE_DP:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    :goto_1
    invoke-static {p1, v1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method public static packIntoColumns(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Landroid/widget/LinearLayout;",
            ">;II)V"
        }
    .end annotation

    .line 878
    invoke-static {p0, p1, p2, p3, p4}, Lcom/geely/drivemem/util/Style;->packIntoColumnsOnce(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;II)V

    .line 879
    new-instance v6, Lcom/geely/drivemem/util/Style$$ExternalSyntheticLambda4;

    move-object v0, v6

    move-object v1, p1

    move v2, p4

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/geely/drivemem/util/Style$$ExternalSyntheticLambda4;-><init>(Landroid/widget/LinearLayout;ILandroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static packIntoColumnsOnce(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Landroid/widget/LinearLayout;",
            ">;II)V"
        }
    .end annotation

    .line 891
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/16 v0, 0x10

    .line 892
    invoke-static {p0, v0}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0x18

    invoke-static {p0, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v2

    .line 896
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 897
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    .line 898
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 903
    :cond_0
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_1

    const/high16 v7, 0x40000000    # 2.0f

    .line 905
    invoke-static {p3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 906
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 904
    invoke-virtual {v6, v7, v9}, Landroid/widget/LinearLayout;->measure(II)V

    .line 907
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v4

    .line 909
    :goto_1
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v8, :cond_2

    move v8, v10

    goto :goto_2

    :cond_2
    move v8, v4

    :goto_2
    if-eqz v3, :cond_4

    add-int v9, v5, v1

    add-int/2addr v9, v7

    if-le v9, p4, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v8, :cond_6

    .line 927
    invoke-static {v3, p0, v0}, Lcom/geely/drivemem/util/Style;->gap(Landroid/widget/LinearLayout;Landroid/content/Context;I)V

    add-int/2addr v5, v1

    goto :goto_4

    .line 912
    :cond_4
    :goto_3
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 913
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 914
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v5, p3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 916
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-lez v8, :cond_5

    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 917
    :cond_5
    invoke-virtual {p1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v5, v4

    .line 930
    :cond_6
    :goto_4
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/2addr v5, v7

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static percentRange(IIF)Ljava/lang/CharSequence;
    .locals 2

    .line 449
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 450
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 451
    const-string p0, "%"

    invoke-static {v0, p0, p2}, Lcom/geely/drivemem/util/Style;->appendUnit(Landroid/text/SpannableStringBuilder;Ljava/lang/String;F)V

    .line 452
    const-string v1, " \u2192 "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 453
    invoke-static {v0, p0, p2}, Lcom/geely/drivemem/util/Style;->appendUnit(Landroid/text/SpannableStringBuilder;Ljava/lang/String;F)V

    return-object v0
.end method

.method private static resolvePalette(Landroid/content/Context;Lcom/geely/drivemem/util/Style$Theme;)Lcom/geely/drivemem/util/Style$Palette;
    .locals 0

    .line 209
    invoke-static {p0, p1}, Lcom/geely/drivemem/util/Style;->resolvedLight(Landroid/content/Context;Lcom/geely/drivemem/util/Style$Theme;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/geely/drivemem/util/Style$Theme;->light:Lcom/geely/drivemem/util/Style$Palette;

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/geely/drivemem/util/Style$Theme;->dark:Lcom/geely/drivemem/util/Style$Palette;

    :goto_0
    return-object p0
.end method

.method public static resolvedLight(Landroid/content/Context;Lcom/geely/drivemem/util/Style$Theme;)Z
    .locals 2

    .line 201
    iget-object p1, p1, Lcom/geely/drivemem/util/Style$Theme;->light:Lcom/geely/drivemem/util/Style$Palette;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 202
    :cond_0
    invoke-static {p0}, Lcom/geely/drivemem/util/Style;->appearance(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 203
    const-string v1, "light"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 204
    :cond_1
    const-string v1, "dark"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 205
    :cond_2
    invoke-static {p0}, Lcom/geely/drivemem/util/Style;->systemIsLight(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static save(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 231
    sput-object v0, Lcom/geely/drivemem/util/Style;->transientId:Ljava/lang/String;

    .line 232
    invoke-static {p0, p1}, Lcom/geely/drivemem/util/Prefs;->setTheme(Landroid/content/Context;Ljava/lang/String;)V

    .line 233
    invoke-static {p1}, Lcom/geely/drivemem/util/Style;->byId(Ljava/lang/String;)Lcom/geely/drivemem/util/Style$Theme;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/geely/drivemem/util/Style;->apply(Landroid/content/Context;Lcom/geely/drivemem/util/Style$Theme;)V

    return-void
.end method

.method public static savedId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 226
    sget-object v0, Lcom/geely/drivemem/util/Style;->THEMES:[Lcom/geely/drivemem/util/Style$Theme;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/geely/drivemem/util/Style$Theme;->id:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/geely/drivemem/util/Prefs;->getTheme(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static screenBg()Landroid/graphics/drawable/GradientDrawable;
    .locals 4

    .line 292
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget v2, Lcom/geely/drivemem/util/Style;->BG_TOP:I

    sget v3, Lcom/geely/drivemem/util/Style;->BG_BOTTOM:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    return-object v0
.end method

.method public static secret(Ljava/lang/String;)Z
    .locals 1

    .line 160
    const-string v0, "noturno"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static setAppearance(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 189
    invoke-static {p0, p1}, Lcom/geely/drivemem/util/Prefs;->setAppearance(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setTransient(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 173
    sput-object p1, Lcom/geely/drivemem/util/Style;->transientId:Ljava/lang/String;

    invoke-static {p1}, Lcom/geely/drivemem/util/Style;->byId(Ljava/lang/String;)Lcom/geely/drivemem/util/Style$Theme;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/geely/drivemem/util/Style;->apply(Landroid/content/Context;Lcom/geely/drivemem/util/Style$Theme;)V

    return-void
.end method

.method public static statusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "status_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    invoke-static {p0, v0}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static stripCard(ILandroid/content/Context;Z)Landroid/graphics/drawable/LayerDrawable;
    .locals 8

    .line 374
    sget v0, Lcom/geely/drivemem/util/Style;->CARD:I

    invoke-static {v0, p1}, Lcom/geely/drivemem/util/Style;->card(ILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 375
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 376
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 377
    sget p0, Lcom/geely/drivemem/util/Style;->RADIUS_DP:I

    invoke-static {p1, p0}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 378
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-direct {p0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x5

    if-eqz p2, :cond_0

    .line 380
    invoke-static {p1, v0}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    goto :goto_0

    .line 381
    :cond_0
    invoke-static {p1, v0}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :goto_0
    return-object p0
.end method

.method private static systemIsLight(Landroid/content/Context;)Z
    .locals 1

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static themeSwatch(Landroid/content/Context;Lcom/geely/drivemem/util/Style$Theme;II)Landroid/graphics/Bitmap;
    .locals 21

    const/4 v0, 0x1

    move/from16 v1, p2

    .line 792
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v2, p3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 793
    invoke-static/range {p0 .. p1}, Lcom/geely/drivemem/util/Style;->resolvePalette(Landroid/content/Context;Lcom/geely/drivemem/util/Style$Theme;)Lcom/geely/drivemem/util/Style$Palette;

    move-result-object v12

    .line 794
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 796
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 797
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 798
    iget v0, v12, Lcom/geely/drivemem/util/Style$Palette;->radiusDp:I

    move-object/from16 v3, p0

    invoke-static {v3, v0}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    const v3, 0x3f0ccccd    # 0.55f

    mul-float/2addr v0, v3

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float v16, v2, v3

    .line 802
    new-instance v11, Landroid/graphics/LinearGradient;

    iget v8, v12, Lcom/geely/drivemem/util/Style$Palette;->bgTop:I

    iget v9, v12, Lcom/geely/drivemem/util/Style$Palette;->bgBottom:I

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v11

    move v7, v2

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v15, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float v1, v1

    move-object v3, v14

    move v6, v1

    move-object v8, v15

    .line 804
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    .line 805
    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 808
    iget v3, v12, Lcom/geely/drivemem/util/Style$Palette;->accent:I

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setColor(I)V

    const v3, 0x3e6147ae    # 0.22f

    mul-float/2addr v3, v1

    add-float v6, v16, v3

    const v3, 0x3d3851ec    # 0.045f

    mul-float/2addr v3, v2

    add-float v7, v16, v3

    move-object v3, v14

    move/from16 v4, v16

    move/from16 v5, v16

    .line 809
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 812
    iget v3, v12, Lcom/geely/drivemem/util/Style$Palette;->text:I

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setColor(I)V

    const v3, 0x3e0f5c29    # 0.14f

    mul-float/2addr v3, v2

    add-float v5, v16, v3

    const v3, 0x3ed70a3d    # 0.42f

    mul-float/2addr v3, v1

    add-float v6, v16, v3

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v2

    add-float v7, v16, v3

    move-object v3, v14

    .line 813
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 814
    iget v3, v12, Lcom/geely/drivemem/util/Style$Palette;->textDim:I

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setColor(I)V

    const v3, 0x3e75c28f    # 0.24f

    mul-float/2addr v3, v2

    add-float v5, v16, v3

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v1

    add-float v6, v16, v3

    const v3, 0x3e91eb85    # 0.285f

    mul-float/2addr v3, v2

    add-float v7, v16, v3

    move-object v3, v14

    .line 815
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const v3, 0x3f051eb8    # 0.52f

    mul-float v17, v2, v3

    sub-float v2, v2, v16

    const v3, 0x3d23d70a    # 0.04f

    mul-float v18, v1, v3

    const/high16 v19, 0x40000000    # 2.0f

    mul-float v3, v16, v19

    sub-float/2addr v1, v3

    sub-float v1, v1, v18

    div-float v1, v1, v19

    add-float v20, v16, v1

    .line 820
    iget v11, v12, Lcom/geely/drivemem/util/Style$Palette;->card:I

    move-object v3, v14

    move-object v4, v15

    move-object v5, v12

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v20

    move v9, v2

    move v10, v0

    invoke-static/range {v3 .. v11}, Lcom/geely/drivemem/util/Style;->drawSwatchCard(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/geely/drivemem/util/Style$Palette;FFFFFI)V

    add-float v6, v20, v18

    mul-float v1, v1, v19

    add-float v16, v16, v1

    add-float v8, v16, v18

    .line 821
    iget v11, v12, Lcom/geely/drivemem/util/Style$Palette;->cardOn:I

    invoke-static/range {v3 .. v11}, Lcom/geely/drivemem/util/Style;->drawSwatchCard(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/geely/drivemem/util/Style$Palette;FFFFFI)V

    return-object v13
.end method

.method public static tile(Landroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 356
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 357
    sget v1, Lcom/geely/drivemem/util/Style;->RADIUS_DP:I

    add-int/lit8 v1, v1, -0x8

    invoke-static {p0, v1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 358
    invoke-static {}, Lcom/geely/drivemem/util/Style;->tileFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v1, 0x1

    .line 359
    invoke-static {p0, v1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p0

    invoke-static {}, Lcom/geely/drivemem/util/Style;->tileStrokeColor()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method public static tileFillColor()I
    .locals 1

    .line 350
    sget-boolean v0, Lcom/geely/drivemem/util/Style;->LIGHT:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0xc000000

    goto :goto_0

    :cond_0
    const v0, 0x12ffffff

    :goto_0
    return v0
.end method

.method public static tileStrokeColor()I
    .locals 1

    .line 352
    sget-boolean v0, Lcom/geely/drivemem/util/Style;->LIGHT:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x1a000000

    goto :goto_0

    :cond_0
    const v0, 0x17ffffff

    :goto_0
    return v0
.end method

.method public static title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 1

    .line 396
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 397
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/geely/drivemem/util/Style;->TEXT:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41d00000    # 26.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x4

    .line 398
    invoke-static {p0, p1}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1, p1, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method public static toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/geely/drivemem/controls/GeelySwitch$OnToggle;)Landroid/widget/LinearLayout;
    .locals 4

    .line 478
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 479
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 480
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0x8

    .line 481
    invoke-static {p0, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0, v2}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 482
    new-instance v1, Lcom/geely/drivemem/controls/GeelySwitch;

    invoke-direct {v1, p0}, Lcom/geely/drivemem/controls/GeelySwitch;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x5

    .line 483
    invoke-static {p0, v2}, Lcom/geely/drivemem/util/Prefs;->getSwitchLockS(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/drivemem/controls/GeelySwitch;->setLockSeconds(I)V

    .line 484
    invoke-virtual {v1, p2}, Lcom/geely/drivemem/controls/GeelySwitch;->setCheckedSilently(Z)V

    .line 485
    invoke-virtual {v1, p3}, Lcom/geely/drivemem/controls/GeelySwitch;->setOnToggle(Lcom/geely/drivemem/controls/GeelySwitch$OnToggle;)V

    .line 486
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 487
    invoke-static {p0, p1}, Lcom/geely/drivemem/util/Style;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p1

    .line 488
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0xe

    .line 490
    invoke-static {p0, p3}, Lcom/geely/drivemem/util/Style;->dp(Landroid/content/Context;I)I

    move-result p0

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 491
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static turboBar(Landroid/content/Context;IIFI)Landroid/graphics/Bitmap;
    .locals 5

    const/4 p0, 0x1

    .line 712
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 711
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 713
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 714
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, p0}, Landroid/graphics/Paint;-><init>(I)V

    int-to-float p0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float p2, p0, p2

    .line 717
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 718
    invoke-static {}, Lcom/geely/drivemem/util/Style;->tileFillColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 719
    new-instance v3, Landroid/graphics/RectF;

    int-to-float p1, p1

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, p1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v3, p2, p2, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 721
    invoke-static {v3, p3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr p1, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    cmpl-float p3, p3, v4

    if-lez p3, :cond_0

    .line 723
    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 724
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3, v4, v4, p1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p3, p2, p2, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-object v0
.end method

.method public static valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;F)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x1

    .line 424
    invoke-static {p0, p1, p2, p3, v0}, Lcom/geely/drivemem/util/Style;->valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;FZ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static valueWithUnit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;FZ)Ljava/lang/CharSequence;
    .locals 3

    .line 432
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 433
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 434
    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 p0, 0x21

    if-eqz p1, :cond_0

    .line 436
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    invoke-virtual {v0, v2, v1, p1, p0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    if-nez p4, :cond_1

    .line 439
    new-instance p1, Landroid/text/style/StyleSpan;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p4

    invoke-virtual {v0, p1, v1, p4, p0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    if-eqz p2, :cond_2

    .line 441
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 442
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p3}, Lcom/geely/drivemem/util/Style;->appendUnit(Landroid/text/SpannableStringBuilder;Ljava/lang/String;F)V

    :cond_2
    return-object v0
.end method
