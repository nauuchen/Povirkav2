.class public Lorg/apache/poi/xslf/usermodel/XSLFColor;
.super Ljava/lang/Object;
.source "XSLFColor.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _color:Ljava/awt/Color;

.field private _phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

.field private _xmlObject:Lorg/apache/xmlbeans/XmlObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->LOGGER:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V
    .locals 1
    .param p1, "obj"    # Lorg/apache/xmlbeans/XmlObject;
    .param p2, "theme"    # Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    .param p3, "phClr"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_xmlObject:Lorg/apache/xmlbeans/XmlObject;

    .line 57
    iput-object p3, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    .line 58
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->toColor(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Ljava/awt/Color;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_color:Ljava/awt/Color;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/xslf/usermodel/XSLFColor;)Ljava/awt/Color;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/xslf/usermodel/XSLFColor;

    .line 48
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_color:Ljava/awt/Color;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/poi/xslf/usermodel/XSLFColor;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/xslf/usermodel/XSLFColor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getRawValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getAngleValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "elem"    # Ljava/lang/String;

    .line 302
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getRawValue(Ljava/lang/String;)I

    move-result v0

    .line 303
    .local v0, "val":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const v1, 0xea60

    div-int v1, v0, v1

    :goto_0
    return v1
.end method

.method private getPercentageValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "elem"    # Ljava/lang/String;

    .line 297
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getRawValue(Ljava/lang/String;)I

    move-result v0

    .line 298
    .local v0, "val":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    div-int/lit16 v1, v0, 0x3e8

    :goto_0
    return v1
.end method

.method private getRawValue(Ljava/lang/String;)I
    .locals 6
    .param p1, "elem"    # Ljava/lang/String;

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "declare namespace a=\'http://schemas.openxmlformats.org/drawingml/2006/main\' $this//a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "query":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    const-string/jumbo v2, "val"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 267
    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 268
    .local v1, "obj":[Lorg/apache/xmlbeans/XmlObject;
    array-length v5, v1

    if-ne v5, v4, :cond_0

    .line 269
    aget-object v5, v1, v3

    invoke-interface {v5}, Lorg/apache/xmlbeans/XmlObject;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 270
    .local v5, "attr":Lorg/w3c/dom/Node;
    if-eqz v5, :cond_0

    .line 271
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 276
    .end local v1    # "obj":[Lorg/apache/xmlbeans/XmlObject;
    .end local v5    # "attr":Lorg/w3c/dom/Node;
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_xmlObject:Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v1, v0}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 277
    .restart local v1    # "obj":[Lorg/apache/xmlbeans/XmlObject;
    array-length v5, v1

    if-ne v5, v4, :cond_1

    .line 278
    aget-object v3, v1, v3

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlObject;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 279
    .local v2, "attr":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_1

    .line 280
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 284
    .end local v2    # "attr":Lorg/w3c/dom/Node;
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private static isInt(F)Z
    .locals 5
    .param p0, "f"    # F

    .line 257
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p0, v0

    float-to-double v1, v1

    mul-float v0, v0, p0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->rint(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method getAlpha()I
    .locals 1

    .line 313
    const-string v0, "alpha"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getAlphaMod()I
    .locals 1

    .line 323
    const-string v0, "alphaMod"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getAlphaOff()I
    .locals 1

    .line 335
    const-string v0, "alphaOff"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getBlue()I
    .locals 1

    .line 462
    const-string v0, "blue"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getBlueMod()I
    .locals 1

    .line 466
    const-string v0, "blueMod"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getBlueOff()I
    .locals 1

    .line 470
    const-string v0, "blueOff"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColor()Ljava/awt/Color;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColorStyle()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object v0

    return-object v0
.end method

.method public getColorStyle()Lorg/apache/poi/sl/usermodel/ColorStyle;
    .locals 1

    .line 76
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFColor$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFColor$1;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFColor;)V

    return-object v0
.end method

