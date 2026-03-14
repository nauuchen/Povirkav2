.class public abstract Lorg/apache/poi/xslf/usermodel/XSLFShape;
.super Ljava/lang/Object;
.source "XSLFShape.java"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Shape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/sl/usermodel/Shape<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field protected static final PML_NS:Ljava/lang/String; = "http://schemas.openxmlformats.org/presentationml/2006/main"


# instance fields
.field private _nvPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

.field private _parent:Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;

.field private _ph:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

.field private final _shape:Lorg/apache/xmlbeans/XmlObject;

.field private final _sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

.field private _spStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;


# direct methods
.method protected constructor <init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0
    .param p1, "shape"    # Lorg/apache/xmlbeans/XmlObject;
    .param p2, "sheet"    # Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_shape:Lorg/apache/xmlbeans/XmlObject;

    .line 84
    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    .line 85
    return-void
.end method

.method private static getPlaceholderType(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;)I
    .locals 4
    .param p0, "ph"    # Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    .line 348
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->isSetType()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 349
    return v1

    .line 352
    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    .line 361
    return v1

    .line 359
    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->intValue()I

    move-result v0

    return v0

    .line 355
    :cond_2
    return v2
.end method

.method protected static selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 2
    .param p0, "fp"    # Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;
    .param p1, "phClr"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
    .param p2, "parentPart"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .param p3, "theme"    # Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    .param p4, "hasPlaceholder"    # Z

    .line 377
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetNoFill()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    return-object v0

    .line 381
    :cond_1
    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetBlipFill()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 382
    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    return-object v0

    .line 383
    :cond_2
    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetGradFill()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 384
    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    return-object v0

    .line 385
    :cond_3
    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetMatrixStyle()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 386
    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->getMatrixStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isLineStyle()Z

    move-result v1

    invoke-static {v0, p3, v1, p4}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;Lorg/apache/poi/xslf/usermodel/XSLFTheme;ZZ)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    return-object v0

    .line 388
    :cond_4
    return-object v0

    .line 378
    :cond_5
    :goto_0
    return-object v0
.end method

