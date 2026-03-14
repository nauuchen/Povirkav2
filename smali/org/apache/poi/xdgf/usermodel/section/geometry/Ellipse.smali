.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;
.super Ljava/lang/Object;
.source "Ellipse.java"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

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

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    .line 36
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->x:Ljava/lang/Double;

    .line 38
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->y:Ljava/lang/Double;

    .line 41
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->a:Ljava/lang/Double;

    .line 43
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->b:Ljava/lang/Double;

    .line 46
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->c:Ljava/lang/Double;

    .line 48
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->d:Ljava/lang/Double;

    .line 50
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->deleted:Ljava/lang/Boolean;

    .line 56
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->isSetDel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getDel()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->deleted:Ljava/lang/Boolean;

    .line 59
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

    .line 60
    .local v3, "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "cellName":Ljava/lang/String;
    const-string v5, "X"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 63
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->x:Ljava/lang/Double;

    goto :goto_1

    .line 64
    :cond_1
    const-string v5, "Y"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 65
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->y:Ljava/lang/Double;

    goto :goto_1

    .line 66
    :cond_2
    const-string v5, "A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 67
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->a:Ljava/lang/Double;

    goto :goto_1

    .line 68
    :cond_3
    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 69
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->b:Ljava/lang/Double;

    goto :goto_1

    .line 70
    :cond_4
    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 71
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->c:Ljava/lang/Double;

    goto :goto_1

    .line 72
    :cond_5
    const-string v5, "D"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 73
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->d:Ljava/lang/Double;

    .line 59
    .end local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v4    # "cellName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
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

    const-string v7, "\' in Ellipse row"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 79
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

    .line 158
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v1, "Ellipse elements cannot be part of a path"

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getA()Ljava/lang/Double;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->a:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->a:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getB()Ljava/lang/Double;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->b:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->b:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getC()Ljava/lang/Double;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->c:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->c:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getD()Ljava/lang/Double;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->d:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->d:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getDel()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->getDel()Z

    move-result v0

    return v0

    .line 88
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getPath()Ljava/awt/geom/Path2D$Double;
    .locals 35

    .line 122
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->getDel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 126
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->getX()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 127
    .local v8, "cx":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->getY()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 128
    .local v10, "cy":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->getA()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 129
    .local v12, "a":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->getB()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 130
    .local v14, "b":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->getC()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    .line 131
    .local v16, "c":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->getD()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    .line 134
    .local v18, "d":D
    sub-double v0, v12, v8

    sub-double v2, v14, v10

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v20

    .line 135
    .local v20, "rx":D
    sub-double v0, v16, v8

    sub-double v2, v18, v10

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v22

    .line 138
    .local v22, "ry":D
    cmpl-double v0, v10, v14

    if-lez v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    sub-double v2, v8, v12

    div-double v2, v2, v20

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v2

    rem-double v24, v0, v2

    .line 143
    .local v24, "angle":D
    new-instance v0, Ljava/awt/geom/Ellipse2D$Double;

    sub-double v27, v8, v20

    sub-double v29, v10, v22

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double v31, v20, v1

    mul-double v33, v22, v1

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v34}, Ljava/awt/geom/Ellipse2D$Double;-><init>(DDDD)V

    .line 147
    .local v0, "ellipse":Ljava/awt/geom/Ellipse2D$Double;
    new-instance v1, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v1, v0}, Ljava/awt/geom/Path2D$Double;-><init>(Ljava/awt/Shape;)V

    move-object v6, v1

    .line 149
    .local v6, "path":Ljava/awt/geom/Path2D$Double;
    new-instance v1, Ljava/awt/geom/AffineTransform;

    invoke-direct {v1}, Ljava/awt/geom/AffineTransform;-><init>()V

    move-object v7, v1

    .line 150
    .local v7, "tr":Ljava/awt/geom/AffineTransform;
    move-wide/from16 v2, v24

    move-wide v4, v8

    move-object v0, v6

    move-wide/from16 v27, v8

    move-object v8, v7

    .end local v6    # "path":Ljava/awt/geom/Path2D$Double;
    .end local v7    # "tr":Ljava/awt/geom/AffineTransform;
    .local v0, "path":Ljava/awt/geom/Path2D$Double;
    .local v8, "tr":Ljava/awt/geom/AffineTransform;
    .local v26, "ellipse":Ljava/awt/geom/Ellipse2D$Double;
    .local v27, "cx":D
    move-wide v6, v10

    invoke-virtual/range {v1 .. v7}, Ljava/awt/geom/AffineTransform;->rotate(DDD)V

    .line 151
    invoke-virtual {v0, v8}, Ljava/awt/geom/Path2D$Double;->transform(Ljava/awt/geom/AffineTransform;)V

    .line 153
    return-object v0
.end method

.method public getX()Ljava/lang/Double;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 1
    .param p1, "row"    # Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    .line 117
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    .line 118
    return-void
.end method
