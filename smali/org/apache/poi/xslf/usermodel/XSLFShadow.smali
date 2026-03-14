.class public Lorg/apache/poi/xslf/usermodel/XSLFShadow;
.super Lorg/apache/poi/xslf/usermodel/XSLFShape;
.source "XSLFShadow.java"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Shadow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/sl/usermodel/Shadow<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# instance fields
.field private _parent:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;


# direct methods
.method constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V
    .locals 1
    .param p1, "shape"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;
    .param p2, "parentShape"    # Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    .line 40
    invoke-virtual {p2}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    .line 42
    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFShadow;->_parent:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    .line 43
    return-void
.end method


# virtual methods
.method public getAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShadow;->_parent:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    return-object v0
.end method

.method public getAngle()D
    .locals 5

    .line 72
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShadow;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    .line 73
    .local v0, "ct":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;->isSetDir()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;->getDir()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v1, v3

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public getBlur()D
    .locals 3

    .line 82
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShadow;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    .line 83
    .local v0, "ct":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;->isSetBlurRad()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;->getBlurRad()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public getDistance()D
    .locals 3

    .line 63
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShadow;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    .line 64
    .local v0, "ct":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;->isSetDist()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;->getDist()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public getFillColor()Ljava/awt/Color;
    .locals 2

    .line 91
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShadow;->getFillStyle()Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object v0

    .line 92
    .local v0, "ps":Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 93
    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object v1

    .line 94
    .local v1, "col":Ljava/awt/Color;
    return-object v1
.end method

.method public getFillStyle()Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;
    .locals 5

    .line 99
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShadow;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v0

    .line 100
    .local v0, "theme":Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShadow;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    .line 101
    .local v1, "ct":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    .line 103
    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v2

    .line 104
    .local v2, "phClr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
    new-instance v3, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-direct {v3, v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    .line 105
    .local v3, "xc":Lorg/apache/poi/xslf/usermodel/XSLFColor;
    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColorStyle()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic getShadowParent()Lorg/apache/poi/sl/usermodel/SimpleShape;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShadow;->getShadowParent()Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    move-result-object v0

    return-object v0
.end method

.method public getShadowParent()Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShadow;->_parent:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    return-object v0
.end method

.method public setAnchor(Ljava/awt/geom/Rectangle2D;)V
    .locals 2
    .param p1, "anchor"    # Ljava/awt/geom/Rectangle2D;

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t set anchor of a shadow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