.method protected static selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 2
    .param p0, "blipFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .param p1, "parentPart"    # Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 409
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v0

    .line 410
    .local v0, "blip":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFShape$2;

    invoke-direct {v1, v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape$2;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object v1
.end method

.method protected static selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 11
    .param p0, "gradFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
    .param p1, "phClr"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
    .param p2, "theme"    # Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    .line 444
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->getGsLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;->getGsArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    move-result-object v0

    .line 446
    .local v0, "gs":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFShape$3;

    invoke-direct {v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape$3;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 454
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/poi/sl/usermodel/ColorStyle;

    .line 455
    .local v1, "cs":[Lorg/apache/poi/sl/usermodel/ColorStyle;
    array-length v2, v0

    new-array v2, v2, [F

    .line 457
    .local v2, "fractions":[F
    const/4 v3, 0x0

    .line 458
    .local v3, "i":I
    move-object v4, v0

    .local v4, "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 459
    .local v7, "cgs":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;
    move-object v8, p1

    .line 460
    .local v8, "phClrCgs":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
    if-nez v8, :cond_0

    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->isSetSchemeClr()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 461
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v8

    .line 463
    :cond_0
    new-instance v9, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-direct {v9, v7, p2, v8}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    invoke-virtual {v9}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColorStyle()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v9

    aput-object v9, v1, v3

    .line 464
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->getPos()I

    move-result v9

    int-to-float v9, v9

    const v10, 0x47c35000    # 100000.0f

    div-float/2addr v9, v10

    aput v9, v2, v3

    .line 465
    nop

    .end local v7    # "cgs":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;
    .end local v8    # "phClrCgs":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
    add-int/lit8 v3, v3, 0x1

    .line 458
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 468
    .end local v4    # "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_1
    new-instance v4, Lorg/apache/poi/xslf/usermodel/XSLFShape$4;

    invoke-direct {v4, p0, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape$4;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;[Lorg/apache/poi/sl/usermodel/ColorStyle;[F)V

    return-object v4
.end method

.method protected static selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 2
    .param p0, "solidFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .param p1, "phClr"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
    .param p2, "theme"    # Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    .line 393
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetSchemeClr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    if-nez p1, :cond_0

    .line 401
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object p1

    .line 404
    :cond_0
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-direct {v0, p0, p2, p1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    .line 405
    .local v0, "c":Lorg/apache/poi/xslf/usermodel/XSLFColor;
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColorStyle()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object v1

    return-object v1
.end method

.method protected static selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;Lorg/apache/poi/xslf/usermodel/XSLFTheme;ZZ)Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 10
    .param p0, "fillRef"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
    .param p1, "theme"    # Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    .param p2, "isLineStyle"    # Z
    .param p3, "hasPlaceholder"    # Z

    .line 509
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 516
    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->getIdx()J

    move-result-wide v1

    long-to-int v2, v1

    .line 517
    .local v2, "idx":I
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->getThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;->getFmtScheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;

    move-result-object v1

    .line 520
    .local v1, "matrix":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;
    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    const/16 v3, 0x3e7

    if-gt v2, v3, :cond_2

    .line 521
    add-int/lit8 v0, v2, -0x1

    .line 522
    .local v0, "childIdx":I
    if-eqz p2, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;->getLnStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineStyleList;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;->getFillStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillStyleList;

    move-result-object v3

    .local v3, "styleLst":Lorg/apache/xmlbeans/XmlObject;
    :goto_0
    goto :goto_1

    .line 523
    .end local v0    # "childIdx":I
    .end local v3    # "styleLst":Lorg/apache/xmlbeans/XmlObject;
    :cond_2
    const/16 v3, 0x3e9

    if-lt v2, v3, :cond_6

    .line 524
    add-int/lit16 v0, v2, -0x3e9

    .line 525
    .restart local v0    # "childIdx":I
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;->getBgFillStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBackgroundFillStyleList;

    move-result-object v3

    .line 529
    .restart local v3    # "styleLst":Lorg/apache/xmlbeans/XmlObject;
    :goto_1
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlObject;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v4

    .line 530
    .local v4, "cur":Lorg/apache/xmlbeans/XmlCursor;
    const/4 v5, 0x0

    .line 531
    .local v5, "fp":Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;
    invoke-interface {v4, v0}, Lorg/apache/xmlbeans/XmlCursor;->toChild(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 532
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v5

    .line 534
    :cond_3
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 536
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v6

    .line 537
    .local v6, "phClr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v7

    invoke-static {v5, v6, v7, p1, p3}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v7

    .line 540
    .local v7, "res":Lorg/apache/poi/sl/usermodel/PaintStyle;
    if-nez v7, :cond_5

    if-eqz p3, :cond_4

    goto :goto_2

    .line 543
    :cond_4
    new-instance v8, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-direct {v8, p0, p1, v6}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    .line 544
    .local v8, "col":Lorg/apache/poi/xslf/usermodel/XSLFColor;
    invoke-virtual {v8}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColorStyle()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object v9

    return-object v9

    .line 541
    .end local v8    # "col":Lorg/apache/poi/xslf/usermodel/XSLFColor;
    :cond_5
    :goto_2
    return-object v7

    .line 527
    .end local v0    # "childIdx":I
    .end local v3    # "styleLst":Lorg/apache/xmlbeans/XmlObject;
    .end local v4    # "cur":Lorg/apache/xmlbeans/XmlCursor;
    .end local v5    # "fp":Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;
    .end local v6    # "phClr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
    .end local v7    # "res":Lorg/apache/poi/sl/usermodel/PaintStyle;
    :cond_6
    return-object v0
.end method


# virtual methods
.method copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V
    .locals 3
    .param p1, "sh"    # Lorg/apache/poi/xslf/usermodel/XSLFShape;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    instance-of v0, p0, Lorg/apache/poi/sl/usermodel/PlaceableShape;

    if-eqz v0, :cond_0

    .line 137
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/sl/usermodel/PlaceableShape;

    .line 138
    .local v0, "ps":Lorg/apache/poi/sl/usermodel/PlaceableShape;, "Lorg/apache/poi/sl/usermodel/PlaceableShape<**>;"
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 142
    .end local v0    # "ps":Lorg/apache/poi/sl/usermodel/PlaceableShape;, "Lorg/apache/poi/sl/usermodel/PlaceableShape<**>;"
    :cond_0
    return-void

    .line 132
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t copy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 1
    .param p1, "graphics"    # Ljava/awt/Graphics2D;
    .param p2, "bounds"    # Ljava/awt/geom/Rectangle2D;

    .line 549
    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Lorg/apache/poi/sl/draw/DrawFactory;->drawShape(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/Shape;Ljava/awt/geom/Rectangle2D;)V

    .line 550
    return-void
.end method

.method protected fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xslf/model/PropertyFetcher<",
            "*>;)Z"
        }
    .end annotation

    .line 314
    .local p1, "visitor":Lorg/apache/poi/xslf/model/PropertyFetcher;, "Lorg/apache/poi/xslf/model/PropertyFetcher<*>;"
    invoke-virtual {p1, p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 315
    return v1

    .line 318
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getCTPlaceholder()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v0

    .line 319
    .local v0, "ph":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 320
    return v2

    .line 322
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;

    move-result-object v3

    .line 325
    .local v3, "sm":Lorg/apache/poi/sl/usermodel/MasterSheet;, "Lorg/apache/poi/sl/usermodel/MasterSheet<Lorg/apache/poi/xslf/usermodel/XSLFShape;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;>;"
    instance-of v4, v3, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    if-eqz v4, :cond_3

    .line 326
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    .line 327
    .local v4, "slideLayout":Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    invoke-virtual {v4, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getPlaceholder(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    move-result-object v5

    .line 328
    .local v5, "placeholderShape":Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
    if-eqz v5, :cond_2

    invoke-virtual {p1, v5}, Lorg/apache/poi/xslf/model/PropertyFetcher;->fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 329
    return v1

    .line 331
    :cond_2
    invoke-virtual {v4}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    move-result-object v3

    .line 335
    .end local v4    # "slideLayout":Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    .end local v5    # "placeholderShape":Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
    :cond_3
    instance-of v4, v3, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    if-eqz v4, :cond_4

    .line 336
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    .line 337
    .local v4, "master":Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;
    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getPlaceholderType(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;)I

    move-result v5

    .line 338
    .local v5, "textType":I
    invoke-virtual {v4, v5}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getPlaceholderByType(I)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    move-result-object v6

    .line 339
    .local v6, "masterShape":Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
    if-eqz v6, :cond_4

    invoke-virtual {p1, v6}, Lorg/apache/poi/xslf/model/PropertyFetcher;->fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 340
    return v1

    .line 344
    .end local v4    # "master":Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;
    .end local v5    # "textType":I
    .end local v6    # "masterShape":Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
    :cond_4
    return v2
.end method

.method protected getBgPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;
    .locals 3

    .line 194
    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    const-string v1, "http://schemas.openxmlformats.org/presentationml/2006/main"

    const-string v2, "bgPr"

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getChild(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    return-object v0
.end method

.method protected getBgRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
    .locals 3

    .line 198
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    const-string v1, "http://schemas.openxmlformats.org/presentationml/2006/main"

    const-string v2, "bgRef"

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getChild(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    return-object v0
.end method

.method protected getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    .locals 2

    .line 206
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_nvPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    if-nez v0, :cond_0

    .line 207
    const-string v0, "declare namespace p=\'http://schemas.openxmlformats.org/presentationml/2006/main\' .//*/p:cNvPr"

    .line 208
    .local v0, "xquery":Ljava/lang/String;
    const-class v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_nvPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    .line 210
    .end local v0    # "xquery":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_nvPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    return-object v0
.end method

.method protected getCTPlaceholder()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;
    .locals 2

    .line 243
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_ph:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    if-nez v0, :cond_0

    .line 244
    const-string v0, "declare namespace p=\'http://schemas.openxmlformats.org/presentationml/2006/main\' .//*/p:nvPr/p:ph"

    .line 245
    .local v0, "xquery":Ljava/lang/String;
    const-class v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_ph:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    .line 247
    .end local v0    # "xquery":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_ph:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    return-object v0
.end method

.method protected getChild(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;
    .locals 3
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "nodename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 230
    .local p1, "childClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlObject;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    .line 231
    .local v0, "cur":Lorg/apache/xmlbeans/XmlCursor;
    const/4 v1, 0x0

    .line 232
    .local v1, "child":Lorg/apache/xmlbeans/XmlObject;, "TT;"
    invoke-interface {v0, p2, p3}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 235
    :cond_0
    const-string v2, "http://schemas.openxmlformats.org/drawingml/2006/main"

    invoke-interface {v0, v2, p3}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 238
    :cond_1
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 239
    return-object v1
.end method

.method protected getFillPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 4

    .line 153
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v0

    .line 154
    .local v0, "theme":Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 155
    .local v1, "hasPlaceholder":Z
    :goto_0
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFShape;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)V

    .line 188
    .local v2, "fetcher":Lorg/apache/poi/xslf/model/PropertyFetcher;, "Lorg/apache/poi/xslf/model/PropertyFetcher<Lorg/apache/poi/sl/usermodel/PaintStyle;>;"
    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    .line 190
    invoke-virtual {v2}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/sl/usermodel/PaintStyle;

    return-object v3
.end method

.method protected getGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;
    .locals 3

    .line 202
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    const-string v1, "http://schemas.openxmlformats.org/presentationml/2006/main"

    const-string v2, "grpSpPr"

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getChild(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/apache/poi/sl/usermodel/ShapeContainer;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getParent()Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_parent:Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;

    return-object v0
.end method

.method public getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 2

    .line 251
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getCTPlaceholder()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v0

    .line 252
    .local v0, "ph":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->isSetType()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->isSetIdx()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/sl/usermodel/Placeholder;->lookupOoxml(I)Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v1

    return-object v1

    .line 253
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getShapeId()I
    .locals 2

    .line 119
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getId()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getShapeName()Ljava/lang/String;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getShapeProperties()Lorg/apache/xmlbeans/XmlObject;
    .locals 3

    .line 558
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    const-string v1, "http://schemas.openxmlformats.org/presentationml/2006/main"

    const-string v2, "spPr"

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getChild(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/sl/usermodel/Sheet;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    return-object v0
.end method

.method protected getSpStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;
    .locals 3

    .line 214
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_spStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    if-nez v0, :cond_0

    .line 215
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    const-string v1, "http://schemas.openxmlformats.org/presentationml/2006/main"

    const-string v2, "style"

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getChild(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_spStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_spStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    return-object v0
.end method

.method public final getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_shape:Lorg/apache/xmlbeans/XmlObject;

    return-object v0
.end method

.method protected selectProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;
    .locals 4
    .param p2, "xquery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 292
    .local p1, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 293
    .local v0, "rs":[Lorg/apache/xmlbeans/XmlObject;
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 294
    :cond_0
    const/4 v1, 0x0

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v2, v0, v1

    :cond_1
    return-object v2
.end method

.method public setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V
    .locals 0
    .param p1, "parent"    # Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;

    .line 145
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_parent:Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;

    .line 146
    return-void
.end method

.method protected setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V
    .locals 4
    .param p1, "placeholder"    # Lorg/apache/poi/sl/usermodel/Placeholder;

    .line 268
    const-string v0, "declare namespace p=\'http://schemas.openxmlformats.org/presentationml/2006/main\' .//*/p:nvPr"

    .line 269
    .local v0, "xquery":Ljava/lang/String;
    const-class v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    .line 270
    .local v1, "nv":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;
    if-nez v1, :cond_0

    return-void

    .line 271
    :cond_0
    if-nez p1, :cond_2

    .line 272
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->isSetPh()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->unsetPh()V

    .line 273
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_ph:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    goto :goto_0

    .line 275
    :cond_2
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->addNewPh()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v2

    iget v3, p1, Lorg/apache/poi/sl/usermodel/Placeholder;->ooxmlId:I

    invoke-static {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forInt(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->setType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;)V

    .line 277
    :goto_0
    return-void
.end method
