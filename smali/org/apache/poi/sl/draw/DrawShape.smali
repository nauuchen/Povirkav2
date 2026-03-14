.class public Lorg/apache/poi/sl/draw/DrawShape;
.super Ljava/lang/Object;
.source "DrawShape.java"

# interfaces
.implements Lorg/apache/poi/sl/draw/Drawable;


# instance fields
.field protected final shape:Lorg/apache/poi/sl/usermodel/Shape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/Shape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;)V"
        }
    .end annotation

    .line 37
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/Shape;, "Lorg/apache/poi/sl/usermodel/Shape<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    .line 39
    return-void
.end method

.method public static getAnchor(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;
    .locals 2
    .param p0, "graphics"    # Ljava/awt/Graphics2D;
    .param p1, "anchor"    # Ljava/awt/geom/Rectangle2D;

    .line 182
    if-nez p0, :cond_0

    .line 183
    return-object p1

    .line 186
    :cond_0
    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p0, v0}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/geom/AffineTransform;

    .line 187
    .local v0, "tx":Ljava/awt/geom/AffineTransform;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    invoke-virtual {v0, p1}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v1

    invoke-interface {v1}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p1

    .line 190
    :cond_1
    return-object p1
.end method

.method public static getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;
    .locals 1
    .param p0, "graphics"    # Ljava/awt/Graphics2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Lorg/apache/poi/sl/usermodel/PlaceableShape<",
            "**>;)",
            "Ljava/awt/geom/Rectangle2D;"
        }
    .end annotation

    .line 178
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/PlaceableShape;, "Lorg/apache/poi/sl/usermodel/PlaceableShape<**>;"
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    return-object v0
.end method

