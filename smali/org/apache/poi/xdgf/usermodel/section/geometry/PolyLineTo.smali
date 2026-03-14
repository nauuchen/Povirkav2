.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;
.super Ljava/lang/Object;
.source "PolyLineTo.java"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

.field a:Ljava/lang/String;

.field deleted:Ljava/lang/Boolean;

.field x:Ljava/lang/Double;

.field y:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/RowType;)V
    .locals 8
    .param p1, "row"    # Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

    .line 33
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->x:Ljava/lang/Double;

    .line 36
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->y:Ljava/lang/Double;

    .line 39
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->a:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->deleted:Ljava/lang/Boolean;

    .line 47
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->isSetDel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getDel()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->deleted:Ljava/lang/Boolean;

    .line 50
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

    .line 51
    .local v3, "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "cellName":Ljava/lang/String;
    const-string v5, "X"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 54
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->x:Ljava/lang/Double;

    goto :goto_1

    .line 55
    :cond_1
    const-string v5, "Y"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 56
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->y:Ljava/lang/Double;

    goto :goto_1

    .line 57
    :cond_2
    const-string v5, "A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 58
    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getV()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->a:Ljava/lang/String;

    .line 50
    .end local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v4    # "cellName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
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

    .line 64
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
    .locals 2
    .param p1, "path"    # Ljava/awt/geom/Path2D$Double;
    .param p2, "parent"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 96
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->getDel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    return-void

    .line 98
    :cond_0
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v1, "Polyline support not implemented"

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getA()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->a:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getDel()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->getDel()Z

    move-result v0

    return v0

    .line 73
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getX()Ljava/lang/Double;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 1
    .param p1, "row"    # Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    .line 90
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

    .line 91
    return-void
.end method
