.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;
.super Ljava/lang/Object;
.source "RelQuadBezTo.java"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;

.field a:Ljava/lang/Double;

.field b:Ljava/lang/Double;

.field deleted:Ljava/lang/Boolean;

.field x:Ljava/lang/Double;

.field y:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/RowType;)V
    .locals 8
    .param p1, "row"    # Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;

    .line 38
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->x:Ljava/lang/Double;

    .line 42
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->y:Ljava/lang/Double;

    .line 47
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->a:Ljava/lang/Double;

    .line 51
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->b:Ljava/lang/Double;

    .line 53
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->deleted:Ljava/lang/Boolean;

    .line 59
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->isSetDel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getDel()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->deleted:Ljava/lang/Boolean;

    .line 62
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

    .line 63
    .local v3, "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "cellName":Ljava/lang/String;
    const-string v5, "X"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 66
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->x:Ljava/lang/Double;

    goto :goto_1

    .line 67
    :cond_1
    const-string v5, "Y"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 68
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->y:Ljava/lang/Double;

    goto :goto_1

    .line 69
    :cond_2
    const-string v5, "A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 70
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->a:Ljava/lang/Double;

    goto :goto_1

    .line 71
    :cond_3
    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 72
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->b:Ljava/lang/Double;

    .line 62
    .end local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v4    # "cellName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
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

    const-string v7, "\' in RelQuadBezTo row"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 78
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
    .locals 15
    .param p1, "path"    # Ljava/awt/geom/Path2D$Double;
    .param p2, "parent"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 114
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->getDel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    return-void

    .line 117
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 118
    .local v0, "w":D
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 120
    .local v2, "h":D
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->getA()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v7, v4, v0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->getB()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v9, v4, v2

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->getX()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v11, v4, v0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->getY()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v13, v4, v2

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v14}, Ljava/awt/geom/Path2D$Double;->quadTo(DDDD)V

    .line 121
    return-void
.end method

.method public getA()Ljava/lang/Double;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->a:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->a:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getB()Ljava/lang/Double;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->b:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->b:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getDel()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->getDel()Z

    move-result v0

    return v0

    .line 87
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getX()Ljava/lang/Double;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 1
    .param p1, "row"    # Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    .line 108
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;

    .line 109
    return-void
.end method
