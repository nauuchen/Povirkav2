.class public Lorg/apache/poi/sl/draw/DrawPaint;
.super Ljava/lang/Object;
.source "DrawPaint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field private static final TRANSPARENT:Ljava/awt/Color;


# instance fields
.field protected shape:Lorg/apache/poi/sl/usermodel/PlaceableShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/sl/usermodel/PlaceableShape<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    nop

    .line 52
    const-class v0, Lorg/apache/poi/sl/draw/DrawPaint;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/draw/DrawPaint;->LOG:Lorg/apache/poi/util/POILogger;

    .line 54
    new-instance v0, Ljava/awt/Color;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Ljava/awt/Color;-><init>(FFFF)V

    sput-object v0, Lorg/apache/poi/sl/draw/DrawPaint;->TRANSPARENT:Ljava/awt/Color;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/usermodel/PlaceableShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/PlaceableShape<",
            "**>;)V"
        }
    .end annotation

    .line 58
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/PlaceableShape;, "Lorg/apache/poi/sl/usermodel/PlaceableShape<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawPaint;->shape:Lorg/apache/poi/sl/usermodel/PlaceableShape;

    .line 60
    return-void
.end method

.method public static HSL2RGB(DDDD)Ljava/awt/Color;
    .locals 22
    .param p0, "h"    # D
    .param p2, "s"    # D
    .param p4, "l"    # D
    .param p6, "alpha"    # D

    .line 476
    move-wide/from16 v0, p6

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    move-wide/from16 v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 477
    .end local p2    # "s":D
    .local v4, "s":D
    move-wide/from16 v6, p4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 479
    .end local p4    # "l":D
    .local v6, "l":D
    cmpg-double v10, v0, v8

    if-ltz v10, :cond_1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v0, v10

    if-gtz v12, :cond_1

    .line 486
    const-wide v12, 0x4076800000000000L    # 360.0

    rem-double v14, p0, v12

    .line 487
    .end local p0    # "h":D
    .local v14, "h":D
    div-double/2addr v14, v12

    .line 488
    div-double/2addr v4, v2

    .line 489
    div-double/2addr v6, v2

    .line 491
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v12, v6, v2

    if-gez v12, :cond_0

    add-double v2, v4, v10

    mul-double v2, v2, v6

    goto :goto_0

    :cond_0
    add-double v2, v6, v4

    mul-double v12, v4, v6

    sub-double/2addr v2, v12

    .line 495
    .local v2, "q":D
    :goto_0
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v12, v12, v6

    sub-double/2addr v12, v2

    .line 497
    .local v12, "p":D
    const-wide v16, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v18, v14, v16

    move-wide/from16 p0, v12

    move-wide/from16 p2, v2

    move-wide/from16 p4, v18

    invoke-static/range {p0 .. p5}, Lorg/apache/poi/sl/draw/DrawPaint;->HUE2RGB(DDD)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    .line 498
    .local v10, "r":D
    move-wide/from16 p4, v14

    move-wide/from16 v20, v4

    .end local v4    # "s":D
    .local v20, "s":D
    invoke-static/range {p0 .. p5}, Lorg/apache/poi/sl/draw/DrawPaint;->HUE2RGB(DDD)D

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 499
    .local v4, "g":D
    sub-double v16, v14, v16

    move-wide/from16 p4, v16

    move-wide/from16 v16, v2

    .end local v2    # "q":D
    .local v16, "q":D
    invoke-static/range {p0 .. p5}, Lorg/apache/poi/sl/draw/DrawPaint;->HUE2RGB(DDD)D

    move-result-wide v2

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 501
    .local v2, "b":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    .line 502
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 503
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 505
    new-instance v8, Ljava/awt/Color;

    double-to-float v9, v10

    move-wide/from16 p0, v6

    .end local v6    # "l":D
    .local p0, "l":D
    double-to-float v6, v4

    double-to-float v7, v2

    move-wide/from16 p2, v2

    .end local v2    # "b":D
    .local p2, "b":D
    double-to-float v2, v0

    invoke-direct {v8, v9, v6, v7, v2}, Ljava/awt/Color;-><init>(FFFF)V

    return-object v8

    .line 480
    .end local v10    # "r":D
    .end local v12    # "p":D
    .end local v14    # "h":D
    .end local v16    # "q":D
    .end local v20    # "s":D
    .end local p2    # "b":D
    .local v4, "s":D
    .restart local v6    # "l":D
    .local p0, "h":D
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Color parameter outside of expected range - Alpha: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static HUE2RGB(DDD)D
    .locals 9
    .param p0, "p"    # D
    .param p2, "q"    # D
    .param p4, "h"    # D

    .line 509
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    cmpg-double v4, p4, v2

    if-gez v4, :cond_0

    .line 510
    add-double/2addr p4, v0

    .line 513
    :cond_0
    cmpl-double v2, p4, v0

    if-lez v2, :cond_1

    .line 514
    sub-double/2addr p4, v0

    .line 517
    :cond_1
    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    mul-double v4, p4, v2

    cmpg-double v6, v4, v0

    if-gez v6, :cond_2

    .line 518
    sub-double v0, p2, p0

    mul-double v0, v0, v2

    mul-double v0, v0, p4

    add-double/2addr v0, p0

    return-wide v0

    .line 521
    :cond_2
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, p4, v4

    cmpg-double v8, v6, v0

    if-gez v8, :cond_3

    .line 522
    return-wide p2

    .line 525
    :cond_3
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    mul-double v0, v0, p4

    cmpg-double v6, v0, v4

    if-gez v6, :cond_4

    .line 526
    sub-double v0, p2, p0

    mul-double v0, v0, v2

    const-wide v2, 0x3fe5555555555555L    # 0.6666666666666666

    sub-double/2addr v2, p4

    mul-double v0, v0, v2

    add-double/2addr v0, p0

    return-wide v0

    .line 529
    :cond_4
    return-wide p0
