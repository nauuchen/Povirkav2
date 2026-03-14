.class public abstract Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
.super Lorg/apache/poi/xslf/usermodel/XSLFShape;
.source "XSLFSimpleShape.java"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/SimpleShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/sl/usermodel/SimpleShape<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field private static NO_SHADOW:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->NO_SHADOW:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    .line 91
    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method constructor <init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0
    .param p1, "shape"    # Lorg/apache/xmlbeans/XmlObject;
    .param p2, "sheet"    # Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    .line 94
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/xslf/usermodel/XSLFShape;
    .param p1, "x1"    # Z

    .line 88
    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;
    .locals 1

    .line 88
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->NO_SHADOW:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    return-object v0
.end method

.method private static getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    .locals 7
    .param p0, "shape"    # Lorg/apache/poi/xslf/usermodel/XSLFShape;
    .param p1, "create"    # Z

    .line 1133
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 1134
    .local v0, "pr":Lorg/apache/xmlbeans/XmlObject;
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    if-nez v1, :cond_0

    .line 1135
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesn\'t have line properties"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 1136
    const/4 v1, 0x0

    return-object v1

    .line 1139
    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    .line 1140
    .local v1, "spr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetLn()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v2

    :goto_1
    return-object v2
.end method


# virtual methods
.method copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V
    .locals 14
    .param p1, "sh"    # Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 747
    invoke-super {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    .line 749
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    .line 751
    .local v0, "s":Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getFillColor()Ljava/awt/Color;

    move-result-object v1

    .line 752
    .local v1, "srsSolidFill":Ljava/awt/Color;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getFillColor()Ljava/awt/Color;

    move-result-object v2

    .line 753
    .local v2, "tgtSoliFill":Ljava/awt/Color;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/awt/Color;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 754
    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setFillColor(Ljava/awt/Color;)V

    .line 757
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v3

    .line 758
    .local v3, "fp":Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetBlipFill()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 759
    invoke-interface {v3}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v4

    .line 760
    .local v4, "blip":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getEmbed()Ljava/lang/String;

    move-result-object v5

    .line 762
    .local v5, "blipId":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v6

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->importBlip(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/lang/String;

    move-result-object v6

    .line 763
    .local v6, "relId":Ljava/lang/String;
    invoke-interface {v4, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->setEmbed(Ljava/lang/String;)V

    .line 766
    .end local v4    # "blip":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;
    .end local v5    # "blipId":Ljava/lang/String;
    .end local v6    # "relId":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineColor()Ljava/awt/Color;

    move-result-object v4

    .line 767
    .local v4, "srcLineColor":Ljava/awt/Color;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineColor()Ljava/awt/Color;

    move-result-object v5

    .line 768
    .local v5, "tgtLineColor":Ljava/awt/Color;
    if-eqz v4, :cond_2

    invoke-virtual {v4, v5}, Ljava/awt/Color;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 769
    invoke-virtual {p0, v4}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineColor(Ljava/awt/Color;)V

    .line 772
    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineWidth()D

    move-result-wide v6

    .line 773
    .local v6, "srcLineWidth":D
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineWidth()D

    move-result-wide v8

    .line 774
    .local v8, "tgtLineWidth":D
    cmpl-double v10, v6, v8

    if-eqz v10, :cond_3

    .line 775
    invoke-virtual {p0, v6, v7}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineWidth(D)V

    .line 778
    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object v10

    .line 779
    .local v10, "srcLineDash":Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object v11

    .line 780
    .local v11, "tgtLineDash":Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    if-eqz v10, :cond_4

    if-eq v10, v11, :cond_4

    .line 781
    invoke-virtual {p0, v10}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineDash(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;)V

    .line 784
    :cond_4
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineCap()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    move-result-object v12

    .line 785
    .local v12, "srcLineCap":Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineCap()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    move-result-object v13

    .line 786
    .local v13, "tgtLineCap":Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    if-eqz v12, :cond_5

    if-eq v12, v13, :cond_5

    .line 787
    invoke-virtual {p0, v12}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineCap(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;)V

    .line 790
    :cond_5
    return-void
.end method

.method public bridge synthetic createHyperlink()Lorg/apache/poi/sl/usermodel/Hyperlink;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->createHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public createHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;
    .locals 5

    .line 1124
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    move-result-object v0

    .line 1125
    .local v0, "hl":Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;
    if-nez v0, :cond_0

    .line 1126
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v1

    .line 1127
    .local v1, "cNvPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->addNewHlinkClick()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    move-object v0, v2

    .line 1129
    .end local v1    # "cNvPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    :cond_0
    return-object v0
.end method

.method public getAdjustValue(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/Guide;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .line 990
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getGeometryDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;

    move-result-object v0

    .line 992
    .local v0, "gp":Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->isSetPrstGeom()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->isSetAvLst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 993
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->getAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;->getGdArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    move-result-object v1

    .local v1, "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 994
    .local v4, "g":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 995
    new-instance v5, Lorg/apache/poi/sl/draw/geom/Guide;

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;->getFmla()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/sl/draw/geom/Guide;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 993
    .end local v4    # "g":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1000
    .end local v1    # "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 22

    .line 154
    const/4 v0, 0x0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v0

    .line 155
    .local v0, "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    if-nez v0, :cond_0

    .line 156
    const/4 v2, 0x0

    return-object v2

    .line 159
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v2

    .line 160
    .local v2, "off":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->getX()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v3

    .line 161
    .local v3, "x":D
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->getY()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v14

    .line 162
    .local v14, "y":D
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v16

    .line 163
    .local v16, "ext":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    invoke-interface/range {v16 .. v16}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCx()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v17

    .line 164
    .local v17, "cx":D
    invoke-interface/range {v16 .. v16}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCy()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v19

    .line 165
    .local v19, "cy":D
    new-instance v21, Ljava/awt/geom/Rectangle2D$Double;

    move-object/from16 v5, v21

    move-wide v6, v3

    move-wide v8, v14

    move-wide/from16 v10, v17

    move-wide/from16 v12, v19

    invoke-direct/range {v5 .. v13}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v21
.end method

.method getDefaultLineProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    .locals 9

    .line 237
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getSpStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    move-result-object v0

    .line 238
    .local v0, "style":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 239
    return-object v1

    .line 241
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->getLnRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object v2

    .line 242
    .local v2, "lnRef":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
    if-nez v2, :cond_1

    .line 243
    return-object v1

    .line 246
    :cond_1
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->getIdx()J

    move-result-wide v3

    long-to-int v4, v3

    .line 248
    .local v4, "idx":I
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v3

    .line 249
    .local v3, "theme":Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    if-nez v3, :cond_2

    .line 250
    return-object v1

    .line 252
    :cond_2
    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->getThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;

    move-result-object v5

    .line 253
    .local v5, "styles":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;
    if-nez v5, :cond_3

    .line 254
    return-object v1

    .line 256
    :cond_3
    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;->getFmtScheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;

    move-result-object v6

    .line 257
    .local v6, "styleMatrix":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;
    if-nez v6, :cond_4

    .line 258
    return-object v1

    .line 260
    :cond_4
    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;->getLnStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineStyleList;

    move-result-object v7

    .line 261
    .local v7, "lineStyles":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineStyleList;
    if-eqz v7, :cond_6

    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineStyleList;->sizeOfLnArray()I

    move-result v8

    if-ge v8, v4, :cond_5

    goto :goto_0

    .line 265
    :cond_5
    add-int/lit8 v1, v4, -0x1

    invoke-interface {v7, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineStyleList;->getLnArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    return-object v1

    .line 262
    :cond_6
    :goto_0
    return-object v1
.end method

.method public getFillColor()Ljava/awt/Color;
    .locals 2

    .line 666
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getFillPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    .line 667
    .local v0, "ps":Lorg/apache/poi/sl/usermodel/PaintStyle;
    instance-of v1, v0, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    if-eqz v1, :cond_0

    .line 668
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object v1

    return-object v1

    .line 670
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFillStyle()Lorg/apache/poi/sl/usermodel/FillStyle;
    .locals 1

    .line 1045
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$9;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$9;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    return-object v0
.end method

.method public getFlipHorizontal()Z
    .locals 3

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v1

    .line 220
    .local v1, "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetFlipH()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getFlipH()Z

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public getFlipVertical()Z
    .locals 3

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v1

    .line 226
    .local v1, "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetFlipV()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getFlipV()Z

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public getGeometry()Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    .locals 11

    .line 715
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getGeometryDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;

    move-result-object v0

    .line 717
    .local v0, "gp":Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;
    if-nez v0, :cond_0

    .line 718
    const/4 v1, 0x0

    return-object v1

    .line 722
    :cond_0
    invoke-static {}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->getInstance()Lorg/apache/poi/sl/draw/geom/PresetGeometries;

    move-result-object v1

    .line 723
    .local v1, "dict":Lorg/apache/poi/sl/draw/geom/PresetGeometries;
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->isSetPrstGeom()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 724
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->getPrst()Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 725
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    .line 726
    .local v3, "geom":Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    if-eqz v3, :cond_1

    .line 729
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_1

    .line 727
    .restart local v2    # "name":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown shape geometry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", available geometries are: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 729
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "geom":Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    :cond_2
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->isSetCustGeom()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 730
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->getCustGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->newXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object v2

    .line 731
    .local v2, "staxReader":Ljavax/xml/stream/XMLStreamReader;
    invoke-static {v2}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->convertCustomGeometry(Ljavax/xml/stream/XMLStreamReader;)Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    move-result-object v3

    .line 733
    .restart local v3    # "geom":Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    :try_start_0
    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->close()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    goto :goto_0

    .line 735
    :catch_0
    move-exception v4

    .line 736
    .local v4, "e":Ljavax/xml/stream/XMLStreamException;
    sget-object v5, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v6, 0x5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "An error occurred while closing a Custom Geometry XML Stream Reader: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljavax/xml/stream/XMLStreamException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 739
    .end local v2    # "staxReader":Ljavax/xml/stream/XMLStreamReader;
    .end local v4    # "e":Ljavax/xml/stream/XMLStreamException;
    :goto_0
    goto :goto_1

    .line 740
    .end local v3    # "geom":Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    :cond_3
    const-string v2, "rect"

    invoke-virtual {v1, v2}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    .line 742
    .restart local v3    # "geom":Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    :goto_1
    return-object v3
.end method

.method public bridge synthetic getHyperlink()Lorg/apache/poi/sl/usermodel/Hyperlink;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public getHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;
    .locals 4

    .line 1115
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v0

    .line 1116
    .local v0, "cNvPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->isSetHlinkClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1117
    const/4 v1, 0x0

    return-object v1

    .line 1119
    :cond_0
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getHlinkClick()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v1
.end method

.method public getLineCap()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    .locals 4

    .line 603
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$6;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$6;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    .line 614
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/PropertyFetcher;, "Lorg/apache/poi/xslf/model/PropertyFetcher<Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;>;"
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    .line 616
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    .line 617
    .local v1, "cap":Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    if-nez v1, :cond_0

    .line 618
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getDefaultLineProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v2

    .line 619
    .local v2, "defaultLn":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCap()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 620
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getCap()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;->intValue()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    move-result-object v1

    .line 623
    .end local v2    # "defaultLn":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    :cond_0
    return-object v1
.end method

.method public getLineColor()Ljava/awt/Color;
    .locals 2

    .line 307
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLinePaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    .line 308
    .local v0, "ps":Lorg/apache/poi/sl/usermodel/PaintStyle;
    instance-of v1, v0, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    if-eqz v1, :cond_0

    .line 309
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getColor()Ljava/awt/Color;

    move-result-object v1

    return-object v1

    .line 311
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLineCompound()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;
    .locals 5

    .line 492
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$4;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$4;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    .line 506
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/PropertyFetcher;, "Lorg/apache/poi/xslf/model/PropertyFetcher<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    .line 508
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 509
    .local v1, "cmpd":Ljava/lang/Integer;
    if-nez v1, :cond_4

    .line 510
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getDefaultLineProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v2

    .line 511
    .local v2, "defaultLn":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCmpd()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 512
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getCmpd()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    .line 515
    sget-object v3, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->SINGLE:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    return-object v3

    .line 523
    :cond_0
    sget-object v3, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->TRIPLE:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    return-object v3

    .line 521
    :cond_1
    sget-object v3, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->THIN_THICK:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    return-object v3

    .line 519
    :cond_2
    sget-object v3, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->THICK_THIN:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    return-object v3

    .line 517
    :cond_3
    sget-object v3, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->DOUBLE:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    return-object v3

    .line 528
    .end local v2    # "defaultLn":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method public getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    .locals 4

    .line 555
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$5;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$5;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    .line 567
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/PropertyFetcher;, "Lorg/apache/poi/xslf/model/PropertyFetcher<Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;>;"
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    .line 569
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    .line 570
    .local v1, "dash":Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    if-nez v1, :cond_0

    .line 571
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getDefaultLineProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v2

    .line 572
    .local v2, "defaultLn":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPrstDash()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 573
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getPrstDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->intValue()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object v1

    .line 576
    .end local v2    # "defaultLn":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    :cond_0
    return-object v1
.end method

.method public getLineDecoration()Lorg/apache/poi/sl/usermodel/LineDecoration;
    .locals 1

    .line 1005
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$8;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$8;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    return-object v0
.end method

.method public getLineHeadDecoration()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .locals 3

    .line 816
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 817
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->NONE:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    .line 818
    .local v1, "ds":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetHeadEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 819
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->getType()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;->intValue()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    move-result-object v1

    .line 821
    :cond_0
    return-object v1
.end method

.method public getLineHeadLength()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 3

    .line 879
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 881
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    .line 882
    .local v1, "ds":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetHeadEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetLen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 883
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->getLen()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;->intValue()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v1

    .line 885
    :cond_0
    return-object v1
.end method

.method public getLineHeadWidth()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 3

    .line 848
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 849
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    .line 850
    .local v1, "ds":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetHeadEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetW()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 851
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->getW()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;->intValue()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v1

    .line 853
    :cond_0
    return-object v1
.end method

.method protected getLinePaint()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 5

    .line 315
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    .line 316
    .local v0, "sheet":Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v1

    .line 317
    .local v1, "theme":Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 318
    .local v2, "hasPlaceholder":Z
    :goto_0
    new-instance v3, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;

    invoke-direct {v3, p0, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)V

    .line 372
    .local v3, "fetcher":Lorg/apache/poi/xslf/model/PropertyFetcher;, "Lorg/apache/poi/xslf/model/PropertyFetcher<Lorg/apache/poi/sl/usermodel/PaintStyle;>;"
    invoke-virtual {p0, v3}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    .line 374
    invoke-virtual {v3}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/sl/usermodel/PaintStyle;

    return-object v4
.end method

.method public getLineTailDecoration()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .locals 3

    .line 911
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 913
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->NONE:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    .line 914
    .local v1, "ds":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetTailEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 915
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->getType()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;->intValue()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    move-result-object v1

    .line 917
    :cond_0
    return-object v1
.end method

.method public getLineTailLength()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 3

    .line 974
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 976
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    .line 977
    .local v1, "ds":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetTailEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetLen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 978
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->getLen()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;->intValue()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v1

    .line 980
    :cond_0
    return-object v1
.end method

.method public getLineTailWidth()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 3

    .line 943
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 944
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    .line 945
    .local v1, "ds":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetTailEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetW()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 946
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->getW()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;->intValue()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v1

    .line 948
    :cond_0
    return-object v1
.end method

.method public getLineWidth()D
    .locals 6

    .line 416
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$3;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$3;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    .line 434
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/PropertyFetcher;, "Lorg/apache/poi/xslf/model/PropertyFetcher<Ljava/lang/Double;>;"
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    .line 436
    const-wide/16 v1, 0x0

    .line 437
    .local v1, "lineWidth":D
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 438
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getDefaultLineProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v3

    .line 439
    .local v3, "defaultLn":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    if-eqz v3, :cond_0

    .line 440
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetW()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 441
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getW()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v1

    .line 444
    .end local v3    # "defaultLn":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    :cond_0
    goto :goto_0

    .line 445
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 448
    :goto_0
    return-wide v1
.end method

.method public getRotation()D
    .locals 5

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v0

    .line 198
    .local v0, "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetRot()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getRot()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v1, 0x0

    :goto_1
    return-wide v1
.end method

.method public bridge synthetic getShadow()Lorg/apache/poi/sl/usermodel/Shadow;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getShadow()Lorg/apache/poi/xslf/usermodel/XSLFShadow;

    move-result-object v0

    return-object v0
.end method

.method public getShadow()Lorg/apache/poi/xslf/usermodel/XSLFShadow;
    .locals 7

    .line 678
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$7;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$7;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    .line 690
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/PropertyFetcher;, "Lorg/apache/poi/xslf/model/PropertyFetcher<Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;>;"
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    .line 692
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    .line 693
    .local v1, "obj":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;
    if-nez v1, :cond_0

    .line 695
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getSpStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    move-result-object v2

    .line 696
    .local v2, "style":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->getEffectRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 698
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->getEffectRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->getIdx()J

    move-result-wide v3

    long-to-int v4, v3

    .line 699
    .local v4, "idx":I
    if-eqz v4, :cond_0

    .line 700
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->getThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;->getFmtScheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;

    move-result-object v3

    .line 701
    .local v3, "styleMatrix":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;->getEffectStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleList;

    move-result-object v5

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleList;->getEffectStyleArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleItem;

    move-result-object v5

    .line 702
    .local v5, "ef":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleItem;
    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleItem;->getEffectLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;

    move-result-object v6

    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;->getOuterShdw()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    move-result-object v1

    .line 706
    .end local v2    # "style":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;
    .end local v3    # "styleMatrix":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;
    .end local v4    # "idx":I
    .end local v5    # "ef":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleItem;
    :cond_0
    if-eqz v1, :cond_2

    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->NO_SHADOW:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFShadow;

    invoke-direct {v2, v1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShadow;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public getShapeType()Lorg/apache/poi/sl/usermodel/ShapeType;
    .locals 4

    .line 112
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getGeometryDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;

    move-result-object v0

    .line 113
    .local v0, "gp":Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->isSetPrstGeom()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->getPrst()Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    move-result-object v1

    .line 115
    .local v1, "geom":Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;
    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/apache/poi/sl/usermodel/ShapeType;->forId(IZ)Lorg/apache/poi/sl/usermodel/ShapeType;

    move-result-object v2

    return-object v2

    .line 119
    .end local v1    # "geom":Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getStrokeStyle()Lorg/apache/poi/sl/usermodel/StrokeStyle;
    .locals 1

    .line 1055
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$10;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$10;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    return-object v0
.end method

.method protected getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    .locals 9
    .param p1, "create"    # Z

    .line 123
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$1;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    .line 134
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/PropertyFetcher;, "Lorg/apache/poi/xslf/model/PropertyFetcher<Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;>;"
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    .line 136
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    .line 137
    .local v1, "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    if-eqz p1, :cond_2

    if-eqz v1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    .line 141
    .local v2, "xo":Lorg/apache/xmlbeans/XmlObject;
    instance-of v3, v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    if-eqz v3, :cond_1

    .line 142
    move-object v3, v2

    check-cast v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v3

    return-object v3

    .line 145
    :cond_1
    sget-object v3, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " doesn\'t have xfrm element."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 146
    const/4 v3, 0x0

    return-object v3

    .line 138
    .end local v2    # "xo":Lorg/apache/xmlbeans/XmlObject;
    :cond_2
    :goto_0
    return-object v1
.end method

.method public isPlaceholder()Z
    .locals 2

    .line 984
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getCTPlaceholder()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v0

    .line 985
    .local v0, "ph":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setAnchor(Ljava/awt/geom/Rectangle2D;)V
    .locals 11
    .param p1, "anchor"    # Ljava/awt/geom/Rectangle2D;

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v0

    .line 171
    .local v0, "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    if-nez v0, :cond_0

    .line 172
    return-void

    .line 174
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetOff()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v1

    .line 175
    .local v1, "off":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    :goto_0
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v2

    int-to-long v2, v2

    .line 176
    .local v2, "x":J
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v4

    int-to-long v4, v4

    .line 177
    .local v4, "y":J
    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(J)V

    .line 178
    invoke-interface {v1, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(J)V

    .line 179
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetExt()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v6

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v6

    .line 181
    .local v6, "ext":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    :goto_1
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v7

    int-to-long v7, v7

    .line 182
    .local v7, "cx":J
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v9

    int-to-long v9, v9

    .line 183
    .local v9, "cy":J
    invoke-interface {v6, v7, v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    .line 184
    invoke-interface {v6, v9, v10}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    .line 185
    return-void
.end method

.method public setFillColor(Ljava/awt/Color;)V
    .locals 5
    .param p1, "color"    # Ljava/awt/Color;

    .line 628
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v0

    .line 629
    .local v0, "fp":Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;
    if-nez v0, :cond_0

    .line 630
    return-void

    .line 632
    :cond_0
    if-nez p1, :cond_5

    .line 633
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 634
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->unsetSolidFill()V

    .line 637
    :cond_1
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetGradFill()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 638
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->unsetGradFill()V

    .line 641
    :cond_2
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetPattFill()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 642
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->unsetGradFill()V

    .line 645
    :cond_3
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetBlipFill()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 646
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->unsetBlipFill()V

    .line 649
    :cond_4
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetNoFill()Z

    move-result v1

    if-nez v1, :cond_8

    .line 650
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    goto :goto_1

    .line 653
    :cond_5
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetNoFill()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 654
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->unsetNoFill()V

    .line 657
    :cond_6
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v1

    goto :goto_0

    :cond_7
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v1

    .line 659
    .local v1, "fill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    :goto_0
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    .line 660
    .local v2, "col":Lorg/apache/poi/xslf/usermodel/XSLFColor;
    invoke-virtual {v2, p1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->setColor(Ljava/awt/Color;)V

    .line 662
    .end local v1    # "fill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .end local v2    # "col":Lorg/apache/poi/xslf/usermodel/XSLFColor;
    :cond_8
    :goto_1
    return-void
.end method

.method public setFlipHorizontal(Z)V
    .locals 1
    .param p1, "flip"    # Z

    .line 203
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v0

    .line 204
    .local v0, "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    if-eqz v0, :cond_0

    .line 205
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->setFlipH(Z)V

    .line 207
    :cond_0
    return-void
.end method

.method public setFlipVertical(Z)V
    .locals 1
    .param p1, "flip"    # Z

    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v0

    .line 212
    .local v0, "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->setFlipV(Z)V

    .line 215
    :cond_0
    return-void
.end method

.method public setLineCap(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;)V
    .locals 2
    .param p1, "cap"    # Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    .line 584
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 585
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    if-nez v0, :cond_0

    .line 586
    return-void

    .line 589
    :cond_0
    if-nez p1, :cond_1

    .line 590
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 591
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetCap()V

    goto :goto_0

    .line 594
    :cond_1
    iget v1, p1, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->ooxmlId:I

    invoke-static {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setCap(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;)V

    .line 596
    :cond_2
    :goto_0
    return-void
.end method

.method public setLineColor(Ljava/awt/Color;)V
    .locals 5
    .param p1, "color"    # Ljava/awt/Color;

    .line 273
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 274
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    if-nez v0, :cond_0

    .line 275
    return-void

    .line 278
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetSolidFill()V

    .line 281
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetGradFill()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetGradFill()V

    .line 284
    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPattFill()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 285
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetPattFill()V

    .line 287
    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetNoFill()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 288
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetNoFill()V

    .line 292
    :cond_4
    if-nez p1, :cond_5

    .line 293
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    goto :goto_0

    .line 295
    :cond_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v1

    .line 296
    .local v1, "fill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    .line 297
    .local v2, "col":Lorg/apache/poi/xslf/usermodel/XSLFColor;
    invoke-virtual {v2, p1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->setColor(Ljava/awt/Color;)V

    .line 299
    .end local v1    # "fill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .end local v2    # "col":Lorg/apache/poi/xslf/usermodel/XSLFColor;
    :goto_0
    return-void
.end method

.method public setLineCompound(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;)V
    .locals 4
    .param p1, "compound"    # Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    .line 456
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 457
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    if-nez v0, :cond_0

    .line 458
    return-void

    .line 460
    :cond_0
    if-nez p1, :cond_1

    .line 461
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCmpd()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 462
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetCmpd()V

    goto :goto_1

    .line 466
    :cond_1
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$11;->$SwitchMap$org$apache$poi$sl$usermodel$StrokeStyle$LineCompound:[I

    invoke-virtual {p1}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 469
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine;->SNG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    .line 470
    .local v1, "xCmpd":Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;
    goto :goto_0

    .line 466
    .end local v1    # "xCmpd":Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;
    :cond_2
    move-object v1, v3

    .line 481
    .restart local v1    # "xCmpd":Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine;->TRI:Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    goto :goto_0

    .line 466
    .end local v1    # "xCmpd":Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;
    :cond_3
    move-object v1, v3

    .line 478
    .restart local v1    # "xCmpd":Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine;->THIN_THICK:Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    .line 479
    goto :goto_0

    .line 466
    .end local v1    # "xCmpd":Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;
    :cond_4
    move-object v1, v3

    .line 475
    .restart local v1    # "xCmpd":Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine;->THICK_THIN:Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    .line 476
    goto :goto_0

    .line 466
    .end local v1    # "xCmpd":Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;
    :cond_5
    move-object v1, v3

    .line 472
    .restart local v1    # "xCmpd":Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine;->DBL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    .line 473
    nop

    .line 484
    :goto_0
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setCmpd(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;)V

    .line 486
    .end local v1    # "xCmpd":Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;
    :cond_6
    :goto_1
    return-void
.end method

.method public setLineDash(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;)V
    .locals 3
    .param p1, "dash"    # Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    .line 536
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 537
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    if-nez v0, :cond_0

    .line 538
    return-void

    .line 540
    :cond_0
    if-nez p1, :cond_1

    .line 541
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPrstDash()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 542
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetPrstDash()V

    goto :goto_1

    .line 545
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPrstDash()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getPrstDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewPrstDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    move-result-object v1

    .line 546
    .local v1, "ldp":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;
    :goto_0
    iget v2, p1, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->ooxmlId:I

    invoke-static {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;)V

    .line 548
    .end local v1    # "ldp":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;
    :cond_3
    :goto_1
    return-void
.end method

.method public setLineHeadDecoration(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;)V
    .locals 3
    .param p1, "style"    # Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    .line 798
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 799
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    if-nez v0, :cond_0

    .line 800
    return-void

    .line 802
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetHeadEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v1

    .line 803
    .local v1, "lnEnd":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;
    :goto_0
    if-nez p1, :cond_2

    .line 804
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetType()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 805
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->unsetType()V

    goto :goto_1

    .line 808
    :cond_2
    iget v2, p1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->ooxmlId:I

    invoke-static {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;)V

    .line 810
    :cond_3
    :goto_1
    return-void
.end method

.method public setLineHeadLength(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;)V
    .locals 3
    .param p1, "style"    # Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    .line 860
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 861
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    if-nez v0, :cond_0

    .line 862
    return-void

    .line 865
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetHeadEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v1

    .line 866
    .local v1, "lnEnd":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;
    :goto_0
    if-nez p1, :cond_2

    .line 867
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetLen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 868
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->unsetLen()V

    goto :goto_1

    .line 871
    :cond_2
    iget v2, p1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->ooxmlId:I

    invoke-static {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setLen(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;)V

    .line 873
    :cond_3
    :goto_1
    return-void
.end method

.method public setLineHeadWidth(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;)V
    .locals 3
    .param p1, "style"    # Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    .line 830
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 831
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    if-nez v0, :cond_0

    .line 832
    return-void

    .line 834
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetHeadEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v1

    .line 835
    .local v1, "lnEnd":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;
    :goto_0
    if-nez p1, :cond_2

    .line 836
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetW()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 837
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->unsetW()V

    goto :goto_1

    .line 840
    :cond_2
    iget v2, p1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->ooxmlId:I

    invoke-static {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setW(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;)V

    .line 842
    :cond_3
    :goto_1
    return-void
.end method

.method public setLineTailDecoration(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;)V
    .locals 3
    .param p1, "style"    # Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    .line 892
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 893
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    if-nez v0, :cond_0

    .line 894
    return-void

    .line 897
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetTailEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v1

    .line 898
    .local v1, "lnEnd":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;
    :goto_0
    if-nez p1, :cond_2

    .line 899
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetType()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 900
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->unsetType()V

    goto :goto_1

    .line 903
    :cond_2
    iget v2, p1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->ooxmlId:I

    invoke-static {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;)V

    .line 905
    :cond_3
    :goto_1
    return-void
.end method

.method public setLineTailLength(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;)V
    .locals 3
    .param p1, "style"    # Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    .line 955
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 956
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    if-nez v0, :cond_0

    .line 957
    return-void

    .line 960
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetTailEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v1

    .line 961
    .local v1, "lnEnd":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;
    :goto_0
    if-nez p1, :cond_2

    .line 962
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetLen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 963
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->unsetLen()V

    goto :goto_1

    .line 966
    :cond_2
    iget v2, p1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->ooxmlId:I

    invoke-static {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setLen(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;)V

    .line 968
    :cond_3
    :goto_1
    return-void
.end method

.method public setLineTailWidth(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;)V
    .locals 3
    .param p1, "style"    # Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    .line 924
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 925
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    if-nez v0, :cond_0

    .line 926
    return-void

    .line 929
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetTailEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v1

    .line 930
    .local v1, "lnEnd":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;
    :goto_0
    if-nez p1, :cond_2

    .line 931
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetW()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 932
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->unsetW()V

    goto :goto_1

    .line 935
    :cond_2
    iget v2, p1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->ooxmlId:I

    invoke-static {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setW(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;)V

    .line 937
    :cond_3
    :goto_1
    return-void
.end method

.method public setLineWidth(D)V
    .locals 4
    .param p1, "width"    # D

    .line 382
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 383
    .local v0, "lnPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    if-nez v0, :cond_0

    .line 384
    return-void

    .line 387
    :cond_0
    const-wide/16 v1, 0x0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_5

    .line 388
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetW()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetW()V

    .line 391
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetNoFill()Z

    move-result v1

    if-nez v1, :cond_2

    .line 392
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    .line 394
    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 395
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetSolidFill()V

    .line 397
    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetGradFill()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 398
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetGradFill()V

    .line 400
    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPattFill()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 401
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetPattFill()V

    goto :goto_0

    .line 404
    :cond_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetNoFill()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 405
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetNoFill()V

    .line 408
    :cond_6
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setW(I)V

    .line 410
    :cond_7
    :goto_0
    return-void
.end method

.method public setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V
    .locals 0
    .param p1, "placeholder"    # Lorg/apache/poi/sl/usermodel/Placeholder;

    .line 1110
    invoke-super {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V

    .line 1111
    return-void
.end method

.method public setRotation(D)V
    .locals 3
    .param p1, "theta"    # D

    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v0

    .line 190
    .local v0, "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    if-eqz v0, :cond_0

    .line 191
    const-wide v1, 0x40ed4c0000000000L    # 60000.0

    mul-double v1, v1, p1

    double-to-int v1, v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->setRot(I)V

    .line 193
    :cond_0
    return-void
.end method

.method public setShapeType(Lorg/apache/poi/sl/usermodel/ShapeType;)V
    .locals 3
    .param p1, "type"    # Lorg/apache/poi/sl/usermodel/ShapeType;

    .line 99
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getGeometryDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;

    move-result-object v0

    .line 100
    .local v0, "gp":Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;
    if-nez v0, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->isSetCustGeom()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->unsetCustGeom()V

    .line 106
    :cond_1
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->isSetPrstGeom()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->addNewPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v1

    .line 107
    .local v1, "prst":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;
    :goto_0
    iget v2, p1, Lorg/apache/poi/sl/usermodel/ShapeType;->ooxmlId:I

    invoke-static {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;)V

    .line 108
    return-void
.end method

.method public varargs setStrokeStyle([Ljava/lang/Object;)V
    .locals 6
    .param p1, "styles"    # [Ljava/lang/Object;

    .line 1086
    array-length v0, p1

    if-nez v0, :cond_0

    .line 1088
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineColor(Ljava/awt/Color;)V

    .line 1089
    return-void

    .line 1093
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 1094
    .local v3, "st":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_1

    .line 1095
    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineWidth(D)V

    goto :goto_1

    .line 1096
    :cond_1
    instance-of v4, v3, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    if-eqz v4, :cond_2

    .line 1097
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    invoke-virtual {p0, v4}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineCap(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;)V

    goto :goto_1

    .line 1098
    :cond_2
    instance-of v4, v3, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    if-eqz v4, :cond_3

    .line 1099
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    invoke-virtual {p0, v4}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineDash(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;)V

    goto :goto_1

    .line 1100
    :cond_3
    instance-of v4, v3, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    if-eqz v4, :cond_4

    .line 1101
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    invoke-virtual {p0, v4}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineCompound(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;)V

    goto :goto_1

    .line 1102
    :cond_4
    instance-of v4, v3, Ljava/awt/Color;

    if-eqz v4, :cond_5

    .line 1103
    move-object v4, v3

    check-cast v4, Ljava/awt/Color;

    invoke-virtual {p0, v4}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineColor(Ljava/awt/Color;)V

    .line 1093
    .end local v3    # "st":Ljava/lang/Object;
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1106
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_6
    return-void
.end method
