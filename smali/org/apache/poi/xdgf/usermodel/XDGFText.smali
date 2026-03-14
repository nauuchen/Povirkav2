.class public Lorg/apache/poi/xdgf/usermodel/XDGFText;
.super Ljava/lang/Object;
.source "XDGFText.java"


# instance fields
.field _parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

.field _text:Lcom/microsoft/schemas/office/visio/x2012/main/TextType;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/TextType;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 0
    .param p1, "text"    # Lcom/microsoft/schemas/office/visio/x2012/main/TextType;
    .param p2, "parent"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_text:Lcom/microsoft/schemas/office/visio/x2012/main/TextType;

    .line 41
    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 42
    return-void
.end method


# virtual methods
.method public draw(Ljava/awt/Graphics2D;)V
    .locals 20
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 112
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/XDGFText;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "textContent":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/XDGFText;->getTextBounds()Ljava/awt/geom/Rectangle2D$Double;

    move-result-object v3

    .line 118
    .local v3, "bounds":Ljava/awt/geom/Rectangle2D$Double;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "lines":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Graphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v5

    .line 120
    .local v5, "frc":Ljava/awt/font/FontRenderContext;
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Graphics2D;->getFont()Ljava/awt/Font;

    move-result-object v6

    .line 122
    .local v6, "font":Ljava/awt/Font;
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v7

    .line 126
    .local v7, "oldTr":Ljava/awt/geom/AffineTransform;
    iget-object v8, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v8}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFlipX()Ljava/lang/Boolean;

    move-result-object v8

    .line 127
    .local v8, "flipX":Ljava/lang/Boolean;
    iget-object v9, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v9}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFlipY()Ljava/lang/Boolean;

    move-result-object v9

    .line 129
    .local v9, "flipY":Ljava/lang/Boolean;
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    if-eqz v9, :cond_1

    iget-object v10, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v10}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFlipY()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_2

    .line 130
    :cond_1
    iget-wide v10, v3, Ljava/awt/geom/Rectangle2D$Double;->x:D

    iget-wide v12, v3, Ljava/awt/geom/Rectangle2D$Double;->y:D

    invoke-virtual {v1, v10, v11, v12, v13}, Ljava/awt/Graphics2D;->translate(DD)V

    .line 131
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-virtual {v1, v14, v15, v10, v11}, Ljava/awt/Graphics2D;->scale(DD)V

    .line 132
    iget-wide v10, v3, Ljava/awt/geom/Rectangle2D$Double;->height:D

    neg-double v10, v10

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Graphics2D;->getFontMetrics()Ljava/awt/FontMetrics;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/awt/FontMetrics;->getMaxCharBounds(Ljava/awt/Graphics;)Ljava/awt/geom/Rectangle2D;

    move-result-object v12

    invoke-virtual {v12}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v12

    add-double/2addr v10, v12

    const-wide/16 v12, 0x0

    invoke-virtual {v1, v12, v13, v10, v11}, Ljava/awt/Graphics2D;->translate(DD)V

    .line 137
    :cond_2
    if-eqz v8, :cond_3

    iget-object v10, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v10}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFlipX()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 138
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-virtual {v1, v10, v11, v14, v15}, Ljava/awt/Graphics2D;->scale(DD)V

    .line 139
    iget-wide v10, v3, Ljava/awt/geom/Rectangle2D$Double;->width:D

    neg-double v10, v10

    const-wide/16 v12, 0x0

    invoke-virtual {v1, v10, v11, v12, v13}, Ljava/awt/Graphics2D;->translate(DD)V

    .line 142
    :cond_3
    iget-object v10, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v10}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtAngle()Ljava/lang/Double;

    move-result-object v10

    .line 143
    .local v10, "txtAngle":Ljava/lang/Double;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v15, v11, v13

    if-lez v15, :cond_4

    .line 144
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Ljava/awt/Graphics2D;->rotate(D)V

    .line 146
    :cond_4
    const/4 v11, 0x0

    .line 147
    .local v11, "nextY":F
    move-object v12, v4

    .local v12, "arr$":[Ljava/lang/String;
    array-length v13, v12

    .local v13, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_0
    if-ge v14, v13, :cond_7

    aget-object v15, v12, v14

    .line 149
    .local v15, "line":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_5

    .line 150
    move-object/from16 v16, v2

    move-object/from16 v19, v3

    move-object/from16 v18, v4

    move-object/from16 v17, v5

    goto :goto_2

    .line 152
    :cond_5
    new-instance v0, Ljava/awt/font/TextLayout;

    invoke-direct {v0, v15, v6, v5}, Ljava/awt/font/TextLayout;-><init>(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    .line 154
    .local v0, "layout":Ljava/awt/font/TextLayout;
    invoke-virtual {v0}, Ljava/awt/font/TextLayout;->isLeftToRight()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 155
    move-object/from16 v16, v2

    .end local v2    # "textContent":Ljava/lang/String;
    .local v16, "textContent":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v11}, Ljava/awt/font/TextLayout;->draw(Ljava/awt/Graphics2D;FF)V

    move-object/from16 v19, v3

    move-object/from16 v18, v4

    move-object/from16 v17, v5

    goto :goto_1

    .line 157
    .end local v16    # "textContent":Ljava/lang/String;
    .restart local v2    # "textContent":Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v2

    .end local v2    # "textContent":Ljava/lang/String;
    .restart local v16    # "textContent":Ljava/lang/String;
    move-object v2, v4

    move-object/from16 v17, v5

    .end local v4    # "lines":[Ljava/lang/String;
    .end local v5    # "frc":Ljava/awt/font/FontRenderContext;
    .local v2, "lines":[Ljava/lang/String;
    .local v17, "frc":Ljava/awt/font/FontRenderContext;
    iget-wide v4, v3, Ljava/awt/geom/Rectangle2D$Double;->width:D

    move-object/from16 v18, v2

    .end local v2    # "lines":[Ljava/lang/String;
    .local v18, "lines":[Ljava/lang/String;
    invoke-virtual {v0}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result v2

    move-object/from16 v19, v3

    .end local v3    # "bounds":Ljava/awt/geom/Rectangle2D$Double;
    .local v19, "bounds":Ljava/awt/geom/Rectangle2D$Double;
    float-to-double v2, v2

    sub-double/2addr v4, v2

    double-to-float v2, v4

    invoke-virtual {v0, v1, v2, v11}, Ljava/awt/font/TextLayout;->draw(Ljava/awt/Graphics2D;FF)V

    .line 160
    :goto_1
    invoke-virtual {v0}, Ljava/awt/font/TextLayout;->getAscent()F

    move-result v2

    invoke-virtual {v0}, Ljava/awt/font/TextLayout;->getDescent()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0}, Ljava/awt/font/TextLayout;->getLeading()F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v11, v2

    .line 147
    .end local v0    # "layout":Ljava/awt/font/TextLayout;
    .end local v15    # "line":Ljava/lang/String;
    :goto_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v5, v17

    move-object/from16 v4, v18

    move-object/from16 v3, v19

    goto :goto_0

    .line 164
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v13    # "len$":I
    .end local v14    # "i$":I
    .end local v16    # "textContent":Ljava/lang/String;
    .end local v17    # "frc":Ljava/awt/font/FontRenderContext;
    .end local v18    # "lines":[Ljava/lang/String;
    .end local v19    # "bounds":Ljava/awt/geom/Rectangle2D$Double;
    .local v2, "textContent":Ljava/lang/String;
    .restart local v3    # "bounds":Ljava/awt/geom/Rectangle2D$Double;
    .restart local v4    # "lines":[Ljava/lang/String;
    .restart local v5    # "frc":Ljava/awt/font/FontRenderContext;
    :cond_7
    invoke-virtual {v1, v7}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 165
    return-void
.end method

.method public getBoundsAsPath()Ljava/awt/geom/Path2D$Double;
    .locals 10

    .line 84
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFText;->getTextBounds()Ljava/awt/geom/Rectangle2D$Double;

    move-result-object v0

    .line 85
    .local v0, "rect":Ljava/awt/geom/Rectangle2D$Double;
    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D$Double;->getWidth()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 86
    .local v1, "w":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D$Double;->getHeight()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 88
    .local v2, "h":Ljava/lang/Double;
    new-instance v3, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v3}, Ljava/awt/geom/Path2D$Double;-><init>()V

    .line 89
    .local v3, "bounds":Ljava/awt/geom/Path2D$Double;
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5, v4, v5}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    .line 90
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v4, v5}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    .line 91
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v3, v6, v7, v8, v9}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    .line 92
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    .line 93
    invoke-virtual {v3, v4, v5, v4, v5}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    .line 95
    return-object v3
