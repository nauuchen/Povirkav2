.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;
.super Ljava/lang/Object;
.source "RelLineTo.java"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;

.field deleted:Ljava/lang/Boolean;

.field x:Ljava/lang/Double;

.field y:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/RowType;)V
    .locals 8
    .param p1, "row"    # Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;

    .line 35
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;->x:Ljava/lang/Double;

    .line 36
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;->y:Ljava/lang/Double;

    .line 38
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;->deleted:Ljava/lang/Boolean;

    .line 44
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->isSetDel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getDel()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;->deleted:Ljava/lang/Boolean;

    .line 47
    :cond_0
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getCellArray()[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    move-result-object v0

    .local v0, "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 48
    .local v3, "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "cellName":Ljava/lang/String;
    const-string v5, "X"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 51
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;->x:Ljava/lang/Double;

    goto :goto_1

    .line 52
    :cond_1
    const-string v5, "Y"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 53
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;->y:Ljava/lang/Double;

    .line 47
    .end local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v4    # "cellName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    .restart local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .restart local v4    # "cellName":Ljava/lang/String;
    :cond_2
    new-instance v5, Lorg/apache/poi/POIXMLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid cell \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' in RelLineTo row"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 59
    .end local v0    # "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    .end local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v4    # "cellName":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public addToPath(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 6
    .param p1, "path"    # Ljava/awt/geom/Path2D$Double;
    .param p2, "parent"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 87
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;->getDel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;->getX()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;->getY()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v2, v2, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    .line 91
    return-void
.end method

.method public getDel()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;->getDel()Z

    move-result v0

    return v0

    .line 68
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getX()Ljava/lang/Double;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 1
    .param p1, "row"    # Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    .line 81
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;

    .line 82
    return-void
.end method
