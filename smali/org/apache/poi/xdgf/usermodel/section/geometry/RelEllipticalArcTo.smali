.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;
.super Ljava/lang/Object;
.source "RelEllipticalArcTo.java"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

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

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    .line 33
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->x:Ljava/lang/Double;

    .line 37
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->y:Ljava/lang/Double;

    .line 41
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->a:Ljava/lang/Double;

    .line 44
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->b:Ljava/lang/Double;

    .line 47
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->c:Ljava/lang/Double;

    .line 52
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->d:Ljava/lang/Double;

    .line 54
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->deleted:Ljava/lang/Boolean;

    .line 60
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->isSetDel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getDel()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->deleted:Ljava/lang/Boolean;

    .line 63
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

    .line 64
    .local v3, "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "cellName":Ljava/lang/String;
    const-string v5, "X"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 67
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->x:Ljava/lang/Double;

    goto :goto_1

    .line 68
    :cond_1
    const-string v5, "Y"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->y:Ljava/lang/Double;

    goto :goto_1

    .line 70
    :cond_2
    const-string v5, "A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 71
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->a:Ljava/lang/Double;

    goto :goto_1

    .line 72
    :cond_3
    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 73
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->b:Ljava/lang/Double;

    goto :goto_1

    .line 74
    :cond_4
    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 75
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->c:Ljava/lang/Double;

    goto :goto_1

    .line 76
    :cond_5
    const-string v5, "D"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 77
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->d:Ljava/lang/Double;

    .line 63
    .end local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v4    # "cellName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
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

    const-string v7, "\' in RelEllipticalArcTo row"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 83
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
    .locals 29
    .param p1, "path"    # Ljava/awt/geom/Path2D$Double;
    .param p2, "parent"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 127
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->getDel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    return-void

    .line 130
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 131
    .local v0, "w":D
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 134
    .local v2, "h":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->getX()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v4, v4, v0

    .line 135
    .local v4, "x":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->getY()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double v19, v6, v2

    .line 136
    .local v19, "y":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->getA()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double v21, v6, v0

    .line 137
    .local v21, "a":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->getB()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double v23, v6, v2

    .line 138
    .local v23, "b":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->getC()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v25

    .line 139
    .local v25, "c":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->getD()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v27

    .line 141
    .local v27, "d":D
    move-wide v6, v4

    move-wide/from16 v8, v19

    move-wide/from16 v10, v21

    move-wide/from16 v12, v23

    move-wide/from16 v14, v25

    move-wide/from16 v16, v27

    move-object/from16 v18, p1

    invoke-static/range {v6 .. v18}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->createEllipticalArc(DDDDDDLjava/awt/geom/Path2D$Double;)V

    .line 143
    return-void
.end method

.method public getA()Ljava/lang/Double;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->a:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->a:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getB()Ljava/lang/Double;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->b:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->b:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getC()Ljava/lang/Double;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->c:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->c:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getD()Ljava/lang/Double;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->d:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->d:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getDel()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->getDel()Z

    move-result v0

    return v0

    .line 92
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getX()Ljava/lang/Double;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 1
    .param p1, "row"    # Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    .line 121
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    .line 122
    return-void
.end method
