.class public Lorg/apache/poi/sl/draw/DrawTextShape;
.super Lorg/apache/poi/sl/draw/DrawSimpleShape;
.source "DrawTextShape.java"


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/TextShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TextShape<",
            "**>;)V"
        }
    .end annotation

    .line 38
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/TextShape;, "Lorg/apache/poi/sl/usermodel/TextShape<**>;"
    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawSimpleShape;-><init>(Lorg/apache/poi/sl/usermodel/SimpleShape;)V

    .line 39
    return-void
.end method


# virtual methods
.method public drawContent(Ljava/awt/Graphics2D;)V
    .locals 30
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 43
    move-object/from16 v6, p1

    invoke-static/range {p1 .. p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/apache/poi/sl/draw/DrawFactory;->fixFonts(Ljava/awt/Graphics2D;)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawTextShape;->getShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v7

    .line 47
    .local v7, "s":Lorg/apache/poi/sl/usermodel/TextShape;, "Lorg/apache/poi/sl/usermodel/TextShape<**>;"
    invoke-static {v6, v7}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v8

    .line 48
    .local v8, "anchor":Ljava/awt/geom/Rectangle2D;
    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/TextShape;->getInsets()Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object v9

    .line 49
    .local v9, "insets":Lorg/apache/poi/sl/usermodel/Insets2D;
    invoke-virtual {v8}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v0

    iget-wide v2, v9, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    add-double v10, v0, v2

    .line 50
    .local v10, "x":D
    invoke-virtual {v8}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v0

    .line 53
    .local v0, "y":D
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v12

    .line 60
    .local v12, "tx":Ljava/awt/geom/AffineTransform;
    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/TextShape;->getFlipVertical()Z

    move-result v2

    .line 61
    .local v2, "vertFlip":Z
    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/TextShape;->getFlipHorizontal()Z

    move-result v3

    .line 62
    .local v3, "horzFlip":Z
    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/TextShape;->getParent()Lorg/apache/poi/sl/usermodel/ShapeContainer;

    move-result-object v4

    move v13, v2

    move v14, v3

    move-object v15, v4

    .line 63
    .end local v2    # "vertFlip":Z
    .end local v3    # "horzFlip":Z
    .local v13, "vertFlip":Z
    .local v14, "horzFlip":Z
    .local v15, "sc":Lorg/apache/poi/sl/usermodel/ShapeContainer;, "Lorg/apache/poi/sl/usermodel/ShapeContainer<**>;"
    :goto_0
    instance-of v2, v15, Lorg/apache/poi/sl/usermodel/PlaceableShape;

    if-eqz v2, :cond_0

    .line 64
    move-object v2, v15

    check-cast v2, Lorg/apache/poi/sl/usermodel/PlaceableShape;

    .line 65
    .local v2, "ps":Lorg/apache/poi/sl/usermodel/PlaceableShape;, "Lorg/apache/poi/sl/usermodel/PlaceableShape<**>;"
    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getFlipVertical()Z

    move-result v3

    xor-int/2addr v13, v3

    .line 66
    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getFlipHorizontal()Z

    move-result v3

    xor-int/2addr v14, v3

    .line 67
    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getParent()Lorg/apache/poi/sl/usermodel/ShapeContainer;

    move-result-object v15

    .line 68
    .end local v2    # "ps":Lorg/apache/poi/sl/usermodel/PlaceableShape;, "Lorg/apache/poi/sl/usermodel/PlaceableShape<**>;"
    goto :goto_0

    .line 72
    :cond_0
    xor-int v2, v14, v13

    if-eqz v2, :cond_1

    .line 73
    invoke-virtual {v8}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v2

    .line 74
    .local v2, "ax":D
    invoke-virtual {v8}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v4

    .line 75
    .local v4, "ay":D
    invoke-virtual {v8}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v16

    move/from16 v18, v13

    move/from16 v19, v14

    .end local v13    # "vertFlip":Z
    .end local v14    # "horzFlip":Z
    .local v18, "vertFlip":Z
    .local v19, "horzFlip":Z
    add-double v13, v2, v16

    invoke-virtual {v6, v13, v14, v4, v5}, Ljava/awt/Graphics2D;->translate(DD)V

    .line 76
    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    move-wide/from16 v16, v10

    .end local v10    # "x":D
    .local v16, "x":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v6, v13, v14, v10, v11}, Ljava/awt/Graphics2D;->scale(DD)V

    .line 77
    neg-double v10, v2

    neg-double v13, v4

    invoke-virtual {v6, v10, v11, v13, v14}, Ljava/awt/Graphics2D;->translate(DD)V

    goto :goto_1

    .line 72
    .end local v2    # "ax":D
    .end local v4    # "ay":D
    .end local v16    # "x":D
    .end local v18    # "vertFlip":Z
    .end local v19    # "horzFlip":Z
    .restart local v10    # "x":D
    .restart local v13    # "vertFlip":Z
    .restart local v14    # "horzFlip":Z
    :cond_1
    move-wide/from16 v16, v10

    move/from16 v18, v13

    move/from16 v19, v14

    .line 80
    .end local v10    # "x":D
    .end local v13    # "vertFlip":Z
    .end local v14    # "horzFlip":Z
    .restart local v16    # "x":D
    .restart local v18    # "vertFlip":Z
    .restart local v19    # "horzFlip":Z
    :goto_1
    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/TextShape;->getTextRotation()Ljava/lang/Double;

    move-result-object v10

    .line 81
    .local v10, "textRot":Ljava/lang/Double;
    const-wide/16 v2, 0x0

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v11, v4, v2

    if-eqz v11, :cond_2

    .line 82
    invoke-virtual {v8}, Ljava/awt/geom/Rectangle2D;->getCenterX()D

    move-result-wide v2

    .line 83
    .local v2, "cx":D
    invoke-virtual {v8}, Ljava/awt/geom/Rectangle2D;->getCenterY()D

    move-result-wide v4

    .line 84
    .local v4, "cy":D
    invoke-virtual {v6, v2, v3, v4, v5}, Ljava/awt/Graphics2D;->translate(DD)V

    .line 85
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-virtual {v6, v13, v14}, Ljava/awt/Graphics2D;->rotate(D)V

    .line 86
    neg-double v13, v2

    move-wide/from16 v20, v2

    .end local v2    # "cx":D
    .local v20, "cx":D
    neg-double v2, v4

    invoke-virtual {v6, v13, v14, v2, v3}, Ljava/awt/Graphics2D;->translate(DD)V

    move-wide/from16 v2, v20

    .line 92
    .end local v4    # "cy":D
    .end local v20    # "cx":D
    :cond_2
    sget-object v4, Lorg/apache/poi/sl/draw/DrawTextShape$1;->$SwitchMap$org$apache$poi$sl$usermodel$VerticalAlignment:[I

    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/TextShape;->getVerticalAlignment()Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/sl/usermodel/VerticalAlignment;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    .line 95
    iget-wide v2, v9, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    add-double/2addr v0, v2

    .line 96
    move-wide v13, v0

    goto :goto_2

    .line 102
    .local v2, "textHeight":D
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lorg/apache/poi/sl/draw/DrawTextShape;->getTextHeight(Ljava/awt/Graphics2D;)D

    move-result-wide v2

    .line 103
    invoke-virtual {v8}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v4

    sub-double/2addr v4, v2

    iget-wide v13, v9, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    sub-double/2addr v4, v13

    iget-wide v13, v9, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    sub-double/2addr v4, v13

    .line 104
    .local v4, "delta":D
    iget-wide v13, v9, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v22, v4, v20

    add-double v13, v13, v22

    add-double/2addr v0, v13

    move-wide v13, v0

    goto :goto_2

    .line 98
    .end local v2    # "textHeight":D
    .end local v4    # "delta":D
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lorg/apache/poi/sl/draw/DrawTextShape;->getTextHeight(Ljava/awt/Graphics2D;)D

    move-result-wide v2

    .line 99
    .restart local v2    # "textHeight":D
    invoke-virtual {v8}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v4

    sub-double/2addr v4, v2

    iget-wide v13, v9, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    sub-double/2addr v4, v13

    add-double/2addr v0, v4

    .line 100
    move-wide v13, v0

    .line 108
    .end local v0    # "y":D
    .end local v2    # "textHeight":D
    .local v13, "y":D
    :goto_2
    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/TextShape;->getTextDirection()Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    move-result-object v11

    .line 109
    .local v11, "textDir":Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;
    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->VERTICAL:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    if-eq v11, v0, :cond_6

    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->VERTICAL_270:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    if-ne v11, v0, :cond_5

    goto :goto_3

    :cond_5
    move-object/from16 v22, v9

    move-object/from16 v23, v10

    goto :goto_5

    .line 110
    :cond_6
    :goto_3
    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->VERTICAL:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    if-ne v11, v0, :cond_7

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_4

    :cond_7
    const-wide v0, 0x4070e00000000000L    # 270.0

    .line 111
    .local v0, "deg":D
    :goto_4
    invoke-virtual {v8}, Ljava/awt/geom/Rectangle2D;->getCenterX()D

    move-result-wide v2

    .line 112
    .local v2, "cx":D
    invoke-virtual {v8}, Ljava/awt/geom/Rectangle2D;->getCenterY()D

    move-result-wide v4

    .line 113
    .local v4, "cy":D
    invoke-virtual {v6, v2, v3, v4, v5}, Ljava/awt/Graphics2D;->translate(DD)V

    .line 114
    move-object/from16 v22, v9

    move-object/from16 v23, v10

    .end local v9    # "insets":Lorg/apache/poi/sl/usermodel/Insets2D;
    .end local v10    # "textRot":Ljava/lang/Double;
    .local v22, "insets":Lorg/apache/poi/sl/usermodel/Insets2D;
    .local v23, "textRot":Ljava/lang/Double;
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/awt/Graphics2D;->rotate(D)V

    .line 115
    neg-double v9, v2

    move-wide/from16 v24, v0

    .end local v0    # "deg":D
    .local v24, "deg":D
    neg-double v0, v4

    invoke-virtual {v6, v9, v10, v0, v1}, Ljava/awt/Graphics2D;->translate(DD)V

    .line 119
    invoke-virtual {v8}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v0

    .line 120
    .local v0, "w":D
    invoke-virtual {v8}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v9

    .line 121
    .local v9, "h":D
    sub-double v26, v0, v9

    move-wide/from16 v28, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    .end local v0    # "w":D
    .local v28, "w":D
    div-double v0, v26, v20

    .line 122
    .local v0, "dx":D
    move-wide/from16 v20, v2

    .end local v2    # "cx":D
    .restart local v20    # "cx":D
    neg-double v2, v0

    invoke-virtual {v6, v0, v1, v2, v3}, Ljava/awt/Graphics2D;->translate(DD)V

    .line 125
    .end local v0    # "dx":D
    .end local v4    # "cy":D
    .end local v9    # "h":D
    .end local v20    # "cx":D
    .end local v24    # "deg":D
    .end local v28    # "w":D
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    move-wide v4, v13

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/sl/draw/DrawTextShape;->drawParagraphs(Ljava/awt/Graphics2D;DD)D

    .line 128
    invoke-virtual {v6, v12}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 129
    return-void
.end method

.method public drawParagraphs(Ljava/awt/Graphics2D;DD)D
    .locals 20
    .param p1, "graphics"    # Ljava/awt/Graphics2D;
    .param p2, "x"    # D
    .param p4, "y"    # D

    .line 137
    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v1

    .line 139
    .local v1, "fact":Lorg/apache/poi/sl/draw/DrawFactory;
    move-wide/from16 v2, p4

    .line 140
    .local v2, "y0":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawTextShape;->getShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/poi/sl/usermodel/TextShape;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 142
    .local v4, "paragraphs":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/poi/sl/usermodel/TextParagraph<**+Lorg/apache/poi/sl/usermodel/TextRun;>;>;"
    const/4 v5, 0x1

    .line 143
    .local v5, "isFirstLine":Z
    const/4 v6, 0x0

    move v7, v5

    move v8, v6

    move-wide/from16 v5, p4

    .end local p4    # "y":D
    .local v5, "y":D
    .local v7, "isFirstLine":Z
    .local v8, "autoNbrIdx":I
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 144
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/sl/usermodel/TextParagraph;

    .line 145
    .local v9, "p":Lorg/apache/poi/sl/usermodel/TextParagraph;, "Lorg/apache/poi/sl/usermodel/TextParagraph<**+Lorg/apache/poi/sl/usermodel/TextRun;>;"
    invoke-virtual {v1, v9}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/TextParagraph;)Lorg/apache/poi/sl/draw/DrawTextParagraph;

    move-result-object v10

    .line 146
    .local v10, "dp":Lorg/apache/poi/sl/draw/DrawTextParagraph;
    invoke-interface {v9}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getBulletStyle()Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;

    move-result-object v11

    .line 147
    .local v11, "bs":Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;
    if-eqz v11, :cond_2

    invoke-interface {v11}, Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;->getAutoNumberingScheme()Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-result-object v12

    if-nez v12, :cond_0

    goto :goto_1

    .line 150
    :cond_0
    invoke-interface {v11}, Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;->getAutoNumberingStartAt()Ljava/lang/Integer;

    move-result-object v12

    .line 151
    .local v12, "startAt":Ljava/lang/Integer;
    if-nez v12, :cond_1

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 153
    :cond_1
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-le v13, v8, :cond_3

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_2

    .line 148
    .end local v12    # "startAt":Ljava/lang/Integer;
    :cond_2
    :goto_1
    const/4 v8, -0x1

    .line 155
    :cond_3
    :goto_2
    invoke-virtual {v10, v8}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->setAutoNumberingIdx(I)V

    .line 156
    invoke-virtual {v10, v0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->breakText(Ljava/awt/Graphics2D;)V

    .line 158
    const-wide/16 v14, 0x0

    if-eqz v7, :cond_4

    .line 159
    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getFirstLineLeading()F

    move-result v12

    float-to-double v12, v12

    add-double/2addr v5, v12

    goto :goto_3

    .line 162
    :cond_4
    invoke-interface {v9}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getSpaceBefore()Ljava/lang/Double;

    move-result-object v12

    .line 163
    .local v12, "spaceBefore":Ljava/lang/Double;
    if-nez v12, :cond_5

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    .line 164
    :cond_5
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    cmpl-double v13, v16, v14

    if-lez v13, :cond_6

    .line 167
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    const-wide v18, 0x3f847ae147ae147bL    # 0.01

    mul-double v16, v16, v18

    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getFirstLineHeight()F

    move-result v13

    float-to-double v14, v13

    mul-double v16, v16, v14

    add-double v5, v5, v16

    goto :goto_3

    .line 170
    :cond_6
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    neg-double v13, v13

    add-double/2addr v5, v13

    .line 173
    .end local v12    # "spaceBefore":Ljava/lang/Double;
    :goto_3
    const/4 v7, 0x0

    .line 175
    move-wide/from16 v12, p2

    invoke-virtual {v10, v12, v13, v5, v6}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->setPosition(DD)V

    .line 176
    invoke-virtual {v10, v0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->draw(Ljava/awt/Graphics2D;)V

    .line 177
    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getY()D

    move-result-wide v14

    add-double/2addr v5, v14

    .line 179
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 180
    invoke-interface {v9}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getSpaceAfter()Ljava/lang/Double;

    move-result-object v14

    .line 181
    .local v14, "spaceAfter":Ljava/lang/Double;
    if-nez v14, :cond_7

    const-wide/16 v15, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    goto :goto_4

    :cond_7
    const-wide/16 v15, 0x0

    .line 182
    :goto_4
    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    cmpl-double v19, v17, v15

    if-lez v19, :cond_8

    .line 185
    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    const-wide v17, 0x3f847ae147ae147bL    # 0.01

    mul-double v15, v15, v17

    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getLastLineHeight()F

    move-result v0

    move-object/from16 v17, v1

    .end local v1    # "fact":Lorg/apache/poi/sl/draw/DrawFactory;
    .local v17, "fact":Lorg/apache/poi/sl/draw/DrawFactory;
    float-to-double v0, v0

    mul-double v15, v15, v0

    add-double/2addr v5, v15

    goto :goto_5

    .line 188
    .end local v17    # "fact":Lorg/apache/poi/sl/draw/DrawFactory;
    .restart local v1    # "fact":Lorg/apache/poi/sl/draw/DrawFactory;
    :cond_8
    move-object/from16 v17, v1

    .end local v1    # "fact":Lorg/apache/poi/sl/draw/DrawFactory;
    .restart local v17    # "fact":Lorg/apache/poi/sl/draw/DrawFactory;
    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    neg-double v0, v0

    add-double/2addr v5, v0

    goto :goto_5

    .line 179
    .end local v14    # "spaceAfter":Ljava/lang/Double;
    .end local v17    # "fact":Lorg/apache/poi/sl/draw/DrawFactory;
    .restart local v1    # "fact":Lorg/apache/poi/sl/draw/DrawFactory;
    :cond_9
    move-object/from16 v17, v1

    .line 143
    .end local v1    # "fact":Lorg/apache/poi/sl/draw/DrawFactory;
    .end local v9    # "p":Lorg/apache/poi/sl/usermodel/TextParagraph;, "Lorg/apache/poi/sl/usermodel/TextParagraph<**+Lorg/apache/poi/sl/usermodel/TextRun;>;"
    .end local v10    # "dp":Lorg/apache/poi/sl/draw/DrawTextParagraph;
    .end local v11    # "bs":Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;
    .restart local v17    # "fact":Lorg/apache/poi/sl/draw/DrawFactory;
    :goto_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    goto/16 :goto_0

    .line 192
    .end local v8    # "autoNbrIdx":I
    .end local v17    # "fact":Lorg/apache/poi/sl/draw/DrawFactory;
    .restart local v1    # "fact":Lorg/apache/poi/sl/draw/DrawFactory;
    :cond_a
    sub-double v0, v5, v2

    return-wide v0
.end method

.method protected bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextShape;->getShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextShape;->getShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v0

    return-object v0
.end method

.method protected getShape()Lorg/apache/poi/sl/usermodel/TextShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/TextShape<",
            "*+",
            "Lorg/apache/poi/sl/usermodel/TextParagraph<",
            "**+",
            "Lorg/apache/poi/sl/usermodel/TextRun;",
            ">;>;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    check-cast v0, Lorg/apache/poi/sl/usermodel/TextShape;

    return-object v0
.end method

.method public getTextHeight()D
    .locals 2

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/DrawTextShape;->getTextHeight(Ljava/awt/Graphics2D;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTextHeight(Ljava/awt/Graphics2D;)D
    .locals 8
    .param p1, "oldGraphics"    # Ljava/awt/Graphics2D;

    .line 212
    new-instance v0, Ljava/awt/image/BufferedImage;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 213
    .local v0, "img":Ljava/awt/image/BufferedImage;
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v7

    .line 214
    .local v7, "graphics":Ljava/awt/Graphics2D;
    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getRenderingHints()Ljava/awt/RenderingHints;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/awt/Graphics2D;->addRenderingHints(Ljava/util/Map;)V

    .line 216
    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 218
    :cond_0
    invoke-static {v7}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/apache/poi/sl/draw/DrawFactory;->fixFonts(Ljava/awt/Graphics2D;)V

    .line 219
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/sl/draw/DrawTextShape;->drawParagraphs(Ljava/awt/Graphics2D;DD)D

    move-result-wide v1

    return-wide v1
.end method
