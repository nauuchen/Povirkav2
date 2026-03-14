.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;
.super Ljava/lang/Object;
.source "RelCubBezTo.java"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

.field a:Ljava/lang/Double;

.field b:Ljava/lang/Double;

.field c:Ljava/lang/Double;

.field d:Ljava/lang/Double;

.field deleted:Ljava/lang/Boolean;

.field x:Ljava/lang/Double;

.field y:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/RowType;)V
    .locals 8
    .param p1, "row"    # Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

    .line 33
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->x:Ljava/lang/Double;

    .line 37
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->y:Ljava/lang/Double;

    .line 42
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->a:Ljava/lang/Double;

    .line 46
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->b:Ljava/lang/Double;

    .line 51
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->c:Ljava/lang/Double;

    .line 55
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->d:Ljava/lang/Double;

    .line 57
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->deleted:Ljava/lang/Boolean;

    .line 63
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->isSetDel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getDel()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->deleted:Ljava/lang/Boolean;

    .line 66
    :cond_0
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getCellArray()[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    move-result-object v0

    .local v0, "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_7

    aget-object v3, v0, v2

    .line 67
    .local v3, "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "cellName":Ljava/lang/String;
    const-string v5, "X"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 70
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->x:Ljava/lang/Double;

    goto :goto_1

    .line 71
    :cond_1
    const-string v5, "Y"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 72
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->y:Ljava/lang/Double;

    goto :goto_1

    .line 73
    :cond_2
    const-string v5, "A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 74
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->a:Ljava/lang/Double;

    goto :goto_1

    .line 75
    :cond_3
    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 76
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->b:Ljava/lang/Double;

    goto :goto_1

    .line 77
    :cond_4
    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 78
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->c:Ljava/lang/Double;

    goto :goto_1

    .line 79
    :cond_5
    const-string v5, "D"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 80
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->d:Ljava/lang/Double;

    .line 66
    .end local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v4    # "cellName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .restart local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .restart local v4    # "cellName":Ljava/lang/String;
    :cond_6
    new-instance v5, Lorg/apache/poi/POIXMLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid cell \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' in RelCubBezTo row"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 86
    .end local v0    # "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    .end local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v4    # "cellName":Ljava/lang/String;
    :cond_7
    return-void
.end method


# virtual methods
.method public addToPath(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 19
    .param p1, "path"    # Ljava/awt/geom/Path2D$Double;
    .param p2, "parent"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 130
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->getDel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 134
    .local v0, "w":D
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 136
    .local v2, "h":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->getA()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v7, v4, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->getB()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v9, v4, v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->getC()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v11, v4, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->getD()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v13, v4, v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->getX()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v15, v4, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->getY()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v17, v4, v2

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v18}, Ljava/awt/geom/Path2D$Double;->curveTo(DDDDDD)V

    .line 138
    return-void
.end method

.method public getA()Ljava/lang/Double;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->a:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->a:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getB()Ljava/lang/Double;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->b:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->b:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getC()Ljava/lang/Double;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->c:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->c:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getD()Ljava/lang/Double;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->d:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->d:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getDel()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->getDel()Z

    move-result v0

    return v0

    .line 95
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getX()Ljava/lang/Double;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 1
    .param p1, "row"    # Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    .line 124
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

    .line 125
    return-void
.end method
