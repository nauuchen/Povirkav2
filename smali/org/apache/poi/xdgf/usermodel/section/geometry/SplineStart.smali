.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;
.super Ljava/lang/Object;
.source "SplineStart.java"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

.field a:Ljava/lang/Double;

.field b:Ljava/lang/Double;

.field c:Ljava/lang/Double;

.field d:Ljava/lang/Integer;

.field deleted:Ljava/lang/Boolean;

.field x:Ljava/lang/Double;

.field y:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/RowType;)V
    .locals 8
    .param p1, "row"    # Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    .line 35
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->x:Ljava/lang/Double;

    .line 38
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->y:Ljava/lang/Double;

    .line 41
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->a:Ljava/lang/Double;

    .line 44
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->b:Ljava/lang/Double;

    .line 47
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->c:Ljava/lang/Double;

    .line 50
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->d:Ljava/lang/Integer;

    .line 52
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->deleted:Ljava/lang/Boolean;

    .line 58
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->isSetDel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getDel()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->deleted:Ljava/lang/Boolean;

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
    if-ge v2, v1, :cond_7

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

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->x:Ljava/lang/Double;

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

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->y:Ljava/lang/Double;

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

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->a:Ljava/lang/Double;

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

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->b:Ljava/lang/Double;

    goto :goto_1

    .line 72
    :cond_4
    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 73
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->c:Ljava/lang/Double;

    goto :goto_1

    .line 74
    :cond_5
    const-string v5, "D"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 75
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseIntegerValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->d:Ljava/lang/Integer;

    .line 61
    .end local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v4    # "cellName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
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

    const-string v7, "\' in SplineStart row"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 81
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
    .locals 2
    .param p1, "path"    # Ljava/awt/geom/Path2D$Double;
    .param p2, "parent"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 124
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v1, "Error: Use SplineRenderer!"

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getA()Ljava/lang/Double;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->a:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->a:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getB()Ljava/lang/Double;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->b:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->b:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getC()Ljava/lang/Double;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->c:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->c:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getD()Ljava/lang/Integer;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->d:Ljava/lang/Integer;

    :cond_0
    return-object v0
.end method

.method public getDel()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getDel()Z

    move-result v0

    return v0

    .line 90
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getX()Ljava/lang/Double;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 1
    .param p1, "row"    # Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    .line 119
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    .line 120
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{SplineStart x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getX()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getY()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getA()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getB()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getC()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getD()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
