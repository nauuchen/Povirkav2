.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;
.super Ljava/lang/Object;
.source "ArcTo.java"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

.field a:Ljava/lang/Double;

.field deleted:Ljava/lang/Boolean;

.field x:Ljava/lang/Double;

.field y:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/RowType;)V
    .locals 8
    .param p1, "row"    # Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

    .line 37
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->x:Ljava/lang/Double;

    .line 40
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->y:Ljava/lang/Double;

    .line 43
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->a:Ljava/lang/Double;

    .line 45
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->deleted:Ljava/lang/Boolean;

    .line 51
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->isSetDel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getDel()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->deleted:Ljava/lang/Boolean;

    .line 54
    :cond_0
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getCellArray()[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    move-result-object v0

    .local v0, "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 55
    .local v3, "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "cellName":Ljava/lang/String;
    const-string v5, "X"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 58
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->x:Ljava/lang/Double;

    goto :goto_1

    .line 59
    :cond_1
    const-string v5, "Y"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 60
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->y:Ljava/lang/Double;

    goto :goto_1

    .line 61
    :cond_2
    const-string v5, "A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 62
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->a:Ljava/lang/Double;

    .line 54
    .end local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v4    # "cellName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .restart local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .restart local v4    # "cellName":Ljava/lang/String;
    :cond_3
    new-instance v5, Lorg/apache/poi/POIXMLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid cell \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' in ArcTo row"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 68
    .end local v0    # "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    .end local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v4    # "cellName":Ljava/lang/String;
    :cond_4
    return-void
.end method


# virtual methods
.method public addToPath(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 37
    .param p1, "path"    # Ljava/awt/geom/Path2D$Double;
    .param p2, "parent"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 100
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->getDel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Path2D$Double;->getCurrentPoint()Ljava/awt/geom/Point2D;

    move-result-object v1

    .line 106
    .local v1, "last":Ljava/awt/geom/Point2D;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->getX()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 107
    .local v2, "x":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->getY()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 108
    .local v4, "y":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->getA()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 110
    .local v6, "a":D
    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-nez v10, :cond_1

    .line 111
    invoke-virtual {v0, v2, v3, v4, v5}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    .line 112
    return-void

    .line 115
    :cond_1
    invoke-virtual {v1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v8

    .line 116
    .local v8, "x0":D
    invoke-virtual {v1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v25

    .line 118
    .local v25, "y0":D
    sub-double v10, v4, v25

    sub-double v12, v2, v8

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v27

    .line 119
    .local v27, "chordLength":D
    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    mul-double v10, v10, v6

    mul-double v10, v10, v6

    mul-double v12, v27, v27

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x4020000000000000L    # 8.0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    mul-double v14, v14, v12

    div-double v29, v10, v14

    .line 123
    .local v29, "radius":D
    sub-double v10, v2, v8

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double v31, v8, v10

    .line 124
    .local v31, "cx":D
    sub-double v10, v4, v25

    div-double/2addr v10, v12

    add-double v33, v25, v10

    .line 126
    .local v33, "cy":D
    sub-double v10, v4, v33

    sub-double v14, v2, v31

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v35

    .line 128
    .local v35, "rotate":D
    new-instance v10, Ljava/awt/geom/Arc2D$Double;

    sub-double v14, v25, v29

    mul-double v18, v29, v12

    const-wide v20, 0x4066800000000000L    # 180.0

    cmpg-double v11, v8, v2

    if-gez v11, :cond_2

    const-wide v11, 0x4066800000000000L    # 180.0

    goto :goto_0

    :cond_2
    const-wide v11, -0x3f99800000000000L    # -180.0

    :goto_0
    move-wide/from16 v22, v11

    const/16 v24, 0x0

    move-object v11, v10

    move-wide v12, v8

    move-wide/from16 v16, v27

    invoke-direct/range {v11 .. v24}, Ljava/awt/geom/Arc2D$Double;-><init>(DDDDDDI)V

    .line 131
    .local v10, "arc":Ljava/awt/geom/Arc2D;
    move-wide/from16 v11, v35

    move-wide v13, v8

    move-wide/from16 v15, v25

    invoke-static/range {v11 .. v16}, Ljava/awt/geom/AffineTransform;->getRotateInstance(DDD)Ljava/awt/geom/AffineTransform;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v0, v11, v12}, Ljava/awt/geom/Path2D$Double;->append(Ljava/awt/Shape;Z)V

    .line 133
    return-void
.end method

.method public getA()Ljava/lang/Double;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->a:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->a:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getDel()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->getDel()Z

    move-result v0

    return v0

    .line 77
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getX()Ljava/lang/Double;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 1
    .param p1, "row"    # Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    .line 94
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

    .line 95
    return-void
.end method