.end method

.method public getTextBounds()Ljava/awt/geom/Rectangle2D$Double;
    .locals 27

    .line 63
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtPinX()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 64
    .local v1, "txtPinX":D
    iget-object v3, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtPinY()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 66
    .local v3, "txtPinY":D
    iget-object v5, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v5}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtLocPinX()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 67
    .local v5, "txtLocPinX":D
    iget-object v7, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v7}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtLocPinY()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 69
    .local v7, "txtLocPinY":D
    iget-object v9, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v9}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtWidth()Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    .line 70
    .local v19, "txtWidth":D
    iget-object v9, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v9}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtHeight()Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    .line 72
    .local v21, "txtHeight":D
    sub-double v23, v1, v5

    .line 73
    .local v23, "x":D
    sub-double v25, v3, v7

    .line 75
    .local v25, "y":D
    new-instance v9, Ljava/awt/geom/Rectangle2D$Double;

    move-object v10, v9

    move-wide/from16 v11, v23

    move-wide/from16 v13, v25

    move-wide/from16 v15, v19

    move-wide/from16 v17, v21

    invoke-direct/range {v10 .. v18}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v9
.end method

.method public getTextCenter()Ljava/awt/geom/Point2D$Double;
    .locals 5

    .line 102
    new-instance v0, Ljava/awt/geom/Point2D$Double;

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtLocPinX()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtLocPinY()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_text:Lcom/microsoft/schemas/office/visio/x2012/main/TextType;

    check-cast v0, Lcom/microsoft/schemas/office/visio/x2012/main/impl/TextTypeImpl;

    invoke-virtual {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/impl/TextTypeImpl;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/TextType;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_text:Lcom/microsoft/schemas/office/visio/x2012/main/TextType;

    return-object v0
.end method