.method protected static getStroke(Lorg/apache/poi/sl/usermodel/StrokeStyle;)Ljava/awt/BasicStroke;
    .locals 16
    .param p0, "strokeStyle"    # Lorg/apache/poi/sl/usermodel/StrokeStyle;

    .line 198
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getLineWidth()D

    move-result-wide v0

    double-to-float v0, v0

    .line 199
    .local v0, "lineWidth":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 201
    const/high16 v0, 0x3e800000    # 0.25f

    .line 204
    :cond_0
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object v1

    .line 205
    .local v1, "lineDash":Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    if-nez v1, :cond_1

    .line 206
    sget-object v1, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->SOLID:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-object v8, v1

    goto :goto_0

    .line 205
    :cond_1
    move-object v8, v1

    .line 209
    .end local v1    # "lineDash":Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    .local v8, "lineDash":Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    :goto_0
    iget-object v9, v8, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->pattern:[I

    .line 210
    .local v9, "dashPatI":[I
    const/4 v10, 0x0

    .line 211
    .local v10, "dash_phase":F
    const/4 v1, 0x0

    .line 212
    .local v1, "dashPatF":[F
    if-eqz v9, :cond_3

    .line 213
    array-length v2, v9

    new-array v1, v2, [F

    .line 214
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v9

    if-ge v2, v3, :cond_2

    .line 215
    aget v3, v9, v2

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v3, v3, v4

    aput v3, v1, v2

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v11, v1

    goto :goto_2

    .line 212
    .end local v2    # "i":I
    :cond_3
    move-object v11, v1

    .line 219
    .end local v1    # "dashPatF":[F
    .local v11, "dashPatF":[F
    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getLineCap()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    move-result-object v1

    .line 220
    .local v1, "lineCapE":Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    if-nez v1, :cond_4

    .line 221
    sget-object v1, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->FLAT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    move-object v12, v1

    goto :goto_3

    .line 220
    :cond_4
    move-object v12, v1

    .line 224
    .end local v1    # "lineCapE":Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    .local v12, "lineCapE":Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    :goto_3
    sget-object v1, Lorg/apache/poi/sl/draw/DrawShape$1;->$SwitchMap$org$apache$poi$sl$usermodel$StrokeStyle$LineCap:[I

    invoke-virtual {v12}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5

    move v1, v3

    .line 233
    .local v1, "lineCap":I
    const/4 v1, 0x0

    move v13, v1

    goto :goto_4

    .line 224
    .end local v1    # "lineCap":I
    :cond_5
    move v1, v3

    .line 229
    .restart local v1    # "lineCap":I
    const/4 v1, 0x2

    .line 230
    move v13, v1

    goto :goto_4

    .line 226
    .end local v1    # "lineCap":I
    :cond_6
    const/4 v1, 0x1

    .line 227
    .restart local v1    # "lineCap":I
    move v13, v1

    .line 237
    .end local v1    # "lineCap":I
    .local v13, "lineCap":I
    :goto_4
    const/4 v14, 0x1

    .line 239
    .local v14, "lineJoin":I
    new-instance v15, Ljava/awt/BasicStroke;

    const/4 v7, 0x0

    move-object v1, v15

    move v2, v0

    move v3, v13

    move v4, v14

    move v5, v0

    move-object v6, v11

    invoke-direct/range {v1 .. v7}, Ljava/awt/BasicStroke;-><init>(FIIF[FF)V

    return-object v15
.end method

.method protected static isHSLF(Lorg/apache/poi/sl/usermodel/Shape;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;)Z"
        }
    .end annotation

    .line 49
    .local p0, "shape":Lorg/apache/poi/sl/usermodel/Shape;, "Lorg/apache/poi/sl/usermodel/Shape<**>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hslf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static safeScale(DD)D
    .locals 5
    .param p0, "dim1"    # D
    .param p2, "dim2"    # D

    .line 163
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    cmpl-double v4, p0, v2

    if-nez v4, :cond_0

    .line 164
    return-wide v0

    .line 166
    :cond_0
    cmpl-double v4, p2, v2

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    div-double v0, p0, p2

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public applyTransform(Ljava/awt/Graphics2D;)V
    .locals 33
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 59
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    instance-of v3, v2, Lorg/apache/poi/sl/usermodel/PlaceableShape;

    if-nez v3, :cond_0

    .line 60
    return-void

    .line 63
    :cond_0
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/sl/usermodel/PlaceableShape;

    .line 64
    .local v3, "ps":Lorg/apache/poi/sl/usermodel/PlaceableShape;, "Lorg/apache/poi/sl/usermodel/PlaceableShape<**>;"
    invoke-static {v2}, Lorg/apache/poi/sl/draw/DrawShape;->isHSLF(Lorg/apache/poi/sl/usermodel/Shape;)Z

    move-result v2

    .line 65
    .local v2, "isHSLF":Z
    sget-object v4, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {v0, v4}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/awt/geom/AffineTransform;

    .line 66
    .local v4, "tx":Ljava/awt/geom/AffineTransform;
    if-nez v4, :cond_1

    .line 67
    new-instance v5, Ljava/awt/geom/AffineTransform;

    invoke-direct {v5}, Ljava/awt/geom/AffineTransform;-><init>()V

    move-object v4, v5

    .line 69
    :cond_1
    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v5

    invoke-interface {v5}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v5

    .line 71
    .local v5, "anchor":Ljava/awt/geom/Rectangle2D;
    const/4 v6, 0x3

    new-array v7, v6, [C

    if-eqz v2, :cond_2

    fill-array-data v7, :array_0

    goto :goto_0

    :cond_2
    fill-array-data v7, :array_1

    .line 72
    .local v7, "cmds":[C
    :goto_0
    move-object v8, v7

    .local v8, "arr$":[C
    array-length v9, v8

    .local v9, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    const-wide/16 v13, 0x0

    :goto_1
    if-ge v10, v9, :cond_f

    aget-char v15, v8, v10

    .line 73
    .local v15, "ch":C
    const/16 v6, 0x68

    if-eq v15, v6, :cond_d

    const/16 v6, 0x72

    if-eq v15, v6, :cond_5

    const/16 v6, 0x76

    if-ne v15, v6, :cond_4

    .line 84
    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getFlipVertical()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 85
    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v11

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v23

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v25

    move-object/from16 v27, v7

    .end local v7    # "cmds":[C
    .local v27, "cmds":[C
    add-double v6, v23, v25

    invoke-virtual {v0, v11, v12, v6, v7}, Ljava/awt/Graphics2D;->translate(DD)V

    .line 86
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    invoke-virtual {v0, v6, v7, v11, v12}, Ljava/awt/Graphics2D;->scale(DD)V

    .line 87
    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v11

    neg-double v11, v11

    invoke-virtual {v0, v6, v7, v11, v12}, Ljava/awt/Graphics2D;->translate(DD)V

    move/from16 v30, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v5

    move-object/from16 v23, v8

    move/from16 v16, v9

    move/from16 v29, v10

    move-object v10, v4

    goto/16 :goto_5

    .line 84
    .end local v27    # "cmds":[C
    .restart local v7    # "cmds":[C
    :cond_3
    move-object/from16 v27, v7

    .end local v7    # "cmds":[C
    .restart local v27    # "cmds":[C
    move/from16 v30, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v5

    move-object/from16 v23, v8

    move/from16 v16, v9

    move/from16 v29, v10

    move-object v10, v4

    goto/16 :goto_5

    .line 73
    .end local v27    # "cmds":[C
    .restart local v7    # "cmds":[C
    :cond_4
    move-wide v6, v13

    .line 157
    .local v6, "rotation":D
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unexpected transform code "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 92
    .end local v6    # "rotation":D
    :cond_5
    move-object/from16 v27, v7

    .end local v7    # "cmds":[C
    .restart local v27    # "cmds":[C
    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getRotation()D

    move-result-wide v13

    .line 93
    .local v13, "rotation":D
    const-wide/16 v6, 0x0

    cmpl-double v11, v13, v6

    if-eqz v11, :cond_c

    .line 95
    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getCenterX()D

    move-result-wide v11

    .line 96
    .local v11, "centerX":D
    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getCenterY()D

    move-result-wide v6

    .line 99
    .local v6, "centerY":D
    const-wide v19, 0x4076800000000000L    # 360.0

    rem-double v13, v13, v19

    .line 100
    const-wide/16 v17, 0x0

    cmpg-double v21, v13, v17

    if-gez v21, :cond_6

    .line 101
    add-double v13, v13, v19

    .line 104
    :cond_6
    double-to-int v1, v13

    add-int/lit8 v1, v1, 0x2d

    div-int/lit8 v1, v1, 0x5a

    rem-int/lit8 v1, v1, 0x4

    .line 105
    .local v1, "quadrant":I
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .local v19, "scaleX":D
    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    .line 108
    .local v21, "scaleY":D
    move-object/from16 v23, v8

    .end local v8    # "arr$":[C
    .local v23, "arr$":[C
    const/4 v8, 0x1

    if-eq v1, v8, :cond_8

    const/4 v8, 0x3

    if-ne v1, v8, :cond_7

    goto :goto_2

    .line 139
    :cond_7
    const/4 v1, 0x0

    move/from16 v30, v2

    move-object/from16 v25, v3

    move/from16 v16, v9

    move/from16 v29, v10

    move-wide/from16 v2, v19

    move-wide/from16 v8, v21

    goto :goto_4

    .line 108
    :cond_8
    const/4 v8, 0x3

    .line 119
    :goto_2
    move/from16 v16, v9

    .end local v9    # "len$":I
    .local v16, "len$":I
    if-eqz v2, :cond_9

    .line 120
    new-instance v8, Ljava/awt/geom/AffineTransform;

    invoke-direct {v8, v4}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    move/from16 v28, v1

    move/from16 v30, v2

    move/from16 v29, v10

    .local v8, "txs":Ljava/awt/geom/AffineTransform;
    goto :goto_3

    .line 123
    .end local v8    # "txs":Ljava/awt/geom/AffineTransform;
    :cond_9
    new-instance v8, Ljava/awt/geom/AffineTransform;

    invoke-direct {v8}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 124
    .restart local v8    # "txs":Ljava/awt/geom/AffineTransform;
    invoke-virtual {v8, v11, v12, v6, v7}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 125
    move/from16 v28, v1

    move v9, v2

    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    .end local v1    # "quadrant":I
    .end local v2    # "isHSLF":Z
    .local v9, "isHSLF":Z
    .local v28, "quadrant":I
    invoke-virtual {v8, v1, v2}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    .line 126
    neg-double v1, v11

    move/from16 v30, v9

    move/from16 v29, v10

    .end local v9    # "isHSLF":Z
    .end local v10    # "i$":I
    .local v29, "i$":I
    .local v30, "isHSLF":Z
    neg-double v9, v6

    invoke-virtual {v8, v1, v2, v9, v10}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 127
    invoke-virtual {v8, v4}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 130
    :goto_3
    invoke-virtual {v8, v11, v12, v6, v7}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 131
    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-virtual {v8, v1, v2}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    .line 132
    neg-double v1, v11

    neg-double v9, v6

    invoke-virtual {v8, v1, v2, v9, v10}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 134
    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v1

    invoke-interface {v1}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    .line 136
    .local v1, "anchor2":Ljava/awt/geom/Rectangle2D;
    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v9

    move-object/from16 v25, v3

    .end local v3    # "ps":Lorg/apache/poi/sl/usermodel/PlaceableShape;, "Lorg/apache/poi/sl/usermodel/PlaceableShape<**>;"
    .local v25, "ps":Lorg/apache/poi/sl/usermodel/PlaceableShape;, "Lorg/apache/poi/sl/usermodel/PlaceableShape<**>;"
    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v2

    invoke-static {v9, v10, v2, v3}, Lorg/apache/poi/sl/draw/DrawShape;->safeScale(DD)D

    move-result-wide v19

    .line 137
    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v9

    invoke-static {v2, v3, v9, v10}, Lorg/apache/poi/sl/draw/DrawShape;->safeScale(DD)D

    move-result-wide v21

    .line 138
    .end local v1    # "anchor2":Ljava/awt/geom/Rectangle2D;
    .end local v8    # "txs":Ljava/awt/geom/AffineTransform;
    move-wide/from16 v2, v19

    move-wide/from16 v8, v21

    move/from16 v1, v28

    .line 143
    .end local v19    # "scaleX":D
    .end local v21    # "scaleY":D
    .end local v28    # "quadrant":I
    .local v1, "quadrant":I
    .local v2, "scaleX":D
    .local v8, "scaleY":D
    :goto_4
    invoke-virtual {v0, v11, v12, v6, v7}, Ljava/awt/Graphics2D;->translate(DD)V

    .line 144
    move-object v10, v4

    move-object/from16 v26, v5

    .end local v4    # "tx":Ljava/awt/geom/AffineTransform;
    .end local v5    # "anchor":Ljava/awt/geom/Rectangle2D;
    .local v10, "tx":Ljava/awt/geom/AffineTransform;
    .local v26, "anchor":Ljava/awt/geom/Rectangle2D;
    int-to-double v4, v1

    const-wide v19, 0x4056800000000000L    # 90.0

    mul-double v4, v4, v19

    sub-double v4, v13, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 145
    .local v4, "rot":D
    const-wide/16 v17, 0x0

    cmpl-double v21, v4, v17

    if-eqz v21, :cond_a

    .line 146
    invoke-virtual {v0, v4, v5}, Ljava/awt/Graphics2D;->rotate(D)V

    .line 148
    :cond_a
    invoke-virtual {v0, v2, v3, v8, v9}, Ljava/awt/Graphics2D;->scale(DD)V

    .line 149
    move-wide/from16 v21, v2

    .end local v2    # "scaleX":D
    .local v21, "scaleX":D
    int-to-double v2, v1

    mul-double v2, v2, v19

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 150
    .end local v4    # "rot":D
    .local v2, "rot":D
    const-wide/16 v4, 0x0

    cmpl-double v17, v2, v4

    if-eqz v17, :cond_b

    .line 151
    invoke-virtual {v0, v2, v3}, Ljava/awt/Graphics2D;->rotate(D)V

    .line 153
    :cond_b
    neg-double v4, v11

    move/from16 v19, v1

    move-wide/from16 v31, v2

    .end local v1    # "quadrant":I
    .end local v2    # "rot":D
    .local v19, "quadrant":I
    .local v31, "rot":D
    neg-double v1, v6

    invoke-virtual {v0, v4, v5, v1, v2}, Ljava/awt/Graphics2D;->translate(DD)V

    .line 154
    .end local v6    # "centerY":D
    .end local v8    # "scaleY":D
    .end local v11    # "centerX":D
    .end local v19    # "quadrant":I
    .end local v21    # "scaleX":D
    .end local v31    # "rot":D
    goto :goto_5

    .line 93
    .end local v16    # "len$":I
    .end local v23    # "arr$":[C
    .end local v25    # "ps":Lorg/apache/poi/sl/usermodel/PlaceableShape;, "Lorg/apache/poi/sl/usermodel/PlaceableShape<**>;"
    .end local v26    # "anchor":Ljava/awt/geom/Rectangle2D;
    .end local v29    # "i$":I
    .end local v30    # "isHSLF":Z
    .local v2, "isHSLF":Z
    .restart local v3    # "ps":Lorg/apache/poi/sl/usermodel/PlaceableShape;, "Lorg/apache/poi/sl/usermodel/PlaceableShape<**>;"
    .local v4, "tx":Ljava/awt/geom/AffineTransform;
    .restart local v5    # "anchor":Ljava/awt/geom/Rectangle2D;
    .local v8, "arr$":[C
    .local v9, "len$":I
    .local v10, "i$":I
    :cond_c
    move/from16 v30, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v5

    move-object/from16 v23, v8

    move/from16 v16, v9

    move/from16 v29, v10

    move-object v10, v4

    .end local v2    # "isHSLF":Z
    .end local v3    # "ps":Lorg/apache/poi/sl/usermodel/PlaceableShape;, "Lorg/apache/poi/sl/usermodel/PlaceableShape<**>;"
    .end local v4    # "tx":Ljava/awt/geom/AffineTransform;
    .end local v5    # "anchor":Ljava/awt/geom/Rectangle2D;
    .end local v8    # "arr$":[C
    .end local v9    # "len$":I
    .local v10, "tx":Ljava/awt/geom/AffineTransform;
    .restart local v16    # "len$":I
    .restart local v23    # "arr$":[C
    .restart local v25    # "ps":Lorg/apache/poi/sl/usermodel/PlaceableShape;, "Lorg/apache/poi/sl/usermodel/PlaceableShape<**>;"
    .restart local v26    # "anchor":Ljava/awt/geom/Rectangle2D;
    .restart local v29    # "i$":I
    .restart local v30    # "isHSLF":Z
    goto :goto_5

    .line 76
    .end local v13    # "rotation":D
    .end local v16    # "len$":I
    .end local v23    # "arr$":[C
    .end local v25    # "ps":Lorg/apache/poi/sl/usermodel/PlaceableShape;, "Lorg/apache/poi/sl/usermodel/PlaceableShape<**>;"
    .end local v26    # "anchor":Ljava/awt/geom/Rectangle2D;
    .end local v27    # "cmds":[C
    .end local v29    # "i$":I
    .end local v30    # "isHSLF":Z
    .restart local v2    # "isHSLF":Z
    .restart local v3    # "ps":Lorg/apache/poi/sl/usermodel/PlaceableShape;, "Lorg/apache/poi/sl/usermodel/PlaceableShape<**>;"
    .restart local v4    # "tx":Ljava/awt/geom/AffineTransform;
    .restart local v5    # "anchor":Ljava/awt/geom/Rectangle2D;
    .restart local v7    # "cmds":[C
    .restart local v8    # "arr$":[C
    .restart local v9    # "len$":I
    .local v10, "i$":I
    :cond_d
    move/from16 v30, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move-object/from16 v23, v8

    move/from16 v16, v9

    move/from16 v29, v10

    move-object v10, v4

    .end local v2    # "isHSLF":Z
    .end local v3    # "ps":Lorg/apache/poi/sl/usermodel/PlaceableShape;, "Lorg/apache/poi/sl/usermodel/PlaceableShape<**>;"
    .end local v4    # "tx":Ljava/awt/geom/AffineTransform;
    .end local v5    # "anchor":Ljava/awt/geom/Rectangle2D;
    .end local v7    # "cmds":[C
    .end local v8    # "arr$":[C
    .end local v9    # "len$":I
    .local v10, "tx":Ljava/awt/geom/AffineTransform;
    .restart local v16    # "len$":I
    .restart local v23    # "arr$":[C
    .restart local v25    # "ps":Lorg/apache/poi/sl/usermodel/PlaceableShape;, "Lorg/apache/poi/sl/usermodel/PlaceableShape<**>;"
    .restart local v26    # "anchor":Ljava/awt/geom/Rectangle2D;
    .restart local v27    # "cmds":[C
    .restart local v29    # "i$":I
    .restart local v30    # "isHSLF":Z
    invoke-interface/range {v25 .. v25}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getFlipHorizontal()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 77
    invoke-virtual/range {v26 .. v26}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual/range {v26 .. v26}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-virtual/range {v26 .. v26}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/awt/Graphics2D;->translate(DD)V

    .line 78
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    invoke-virtual {v0, v3, v4, v1, v2}, Ljava/awt/Graphics2D;->scale(DD)V

    .line 79
    invoke-virtual/range {v26 .. v26}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v1

    neg-double v1, v1

    invoke-virtual/range {v26 .. v26}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/awt/Graphics2D;->translate(DD)V

    .line 72
    .end local v15    # "ch":C
    :cond_e
    :goto_5
    add-int/lit8 v1, v29, 0x1

    move-object v4, v10

    move/from16 v9, v16

    move-object/from16 v8, v23

    move-object/from16 v3, v25

    move-object/from16 v5, v26

    move-object/from16 v7, v27

    move/from16 v2, v30

    const/4 v6, 0x3

    move v10, v1

    move-object/from16 v1, p0

    .end local v29    # "i$":I
    .local v1, "i$":I
    goto/16 :goto_1

    .line 160
    .end local v1    # "i$":I
    .end local v10    # "tx":Ljava/awt/geom/AffineTransform;
    .end local v16    # "len$":I
    .end local v23    # "arr$":[C
    .end local v25    # "ps":Lorg/apache/poi/sl/usermodel/PlaceableShape;, "Lorg/apache/poi/sl/usermodel/PlaceableShape<**>;"
    .end local v26    # "anchor":Ljava/awt/geom/Rectangle2D;
    .end local v27    # "cmds":[C
    .end local v30    # "isHSLF":Z
    .restart local v2    # "isHSLF":Z
    .restart local v3    # "ps":Lorg/apache/poi/sl/usermodel/PlaceableShape;, "Lorg/apache/poi/sl/usermodel/PlaceableShape<**>;"
    .restart local v4    # "tx":Ljava/awt/geom/AffineTransform;
    .restart local v5    # "anchor":Ljava/awt/geom/Rectangle2D;
    .restart local v7    # "cmds":[C
    :cond_f
    return-void

    nop

    :array_0
    .array-data 2
        0x68s
        0x76s
        0x72s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x72s
        0x68s
        0x76s
    .end array-data
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 0
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 171
    return-void
.end method

.method public drawContent(Ljava/awt/Graphics2D;)V
    .locals 0
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 175
    return-void
.end method

.method protected getShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    return-object v0
.end method
