.class public Lorg/apache/poi/sl/draw/DrawTableShape;
.super Lorg/apache/poi/sl/draw/DrawShape;
.source "DrawTableShape.java"


# static fields
.field public static final borderSize:I = 0x2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/TableShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TableShape<",
            "**>;)V"
        }
    .end annotation

    .line 43
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/TableShape;, "Lorg/apache/poi/sl/usermodel/TableShape<**>;"
    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawShape;-><init>(Lorg/apache/poi/sl/usermodel/Shape;)V

    .line 44
    return-void
.end method

.method private static varargs setEdges(Lorg/apache/poi/sl/usermodel/TableCell;[Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;[Ljava/lang/Object;)V
    .locals 10
    .param p1, "edges"    # [Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TableCell<",
            "**>;[",
            "Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 234
    .local p0, "cell":Lorg/apache/poi/sl/usermodel/TableCell;, "Lorg/apache/poi/sl/usermodel/TableCell<**>;"
    if-nez p0, :cond_0

    .line 235
    return-void

    .line 237
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_7

    aget-object v3, v0, v2

    .line 238
    .local v3, "be":Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;
    if-eqz v3, :cond_6

    .line 239
    array-length v4, p2

    if-nez v4, :cond_1

    .line 240
    invoke-interface {p0, v3}, Lorg/apache/poi/sl/usermodel/TableCell;->removeBorder(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)V

    goto :goto_3

    .line 242
    :cond_1
    move-object v4, p2

    .local v4, "arr$":[Ljava/lang/Object;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v5, :cond_6

    aget-object v7, v4, v6

    .line 243
    .local v7, "o":Ljava/lang/Object;
    instance-of v8, v7, Ljava/lang/Double;

    if-eqz v8, :cond_2

    .line 244
    move-object v8, v7

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-interface {p0, v3, v8, v9}, Lorg/apache/poi/sl/usermodel/TableCell;->setBorderWidth(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;D)V

    goto :goto_2

    .line 245
    :cond_2
    instance-of v8, v7, Ljava/awt/Color;

    if-eqz v8, :cond_3

    .line 246
    move-object v8, v7

    check-cast v8, Ljava/awt/Color;

    invoke-interface {p0, v3, v8}, Lorg/apache/poi/sl/usermodel/TableCell;->setBorderColor(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Ljava/awt/Color;)V

    goto :goto_2

    .line 247
    :cond_3
    instance-of v8, v7, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    if-eqz v8, :cond_4

    .line 248
    move-object v8, v7

    check-cast v8, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    invoke-interface {p0, v3, v8}, Lorg/apache/poi/sl/usermodel/TableCell;->setBorderDash(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;)V

    goto :goto_2

    .line 249
    :cond_4
    instance-of v8, v7, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    if-eqz v8, :cond_5

    .line 250
    move-object v8, v7

    check-cast v8, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    invoke-interface {p0, v3, v8}, Lorg/apache/poi/sl/usermodel/TableCell;->setBorderCompound(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;)V

    .line 242
    .end local v7    # "o":Ljava/lang/Object;
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 237
    .end local v3    # "be":Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;
    .end local v4    # "arr$":[Ljava/lang/Object;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "arr$":[Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_7
    return-void
.end method


# virtual methods
.method public applyTransform(Ljava/awt/Graphics2D;)V
    .locals 1
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 55
    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawTableShape;->getGroupShape(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/Drawable;

    move-result-object v0

    .line 56
    .local v0, "d":Lorg/apache/poi/sl/draw/Drawable;
    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0, p1}, Lorg/apache/poi/sl/draw/Drawable;->applyTransform(Ljava/awt/Graphics2D;)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/sl/draw/DrawShape;->applyTransform(Ljava/awt/Graphics2D;)V

    .line 61
    :goto_0
    return-void
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 46
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 64
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p1}, Lorg/apache/poi/sl/draw/DrawTableShape;->getGroupShape(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/Drawable;

    move-result-object v1

    .line 65
    .local v1, "d":Lorg/apache/poi/sl/draw/Drawable;
    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v1, v0}, Lorg/apache/poi/sl/draw/Drawable;->draw(Ljava/awt/Graphics2D;)V

    .line 67
    return-void

    .line 70
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawTableShape;->getShape()Lorg/apache/poi/sl/usermodel/TableShape;

    move-result-object v2

    .line 71
    .local v2, "ts":Lorg/apache/poi/sl/usermodel/TableShape;, "Lorg/apache/poi/sl/usermodel/TableShape<**>;"
    invoke-static/range {p1 .. p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/poi/sl/draw/DrawFactory;->getPaint(Lorg/apache/poi/sl/usermodel/PlaceableShape;)Lorg/apache/poi/sl/draw/DrawPaint;

    move-result-object v3

    .line 72
    .local v3, "drawPaint":Lorg/apache/poi/sl/draw/DrawPaint;
    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/TableShape;->getNumberOfRows()I

    move-result v4

    .line 73
    .local v4, "rows":I
    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/TableShape;->getNumberOfColumns()I

    move-result v5

    .line 76
    .local v5, "cols":I
    const/4 v6, 0x0

    .local v6, "row":I
    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_9

    .line 77
    const/4 v8, 0x0

    .local v8, "col":I
    :goto_1
    if-ge v8, v5, :cond_8

    .line 78
    invoke-interface {v2, v6, v8}, Lorg/apache/poi/sl/usermodel/TableShape;->getCell(II)Lorg/apache/poi/sl/usermodel/TableCell;

    move-result-object v9

    .line 79
    .local v9, "tc":Lorg/apache/poi/sl/usermodel/TableCell;, "Lorg/apache/poi/sl/usermodel/TableCell<**>;"
    if-eqz v9, :cond_7

    invoke-interface {v9}, Lorg/apache/poi/sl/usermodel/TableCell;->isMerged()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 80
    move-object/from16 v17, v1

    move-object/from16 v36, v2

    goto/16 :goto_5

    .line 83
    :cond_1
    invoke-interface {v9}, Lorg/apache/poi/sl/usermodel/TableCell;->getFillStyle()Lorg/apache/poi/sl/usermodel/FillStyle;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/poi/sl/usermodel/FillStyle;->getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v10

    invoke-virtual {v3, v0, v10}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;

    move-result-object v10

    .line 84
    .local v10, "fillPaint":Ljava/awt/Paint;
    invoke-virtual {v0, v10}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    .line 85
    invoke-interface {v9}, Lorg/apache/poi/sl/usermodel/TableCell;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v11

    .line 86
    .local v11, "cellAnc":Ljava/awt/geom/Rectangle2D;
    invoke-virtual {v0, v11}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    .line 88
    invoke-static {}, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->values()[Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    move-result-object v12

    .local v12, "arr$":[Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;
    array-length v13, v12

    .local v13, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_2
    if-ge v14, v13, :cond_6

    aget-object v15, v12, v14

    .line 89
    .local v15, "edge":Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;
    invoke-interface {v9, v15}, Lorg/apache/poi/sl/usermodel/TableCell;->getBorderStyle(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/sl/usermodel/StrokeStyle;

    move-result-object v16

    .line 90
    .local v16, "stroke":Lorg/apache/poi/sl/usermodel/StrokeStyle;
    if-nez v16, :cond_2

    .line 91
    move-object/from16 v17, v1

    move-object/from16 v36, v2

    goto/16 :goto_4

    .line 93
    :cond_2
    move-object/from16 v17, v1

    .end local v1    # "d":Lorg/apache/poi/sl/draw/Drawable;
    .local v17, "d":Lorg/apache/poi/sl/draw/Drawable;
    invoke-static/range {v16 .. v16}, Lorg/apache/poi/sl/draw/DrawTableShape;->getStroke(Lorg/apache/poi/sl/usermodel/StrokeStyle;)Ljava/awt/BasicStroke;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    .line 94
    invoke-interface/range {v16 .. v16}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;

    move-result-object v1

    .line 95
    .local v1, "linePaint":Ljava/awt/Paint;
    invoke-virtual {v0, v1}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    .line 97
    invoke-virtual {v11}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v27

    .local v27, "x":D
    invoke-virtual {v11}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v29

    .local v29, "y":D
    invoke-virtual {v11}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v31

    .local v31, "w":D
    invoke-virtual {v11}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v33

    .line 99
    .local v33, "h":D
    sget-object v18, Lorg/apache/poi/sl/draw/DrawTableShape$1;->$SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge:[I

    invoke-virtual {v15}, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->ordinal()I

    move-result v19

    move-object/from16 v35, v1

    .end local v1    # "linePaint":Ljava/awt/Paint;
    .local v35, "linePaint":Ljava/awt/Paint;
    aget v1, v18, v19

    move-object/from16 v36, v2

    .end local v2    # "ts":Lorg/apache/poi/sl/usermodel/TableShape;, "Lorg/apache/poi/sl/usermodel/TableShape<**>;"
    .local v36, "ts":Lorg/apache/poi/sl/usermodel/TableShape;, "Lorg/apache/poi/sl/usermodel/TableShape<**>;"
    const/4 v2, 0x2

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    .line 102
    new-instance v1, Ljava/awt/geom/Line2D$Double;

    sub-double v38, v27, v18

    add-double v40, v29, v33

    add-double v20, v27, v31

    add-double v42, v20, v18

    add-double v44, v29, v33

    move-object/from16 v37, v1

    invoke-direct/range {v37 .. v45}, Ljava/awt/geom/Line2D$Double;-><init>(DDDD)V

    .line 103
    .local v1, "line":Ljava/awt/geom/Line2D;
    move-object v7, v1

    goto :goto_3

    .line 99
    .end local v1    # "line":Ljava/awt/geom/Line2D;
    :cond_3
    move-object v1, v7

    .line 111
    .restart local v1    # "line":Ljava/awt/geom/Line2D;
    new-instance v2, Ljava/awt/geom/Line2D$Double;

    sub-double v20, v27, v18

    add-double v22, v27, v31

    add-double v23, v22, v18

    move-object/from16 v18, v2

    move-wide/from16 v19, v20

    move-wide/from16 v21, v29

    move-wide/from16 v25, v29

    invoke-direct/range {v18 .. v26}, Ljava/awt/geom/Line2D$Double;-><init>(DDDD)V

    move-object v1, v2

    move-object v7, v1

    goto :goto_3

    .line 99
    .end local v1    # "line":Ljava/awt/geom/Line2D;
    :cond_4
    move-object v1, v7

    .line 108
    .restart local v1    # "line":Ljava/awt/geom/Line2D;
    new-instance v2, Ljava/awt/geom/Line2D$Double;

    add-double v20, v27, v31

    add-double v23, v27, v31

    add-double v25, v29, v33

    add-double v25, v25, v18

    move-object/from16 v18, v2

    move-wide/from16 v19, v20

    move-wide/from16 v21, v29

    invoke-direct/range {v18 .. v26}, Ljava/awt/geom/Line2D$Double;-><init>(DDDD)V

    move-object v1, v2

    .line 109
    move-object v7, v1

    goto :goto_3

    .line 99
    .end local v1    # "line":Ljava/awt/geom/Line2D;
    :cond_5
    move-object v1, v7

    .line 105
    .restart local v1    # "line":Ljava/awt/geom/Line2D;
    new-instance v2, Ljava/awt/geom/Line2D$Double;

    add-double v20, v29, v33

    add-double v25, v20, v18

    move-object/from16 v18, v2

    move-wide/from16 v19, v27

    move-wide/from16 v21, v29

    move-wide/from16 v23, v27

    invoke-direct/range {v18 .. v26}, Ljava/awt/geom/Line2D$Double;-><init>(DDDD)V

    move-object v1, v2

    .line 106
    move-object v7, v1

    .line 115
    .end local v1    # "line":Ljava/awt/geom/Line2D;
    .local v7, "line":Ljava/awt/geom/Line2D;
    :goto_3
    invoke-virtual {v0, v7}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    .line 88
    .end local v7    # "line":Ljava/awt/geom/Line2D;
    .end local v15    # "edge":Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;
    .end local v16    # "stroke":Lorg/apache/poi/sl/usermodel/StrokeStyle;
    .end local v27    # "x":D
    .end local v29    # "y":D
    .end local v31    # "w":D
    .end local v33    # "h":D
    .end local v35    # "linePaint":Ljava/awt/Paint;
    :goto_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v17

    move-object/from16 v2, v36

    goto/16 :goto_2

    .end local v17    # "d":Lorg/apache/poi/sl/draw/Drawable;
    .end local v36    # "ts":Lorg/apache/poi/sl/usermodel/TableShape;, "Lorg/apache/poi/sl/usermodel/TableShape<**>;"
    .local v1, "d":Lorg/apache/poi/sl/draw/Drawable;
    .restart local v2    # "ts":Lorg/apache/poi/sl/usermodel/TableShape;, "Lorg/apache/poi/sl/usermodel/TableShape<**>;"
    :cond_6
    move-object/from16 v17, v1

    move-object/from16 v36, v2

    .end local v1    # "d":Lorg/apache/poi/sl/draw/Drawable;
    .end local v2    # "ts":Lorg/apache/poi/sl/usermodel/TableShape;, "Lorg/apache/poi/sl/usermodel/TableShape<**>;"
    .restart local v17    # "d":Lorg/apache/poi/sl/draw/Drawable;
    .restart local v36    # "ts":Lorg/apache/poi/sl/usermodel/TableShape;, "Lorg/apache/poi/sl/usermodel/TableShape<**>;"
    goto :goto_5

    .line 79
    .end local v10    # "fillPaint":Ljava/awt/Paint;
    .end local v11    # "cellAnc":Ljava/awt/geom/Rectangle2D;
    .end local v12    # "arr$":[Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;
    .end local v13    # "len$":I
    .end local v14    # "i$":I
    .end local v17    # "d":Lorg/apache/poi/sl/draw/Drawable;
    .end local v36    # "ts":Lorg/apache/poi/sl/usermodel/TableShape;, "Lorg/apache/poi/sl/usermodel/TableShape<**>;"
    .restart local v1    # "d":Lorg/apache/poi/sl/draw/Drawable;
    .restart local v2    # "ts":Lorg/apache/poi/sl/usermodel/TableShape;, "Lorg/apache/poi/sl/usermodel/TableShape<**>;"
    :cond_7
    move-object/from16 v17, v1

    move-object/from16 v36, v2

    .line 77
    .end local v1    # "d":Lorg/apache/poi/sl/draw/Drawable;
    .end local v2    # "ts":Lorg/apache/poi/sl/usermodel/TableShape;, "Lorg/apache/poi/sl/usermodel/TableShape<**>;"
    .end local v9    # "tc":Lorg/apache/poi/sl/usermodel/TableCell;, "Lorg/apache/poi/sl/usermodel/TableCell<**>;"
    .restart local v17    # "d":Lorg/apache/poi/sl/draw/Drawable;
    .restart local v36    # "ts":Lorg/apache/poi/sl/usermodel/TableShape;, "Lorg/apache/poi/sl/usermodel/TableShape<**>;"
    :goto_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v17

    move-object/from16 v2, v36

    goto/16 :goto_1

    .end local v17    # "d":Lorg/apache/poi/sl/draw/Drawable;
    .end local v36    # "ts":Lorg/apache/poi/sl/usermodel/TableShape;, "Lorg/apache/poi/sl/usermodel/TableShape<**>;"
    .restart local v1    # "d":Lorg/apache/poi/sl/draw/Drawable;
    .restart local v2    # "ts":Lorg/apache/poi/sl/usermodel/TableShape;, "Lorg/apache/poi/sl/usermodel/TableShape<**>;"
    :cond_8
    move-object/from16 v17, v1

    move-object/from16 v36, v2

    .line 76
    .end local v1    # "d":Lorg/apache/poi/sl/draw/Drawable;
    .end local v2    # "ts":Lorg/apache/poi/sl/usermodel/TableShape;, "Lorg/apache/poi/sl/usermodel/TableShape<**>;"
    .end local v8    # "col":I
    .restart local v17    # "d":Lorg/apache/poi/sl/draw/Drawable;
    .restart local v36    # "ts":Lorg/apache/poi/sl/usermodel/TableShape;, "Lorg/apache/poi/sl/usermodel/TableShape<**>;"
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 121
    .end local v6    # "row":I
    .end local v17    # "d":Lorg/apache/poi/sl/draw/Drawable;
    .end local v36    # "ts":Lorg/apache/poi/sl/usermodel/TableShape;, "Lorg/apache/poi/sl/usermodel/TableShape<**>;"
    .restart local v1    # "d":Lorg/apache/poi/sl/draw/Drawable;
    .restart local v2    # "ts":Lorg/apache/poi/sl/usermodel/TableShape;, "Lorg/apache/poi/sl/usermodel/TableShape<**>;"
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lorg/apache/poi/sl/draw/DrawTableShape;->drawContent(Ljava/awt/Graphics2D;)V

    .line 122
    return-void
.end method

.method public drawContent(Ljava/awt/Graphics2D;)V
    .locals 9
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 125
    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawTableShape;->getGroupShape(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/Drawable;

    move-result-object v0

    .line 126
    .local v0, "d":Lorg/apache/poi/sl/draw/Drawable;
    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0, p1}, Lorg/apache/poi/sl/draw/Drawable;->drawContent(Ljava/awt/Graphics2D;)V

    .line 128
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTableShape;->getShape()Lorg/apache/poi/sl/usermodel/TableShape;

    move-result-object v1

    .line 132
    .local v1, "ts":Lorg/apache/poi/sl/usermodel/TableShape;, "Lorg/apache/poi/sl/usermodel/TableShape<**>;"
    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v2

    .line 134
    .local v2, "df":Lorg/apache/poi/sl/draw/DrawFactory;
    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/TableShape;->getNumberOfRows()I

    move-result v3

    .line 135
    .local v3, "rows":I
    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/TableShape;->getNumberOfColumns()I

    move-result v4

    .line 137
    .local v4, "cols":I
    const/4 v5, 0x0

    .local v5, "row":I
    :goto_0
    if-ge v5, v3, :cond_3

    .line 138
    const/4 v6, 0x0

    .local v6, "col":I
    :goto_1
    if-ge v6, v4, :cond_2

    .line 139
    invoke-interface {v1, v5, v6}, Lorg/apache/poi/sl/usermodel/TableShape;->getCell(II)Lorg/apache/poi/sl/usermodel/TableCell;

    move-result-object v7

    .line 140
    .local v7, "tc":Lorg/apache/poi/sl/usermodel/TableCell;, "Lorg/apache/poi/sl/usermodel/TableCell<**>;"
    if-eqz v7, :cond_1

    .line 141
    invoke-virtual {v2, v7}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/TextShape;)Lorg/apache/poi/sl/draw/DrawTextShape;

    move-result-object v8

    .line 142
    .local v8, "dts":Lorg/apache/poi/sl/draw/DrawTextShape;
    invoke-virtual {v8, p1}, Lorg/apache/poi/sl/draw/DrawTextShape;->drawContent(Ljava/awt/Graphics2D;)V

    .line 138
    .end local v7    # "tc":Lorg/apache/poi/sl/usermodel/TableCell;, "Lorg/apache/poi/sl/usermodel/TableCell<**>;"
    .end local v8    # "dts":Lorg/apache/poi/sl/draw/DrawTextShape;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 137
    .end local v6    # "col":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 146
    .end local v5    # "row":I
    :cond_3
    return-void
.end method

.method protected getGroupShape(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/Drawable;
    .locals 2
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 47
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTableShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    instance-of v0, v0, Lorg/apache/poi/sl/usermodel/GroupShape;

    if-eqz v0, :cond_0

    .line 48
    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    .line 49
    .local v0, "df":Lorg/apache/poi/sl/draw/DrawFactory;
    iget-object v1, p0, Lorg/apache/poi/sl/draw/DrawTableShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    check-cast v1, Lorg/apache/poi/sl/usermodel/GroupShape;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/GroupShape;)Lorg/apache/poi/sl/draw/DrawGroupShape;

    move-result-object v1

    return-object v1

    .line 51
    .end local v0    # "df":Lorg/apache/poi/sl/draw/DrawFactory;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTableShape;->getShape()Lorg/apache/poi/sl/usermodel/TableShape;

    move-result-object v0

    return-object v0
.end method

.method protected getShape()Lorg/apache/poi/sl/usermodel/TableShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/TableShape<",
            "**>;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTableShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    check-cast v0, Lorg/apache/poi/sl/usermodel/TableShape;

    return-object v0
.end method

.method public varargs setAllBorders([Ljava/lang/Object;)V
    .locals 10
    .param p1, "args"    # [Ljava/lang/Object;

    .line 162
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTableShape;->getShape()Lorg/apache/poi/sl/usermodel/TableShape;

    move-result-object v0

    .line 163
    .local v0, "table":Lorg/apache/poi/sl/usermodel/TableShape;, "Lorg/apache/poi/sl/usermodel/TableShape<**>;"
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TableShape;->getNumberOfRows()I

    move-result v1

    .line 164
    .local v1, "rows":I
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TableShape;->getNumberOfColumns()I

    move-result v2

    .line 166
    .local v2, "cols":I
    const/4 v3, 0x4

    new-array v3, v3, [Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    sget-object v4, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->top:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->left:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v6, 0x3

    aput-object v5, v3, v6

    .line 167
    .local v3, "edges":[Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;
    const/4 v7, 0x0

    .local v7, "row":I
    :goto_0
    if-ge v7, v1, :cond_3

    .line 168
    const/4 v8, 0x0

    .local v8, "col":I
    :goto_1
    if-ge v8, v2, :cond_2

    .line 169
    add-int/lit8 v9, v2, -0x1

    if-ne v8, v9, :cond_0

    sget-object v9, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->right:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    goto :goto_2

    :cond_0
    move-object v9, v5

    :goto_2
    aput-object v9, v3, v4

    .line 170
    add-int/lit8 v9, v1, -0x1

    if-ne v7, v9, :cond_1

    sget-object v9, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->bottom:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    goto :goto_3

    :cond_1
    move-object v9, v5

    :goto_3
    aput-object v9, v3, v6

    .line 171
    invoke-interface {v0, v7, v8}, Lorg/apache/poi/sl/usermodel/TableShape;->getCell(II)Lorg/apache/poi/sl/usermodel/TableCell;

    move-result-object v9

    invoke-static {v9, v3, p1}, Lorg/apache/poi/sl/draw/DrawTableShape;->setEdges(Lorg/apache/poi/sl/usermodel/TableCell;[Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;[Ljava/lang/Object;)V

    .line 168
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 167
    .end local v8    # "col":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 174
    .end local v7    # "row":I
    :cond_3
    return-void
.end method

.method public varargs setInsideBorders([Ljava/lang/Object;)V
    .locals 9
    .param p1, "args"    # [Ljava/lang/Object;

    .line 210
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTableShape;->getShape()Lorg/apache/poi/sl/usermodel/TableShape;

    move-result-object v0

    .line 213
    .local v0, "table":Lorg/apache/poi/sl/usermodel/TableShape;, "Lorg/apache/poi/sl/usermodel/TableShape<**>;"
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TableShape;->getNumberOfRows()I

    move-result v1

    .line 214
    .local v1, "rows":I
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TableShape;->getNumberOfColumns()I

    move-result v2

    .line 216
    .local v2, "cols":I
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    .line 217
    .local v3, "edges":[Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 218
    const/4 v5, 0x0

    .local v5, "col":I
    :goto_1
    if-ge v5, v2, :cond_3

    .line 219
    const/4 v6, 0x0

    const/4 v7, 0x0

    if-lez v5, :cond_1

    add-int/lit8 v8, v2, -0x1

    if-ge v5, v8, :cond_1

    sget-object v8, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->right:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    goto :goto_2

    :cond_1
    move-object v8, v7

    :goto_2
    aput-object v8, v3, v6

    .line 220
    if-lez v4, :cond_2

    add-int/lit8 v6, v1, -0x1

    if-ge v4, v6, :cond_2

    sget-object v7, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->bottom:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    :cond_2
    const/4 v6, 0x1

    aput-object v7, v3, v6

    .line 221
    invoke-interface {v0, v4, v5}, Lorg/apache/poi/sl/usermodel/TableShape;->getCell(II)Lorg/apache/poi/sl/usermodel/TableCell;

    move-result-object v6

    invoke-static {v6, v3, p1}, Lorg/apache/poi/sl/draw/DrawTableShape;->setEdges(Lorg/apache/poi/sl/usermodel/TableCell;[Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;[Ljava/lang/Object;)V

    .line 218
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 217
    .end local v5    # "col":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 224
    .end local v4    # "row":I
    :cond_4
    return-void
.end method

.method public varargs setOutsideBorders([Ljava/lang/Object;)V
    .locals 9
    .param p1, "args"    # [Ljava/lang/Object;

    .line 184
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTableShape;->getShape()Lorg/apache/poi/sl/usermodel/TableShape;

    move-result-object v0

    .line 187
    .local v0, "table":Lorg/apache/poi/sl/usermodel/TableShape;, "Lorg/apache/poi/sl/usermodel/TableShape<**>;"
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TableShape;->getNumberOfRows()I

    move-result v1

    .line 188
    .local v1, "rows":I
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TableShape;->getNumberOfColumns()I

    move-result v2

    .line 190
    .local v2, "cols":I
    const/4 v3, 0x4

    new-array v3, v3, [Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    .line 191
    .local v3, "edges":[Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_0
    if-ge v4, v1, :cond_6

    .line 192
    const/4 v5, 0x0

    .local v5, "col":I
    :goto_1
    if-ge v5, v2, :cond_5

    .line 193
    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v5, :cond_1

    sget-object v8, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->left:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    goto :goto_2

    :cond_1
    move-object v8, v7

    :goto_2
    aput-object v8, v3, v6

    .line 194
    add-int/lit8 v6, v2, -0x1

    if-ne v5, v6, :cond_2

    sget-object v6, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->right:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    goto :goto_3

    :cond_2
    move-object v6, v7

    :goto_3
    const/4 v8, 0x1

    aput-object v6, v3, v8

    .line 195
    const/4 v6, 0x2

    if-nez v4, :cond_3

    sget-object v8, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->top:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    goto :goto_4

    :cond_3
    move-object v8, v7

    :goto_4
    aput-object v8, v3, v6

    .line 196
    const/4 v6, 0x3

    add-int/lit8 v8, v1, -0x1

    if-ne v4, v8, :cond_4

    sget-object v7, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->bottom:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    :cond_4
    aput-object v7, v3, v6

    .line 197
    invoke-interface {v0, v4, v5}, Lorg/apache/poi/sl/usermodel/TableShape;->getCell(II)Lorg/apache/poi/sl/usermodel/TableCell;

    move-result-object v6

    invoke-static {v6, v3, p1}, Lorg/apache/poi/sl/draw/DrawTableShape;->setEdges(Lorg/apache/poi/sl/usermodel/TableCell;[Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;[Ljava/lang/Object;)V

    .line 192
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 191
    .end local v5    # "col":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 200
    .end local v4    # "row":I
    :cond_6
    return-void
.end method