.method getGreen()I
    .locals 1

    .line 442
    const-string v0, "green"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getGreenMod()I
    .locals 1

    .line 446
    const-string v0, "greenMod"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getGreenOff()I
    .locals 1

    .line 450
    const-string v0, "greenOff"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getHue()I
    .locals 1

    .line 340
    const-string v0, "hue"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getAngleValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getHueMod()I
    .locals 1

    .line 344
    const-string v0, "hueMod"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getHueOff()I
    .locals 1

    .line 348
    const-string v0, "hueOff"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getLum()I
    .locals 1

    .line 359
    const-string v0, "lum"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getLumMod()I
    .locals 1

    .line 369
    const-string v0, "lumMod"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getLumOff()I
    .locals 1

    .line 379
    const-string v0, "lumOff"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getRed()I
    .locals 1

    .line 422
    const-string v0, "red"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getRedMod()I
    .locals 1

    .line 426
    const-string v0, "redMod"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getRedOff()I
    .locals 1

    .line 430
    const-string v0, "redOff"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getSat()I
    .locals 1

    .line 390
    const-string v0, "sat"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getSatMod()I
    .locals 1

    .line 400
    const-string v0, "satMod"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getSatOff()I
    .locals 1

    .line 410
    const-string v0, "satOff"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getShade()I
    .locals 1

    .line 482
    const-string v0, "shade"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTint()I
    .locals 1

    .line 494
    const-string/jumbo v0, "tint"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_xmlObject:Lorg/apache/xmlbeans/XmlObject;

    return-object v0
.end method

