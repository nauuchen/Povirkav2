.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;
.super Ljava/lang/Object;
.source "NURBSTo.java"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

.field a:Ljava/lang/Double;

.field b:Ljava/lang/Double;

.field c:Ljava/lang/Double;

.field d:Ljava/lang/Double;

.field deleted:Ljava/lang/Boolean;

.field e:Ljava/lang/String;

.field x:Ljava/lang/Double;

.field y:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/RowType;)V
    .locals 8
    .param p1, "row"    # Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

    .line 39
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->x:Ljava/lang/Double;

    .line 42
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->y:Ljava/lang/Double;

    .line 45
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->a:Ljava/lang/Double;

    .line 48
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->b:Ljava/lang/Double;

    .line 51
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->c:Ljava/lang/Double;

    .line 54
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->d:Ljava/lang/Double;

    .line 57
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->e:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->deleted:Ljava/lang/Boolean;

    .line 65
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->isSetDel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getDel()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->deleted:Ljava/lang/Boolean;

    .line 68
    :cond_0
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getCellArray()[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    move-result-object v0

    .local v0, "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_8

    aget-object v3, v0, v2

    .line 69
    .local v3, "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "cellName":Ljava/lang/String;
    const-string v5, "X"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->x:Ljava/lang/Double;

    goto :goto_1

    .line 73
    :cond_1
    const-string v5, "Y"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 74
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->y:Ljava/lang/Double;

    goto :goto_1

    .line 75
    :cond_2
    const-string v5, "A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 76
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->a:Ljava/lang/Double;

    goto :goto_1

    .line 77
    :cond_3
    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 78
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->b:Ljava/lang/Double;

    goto :goto_1

    .line 79
    :cond_4
    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 80
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->c:Ljava/lang/Double;

    goto :goto_1

    .line 81
    :cond_5
    const-string v5, "D"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 82
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->d:Ljava/lang/Double;

    goto :goto_1

    .line 83
    :cond_6
    const-string v5, "E"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 84
    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getV()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->e:Ljava/lang/String;

    .line 68
    .end local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v4    # "cellName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .restart local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .restart local v4    # "cellName":Ljava/lang/String;
    :cond_7
    new-instance v5, Lorg/apache/poi/POIXMLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid cell \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' in NURBS row"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 90
    .end local v0    # "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    .end local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v4    # "cellName":Ljava/lang/String;
    :cond_8
    return-void
.end method


# virtual methods
.method public addToPath(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 46
    .param p1, "path"    # Ljava/awt/geom/Path2D$Double;
    .param p2, "parent"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 137
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->getDel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Path2D$Double;->getCurrentPoint()Ljava/awt/geom/Point2D;

    move-result-object v0

    .line 144
    .local v0, "last":Ljava/awt/geom/Point2D;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->getE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "formula":Ljava/lang/String;
    const-string v2, "NURBS("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 148
    const/4 v2, 0x6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "components":[Ljava/lang/String;
    array-length v3, v2

    const/16 v5, 0x8

    if-lt v3, v5, :cond_5

    .line 155
    array-length v3, v2

    add-int/lit8 v3, v3, -0x4

    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_4

    .line 160
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->getX()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 161
    .local v5, "lastControlX":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->getY()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 162
    .local v7, "lastControlY":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->getA()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 163
    .local v9, "secondToLastKnot":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->getB()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 164
    .local v11, "lastWeight":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->getC()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    .line 165
    .local v13, "firstKnot":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->getD()Ljava/lang/Double;

    move-result-object v3

    move-wide/from16 v16, v5

    .end local v5    # "lastControlX":D
    .local v16, "lastControlX":D
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 167
    .local v4, "firstWeight":D
    const/4 v3, 0x0

    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-wide/from16 v18, v4

    .end local v4    # "firstWeight":D
    .local v18, "firstWeight":D
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 168
    .local v3, "lastKnot":D
    const/4 v6, 0x1

    aget-object v20, v2, v6

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 169
    .local v6, "degree":I
    const/16 v20, 0x2

    aget-object v21, v2, v20

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 170
    .local v21, "xType":I
    const/16 v22, 0x3

    aget-object v23, v2, v22

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 172
    .local v23, "yType":I
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    .line 173
    .local v24, "xScale":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    .line 175
    .local v26, "yScale":D
    if-nez v21, :cond_1

    .line 176
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    .line 177
    :cond_1
    if-nez v23, :cond_2

    .line 178
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    .line 181
    :cond_2
    new-instance v28, Lcom/graphbuilder/curve/ControlPath;

    invoke-direct/range {v28 .. v28}, Lcom/graphbuilder/curve/ControlPath;-><init>()V

    move-object/from16 v29, v28

    .line 182
    .local v29, "controlPath":Lcom/graphbuilder/curve/ControlPath;
    new-instance v28, Lcom/graphbuilder/curve/ValueVector;

    invoke-direct/range {v28 .. v28}, Lcom/graphbuilder/curve/ValueVector;-><init>()V

    move-object/from16 v30, v28

    .line 183
    .local v30, "knots":Lcom/graphbuilder/curve/ValueVector;
    new-instance v28, Lcom/graphbuilder/curve/ValueVector;

    invoke-direct/range {v28 .. v28}, Lcom/graphbuilder/curve/ValueVector;-><init>()V

    move-object/from16 v31, v28

    .line 185
    .local v31, "weights":Lcom/graphbuilder/curve/ValueVector;
    move-object/from16 v5, v30

    .end local v30    # "knots":Lcom/graphbuilder/curve/ValueVector;
    .local v5, "knots":Lcom/graphbuilder/curve/ValueVector;
    invoke-virtual {v5, v13, v14}, Lcom/graphbuilder/curve/ValueVector;->add(D)V

    .line 186
    move-wide/from16 v32, v13

    move-wide/from16 v13, v18

    move-object/from16 v15, v31

    .end local v18    # "firstWeight":D
    .end local v31    # "weights":Lcom/graphbuilder/curve/ValueVector;
    .local v13, "firstWeight":D
    .local v15, "weights":Lcom/graphbuilder/curve/ValueVector;
    .local v32, "firstKnot":D
    invoke-virtual {v15, v13, v14}, Lcom/graphbuilder/curve/ValueVector;->add(D)V

    .line 187
    move-wide/from16 v30, v13

    .end local v13    # "firstWeight":D
    .local v30, "firstWeight":D
    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v13

    move-wide/from16 v34, v7

    move v8, v6

    .end local v6    # "degree":I
    .end local v7    # "lastControlY":D
    .local v8, "degree":I
    .local v34, "lastControlY":D
    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v6

    invoke-static {v13, v14, v6, v7}, Lcom/graphbuilder/geom/PointFactory;->create(DD)Lcom/graphbuilder/geom/Point2d;

    move-result-object v6

    move-object/from16 v7, v29

    .end local v29    # "controlPath":Lcom/graphbuilder/curve/ControlPath;
    .local v7, "controlPath":Lcom/graphbuilder/curve/ControlPath;
    invoke-virtual {v7, v6}, Lcom/graphbuilder/curve/ControlPath;->addPoint(Lcom/graphbuilder/curve/Point;)V

    .line 190
    array-length v6, v2

    add-int/lit8 v6, v6, -0x4

    div-int/lit8 v6, v6, 0x4

    .line 191
    .local v6, "sets":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v6, :cond_3

    .line 192
    mul-int/lit8 v14, v13, 0x4

    add-int/lit8 v14, v14, 0x4

    const/16 v19, 0x0

    add-int/lit8 v14, v14, 0x0

    aget-object v14, v2, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v28

    .line 193
    .local v28, "x1":D
    mul-int/lit8 v14, v13, 0x4

    add-int/lit8 v14, v14, 0x4

    const/16 v18, 0x1

    add-int/lit8 v14, v14, 0x1

    aget-object v14, v2, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v36

    .line 194
    .local v36, "y1":D
    mul-int/lit8 v14, v13, 0x4

    add-int/lit8 v14, v14, 0x4

    add-int/lit8 v14, v14, 0x2

    aget-object v14, v2, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v38, v0

    move-object/from16 v39, v1

    .end local v0    # "last":Ljava/awt/geom/Point2D;
    .end local v1    # "formula":Ljava/lang/String;
    .local v38, "last":Ljava/awt/geom/Point2D;
    .local v39, "formula":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 195
    .local v0, "k":D
    mul-int/lit8 v14, v13, 0x4

    add-int/lit8 v14, v14, 0x4

    add-int/lit8 v14, v14, 0x3

    aget-object v14, v2, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    move-wide/from16 v40, v11

    .end local v11    # "lastWeight":D
    .local v40, "lastWeight":D
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    .line 197
    .local v11, "w":D
    move-object v14, v2

    move-wide/from16 v42, v3

    .end local v2    # "components":[Ljava/lang/String;
    .end local v3    # "lastKnot":D
    .local v14, "components":[Ljava/lang/String;
    .local v42, "lastKnot":D
    mul-double v2, v28, v24

    move v4, v8

    move-wide/from16 v44, v9

    .end local v8    # "degree":I
    .end local v9    # "secondToLastKnot":D
    .local v4, "degree":I
    .local v44, "secondToLastKnot":D
    mul-double v8, v36, v26

    invoke-static {v2, v3, v8, v9}, Lcom/graphbuilder/geom/PointFactory;->create(DD)Lcom/graphbuilder/geom/Point2d;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/graphbuilder/curve/ControlPath;->addPoint(Lcom/graphbuilder/curve/Point;)V

    .line 198
    invoke-virtual {v5, v0, v1}, Lcom/graphbuilder/curve/ValueVector;->add(D)V

    .line 199
    invoke-virtual {v15, v11, v12}, Lcom/graphbuilder/curve/ValueVector;->add(D)V

    .line 191
    .end local v0    # "k":D
    .end local v11    # "w":D
    .end local v28    # "x1":D
    .end local v36    # "y1":D
    add-int/lit8 v13, v13, 0x1

    move v8, v4

    move-object v2, v14

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-wide/from16 v11, v40

    move-wide/from16 v3, v42

    move-wide/from16 v9, v44

    goto :goto_0

    .end local v4    # "degree":I
    .end local v14    # "components":[Ljava/lang/String;
    .end local v38    # "last":Ljava/awt/geom/Point2D;
    .end local v39    # "formula":Ljava/lang/String;
    .end local v40    # "lastWeight":D
    .end local v42    # "lastKnot":D
    .end local v44    # "secondToLastKnot":D
    .local v0, "last":Ljava/awt/geom/Point2D;
    .restart local v1    # "formula":Ljava/lang/String;
    .restart local v2    # "components":[Ljava/lang/String;
    .restart local v3    # "lastKnot":D
    .restart local v8    # "degree":I
    .restart local v9    # "secondToLastKnot":D
    .local v11, "lastWeight":D
    :cond_3
    move-object/from16 v38, v0

    move-object/from16 v39, v1

    move-object v14, v2

    move-wide/from16 v42, v3

    move v4, v8

    move-wide/from16 v44, v9

    move-wide/from16 v40, v11

    .line 203
    .end local v0    # "last":Ljava/awt/geom/Point2D;
    .end local v1    # "formula":Ljava/lang/String;
    .end local v2    # "components":[Ljava/lang/String;
    .end local v3    # "lastKnot":D
    .end local v8    # "degree":I
    .end local v9    # "secondToLastKnot":D
    .end local v11    # "lastWeight":D
    .end local v13    # "i":I
    .restart local v4    # "degree":I
    .restart local v14    # "components":[Ljava/lang/String;
    .restart local v38    # "last":Ljava/awt/geom/Point2D;
    .restart local v39    # "formula":Ljava/lang/String;
    .restart local v40    # "lastWeight":D
    .restart local v42    # "lastKnot":D
    .restart local v44    # "secondToLastKnot":D
    move-wide/from16 v0, v44

    .end local v44    # "secondToLastKnot":D
    .local v0, "secondToLastKnot":D
    invoke-virtual {v5, v0, v1}, Lcom/graphbuilder/curve/ValueVector;->add(D)V

    .line 204
    move-wide/from16 v2, v42

    .end local v42    # "lastKnot":D
    .local v2, "lastKnot":D
    invoke-virtual {v5, v2, v3}, Lcom/graphbuilder/curve/ValueVector;->add(D)V

    .line 206
    move-wide/from16 v8, v40

    .end local v40    # "lastWeight":D
    .local v8, "lastWeight":D
    invoke-virtual {v15, v8, v9}, Lcom/graphbuilder/curve/ValueVector;->add(D)V

    .line 208
    move-wide/from16 v10, v16

    move-wide/from16 v12, v34

    .end local v0    # "secondToLastKnot":D
    .end local v16    # "lastControlX":D
    .end local v34    # "lastControlY":D
    .local v10, "lastControlX":D
    .local v12, "lastControlY":D
    .restart local v44    # "secondToLastKnot":D
    invoke-static {v10, v11, v12, v13}, Lcom/graphbuilder/geom/PointFactory;->create(DD)Lcom/graphbuilder/geom/Point2d;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/graphbuilder/curve/ControlPath;->addPoint(Lcom/graphbuilder/curve/Point;)V

    .line 210
    invoke-static {v7, v5, v15, v4}, Lorg/apache/poi/xdgf/geom/SplineRenderer;->createNurbsSpline(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/ValueVector;Lcom/graphbuilder/curve/ValueVector;I)Lcom/graphbuilder/curve/ShapeMultiPath;

    move-result-object v0

    .line 212
    .local v0, "shape":Lcom/graphbuilder/curve/ShapeMultiPath;
    move-object/from16 v1, p1

    const/4 v2, 0x1

    .end local v2    # "lastKnot":D
    .restart local v42    # "lastKnot":D
    invoke-virtual {v1, v0, v2}, Ljava/awt/geom/Path2D$Double;->append(Ljava/awt/Shape;Z)V

    .line 213
    return-void

    .line 156
    .end local v4    # "degree":I
    .end local v5    # "knots":Lcom/graphbuilder/curve/ValueVector;
    .end local v6    # "sets":I
    .end local v7    # "controlPath":Lcom/graphbuilder/curve/ControlPath;
    .end local v8    # "lastWeight":D
    .end local v10    # "lastControlX":D
    .end local v12    # "lastControlY":D
    .end local v14    # "components":[Ljava/lang/String;
    .end local v15    # "weights":Lcom/graphbuilder/curve/ValueVector;
    .end local v21    # "xType":I
    .end local v23    # "yType":I
    .end local v24    # "xScale":D
    .end local v26    # "yScale":D
    .end local v30    # "firstWeight":D
    .end local v32    # "firstKnot":D
    .end local v38    # "last":Ljava/awt/geom/Point2D;
    .end local v39    # "formula":Ljava/lang/String;
    .end local v42    # "lastKnot":D
    .end local v44    # "secondToLastKnot":D
    .local v0, "last":Ljava/awt/geom/Point2D;
    .restart local v1    # "formula":Ljava/lang/String;
    .local v2, "components":[Ljava/lang/String;
    :cond_4
    move-object/from16 v38, v0

    move-object v14, v2

    .end local v0    # "last":Ljava/awt/geom/Point2D;
    .end local v2    # "components":[Ljava/lang/String;
    .restart local v14    # "components":[Ljava/lang/String;
    .restart local v38    # "last":Ljava/awt/geom/Point2D;
    new-instance v0, Lorg/apache/poi/POIXMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid NURBS formula -- need 4 + n*4 arguments, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v14

    .end local v14    # "components":[Ljava/lang/String;
    .local v3, "components":[Ljava/lang/String;
    array-length v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    .end local v3    # "components":[Ljava/lang/String;
    .end local v38    # "last":Ljava/awt/geom/Point2D;
    .restart local v0    # "last":Ljava/awt/geom/Point2D;
    .restart local v2    # "components":[Ljava/lang/String;
    :cond_5
    move-object/from16 v38, v0

    move-object v3, v2

    .end local v0    # "last":Ljava/awt/geom/Point2D;
    .end local v2    # "components":[Ljava/lang/String;
    .restart local v3    # "components":[Ljava/lang/String;
    .restart local v38    # "last":Ljava/awt/geom/Point2D;
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v2, "Invalid NURBS formula (not enough arguments)"

    invoke-direct {v0, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    .end local v3    # "components":[Ljava/lang/String;
    .end local v38    # "last":Ljava/awt/geom/Point2D;
    .restart local v0    # "last":Ljava/awt/geom/Point2D;
    :cond_6
    move-object/from16 v38, v0

    move-object/from16 v39, v1

    move-object/from16 v1, p1

    .line 146
    .end local v0    # "last":Ljava/awt/geom/Point2D;
    .end local v1    # "formula":Ljava/lang/String;
    .restart local v38    # "last":Ljava/awt/geom/Point2D;
    .restart local v39    # "formula":Ljava/lang/String;
    new-instance v0, Lorg/apache/poi/POIXMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid NURBS formula: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, v39

    .end local v39    # "formula":Ljava/lang/String;
    .local v3, "formula":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getA()Ljava/lang/Double;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->a:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->a:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getB()Ljava/lang/Double;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->b:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->b:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getC()Ljava/lang/Double;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->c:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->c:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getD()Ljava/lang/Double;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->d:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->d:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getDel()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->getDel()Z

    move-result v0

    return v0

    .line 99
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getE()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->e:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getX()Ljava/lang/Double;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 1
    .param p1, "row"    # Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    .line 132
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

    .line 133
    return-void
.end method
