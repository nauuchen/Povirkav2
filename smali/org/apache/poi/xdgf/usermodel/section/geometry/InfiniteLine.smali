.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;
.super Ljava/lang/Object;
.source "InfiniteLine.java"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

.field a:Ljava/lang/Double;

.field b:Ljava/lang/Double;

.field deleted:Ljava/lang/Boolean;

.field x:Ljava/lang/Double;

.field y:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/RowType;)V
    .locals 8
    .param p1, "row"    # Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

    .line 38
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->x:Ljava/lang/Double;

    .line 42
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->y:Ljava/lang/Double;

    .line 46
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->a:Ljava/lang/Double;

    .line 50
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->b:Ljava/lang/Double;

    .line 52
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->deleted:Ljava/lang/Boolean;

    .line 58
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->isSetDel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getDel()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->deleted:Ljava/lang/Boolean;

    .line 61
    :cond_0
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getCellArray()[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    move-result-object v0

    .local v0, "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 62
    .local v3, "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "cellName":Ljava/lang/String;
    const-string v5, "X"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->x:Ljava/lang/Double;

    goto :goto_1

    .line 66
    :cond_1
    const-string v5, "Y"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 67
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->y:Ljava/lang/Double;

    goto :goto_1

    .line 68
    :cond_2
    const-string v5, "A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 69
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->a:Ljava/lang/Double;

    goto :goto_1

    .line 70
    :cond_3
    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 71
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->b:Ljava/lang/Double;

    .line 61
    .end local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v4    # "cellName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .restart local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .restart local v4    # "cellName":Ljava/lang/String;
    :cond_4
    new-instance v5, Lorg/apache/poi/POIXMLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid cell \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' in InfiniteLine row"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 77
    .end local v0    # "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    .end local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v4    # "cellName":Ljava/lang/String;
    :cond_5
    return-void
.end method


# virtual methods
.method public addToPath(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 2
    .param p1, "path"    # Ljava/awt/geom/Path2D$Double;
    .param p2, "parent"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 113
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->getDel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v1, "InfiniteLine elements cannot be part of a path"

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getA()Ljava/lang/Double;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->a:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->a:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getB()Ljava/lang/Double;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->b:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->b:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getDel()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->getDel()Z

    move-result v0

    return v0

    .line 86
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getPath()Ljava/awt/geom/Path2D$Double;
    .locals 19

    .line 123
    new-instance v0, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Path2D$Double;-><init>()V

    .line 126
    .local v0, "path":Ljava/awt/geom/Path2D$Double;
    const-wide v1, 0x40f86a0000000000L    # 100000.0

    .line 129
    .local v1, "max_val":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->getX()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 130
    .local v3, "x0":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->getY()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 131
    .local v5, "y0":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->getA()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 132
    .local v7, "x1":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->getB()Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 134
    .local v9, "y1":D
    cmpl-double v11, v3, v7

    if-nez v11, :cond_0

    .line 135
    neg-double v11, v1

    invoke-virtual {v0, v3, v4, v11, v12}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    .line 136
    invoke-virtual {v0, v3, v4, v1, v2}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    move-wide/from16 v17, v3

    goto :goto_0

    .line 137
    :cond_0
    cmpl-double v11, v5, v9

    if-nez v11, :cond_1

    .line 138
    neg-double v11, v1

    invoke-virtual {v0, v11, v12, v5, v6}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    .line 139
    invoke-virtual {v0, v1, v2, v5, v6}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    move-wide/from16 v17, v3

    goto :goto_0

    .line 143
    :cond_1
    sub-double v11, v9, v5

    sub-double v13, v7, v3

    div-double/2addr v11, v13

    .line 144
    .local v11, "m":D
    mul-double v13, v11, v3

    sub-double v13, v5, v13

    .line 148
    .local v13, "c":D
    mul-double v15, v11, v1

    move-wide/from16 v17, v3

    .end local v3    # "x0":D
    .local v17, "x0":D
    add-double v3, v15, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    .line 149
    sub-double v3, v1, v13

    div-double/2addr v3, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    .line 152
    .end local v11    # "m":D
    .end local v13    # "c":D
    :goto_0
    return-object v0
.end method

.method public getX()Ljava/lang/Double;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 1
    .param p1, "row"    # Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    .line 107
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

    .line 108
    return-void
.end method
