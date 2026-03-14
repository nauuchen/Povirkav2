.class public Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;
.super Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;
.source "XSLFFreeformShape.java"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/FreeformShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;",
        "Lorg/apache/poi/sl/usermodel/FreeformShape<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0
    .param p1, "shape"    # Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;
    .param p2, "sheet"    # Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    .line 54
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    .line 55
    return-void
.end method

.method static prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;
    .locals 7
    .param p0, "shapeId"    # I

    .line 188
    invoke-static {}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape$Factory;->newInstance()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v0

    .line 189
    .local v0, "ct":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->addNewNvSpPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;

    move-result-object v1

    .line 190
    .local v1, "nvSpPr":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v2

    .line 191
    .local v2, "cnv":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Freeform "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    .line 192
    add-int/lit8 v3, p0, 0x1

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    .line 193
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;->addNewCNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingShapeProps;

    .line 194
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;->addNewNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    .line 195
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v3

    .line 196
    .local v3, "spPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewCustGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    move-result-object v4

    .line 197
    .local v4, "geom":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    .line 198
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewGdLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    .line 199
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewAhLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;

    .line 200
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewCxnLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;

    .line 201
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;

    move-result-object v5

    .line 202
    .local v5, "rect":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;
    const-string v6, "r"

    invoke-interface {v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;->setR(Ljava/lang/Object;)V

    .line 203
    const-string v6, "b"

    invoke-interface {v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;->setB(Ljava/lang/Object;)V

    .line 204
    const-string v6, "t"

    invoke-interface {v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;->setT(Ljava/lang/Object;)V

    .line 205
    const-string v6, "l"

    invoke-interface {v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;->setL(Ljava/lang/Object;)V

    .line 206
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewPathLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;

    .line 207
    return-object v0
.end method


# virtual methods
.method public getPath()Ljava/awt/geom/Path2D$Double;
    .locals 35

    .line 129
    new-instance v0, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Path2D$Double;-><init>()V

    .line 130
    .local v0, "path":Ljava/awt/geom/Path2D$Double;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v14

    .line 132
    .local v14, "bounds":Ljava/awt/geom/Rectangle2D;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v15

    .line 133
    .local v15, "xo":Lorg/apache/xmlbeans/XmlObject;
    instance-of v1, v15, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    if-nez v1, :cond_0

    .line 134
    const/4 v1, 0x0

    return-object v1

    .line 137
    :cond_0
    move-object v1, v15

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getCustGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    move-result-object v16

    .line 138
    .local v16, "geom":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;
    invoke-interface/range {v16 .. v16}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getPathLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;->getPathArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    move-result-object v12

    .local v12, "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    array-length v13, v12

    .local v13, "len$":I
    const/4 v1, 0x0

    move v10, v1

    .local v10, "i$":I
    :goto_0
    if-ge v10, v13, :cond_7

    aget-object v11, v12, v10

    .line 139
    .local v11, "spPath":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    invoke-virtual {v14}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v1

    invoke-interface {v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->getW()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v3

    div-double v17, v1, v3

    .line 140
    .local v17, "scaleW":D
    invoke-virtual {v14}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v1

    invoke-interface {v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->getH()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v3

    div-double v19, v1, v3

    .line 141
    .local v19, "scaleH":D
    const-string v1, "*"

    invoke-interface {v11, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v8

    .local v8, "arr$":[Lorg/apache/xmlbeans/XmlObject;
    array-length v9, v8

    .local v9, "len$":I
    const/4 v1, 0x0

    move v6, v1

    .local v6, "i$":I
    :goto_1
    if-ge v6, v9, :cond_6

    aget-object v7, v8, v6

    .line 142
    .local v7, "ch":Lorg/apache/xmlbeans/XmlObject;
    instance-of v1, v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;

    if-eqz v1, :cond_1

    .line 143
    move-object v1, v7

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;->getPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v1

    .line 144
    .local v1, "pt":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v2

    mul-double v2, v2, v17

    double-to-float v2, v2

    float-to-double v2, v2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v4

    mul-double v4, v4, v19

    double-to-float v4, v4

    float-to-double v4, v4

    invoke-virtual {v0, v2, v3, v4, v5}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    .line 147
    .end local v1    # "pt":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    move/from16 v24, v6

    move-object/from16 v26, v8

    move/from16 v27, v9

    move/from16 v29, v10

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move/from16 v32, v13

    move-object/from16 v25, v15

    goto/16 :goto_3

    :cond_1
    instance-of v1, v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;

    if-eqz v1, :cond_2

    .line 148
    move-object v1, v7

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;->getPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v1

    .line 149
    .restart local v1    # "pt":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v2, v2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-double v4, v4

    invoke-virtual {v0, v2, v3, v4, v5}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    .line 151
    .end local v1    # "pt":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    move/from16 v24, v6

    move-object/from16 v26, v8

    move/from16 v27, v9

    move/from16 v29, v10

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move/from16 v32, v13

    move-object/from16 v25, v15

    goto/16 :goto_3

    :cond_2
    instance-of v1, v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 152
    move-object v4, v7

    check-cast v4, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;

    .line 153
    .local v4, "bez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;
    invoke-interface {v4, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v21

    .line 154
    .local v21, "pt1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    invoke-interface {v4, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v22

    .line 155
    .local v22, "pt2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    invoke-interface/range {v21 .. v21}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v1

    mul-double v1, v1, v17

    double-to-float v1, v1

    float-to-double v2, v1

    invoke-interface/range {v21 .. v21}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v23

    move-object/from16 v25, v4

    .end local v4    # "bez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;
    .local v25, "bez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;
    mul-double v4, v23, v19

    double-to-float v1, v4

    float-to-double v4, v1

    invoke-interface/range {v22 .. v22}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v23

    move/from16 v26, v6

    move-object/from16 v27, v7

    .end local v6    # "i$":I
    .end local v7    # "ch":Lorg/apache/xmlbeans/XmlObject;
    .local v26, "i$":I
    .local v27, "ch":Lorg/apache/xmlbeans/XmlObject;
    mul-double v6, v23, v17

    double-to-float v1, v6

    float-to-double v6, v1

    invoke-interface/range {v22 .. v22}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v23

    move-object/from16 v28, v8

    move/from16 v29, v9

    .end local v8    # "arr$":[Lorg/apache/xmlbeans/XmlObject;
    .end local v9    # "len$":I
    .local v28, "arr$":[Lorg/apache/xmlbeans/XmlObject;
    .local v29, "len$":I
    mul-double v8, v23, v19

    double-to-float v1, v8

    float-to-double v8, v1

    move-object v1, v0

    move-object/from16 v23, v25

    .end local v25    # "bez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;
    .local v23, "bez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;
    move-object/from16 v25, v15

    move/from16 v24, v26

    move-object/from16 v15, v27

    .end local v26    # "i$":I
    .end local v27    # "ch":Lorg/apache/xmlbeans/XmlObject;
    .local v15, "ch":Lorg/apache/xmlbeans/XmlObject;
    .local v24, "i$":I
    .local v25, "xo":Lorg/apache/xmlbeans/XmlObject;
    move-object/from16 v26, v28

    move/from16 v27, v29

    .end local v28    # "arr$":[Lorg/apache/xmlbeans/XmlObject;
    .end local v29    # "len$":I
    .local v26, "arr$":[Lorg/apache/xmlbeans/XmlObject;
    .local v27, "len$":I
    invoke-virtual/range {v1 .. v9}, Ljava/awt/geom/Path2D$Double;->quadTo(DDDD)V

    .line 160
    .end local v21    # "pt1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v22    # "pt2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v23    # "bez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;
    move/from16 v29, v10

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move/from16 v32, v13

    goto/16 :goto_3

    .end local v24    # "i$":I
    .end local v25    # "xo":Lorg/apache/xmlbeans/XmlObject;
    .end local v26    # "arr$":[Lorg/apache/xmlbeans/XmlObject;
    .end local v27    # "len$":I
    .restart local v6    # "i$":I
    .restart local v7    # "ch":Lorg/apache/xmlbeans/XmlObject;
    .restart local v8    # "arr$":[Lorg/apache/xmlbeans/XmlObject;
    .restart local v9    # "len$":I
    .local v15, "xo":Lorg/apache/xmlbeans/XmlObject;
    :cond_3
    move/from16 v24, v6

    move-object/from16 v26, v8

    move/from16 v27, v9

    move-object/from16 v25, v15

    move-object v15, v7

    .end local v6    # "i$":I
    .end local v7    # "ch":Lorg/apache/xmlbeans/XmlObject;
    .end local v8    # "arr$":[Lorg/apache/xmlbeans/XmlObject;
    .end local v9    # "len$":I
    .local v15, "ch":Lorg/apache/xmlbeans/XmlObject;
    .restart local v24    # "i$":I
    .restart local v25    # "xo":Lorg/apache/xmlbeans/XmlObject;
    .restart local v26    # "arr$":[Lorg/apache/xmlbeans/XmlObject;
    .restart local v27    # "len$":I
    instance-of v1, v15, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;

    if-eqz v1, :cond_4

    .line 161
    move-object v8, v15

    check-cast v8, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;

    .line 162
    .local v8, "bez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;
    invoke-interface {v8, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v21

    .line 163
    .restart local v21    # "pt1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    invoke-interface {v8, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v22

    .line 164
    .restart local v22    # "pt2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v23

    .line 165
    .local v23, "pt3":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    invoke-interface/range {v21 .. v21}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v1

    mul-double v1, v1, v17

    double-to-float v1, v1

    float-to-double v2, v1

    invoke-interface/range {v21 .. v21}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v4

    mul-double v4, v4, v19

    double-to-float v1, v4

    float-to-double v4, v1

    invoke-interface/range {v22 .. v22}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v6

    mul-double v6, v6, v17

    double-to-float v1, v6

    float-to-double v6, v1

    invoke-interface/range {v22 .. v22}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v28

    move-object/from16 v30, v8

    .end local v8    # "bez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;
    .local v30, "bez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;
    mul-double v8, v28, v19

    double-to-float v1, v8

    float-to-double v8, v1

    invoke-interface/range {v23 .. v23}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v28

    move/from16 v31, v10

    move-object/from16 v32, v11

    .end local v10    # "i$":I
    .end local v11    # "spPath":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .local v31, "i$":I
    .local v32, "spPath":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    mul-double v10, v28, v17

    double-to-float v1, v10

    float-to-double v10, v1

    invoke-interface/range {v23 .. v23}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v28

    move-object/from16 v33, v12

    move/from16 v34, v13

    .end local v12    # "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .end local v13    # "len$":I
    .local v33, "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .local v34, "len$":I
    mul-double v12, v28, v19

    double-to-float v1, v12

    float-to-double v12, v1

    move-object v1, v0

    move-object/from16 v28, v30

    .end local v30    # "bez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;
    .local v28, "bez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;
    move/from16 v29, v31

    move-object/from16 v30, v32

    .end local v31    # "i$":I
    .end local v32    # "spPath":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .local v29, "i$":I
    .local v30, "spPath":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    move-object/from16 v31, v33

    move/from16 v32, v34

    .end local v33    # "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .end local v34    # "len$":I
    .local v31, "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .local v32, "len$":I
    invoke-virtual/range {v1 .. v13}, Ljava/awt/geom/Path2D$Double;->curveTo(DDDDDD)V

    .end local v21    # "pt1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v22    # "pt2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v23    # "pt3":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v28    # "bez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;
    goto :goto_2

    .line 172
    .end local v29    # "i$":I
    .end local v30    # "spPath":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .end local v31    # "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .end local v32    # "len$":I
    .restart local v10    # "i$":I
    .restart local v11    # "spPath":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .restart local v12    # "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .restart local v13    # "len$":I
    :cond_4
    move/from16 v29, v10

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move/from16 v32, v13

    .end local v10    # "i$":I
    .end local v11    # "spPath":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .end local v12    # "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .end local v13    # "len$":I
    .restart local v29    # "i$":I
    .restart local v30    # "spPath":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .restart local v31    # "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .restart local v32    # "len$":I
    instance-of v1, v15, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DClose;

    if-eqz v1, :cond_5

    .line 173
    invoke-virtual {v0}, Ljava/awt/geom/Path2D$Double;->closePath()V

    goto :goto_3

    .line 172
    :cond_5
    :goto_2
    nop

    .line 141
    .end local v15    # "ch":Lorg/apache/xmlbeans/XmlObject;
    :goto_3
    add-int/lit8 v6, v24, 0x1

    move-object/from16 v15, v25

    move-object/from16 v8, v26

    move/from16 v9, v27

    move/from16 v10, v29

    move-object/from16 v11, v30

    move-object/from16 v12, v31

    move/from16 v13, v32

    .end local v24    # "i$":I
    .restart local v6    # "i$":I
    goto/16 :goto_1

    .end local v25    # "xo":Lorg/apache/xmlbeans/XmlObject;
    .end local v26    # "arr$":[Lorg/apache/xmlbeans/XmlObject;
    .end local v27    # "len$":I
    .end local v29    # "i$":I
    .end local v30    # "spPath":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .end local v31    # "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .end local v32    # "len$":I
    .local v8, "arr$":[Lorg/apache/xmlbeans/XmlObject;
    .restart local v9    # "len$":I
    .restart local v10    # "i$":I
    .restart local v11    # "spPath":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .restart local v12    # "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .restart local v13    # "len$":I
    .local v15, "xo":Lorg/apache/xmlbeans/XmlObject;
    :cond_6
    move/from16 v24, v6

    move-object/from16 v26, v8

    move/from16 v27, v9

    move/from16 v29, v10

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move/from16 v32, v13

    move-object/from16 v25, v15

    .line 138
    .end local v6    # "i$":I
    .end local v8    # "arr$":[Lorg/apache/xmlbeans/XmlObject;
    .end local v9    # "len$":I
    .end local v10    # "i$":I
    .end local v11    # "spPath":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .end local v12    # "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .end local v13    # "len$":I
    .end local v15    # "xo":Lorg/apache/xmlbeans/XmlObject;
    .end local v17    # "scaleW":D
    .end local v19    # "scaleH":D
    .restart local v25    # "xo":Lorg/apache/xmlbeans/XmlObject;
    .restart local v29    # "i$":I
    .restart local v31    # "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .restart local v32    # "len$":I
    add-int/lit8 v10, v29, 0x1

    .end local v29    # "i$":I
    .restart local v10    # "i$":I
    goto/16 :goto_0

    .line 180
    .end local v10    # "i$":I
    .end local v25    # "xo":Lorg/apache/xmlbeans/XmlObject;
    .end local v31    # "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .end local v32    # "len$":I
    .restart local v15    # "xo":Lorg/apache/xmlbeans/XmlObject;
    :cond_7
    new-instance v1, Ljava/awt/geom/AffineTransform;

    invoke-direct {v1}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 181
    .local v1, "at":Ljava/awt/geom/AffineTransform;
    invoke-virtual {v14}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v2

    invoke-virtual {v14}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 182
    new-instance v2, Ljava/awt/geom/Path2D$Double;

    invoke-virtual {v1, v0}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/awt/geom/Path2D$Double;-><init>(Ljava/awt/Shape;)V

    return-object v2
.end method

.method public setPath(Ljava/awt/geom/Path2D$Double;)I
    .locals 23
    .param p1, "path"    # Ljava/awt/geom/Path2D$Double;

    .line 59
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    move-result-object v0

    .line 61
    .local v0, "ctPath":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Path2D$Double;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    .line 62
    .local v1, "bounds":Ljava/awt/geom/Rectangle2D;
    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v2

    .line 63
    .local v2, "x0":I
    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v3

    .line 64
    .local v3, "y0":I
    new-instance v4, Ljava/awt/geom/AffineTransform;

    invoke-direct {v4}, Ljava/awt/geom/AffineTransform;-><init>()V

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Ljava/awt/geom/Path2D$Double;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object v4

    .line 65
    .local v4, "it":Ljava/awt/geom/PathIterator;
    const/4 v6, 0x0

    .line 66
    .local v6, "numPoints":I
    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v7

    int-to-long v7, v7

    invoke-interface {v0, v7, v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->setH(J)V

    .line 67
    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v7

    int-to-long v7, v7

    invoke-interface {v0, v7, v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->setW(J)V

    const/4 v7, 0x0

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    .line 68
    :goto_0
    invoke-interface {v4}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v16

    const/16 v17, 0x0

    if-nez v16, :cond_5

    .line 69
    const/4 v5, 0x6

    new-array v5, v5, [D

    .line 70
    .local v5, "vals":[D
    move-object/from16 v18, v1

    .end local v1    # "bounds":Ljava/awt/geom/Rectangle2D;
    .local v18, "bounds":Ljava/awt/geom/Rectangle2D;
    invoke-interface {v4, v5}, Ljava/awt/geom/PathIterator;->currentSegment([D)I

    move-result v1

    .line 71
    .local v1, "type":I
    if-eqz v1, :cond_4

    move-object/from16 v19, v4

    const/4 v4, 0x1

    .end local v4    # "it":Ljava/awt/geom/PathIterator;
    .local v19, "it":Ljava/awt/geom/PathIterator;
    if-eq v1, v4, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v4, 0x4

    move/from16 v22, v3

    const/4 v3, 0x3

    .end local v3    # "y0":I
    .local v22, "y0":I
    if-eq v1, v3, :cond_1

    move-object v3, v12

    .local v3, "bez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;
    if-ne v1, v4, :cond_0

    move-object v4, v9

    .local v4, "qp2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    move-object v9, v10

    .local v9, "qbez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;
    move-object v10, v11

    .local v7, "mv":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .local v8, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .local v10, "qp1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    move-object v11, v13

    .local v11, "p1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    move-object v12, v14

    .local v12, "p2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    move-object v13, v15

    .line 108
    .local v13, "p3":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    add-int/lit8 v6, v6, 0x1

    .line 109
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->addNewClose()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DClose;

    .line 110
    move-object v12, v3

    move-object v13, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v4

    goto/16 :goto_1

    .line 71
    .end local v4    # "qp2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v7    # "mv":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v8    # "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v9    # "qbez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;
    .end local v10    # "qp1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v11    # "p1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v12    # "p2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v13    # "p3":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    :cond_0
    move-object v4, v9

    .restart local v4    # "qp2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    move-object v9, v10

    .restart local v9    # "qbez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;
    move-object v10, v11

    .restart local v7    # "mv":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .restart local v8    # "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .restart local v10    # "qp1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    move-object v11, v13

    .restart local v11    # "p1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    move-object v12, v14

    .restart local v12    # "p2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    move-object v13, v15

    .line 112
    .restart local v13    # "p3":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    .end local v3    # "bez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;
    .local v16, "bez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;
    const-string v3, "Unrecognized path segment type: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 71
    .end local v4    # "qp2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v7    # "mv":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v8    # "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v9    # "qbez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;
    .end local v10    # "qp1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v11    # "p1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v12    # "p2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v13    # "p3":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v16    # "bez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;
    :cond_1
    move-object v3, v9

    .local v3, "qp2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    move-object v9, v10

    .restart local v9    # "qbez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;
    move-object v10, v11

    .line 95
    .restart local v7    # "mv":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .restart local v8    # "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .restart local v10    # "qp1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->addNewCubicBezTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;

    move-result-object v11

    .line 96
    .local v11, "bez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;
    invoke-interface {v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v12

    .line 97
    .local v12, "p1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    aget-wide v13, v5, v17

    invoke-static {v13, v14}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v13

    sub-int/2addr v13, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    .line 98
    const/4 v13, 0x1

    aget-wide v13, v5, v13

    invoke-static {v13, v14}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v13

    sub-int v13, v13, v22

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    .line 99
    invoke-interface {v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v13

    .line 100
    .local v13, "p2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    const/4 v14, 0x2

    aget-wide v14, v5, v14

    invoke-static {v14, v15}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v14

    sub-int/2addr v14, v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    .line 101
    const/4 v14, 0x3

    aget-wide v14, v5, v14

    invoke-static {v14, v15}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v14

    sub-int v14, v14, v22

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    .line 102
    invoke-interface {v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v14

    .line 103
    .local v14, "p3":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    aget-wide v15, v5, v4

    invoke-static/range {v15 .. v16}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v14, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    .line 104
    const/4 v4, 0x5

    aget-wide v15, v5, v4

    invoke-static/range {v15 .. v16}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v4

    sub-int v4, v4, v22

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v14, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    .line 105
    add-int/lit8 v6, v6, 0x3

    .line 106
    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v3

    goto/16 :goto_1

    .line 71
    .end local v7    # "mv":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v8    # "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v9    # "qbez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;
    .end local v10    # "qp1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v11    # "bez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;
    .end local v12    # "p1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v13    # "p2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v14    # "p3":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v22    # "y0":I
    .local v3, "y0":I
    :cond_2
    move/from16 v22, v3

    .end local v3    # "y0":I
    .restart local v22    # "y0":I
    move-object v3, v8

    .local v3, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    move-object v4, v7

    .line 85
    .local v4, "mv":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->addNewQuadBezTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;

    move-result-object v7

    .line 86
    .local v7, "qbez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v8

    .line 87
    .local v8, "qp1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    aget-wide v9, v5, v17

    invoke-static {v9, v10}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v9

    sub-int/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    .line 88
    const/4 v9, 0x1

    aget-wide v9, v5, v9

    invoke-static {v9, v10}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v9

    sub-int v9, v9, v22

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    .line 89
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v9

    .line 90
    .local v9, "qp2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    const/4 v10, 0x2

    aget-wide v10, v5, v10

    invoke-static {v10, v11}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v10

    sub-int/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    .line 91
    const/4 v10, 0x3

    aget-wide v10, v5, v10

    invoke-static {v10, v11}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v10

    sub-int v10, v10, v22

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    .line 92
    add-int/lit8 v6, v6, 0x2

    .line 93
    move-object v10, v7

    move-object v11, v8

    move-object v8, v3

    move-object v7, v4

    goto :goto_1

    .line 71
    .end local v4    # "mv":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v7    # "qbez":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;
    .end local v8    # "qp1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v9    # "qp2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .end local v22    # "y0":I
    .local v3, "y0":I
    :cond_3
    move/from16 v22, v3

    .end local v3    # "y0":I
    .restart local v22    # "y0":I
    move-object v3, v7

    .line 79
    .local v3, "mv":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->addNewLnTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v4

    .line 80
    .local v4, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    aget-wide v7, v5, v17

    invoke-static {v7, v8}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v7

    sub-int/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    .line 81
    const/4 v7, 0x1

    aget-wide v7, v5, v7

    invoke-static {v7, v8}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v7

    sub-int v7, v7, v22

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    .line 82
    add-int/lit8 v6, v6, 0x1

    .line 83
    move-object v7, v3

    move-object v8, v4

    goto :goto_1

    .line 73
    .end local v19    # "it":Ljava/awt/geom/PathIterator;
    .end local v22    # "y0":I
    .local v3, "y0":I
    .local v4, "it":Ljava/awt/geom/PathIterator;
    :cond_4
    move/from16 v22, v3

    move-object/from16 v19, v4

    .end local v3    # "y0":I
    .end local v4    # "it":Ljava/awt/geom/PathIterator;
    .restart local v19    # "it":Ljava/awt/geom/PathIterator;
    .restart local v22    # "y0":I
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->addNewMoveTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v3

    .line 74
    .local v3, "mv":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    aget-wide v20, v5, v17

    invoke-static/range {v20 .. v21}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    .line 75
    const/4 v4, 0x1

    aget-wide v16, v5, v4

    invoke-static/range {v16 .. v17}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v4

    sub-int v4, v4, v22

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    .line 76
    add-int/lit8 v6, v6, 0x1

    .line 77
    move-object v7, v3

    .line 114
    .end local v3    # "mv":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/awt/geom/PathIterator;->next()V

    .line 115
    .end local v1    # "type":I
    .end local v5    # "vals":[D
    move-object/from16 v5, p1

    move-object/from16 v1, v18

    move-object/from16 v4, v19

    move/from16 v3, v22

    goto/16 :goto_0

    .line 117
    .end local v18    # "bounds":Ljava/awt/geom/Rectangle2D;
    .end local v19    # "it":Ljava/awt/geom/PathIterator;
    .end local v22    # "y0":I
    .local v1, "bounds":Ljava/awt/geom/Rectangle2D;
    .local v3, "y0":I
    .restart local v4    # "it":Ljava/awt/geom/PathIterator;
    :cond_5
    move-object/from16 v18, v1

    move/from16 v22, v3

    move-object/from16 v19, v4

    .end local v1    # "bounds":Ljava/awt/geom/Rectangle2D;
    .end local v3    # "y0":I
    .end local v4    # "it":Ljava/awt/geom/PathIterator;
    .restart local v18    # "bounds":Ljava/awt/geom/Rectangle2D;
    .restart local v19    # "it":Ljava/awt/geom/PathIterator;
    .restart local v22    # "y0":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 118
    .local v1, "xo":Lorg/apache/xmlbeans/XmlObject;
    instance-of v3, v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    if-nez v3, :cond_6

    .line 119
    const/4 v3, -0x1

    return v3

    .line 122
    :cond_6
    move-object v3, v1

    check-cast v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getCustGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getPathLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    aput-object v0, v4, v17

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;->setPathArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)V

    .line 123
    move-object/from16 v3, p0

    move-object/from16 v4, v18

    .end local v18    # "bounds":Ljava/awt/geom/Rectangle2D;
    .local v4, "bounds":Ljava/awt/geom/Rectangle2D;
    invoke-virtual {v3, v4}, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 124
    return v6
.end method
