.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;
.super Ljava/lang/Object;
.source "EllipticalArcTo.java"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# static fields
.field public static draw:I


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

.field a:Ljava/lang/Double;

.field b:Ljava/lang/Double;

.field c:Ljava/lang/Double;

.field d:Ljava/lang/Double;

.field deleted:Ljava/lang/Boolean;

.field x:Ljava/lang/Double;

.field y:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    const/4 v0, 0x0

    sput v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->draw:I

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/RowType;)V
    .locals 8
    .param p1, "row"    # Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    .line 36
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->x:Ljava/lang/Double;

    .line 39
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->y:Ljava/lang/Double;

    .line 46
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->a:Ljava/lang/Double;

    .line 49
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->b:Ljava/lang/Double;

    .line 53
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->c:Ljava/lang/Double;

    .line 60
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->d:Ljava/lang/Double;

    .line 62
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->deleted:Ljava/lang/Boolean;

    .line 68
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->isSetDel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getDel()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->deleted:Ljava/lang/Boolean;

    .line 71
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

    .line 72
    .local v3, "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "cellName":Ljava/lang/String;
    const-string v5, "X"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 75
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->x:Ljava/lang/Double;

    goto :goto_1

    .line 76
    :cond_1
    const-string v5, "Y"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 77
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->y:Ljava/lang/Double;

    goto :goto_1

    .line 78
    :cond_2
    const-string v5, "A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 79
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->a:Ljava/lang/Double;

    goto :goto_1

    .line 80
    :cond_3
    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 81
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->b:Ljava/lang/Double;

    goto :goto_1

    .line 82
    :cond_4
    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 83
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->c:Ljava/lang/Double;

    goto :goto_1

    .line 84
    :cond_5
    const-string v5, "D"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 85
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->d:Ljava/lang/Double;

    .line 71
    .end local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v4    # "cellName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
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

    const-string v7, "\' in EllipticalArcTo row"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 91
    .end local v0    # "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    .end local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v4    # "cellName":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method protected static computeSweep(DDD)D
    .locals 4
    .param p0, "startAngle"    # D
    .param p2, "endAngle"    # D
    .param p4, "ctrlAngle"    # D

    .line 224
    const-wide v0, 0x4076800000000000L    # 360.0

    add-double v2, p0, v0

    rem-double/2addr v2, v0

    .line 225
    .end local p0    # "startAngle":D
    .local v2, "startAngle":D
    add-double p0, p2, v0

    rem-double/2addr p0, v0

    .line 226
    .end local p2    # "endAngle":D
    .local p0, "endAngle":D
    add-double p2, p4, v0

    rem-double/2addr p2, v0

    .line 230
    .end local p4    # "ctrlAngle":D
    .local p2, "ctrlAngle":D
    cmpg-double p4, v2, p0

    if-gez p4, :cond_1

    .line 231
    cmpg-double p4, v2, p2

    if-gez p4, :cond_0

    cmpg-double p4, p2, p0

    if-gez p4, :cond_0

    .line 232
    sub-double p4, v2, p0

    .local p4, "sweep":D
    goto :goto_0

    .line 234
    .end local p4    # "sweep":D
    :cond_0
    sub-double p4, v2, p0

    add-double/2addr p4, v0

    .restart local p4    # "sweep":D
    goto :goto_0

    .line 237
    .end local p4    # "sweep":D
    :cond_1
    cmpg-double p4, p0, p2

    if-gez p4, :cond_2

    cmpg-double p4, p2, v2

    if-gez p4, :cond_2

    .line 238
    sub-double p4, v2, p0

    .restart local p4    # "sweep":D
    goto :goto_0

    .line 240
    .end local p4    # "sweep":D
    :cond_2
    sub-double p4, v2, p0

    sub-double/2addr v0, p4

    neg-double p4, v0

    .line 244
    .restart local p4    # "sweep":D
    :goto_0
    return-wide p4
.end method