.end method

.method private static RGB2HSL(Ljava/awt/Color;)[D
    .locals 26
    .param p0, "color"    # Ljava/awt/Color;

    .line 542
    const/4 v0, 0x0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Ljava/awt/Color;->getRGBColorComponents([F)[F

    move-result-object v0

    .line 543
    .local v0, "rgb":[F
    const/4 v2, 0x0

    aget v3, v0, v2

    float-to-double v3, v3

    .line 544
    .local v3, "r":D
    const/4 v5, 0x1

    aget v6, v0, v5

    float-to-double v6, v6

    .line 545
    .local v6, "g":D
    const/4 v8, 0x2

    aget v9, v0, v8

    float-to-double v9, v9

    .line 549
    .local v9, "b":D
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    .line 550
    .local v11, "min":D
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    .line 554
    .local v13, "max":D
    const-wide/16 v15, 0x0

    .line 556
    .local v15, "h":D
    cmpl-double v17, v13, v11

    if-nez v17, :cond_0

    .line 557
    const-wide/16 v15, 0x0

    goto :goto_0

    .line 558
    :cond_0
    const-wide/high16 v17, 0x404e000000000000L    # 60.0

    cmpl-double v19, v13, v3

    if-nez v19, :cond_1

    .line 559
    sub-double v19, v6, v9

    mul-double v19, v19, v17

    sub-double v17, v13, v11

    div-double v19, v19, v17

    const-wide v17, 0x4076800000000000L    # 360.0

    add-double v19, v19, v17

    rem-double v15, v19, v17

    goto :goto_0

    .line 560
    :cond_1
    cmpl-double v19, v13, v6

    if-nez v19, :cond_2

    .line 561
    sub-double v19, v9, v3

    mul-double v19, v19, v17

    sub-double v17, v13, v11

    div-double v19, v19, v17

    const-wide/high16 v17, 0x405e000000000000L    # 120.0

    add-double v15, v19, v17

    goto :goto_0

    .line 562
    :cond_2
    cmpl-double v19, v13, v9

    if-nez v19, :cond_3

    .line 563
    sub-double v19, v3, v6

    mul-double v19, v19, v17

    sub-double v17, v13, v11

    div-double v19, v19, v17

    const-wide/high16 v17, 0x406e000000000000L    # 240.0

    add-double v15, v19, v17

    .line 568
    :cond_3
    :goto_0
    add-double v17, v13, v11

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v17, v17, v19

    .line 572
    .local v17, "l":D
    const-wide/16 v21, 0x0

    .line 574
    .local v21, "s":D
    cmpl-double v23, v13, v11

    if-nez v23, :cond_4

    .line 575
    const-wide/16 v19, 0x0

    .end local v21    # "s":D
    .local v19, "s":D
    goto :goto_1

    .line 576
    .end local v19    # "s":D
    .restart local v21    # "s":D
    :cond_4
    const-wide/high16 v23, 0x3fe0000000000000L    # 0.5

    cmpg-double v25, v17, v23

    if-gtz v25, :cond_5

    .line 577
    sub-double v19, v13, v11

    add-double v23, v13, v11

    div-double v19, v19, v23

    .end local v21    # "s":D
    .restart local v19    # "s":D
    goto :goto_1

    .line 579
    .end local v19    # "s":D
    .restart local v21    # "s":D
    :cond_5
    sub-double v23, v13, v11

    sub-double v19, v19, v13

    sub-double v19, v19, v11

    div-double v19, v23, v19

    .line 582
    .end local v21    # "s":D
    .restart local v19    # "s":D
    :goto_1
    const/4 v8, 0x3

    new-array v8, v8, [D

    aput-wide v15, v8, v2

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    mul-double v24, v19, v22

    aput-wide v24, v8, v5

    mul-double v22, v22, v17

    const/4 v2, 0x2

    aput-wide v22, v8, v2

    return-object v8
.end method

.method public static applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;
    .locals 12
    .param p0, "color"    # Lorg/apache/poi/sl/usermodel/ColorStyle;

    .line 274
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getColor()Ljava/awt/Color;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getColor()Ljava/awt/Color;

    move-result-object v0

    .line 280
    .local v0, "result":Ljava/awt/Color;
    invoke-static {v0, p0}, Lorg/apache/poi/sl/draw/DrawPaint;->getAlpha(Ljava/awt/Color;Lorg/apache/poi/sl/usermodel/ColorStyle;)D

    move-result-wide v9

    .line 281
    .local v9, "alpha":D
    invoke-static {v0}, Lorg/apache/poi/sl/draw/DrawPaint;->RGB2HSL(Ljava/awt/Color;)[D

    move-result-object v11

    .line 282
    .local v11, "hsl":[D
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getHueMod()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getHueOff()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v11, v3, v1, v2}, Lorg/apache/poi/sl/draw/DrawPaint;->applyHslModOff([DIII)V

    .line 283
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getSatMod()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getSatOff()I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v11, v4, v1, v2}, Lorg/apache/poi/sl/draw/DrawPaint;->applyHslModOff([DIII)V

    .line 284
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getLumMod()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getLumOff()I

    move-result v2

    const/4 v5, 0x2

    invoke-static {v11, v5, v1, v2}, Lorg/apache/poi/sl/draw/DrawPaint;->applyHslModOff([DIII)V

    .line 285
    invoke-static {v11, p0}, Lorg/apache/poi/sl/draw/DrawPaint;->applyShade([DLorg/apache/poi/sl/usermodel/ColorStyle;)V

    .line 286
    invoke-static {v11, p0}, Lorg/apache/poi/sl/draw/DrawPaint;->applyTint([DLorg/apache/poi/sl/usermodel/ColorStyle;)V

    .line 288
    aget-wide v1, v11, v3

    aget-wide v3, v11, v4

    aget-wide v5, v11, v5

    move-wide v7, v9

    invoke-static/range {v1 .. v8}, Lorg/apache/poi/sl/draw/DrawPaint;->HSL2RGB(DDDD)Ljava/awt/Color;

    move-result-object v0

    .line 290
    return-object v0

    .line 275
    .end local v0    # "result":Ljava/awt/Color;
    .end local v9    # "alpha":D
    .end local v11    # "hsl":[D
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/poi/sl/draw/DrawPaint;->TRANSPARENT:Ljava/awt/Color;

    return-object v0
.end method

.method private static applyHslModOff([DIII)V
    .locals 6
    .param p0, "hsl"    # [D
    .param p1, "hslPart"    # I
    .param p2, "mod"    # I
    .param p3, "off"    # I

    .line 328
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 329
    const p2, 0x186a0

    .line 331
    :cond_0
    if-ne p3, v0, :cond_1

    .line 332
    const/4 p3, 0x0

    .line 334
    :cond_1
    const v0, 0x186a0

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_3

    .line 335
    :cond_2
    int-to-double v0, p3

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 336
    .local v0, "fOff":D
    int-to-double v2, p2

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v2, v4

    .line 337
    .local v2, "fMod":D
    aget-wide v4, p0, p1

    mul-double v4, v4, v2

    add-double/2addr v4, v0

    aput-wide v4, p0, p1

    .line 339
    .end local v0    # "fOff":D
    .end local v2    # "fMod":D
    :cond_3
    return-void
.end method

.method private static applyShade([DLorg/apache/poi/sl/usermodel/ColorStyle;)V
    .locals 8
    .param p0, "hsl"    # [D
    .param p1, "fc"    # Lorg/apache/poi/sl/usermodel/ColorStyle;

    .line 347
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getShade()I

    move-result v0

    .line 348
    .local v0, "shade":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 349
    return-void

    .line 352
    :cond_0
    int-to-double v1, v0

    const-wide v3, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v1, v3

    .line 354
    .local v1, "shadePct":D
    const/4 v3, 0x2

    aget-wide v4, p0, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v1

    mul-double v4, v4, v6

    aput-wide v4, p0, v3

    .line 355
    return-void
.end method

.method private static applyTint([DLorg/apache/poi/sl/usermodel/ColorStyle;)V
    .locals 10
    .param p0, "hsl"    # [D
    .param p1, "fc"    # Lorg/apache/poi/sl/usermodel/ColorStyle;

    .line 364
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getTint()I

    move-result v0

    .line 365
    .local v0, "tint":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 366
    return-void

    .line 370
    :cond_0
    int-to-double v1, v0

    const-wide v3, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v1, v3

    .line 371
    .local v1, "tintPct":D
    const/4 v3, 0x2

    aget-wide v4, p0, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v8, v6, v1

    mul-double v4, v4, v8

    sub-double/2addr v6, v1

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double v6, v6, v8

    sub-double/2addr v8, v6

    add-double/2addr v4, v8

    aput-wide v4, p0, v3

    .line 372
    return-void
.end method

.method public static createSolidPaint(Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;
    .locals 1
    .param p0, "color"    # Ljava/awt/Color;

    .line 109
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;

    invoke-direct {v0, p0}, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;-><init>(Ljava/awt/Color;)V

    :goto_0
    return-object v0
.end method

.method public static createSolidPaint(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;
    .locals 1
    .param p0, "color"    # Lorg/apache/poi/sl/usermodel/ColorStyle;

    .line 113
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;

    invoke-direct {v0, p0}, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;-><init>(Lorg/apache/poi/sl/usermodel/ColorStyle;)V

    :goto_0
    return-object v0
.end method

.method private static getAlpha(Ljava/awt/Color;Lorg/apache/poi/sl/usermodel/ColorStyle;)D
    .locals 7
    .param p0, "c"    # Ljava/awt/Color;
    .param p1, "fc"    # Lorg/apache/poi/sl/usermodel/ColorStyle;

    .line 294
    invoke-virtual {p0}, Ljava/awt/Color;->getAlpha()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    .line 295
    .local v0, "alpha":D
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getAlpha()I

    move-result v2

    .line 296
    .local v2, "fcAlpha":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 297
    int-to-double v3, v2

    const-wide v5, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v3, v5

    mul-double v0, v0, v3

    .line 299
    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    return-wide v3
.end method

.method public static lin2srgb(I)F
    .locals 7
    .param p0, "linRGB"    # I

    .line 608
    int-to-double v0, p0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    const-wide v4, 0x3f69a5c37387b719L    # 0.0031308

    cmpg-double v6, v0, v4

    if-gtz v6, :cond_0

    .line 609
    int-to-double v0, p0

    div-double/2addr v0, v2

    const-wide v2, 0x4029d70a3d70a3d7L    # 12.92

    mul-double v0, v0, v2

    double-to-float v0, v0

    return v0

    .line 611
    :cond_0
    const-wide v0, 0x3ff0e147ae147ae1L    # 1.055

    int-to-double v4, p0

    div-double/2addr v4, v2

    const-wide v2, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, v0

    const-wide v0, 0x3fac28f5c28f5c29L    # 0.055

    sub-double/2addr v2, v0

    double-to-float v0, v2

    return v0
.end method

.method public static srgb2lin(F)I
    .locals 7
    .param p0, "sRGB"    # F

    .line 593
    float-to-double v0, p0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    const-wide v4, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v6, v0, v4

    if-gtz v6, :cond_0

    .line 594
    float-to-double v0, p0

    mul-double v0, v0, v2

    const-wide v2, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 596
    :cond_0
    float-to-double v0, p0

    const-wide v4, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v0, v4

    const-wide v4, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v0, v4

    const-wide v4, 0x4003333333333333L    # 2.4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected createLinearGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;Ljava/awt/Graphics2D;)Ljava/awt/Paint;
    .locals 27
    .param p1, "fill"    # Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;
    .param p2, "graphics"    # Ljava/awt/Graphics2D;

    .line 379
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->getGradientAngle()D

    move-result-wide v1

    .line 380
    .local v1, "angle":D
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->isRotatedWithShape()Z

    move-result v3

    if-nez v3, :cond_0

    .line 381
    iget-object v3, v0, Lorg/apache/poi/sl/draw/DrawPaint;->shape:Lorg/apache/poi/sl/usermodel/PlaceableShape;

    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getRotation()D

    move-result-wide v3

    sub-double/2addr v1, v3

    .line 384
    :cond_0
    iget-object v3, v0, Lorg/apache/poi/sl/draw/DrawPaint;->shape:Lorg/apache/poi/sl/usermodel/PlaceableShape;

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v3

    .line 385
    .local v3, "anchor":Ljava/awt/geom/Rectangle2D;
    invoke-virtual {v3}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v5

    .local v5, "h":D
    invoke-virtual {v3}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v7

    .local v7, "w":D
    invoke-virtual {v3}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v9

    .local v9, "x":D
    invoke-virtual {v3}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v11

    .line 387
    .local v11, "y":D
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-virtual {v3}, Ljava/awt/geom/Rectangle2D;->getCenterX()D

    move-result-wide v15

    invoke-virtual {v3}, Ljava/awt/geom/Rectangle2D;->getCenterY()D

    move-result-wide v17

    invoke-static/range {v13 .. v18}, Ljava/awt/geom/AffineTransform;->getRotateInstance(DDD)Ljava/awt/geom/AffineTransform;

    move-result-object v13

    .line 389
    .local v13, "at":Ljava/awt/geom/AffineTransform;
    mul-double v14, v5, v5

    mul-double v16, v7, v7

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 390
    .local v14, "diagonal":D
    new-instance v0, Ljava/awt/geom/Point2D$Double;

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v18, v7, v16

    add-double v18, v9, v18

    div-double v20, v14, v16

    move-wide/from16 v22, v1

    .end local v1    # "angle":D
    .local v22, "angle":D
    sub-double v1, v18, v20

    div-double v18, v5, v16

    move-object/from16 v20, v3

    .end local v3    # "anchor":Ljava/awt/geom/Rectangle2D;
    .local v20, "anchor":Ljava/awt/geom/Rectangle2D;
    add-double v3, v11, v18

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    .line 391
    .local v0, "p1":Ljava/awt/geom/Point2D;
    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Ljava/awt/geom/AffineTransform;->transform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    move-result-object v0

    .line 393
    new-instance v2, Ljava/awt/geom/Point2D$Double;

    add-double v3, v9, v7

    div-double v16, v5, v16

    move-wide/from16 v18, v5

    .end local v5    # "h":D
    .local v18, "h":D
    add-double v5, v11, v16

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    .line 394
    .local v2, "p2":Ljava/awt/geom/Point2D;
    invoke-virtual {v13, v2, v1}, Ljava/awt/geom/AffineTransform;->transform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    move-result-object v2

    .line 399
    invoke-virtual {v0, v2}, Ljava/awt/geom/Point2D;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 401
    return-object v1

    .line 404
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->getGradientFractions()[F

    move-result-object v1

    .line 405
    .local v1, "fractions":[F
    array-length v3, v1

    new-array v3, v3, [Ljava/awt/Color;

    .line 407
    .local v3, "colors":[Ljava/awt/Color;
    const/4 v4, 0x0

    .line 408
    .local v4, "i":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->getGradientColors()[Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v5

    .local v5, "arr$":[Lorg/apache/poi/sl/usermodel/ColorStyle;
    array-length v6, v5

    .local v6, "len$":I
    const/16 v16, 0x0

    move-wide/from16 v25, v7

    move/from16 v7, v16

    move-wide/from16 v16, v25

    .local v7, "i$":I
    .local v16, "w":D
    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 410
    .local v8, "fc":Lorg/apache/poi/sl/usermodel/ColorStyle;
    add-int/lit8 v21, v4, 0x1

    .end local v4    # "i":I
    .local v21, "i":I
    if-nez v8, :cond_2

    sget-object v24, Lorg/apache/poi/sl/draw/DrawPaint;->TRANSPARENT:Ljava/awt/Color;

    goto :goto_1

    :cond_2
    invoke-static {v8}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object v24

    :goto_1
    aput-object v24, v3, v4

    .line 408
    .end local v8    # "fc":Lorg/apache/poi/sl/usermodel/ColorStyle;
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v21

    goto :goto_0

    .line 413
    .end local v5    # "arr$":[Lorg/apache/poi/sl/usermodel/ColorStyle;
    .end local v6    # "len$":I
    .end local v7    # "i$":I
    .end local v21    # "i":I
    .restart local v4    # "i":I
    :cond_3
    new-instance v5, Ljava/awt/LinearGradientPaint;

    invoke-direct {v5, v0, v2, v1, v3}, Ljava/awt/LinearGradientPaint;-><init>(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;[F[Ljava/awt/Color;)V

    return-object v5
.end method

.method protected createPathGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;Ljava/awt/Graphics2D;)Ljava/awt/Paint;
    .locals 9
    .param p1, "fill"    # Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;
    .param p2, "graphics"    # Ljava/awt/Graphics2D;

    .line 438
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->getGradientFractions()[F

    move-result-object v0

    .line 439
    .local v0, "fractions":[F
    array-length v1, v0

    new-array v1, v1, [Ljava/awt/Color;

    .line 441
    .local v1, "colors":[Ljava/awt/Color;
    const/4 v2, 0x0

    .line 442
    .local v2, "i":I
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->getGradientColors()[Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v3

    .local v3, "arr$":[Lorg/apache/poi/sl/usermodel/ColorStyle;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 443
    .local v6, "fc":Lorg/apache/poi/sl/usermodel/ColorStyle;
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "i":I
    .local v7, "i":I
    invoke-static {v6}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object v8

    aput-object v8, v1, v2

    .line 442
    .end local v6    # "fc":Lorg/apache/poi/sl/usermodel/ColorStyle;
    add-int/lit8 v5, v5, 0x1

    move v2, v7

    goto :goto_0

    .line 446
    .end local v3    # "arr$":[Lorg/apache/poi/sl/usermodel/ColorStyle;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    .end local v7    # "i":I
    .restart local v2    # "i":I
    :cond_0
    new-instance v3, Lorg/apache/poi/sl/draw/PathGradientPaint;

    invoke-direct {v3, v1, v0}, Lorg/apache/poi/sl/draw/PathGradientPaint;-><init>([Ljava/awt/Color;[F)V

    return-object v3
.end method

.method protected createRadialGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;Ljava/awt/Graphics2D;)Ljava/awt/Paint;
    .locals 12
    .param p1, "fill"    # Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;
    .param p2, "graphics"    # Ljava/awt/Graphics2D;

    .line 417
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint;->shape:Lorg/apache/poi/sl/usermodel/PlaceableShape;

    invoke-static {p2, v0}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    .line 419
    .local v0, "anchor":Ljava/awt/geom/Rectangle2D;
    new-instance v1, Ljava/awt/geom/Point2D$Double;

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v4

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v8

    div-double/2addr v8, v6

    add-double/2addr v4, v8

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    .line 422
    .local v1, "pCenter":Ljava/awt/geom/Point2D;
    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 424
    .local v2, "radius":F
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->getGradientFractions()[F

    move-result-object v3

    .line 425
    .local v3, "fractions":[F
    array-length v4, v3

    new-array v4, v4, [Ljava/awt/Color;

    .line 427
    .local v4, "colors":[Ljava/awt/Color;
    const/4 v5, 0x0

    .line 428
    .local v5, "i":I
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->getGradientColors()[Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v6

    .local v6, "arr$":[Lorg/apache/poi/sl/usermodel/ColorStyle;
    array-length v7, v6

    .local v7, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    .line 429
    .local v9, "fc":Lorg/apache/poi/sl/usermodel/ColorStyle;
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "i":I
    .local v10, "i":I
    invoke-static {v9}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object v11

    aput-object v11, v4, v5

    .line 428
    .end local v9    # "fc":Lorg/apache/poi/sl/usermodel/ColorStyle;
    add-int/lit8 v8, v8, 0x1

    move v5, v10

    goto :goto_0

    .line 432
    .end local v6    # "arr$":[Lorg/apache/poi/sl/usermodel/ColorStyle;
    .end local v7    # "len$":I
    .end local v8    # "i$":I
    .end local v10    # "i":I
    .restart local v5    # "i":I
    :cond_0
    new-instance v6, Ljava/awt/RadialGradientPaint;

    invoke-direct {v6, v1, v2, v3, v4}, Ljava/awt/RadialGradientPaint;-><init>(Ljava/awt/geom/Point2D;F[F[Ljava/awt/Color;)V

    return-object v6
.end method

.method protected getGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;Ljava/awt/Graphics2D;)Ljava/awt/Paint;
    .locals 3
    .param p1, "fill"    # Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;
    .param p2, "graphics"    # Ljava/awt/Graphics2D;

    .line 208
    sget-object v0, Lorg/apache/poi/sl/draw/DrawPaint$2;->$SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$GradientPaint$GradientType:[I

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->getGradientType()Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 214
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/sl/draw/DrawPaint;->createPathGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;Ljava/awt/Graphics2D;)Ljava/awt/Paint;

    move-result-object v0

    return-object v0

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gradient fill of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/sl/draw/DrawPaint;->createRadialGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;Ljava/awt/Graphics2D;)Ljava/awt/Paint;

    move-result-object v0

    return-object v0

    .line 210
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/sl/draw/DrawPaint;->createLinearGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;Ljava/awt/Graphics2D;)Ljava/awt/Paint;

    move-result-object v0

    return-object v0
.end method

.method public getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;
    .locals 1
    .param p1, "graphics"    # Ljava/awt/Graphics2D;
    .param p2, "paint"    # Lorg/apache/poi/sl/usermodel/PaintStyle;

    .line 117
    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NORM:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)Ljava/awt/Paint;

    move-result-object v0

    return-object v0
.end method

.method public getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)Ljava/awt/Paint;
    .locals 2
    .param p1, "graphics"    # Ljava/awt/Graphics2D;
    .param p2, "paint"    # Lorg/apache/poi/sl/usermodel/PaintStyle;
    .param p3, "modifier"    # Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    .line 121
    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NONE:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    .line 122
    return-object v1

    .line 124
    :cond_0
    instance-of v0, p2, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    if-eqz v0, :cond_1

    .line 125
    move-object v0, p2

    check-cast v0, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    invoke-virtual {p0, v0, p1, p3}, Lorg/apache/poi/sl/draw/DrawPaint;->getSolidPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)Ljava/awt/Paint;

    move-result-object v0

    return-object v0

    .line 126
    :cond_1
    instance-of v0, p2, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;

    if-eqz v0, :cond_2

    .line 127
    move-object v0, p2

    check-cast v0, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/sl/draw/DrawPaint;->getGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;Ljava/awt/Graphics2D;)Ljava/awt/Paint;

    move-result-object v0

    return-object v0

    .line 128
    :cond_2
    instance-of v0, p2, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;

    if-eqz v0, :cond_3

    .line 129
    move-object v0, p2

    check-cast v0, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/sl/draw/DrawPaint;->getTexturePaint(Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;Ljava/awt/Graphics2D;)Ljava/awt/Paint;

    move-result-object v0

    return-object v0

    .line 131
    :cond_3
    return-object v1
.end method

.method protected getSolidPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)Ljava/awt/Paint;
    .locals 3
    .param p1, "fill"    # Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;
    .param p2, "graphics"    # Ljava/awt/Graphics2D;
    .param p3, "modifier"    # Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    .line 135
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v0

    .line 136
    .local v0, "orig":Lorg/apache/poi/sl/usermodel/ColorStyle;
    new-instance v1, Lorg/apache/poi/sl/draw/DrawPaint$1;

    invoke-direct {v1, p0, v0, p3}, Lorg/apache/poi/sl/draw/DrawPaint$1;-><init>(Lorg/apache/poi/sl/draw/DrawPaint;Lorg/apache/poi/sl/usermodel/ColorStyle;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)V

    .line 204
    .local v1, "cs":Lorg/apache/poi/sl/usermodel/ColorStyle;
    invoke-static {v1}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object v2

    return-object v2
.end method

.method protected getTexturePaint(Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;Ljava/awt/Graphics2D;)Ljava/awt/Paint;
    .locals 12
    .param p1, "fill"    # Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;
    .param p2, "graphics"    # Ljava/awt/Graphics2D;

    .line 221
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getImageData()Ljava/io/InputStream;

    move-result-object v0

    .line 222
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 223
    return-object v1

    .line 225
    :cond_0
    if-eqz p2, :cond_4

    .line 227
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getImageRenderer(Ljava/awt/Graphics2D;Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;

    move-result-object v2

    .line 231
    .local v2, "renderer":Lorg/apache/poi/sl/draw/ImageRenderer;
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x7

    :try_start_0
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v0, v6}, Lorg/apache/poi/sl/draw/ImageRenderer;->loadImage(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    nop

    .line 238
    nop

    .line 240
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getAlpha()I

    move-result v6

    .line 241
    .local v6, "alpha":I
    if-ltz v6, :cond_1

    const v7, 0x186a0

    if-ge v6, v7, :cond_1

    .line 242
    int-to-float v7, v6

    const v8, 0x47c35000    # 100000.0f

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-interface {v2, v7, v8}, Lorg/apache/poi/sl/draw/ImageRenderer;->setAlpha(D)V

    .line 245
    :cond_1
    iget-object v7, p0, Lorg/apache/poi/sl/draw/DrawPaint;->shape:Lorg/apache/poi/sl/usermodel/PlaceableShape;

    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v7

    .line 247
    .local v7, "textAnchor":Ljava/awt/geom/Rectangle2D;
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getContentType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "image/x-wmf"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 250
    new-instance v8, Ljava/awt/Dimension;

    invoke-virtual {v7}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v9

    double-to-int v9, v9

    invoke-virtual {v7}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v10

    double-to-int v10, v10

    invoke-direct {v8, v9, v10}, Ljava/awt/Dimension;-><init>(II)V

    invoke-interface {v2, v8}, Lorg/apache/poi/sl/draw/ImageRenderer;->getImage(Ljava/awt/Dimension;)Ljava/awt/image/BufferedImage;

    move-result-object v8

    .local v8, "image":Ljava/awt/image/BufferedImage;
    goto :goto_0

    .line 252
    .end local v8    # "image":Ljava/awt/image/BufferedImage;
    :cond_2
    invoke-interface {v2}, Lorg/apache/poi/sl/draw/ImageRenderer;->getImage()Ljava/awt/image/BufferedImage;

    move-result-object v8

    .line 255
    .restart local v8    # "image":Ljava/awt/image/BufferedImage;
    :goto_0
    if-nez v8, :cond_3

    .line 256
    sget-object v9, Lorg/apache/poi/sl/draw/DrawPaint;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v10, "Can\'t load image data"

    aput-object v10, v3, v4

    invoke-virtual {v9, v5, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 257
    return-object v1

    .line 259
    :cond_3
    new-instance v1, Ljava/awt/TexturePaint;

    invoke-direct {v1, v8, v7}, Ljava/awt/TexturePaint;-><init>(Ljava/awt/image/BufferedImage;Ljava/awt/geom/Rectangle2D;)V

    .line 261
    .local v1, "paint":Ljava/awt/Paint;
    return-object v1

    .line 235
    .end local v1    # "paint":Ljava/awt/Paint;
    .end local v6    # "alpha":I
    .end local v7    # "textAnchor":Ljava/awt/geom/Rectangle2D;
    .end local v8    # "image":Ljava/awt/image/BufferedImage;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 233
    :catchall_0
    move-exception v6

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .end local v0    # "is":Ljava/io/InputStream;
    .end local v2    # "renderer":Lorg/apache/poi/sl/draw/ImageRenderer;
    .end local p1    # "fill":Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;
    .end local p2    # "graphics":Ljava/awt/Graphics2D;
    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 236
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v2    # "renderer":Lorg/apache/poi/sl/draw/ImageRenderer;
    .local v6, "e":Ljava/io/IOException;
    .restart local p1    # "fill":Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;
    .restart local p2    # "graphics":Ljava/awt/Graphics2D;
    :goto_1
    sget-object v7, Lorg/apache/poi/sl/draw/DrawPaint;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "Can\'t load image data - using transparent color"

    aput-object v9, v8, v4

    aput-object v6, v8, v3

    invoke-virtual {v7, v5, v8}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 237
    return-object v1

    .line 225
    .end local v2    # "renderer":Lorg/apache/poi/sl/draw/ImageRenderer;
    .end local v6    # "e":Ljava/io/IOException;
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method protected snapToAnchor(Ljava/awt/geom/Point2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 6
    .param p1, "p"    # Ljava/awt/geom/Point2D;
    .param p2, "anchor"    # Ljava/awt/geom/Rectangle2D;

    .line 450
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 451
    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    goto :goto_0

    .line 452
    :cond_0
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v4

    add-double/2addr v2, v4

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 453
    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    .line 456
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_2

    .line 457
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    goto :goto_1

    .line 458
    :cond_2
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v4

    add-double/2addr v2, v4

    cmpl-double v4, v0, v2

    if-lez v4, :cond_3

    .line 459
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    .line 461
    :cond_3
    :goto_1
    return-void
.end method
