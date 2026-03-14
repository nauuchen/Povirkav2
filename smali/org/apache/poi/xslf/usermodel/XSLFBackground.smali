.class public Lorg/apache/poi/xslf/usermodel/XSLFBackground;
.super Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
.source "XSLFBackground.java"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Background;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;",
        "Lorg/apache/poi/sl/usermodel/Background<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0
    .param p1, "shape"    # Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;
    .param p2, "sheet"    # Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 11

    .line 45
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFBackground;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getPageSize()Ljava/awt/Dimension;

    move-result-object v0

    .line 46
    .local v0, "pg":Ljava/awt/Dimension;
    new-instance v10, Ljava/awt/geom/Rectangle2D$Double;

    invoke-virtual {v0}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v6

    invoke-virtual {v0}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v8

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v10
.end method

.method protected getBgPr(Z)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;
    .locals 2
    .param p1, "create"    # Z

    .line 68
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFBackground;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;

    .line 69
    .local v0, "bg":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->isSetBgPr()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 70
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->isSetBgRef()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->unsetBgRef()V

    .line 73
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->addNewBgPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    move-result-object v1

    return-object v1

    .line 75
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->getBgPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    move-result-object v1

    return-object v1
.end method

.method protected getShapeProperties()Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    .line 103
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFBackground;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;

    .line 104
    .local v0, "bg":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->isSetBgPr()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->getBgPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    move-result-object v1

    return-object v1

    .line 106
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->isSetBgRef()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->getBgRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object v1

    return-object v1

    .line 109
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    .locals 1
    .param p1, "create"    # Z

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public setFillColor(Ljava/awt/Color;)V
    .locals 5
    .param p1, "color"    # Ljava/awt/Color;

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFBackground;->getBgPr(Z)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    move-result-object v0

    .line 81
    .local v0, "bgPr":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;
    if-nez p1, :cond_1

    .line 82
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->unsetSolidFill()V

    .line 86
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->isSetNoFill()Z

    move-result v1

    if-nez v1, :cond_4

    .line 87
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    goto :goto_1

    .line 90
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->isSetNoFill()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->unsetNoFill()V

    .line 94
    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v1

    .line 96
    .local v1, "fill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    :goto_0
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFBackground;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    .line 97
    .local v2, "col":Lorg/apache/poi/xslf/usermodel/XSLFColor;
    invoke-virtual {v2, p1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->setColor(Ljava/awt/Color;)V

    .line 99
    .end local v1    # "fill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .end local v2    # "col":Lorg/apache/poi/xslf/usermodel/XSLFColor;
    :cond_4
    :goto_1
    return-void
.end method

.method public setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V
    .locals 2
    .param p1, "placeholder"    # Lorg/apache/poi/sl/usermodel/Placeholder;

    .line 64
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v1, "Can\'t set a placeholder for a background"

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