.method public static createEllipticalArc(DDDDDDLjava/awt/geom/Path2D$Double;)V
    .locals 53
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "a"    # D
    .param p6, "b"    # D
    .param p8, "c"    # D
    .param p10, "d"    # D
    .param p12, "path"    # Ljava/awt/geom/Path2D$Double;

    .line 166
    move-wide/from16 v0, p8

    invoke-virtual/range {p12 .. p12}, Ljava/awt/geom/Path2D$Double;->getCurrentPoint()Ljava/awt/geom/Point2D;

    move-result-object v2

    .line 167
    .local v2, "last":Ljava/awt/geom/Point2D;
    invoke-virtual {v2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v3

    .line 168
    .local v3, "x0":D
    invoke-virtual {v2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v5

    .line 171
    .local v5, "y0":D
    neg-double v7, v0

    invoke-static {v7, v8}, Ljava/awt/geom/AffineTransform;->getRotateInstance(D)Ljava/awt/geom/AffineTransform;

    move-result-object v7

    .line 172
    .local v7, "at":Ljava/awt/geom/AffineTransform;
    const/4 v8, 0x6

    new-array v8, v8, [D

    const/4 v15, 0x0

    aput-wide v3, v8, v15

    const/16 v16, 0x1

    aput-wide v5, v8, v16

    const/16 v17, 0x2

    aput-wide p0, v8, v17

    const/16 v18, 0x3

    aput-wide p2, v8, v18

    const/16 v19, 0x4

    aput-wide p4, v8, v19

    const/16 v20, 0x5

    aput-wide p6, v8, v20

    .line 173
    .local v8, "pts":[D
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x3

    move-object v9, v7

    move-object v10, v8

    move-object v12, v8

    invoke-virtual/range {v9 .. v14}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    .line 175
    aget-wide v3, v8, v15

    .line 176
    aget-wide v5, v8, v16

    .line 177
    aget-wide v9, v8, v17

    .line 178
    .end local p0    # "x":D
    .local v9, "x":D
    aget-wide v11, v8, v18

    .line 179
    .end local p2    # "y":D
    .local v11, "y":D
    aget-wide v13, v8, v19

    .line 180
    .end local p4    # "a":D
    .local v13, "a":D
    aget-wide v16, v8, v20

    .line 184
    .end local p6    # "b":D
    .local v16, "b":D
    mul-double v18, p10, p10

    .line 185
    .local v18, "d2":D
    sub-double v20, v3, v9

    add-double v22, v3, v9

    mul-double v20, v20, v22

    sub-double v22, v11, v16

    mul-double v20, v20, v22

    sub-double v22, v9, v13

    add-double v24, v9, v13

    mul-double v22, v22, v24

    sub-double v24, v5, v11

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    sub-double v22, v5, v11

    mul-double v22, v22, v18

    sub-double v24, v11, v16

    mul-double v22, v22, v24

    sub-double v24, v5, v16

    mul-double v22, v22, v24

    add-double v20, v20, v22

    sub-double v22, v3, v9

    sub-double v24, v11, v16

    mul-double v22, v22, v24

    sub-double v24, v9, v13

    sub-double v26, v5, v11

    mul-double v24, v24, v26

    sub-double v22, v22, v24

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v22, v22, v0

    div-double v20, v20, v22

    .line 188
    .local v20, "cx":D
    sub-double v22, v3, v9

    sub-double v24, v9, v13

    mul-double v22, v22, v24

    sub-double v24, v3, v13

    mul-double v22, v22, v24

    div-double v22, v22, v18

    sub-double v24, v9, v13

    sub-double v26, v5, v11

    mul-double v24, v24, v26

    add-double v26, v5, v11

    mul-double v24, v24, v26

    add-double v22, v22, v24

    sub-double v24, v3, v9

    sub-double v26, v11, v16

    mul-double v24, v24, v26

    add-double v26, v11, v16

    mul-double v24, v24, v26

    sub-double v22, v22, v24

    sub-double v24, v9, v13

    sub-double v26, v5, v11

    mul-double v24, v24, v26

    sub-double v26, v3, v9

    sub-double v28, v11, v16

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    mul-double v24, v24, v0

    div-double v22, v22, v24

    .line 193
    .local v22, "cy":D
    move-object/from16 v24, v7

    move-object/from16 v25, v8

    .end local v7    # "at":Ljava/awt/geom/AffineTransform;
    .end local v8    # "pts":[D
    .local v24, "at":Ljava/awt/geom/AffineTransform;
    .local v25, "pts":[D
    sub-double v7, v3, v20

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    move-wide/from16 p0, v9

    .end local v9    # "x":D
    .restart local p0    # "x":D
    sub-double v9, v5, v22

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double v9, v9, v18

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 194
    .local v7, "rx":D
    div-double v9, v7, p10

    .line 202
    .local v9, "ry":D
    sub-double v26, v16, v22

    div-double v0, v26, v9

    sub-double v26, v13, v20

    move-wide/from16 p4, v13

    .end local v13    # "a":D
    .restart local p4    # "a":D
    div-double v13, v26, v7

    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 204
    .local v0, "ctrlAngle":D
    sub-double v13, v5, v22

    div-double/2addr v13, v9

    sub-double v26, v3, v20

    move-object/from16 v32, v2

    move-wide/from16 v33, v3

    .end local v2    # "last":Ljava/awt/geom/Point2D;
    .end local v3    # "x0":D
    .local v32, "last":Ljava/awt/geom/Point2D;
    .local v33, "x0":D
    div-double v2, v26, v7

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    .line 206
    .local v2, "startAngle":D
    sub-double v13, v11, v22

    div-double/2addr v13, v9

    move-wide/from16 v35, p0

    .end local p0    # "x":D
    .local v35, "x":D
    sub-double v26, v35, v20

    move-wide/from16 v37, v5

    .end local v5    # "y0":D
    .local v37, "y0":D
    div-double v4, v26, v7

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    .line 209
    .local v4, "endAngle":D
    move-wide/from16 v26, v2

    move-wide/from16 v28, v4

    move-wide/from16 v30, v0

    invoke-static/range {v26 .. v31}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->computeSweep(DDD)D

    move-result-wide v13

    .line 212
    .local v13, "sweep":D
    new-instance v6, Ljava/awt/geom/Arc2D$Double;

    sub-double v40, v20, v7

    sub-double v42, v22, v9

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v44, v7, v26

    mul-double v46, v9, v26

    move-wide/from16 p0, v0

    .end local v0    # "ctrlAngle":D
    .local p0, "ctrlAngle":D
    neg-double v0, v2

    const/16 v52, 0x0

    move-object/from16 v39, v6

    move-wide/from16 v48, v0

    move-wide/from16 v50, v13

    invoke-direct/range {v39 .. v52}, Ljava/awt/geom/Arc2D$Double;-><init>(DDDDDDI)V

    move-object v0, v6

    .line 216
    .local v0, "arc":Ljava/awt/geom/Arc2D;
    move-wide/from16 p2, v2

    move-object/from16 v3, v24

    move-wide/from16 v1, p8

    .end local v2    # "startAngle":D
    .end local v24    # "at":Ljava/awt/geom/AffineTransform;
    .local v3, "at":Ljava/awt/geom/AffineTransform;
    .local p2, "startAngle":D
    invoke-virtual {v3, v1, v2}, Ljava/awt/geom/AffineTransform;->setToRotation(D)V

    .line 217
    invoke-virtual {v3, v0}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v6

    move-object/from16 p6, v0

    move-object/from16 v0, p12

    .end local v0    # "arc":Ljava/awt/geom/Arc2D;
    .local p6, "arc":Ljava/awt/geom/Arc2D;
    invoke-virtual {v0, v6, v15}, Ljava/awt/geom/Path2D$Double;->append(Ljava/awt/Shape;Z)V

    .line 218
    return-void
.end method


# virtual methods
.method public addToPath(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 26
    .param p1, "path"    # Ljava/awt/geom/Path2D$Double;
    .param p2, "parent"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 137
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->getDel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    return-void

    .line 141
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->getX()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 142
    .local v14, "x":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->getY()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    .line 143
    .local v16, "y":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->getA()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    .line 144
    .local v18, "a":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->getB()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    .line 145
    .local v20, "b":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->getC()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    .line 146
    .local v22, "c":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->getD()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    .line 148
    .local v24, "d":D
    move-wide v1, v14

    move-wide/from16 v3, v16

    move-wide/from16 v5, v18

    move-wide/from16 v7, v20

    move-wide/from16 v9, v22

    move-wide/from16 v11, v24

    move-object/from16 v13, p1

    invoke-static/range {v1 .. v13}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->createEllipticalArc(DDDDDDLjava/awt/geom/Path2D$Double;)V

    .line 149
    return-void
.end method

.method public getA()Ljava/lang/Double;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->a:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->a:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getB()Ljava/lang/Double;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->b:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->b:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getC()Ljava/lang/Double;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->c:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->c:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getD()Ljava/lang/Double;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->d:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->d:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getDel()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->getDel()Z

    move-result v0

    return v0

    .line 100
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getX()Ljava/lang/Double;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 1
    .param p1, "row"    # Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    .line 129
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    .line 130
    return-void
.end method