.method protected setColor(Ljava/awt/Color;)V
    .locals 11
    .param p1, "color"    # Ljava/awt/Color;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_xmlObject:Lorg/apache/xmlbeans/XmlObject;

    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 199
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->LOGGER:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "XSLFColor.setColor currently only supports CTSolidColorFillProperties"

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 200
    return-void

    .line 202
    :cond_0
    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    .line 203
    .local v0, "fill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetSrgbClr()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetSrgbClr()V

    .line 207
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetScrgbClr()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetScrgbClr()V

    .line 211
    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetHslClr()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 212
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetHslClr()V

    .line 215
    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetPrstClr()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 216
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetPrstClr()V

    .line 219
    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetSchemeClr()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 220
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetSchemeClr()V

    .line 223
    :cond_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetSysClr()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 224
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetSysClr()V

    .line 227
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/awt/Color;->getRGBComponents([F)[F

    move-result-object v4

    .line 228
    .local v4, "rgbaf":[F
    array-length v5, v4

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-ne v5, v6, :cond_7

    aget v5, v4, v7

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    const/4 v5, 0x1

    goto :goto_0

    :cond_7
    const/4 v5, 0x0

    .line 232
    .local v5, "addAlpha":Z
    :goto_0
    aget v6, v4, v2

    invoke-static {v6}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->isInt(F)Z

    move-result v6

    const/4 v8, 0x2

    if-eqz v6, :cond_9

    aget v6, v4, v3

    invoke-static {v6}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->isInt(F)Z

    move-result v6

    if-eqz v6, :cond_9

    aget v6, v4, v8

    invoke-static {v6}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->isInt(F)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 234
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->addNewSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v6

    .line 236
    .local v6, "rgb":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
    new-array v9, v7, [B

    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v9, v2

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v9, v3

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v9, v8

    move-object v2, v9

    .line 237
    .local v2, "rgbBytes":[B
    invoke-interface {v6, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->setVal([B)V

    .line 238
    if-eqz v5, :cond_8

    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->addNewAlpha()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;

    move-result-object v1

    .line 239
    .end local v2    # "rgbBytes":[B
    .end local v6    # "rgb":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
    .local v1, "alphaPct":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;
    :cond_8
    goto :goto_1

    .line 240
    .end local v1    # "alphaPct":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;
    :cond_9
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->addNewScrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;

    move-result-object v6

    .line 241
    .local v6, "rgb":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;
    aget v2, v4, v2

    invoke-static {v2}, Lorg/apache/poi/sl/draw/DrawPaint;->srgb2lin(F)I

    move-result v2

    invoke-interface {v6, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->setR(I)V

    .line 242
    aget v2, v4, v3

    invoke-static {v2}, Lorg/apache/poi/sl/draw/DrawPaint;->srgb2lin(F)I

    move-result v2

    invoke-interface {v6, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->setG(I)V

    .line 243
    aget v2, v4, v8

    invoke-static {v2}, Lorg/apache/poi/sl/draw/DrawPaint;->srgb2lin(F)I

    move-result v2

    invoke-interface {v6, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->setB(I)V

    .line 244
    if-eqz v5, :cond_a

    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->addNewAlpha()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;

    move-result-object v1

    .line 248
    .end local v6    # "rgb":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;
    .restart local v1    # "alphaPct":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;
    :cond_a
    :goto_1
    if-eqz v1, :cond_b

    .line 249
    const v2, 0x47c35000    # 100000.0f

    aget v3, v4, v7

    mul-float v3, v3, v2

    float-to-int v2, v3

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;->setVal(I)V

    .line 251
    :cond_b
    return-void
.end method

.method toColor(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Ljava/awt/Color;
    .locals 23
    .param p1, "obj"    # Lorg/apache/xmlbeans/XmlObject;
    .param p2, "theme"    # Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    .line 130
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 131
    .local v1, "color":Ljava/awt/Color;
    const-string v2, "*"

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    .local v2, "arr$":[Lorg/apache/xmlbeans/XmlObject;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_d

    aget-object v6, v2, v5

    .line 132
    .local v6, "ch":Lorg/apache/xmlbeans/XmlObject;
    instance-of v7, v6, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;

    if-eqz v7, :cond_0

    .line 133
    move-object v7, v6

    check-cast v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;

    .line 134
    .local v7, "hsl":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;->getHue2()I

    move-result v8

    .line 135
    .local v8, "h":I
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;->getSat2()I

    move-result v9

    .line 136
    .local v9, "s":I
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;->getLum2()I

    move-result v10

    .line 137
    .local v10, "l":I
    int-to-double v11, v8

    const-wide v13, 0x40ed4c0000000000L    # 60000.0

    div-double v15, v11, v13

    int-to-double v11, v9

    const-wide v13, 0x408f400000000000L    # 1000.0

    div-double v17, v11, v13

    int-to-double v11, v10

    div-double v19, v11, v13

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v15 .. v22}, Lorg/apache/poi/sl/draw/DrawPaint;->HSL2RGB(DDDD)Ljava/awt/Color;

    move-result-object v1

    .line 138
    .end local v7    # "hsl":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;
    .end local v8    # "h":I
    .end local v9    # "s":I
    .end local v10    # "l":I
    move-object/from16 v9, p2

    goto/16 :goto_2

    :cond_0
    instance-of v7, v6, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;

    if-eqz v7, :cond_2

    .line 139
    move-object v7, v6

    check-cast v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;

    .line 140
    .local v7, "prst":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetColorVal$Enum;

    move-result-object v8

    invoke-virtual {v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetColorVal$Enum;->toString()Ljava/lang/String;

    move-result-object v8

    .line 141
    .local v8, "colorName":Ljava/lang/String;
    invoke-static {v8}, Lorg/apache/poi/sl/usermodel/PresetColor;->valueOfOoxmlId(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/PresetColor;

    move-result-object v9

    .line 142
    .local v9, "pc":Lorg/apache/poi/sl/usermodel/PresetColor;
    if-eqz v9, :cond_1

    .line 143
    iget-object v1, v9, Lorg/apache/poi/sl/usermodel/PresetColor;->color:Ljava/awt/Color;

    .line 145
    .end local v7    # "prst":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;
    .end local v8    # "colorName":Ljava/lang/String;
    .end local v9    # "pc":Lorg/apache/poi/sl/usermodel/PresetColor;
    :cond_1
    move-object/from16 v9, p2

    goto/16 :goto_2

    :cond_2
    instance-of v7, v6, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    if-eqz v7, :cond_5

    .line 146
    move-object v7, v6

    check-cast v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    .line 147
    .local v7, "schemeColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object v8

    invoke-virtual {v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;->toString()Ljava/lang/String;

    move-result-object v8

    .line 148
    .local v8, "colorRef":Ljava/lang/String;
    iget-object v9, v0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    if-eqz v9, :cond_3

    .line 150
    invoke-interface {v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object v9

    invoke-virtual {v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;->toString()Ljava/lang/String;

    move-result-object v8

    .line 153
    :cond_3
    move-object/from16 v9, p2

    invoke-virtual {v9, v8}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getCTColor(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v10

    .line 154
    .local v10, "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    if-eqz v10, :cond_4

    .line 155
    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->toColor(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Ljava/awt/Color;

    move-result-object v1

    .line 157
    .end local v7    # "schemeColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
    .end local v8    # "colorRef":Ljava/lang/String;
    .end local v10    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    :cond_4
    goto/16 :goto_2

    :cond_5
    move-object/from16 v9, p2

    instance-of v7, v6, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;

    if-eqz v7, :cond_6

    .line 159
    move-object v7, v6

    check-cast v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;

    .line 160
    .local v7, "scrgb":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;
    new-instance v8, Ljava/awt/Color;

    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->getR()I

    move-result v10

    invoke-static {v10}, Lorg/apache/poi/sl/draw/DrawPaint;->lin2srgb(I)F

    move-result v10

    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->getG()I

    move-result v11

    invoke-static {v11}, Lorg/apache/poi/sl/draw/DrawPaint;->lin2srgb(I)F

    move-result v11

    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->getB()I

    move-result v12

    invoke-static {v12}, Lorg/apache/poi/sl/draw/DrawPaint;->lin2srgb(I)F

    move-result v12

    invoke-direct {v8, v10, v11, v12}, Ljava/awt/Color;-><init>(FFF)V

    move-object v1, v8

    .line 161
    .end local v7    # "scrgb":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;
    goto :goto_2

    :cond_6
    instance-of v7, v6, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v7, :cond_7

    .line 163
    move-object v7, v6

    check-cast v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    .line 164
    .local v7, "srgb":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->getVal()[B

    move-result-object v12

    .line 165
    .local v12, "val":[B
    new-instance v13, Ljava/awt/Color;

    aget-byte v10, v12, v10

    and-int/lit16 v10, v10, 0xff

    aget-byte v11, v12, v11

    and-int/lit16 v11, v11, 0xff

    aget-byte v8, v12, v8

    and-int/lit16 v8, v8, 0xff

    invoke-direct {v13, v10, v11, v8}, Ljava/awt/Color;-><init>(III)V

    move-object v1, v13

    .line 166
    .end local v7    # "srgb":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
    .end local v12    # "val":[B
    goto :goto_2

    :cond_7
    instance-of v7, v6, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;

    if-eqz v7, :cond_b

    .line 167
    move-object v7, v6

    check-cast v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;

    .line 168
    .local v7, "sys":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;->isSetLastClr()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 169
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;->getLastClr()[B

    move-result-object v12

    .line 170
    .restart local v12    # "val":[B
    new-instance v13, Ljava/awt/Color;

    aget-byte v10, v12, v10

    and-int/lit16 v10, v10, 0xff

    aget-byte v11, v12, v11

    and-int/lit16 v11, v11, 0xff

    aget-byte v8, v12, v8

    and-int/lit16 v8, v8, 0xff

    invoke-direct {v13, v10, v11, v8}, Ljava/awt/Color;-><init>(III)V

    move-object v1, v13

    .line 171
    .end local v12    # "val":[B
    goto :goto_1

    .line 172
    :cond_8
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    move-result-object v8

    invoke-virtual {v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;->toString()Ljava/lang/String;

    move-result-object v8

    .line 173
    .local v8, "colorName":Ljava/lang/String;
    invoke-static {v8}, Lorg/apache/poi/sl/usermodel/PresetColor;->valueOfOoxmlId(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/PresetColor;

    move-result-object v10

    .line 174
    .local v10, "pc":Lorg/apache/poi/sl/usermodel/PresetColor;
    if-eqz v10, :cond_9

    .line 175
    iget-object v1, v10, Lorg/apache/poi/sl/usermodel/PresetColor;->color:Ljava/awt/Color;

    .line 177
    :cond_9
    if-nez v1, :cond_a

    .line 178
    sget-object v1, Ljava/awt/Color;->black:Ljava/awt/Color;

    .line 181
    .end local v7    # "sys":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;
    .end local v8    # "colorName":Ljava/lang/String;
    .end local v10    # "pc":Lorg/apache/poi/sl/usermodel/PresetColor;
    :cond_a
    :goto_1
    goto :goto_2

    :cond_b
    instance-of v7, v6, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;

    if-eqz v7, :cond_c

    .line 183
    nop

    .line 131
    .end local v6    # "ch":Lorg/apache/xmlbeans/XmlObject;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 185
    .restart local v6    # "ch":Lorg/apache/xmlbeans/XmlObject;
    :cond_c
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected color choice: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 131
    .end local v6    # "ch":Lorg/apache/xmlbeans/XmlObject;
    :cond_d
    move-object/from16 v9, p2

    .line 188
    .end local v2    # "arr$":[Lorg/apache/xmlbeans/XmlObject;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    return-object v1
.end method
