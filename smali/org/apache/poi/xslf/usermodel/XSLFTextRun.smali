.class public Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
.super Ljava/lang/Object;
.source "XSLFTextRun.java"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/TextRun;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;
    }
.end annotation


# instance fields
.field private final _p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

.field private final _r:Lorg/apache/xmlbeans/XmlObject;


# direct methods
.method protected constructor <init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V
    .locals 3
    .param p1, "r"    # Lorg/apache/xmlbeans/XmlObject;
    .param p2, "p"    # Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_r:Lorg/apache/xmlbeans/XmlObject;

    .line 64
    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    .line 65
    instance-of v0, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported text run of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    .line 58
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    .param p1, "x1"    # Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;

    .line 58
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z

    move-result v0

    return v0
.end method

.method private fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher<",
            "*>;)Z"
        }
    .end annotation

    .line 558
    .local p1, "fetcher":Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;, "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher<*>;"
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v0

    .line 559
    .local v0, "shape":Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v1

    .line 561
    .local v1, "sheet":Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v3

    .line 562
    .local v3, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {p1, v3}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 563
    return v4

    .line 566
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 567
    return v4

    .line 570
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getCTPlaceholder()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v5

    .line 571
    .local v5, "ph":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;
    if-nez v5, :cond_2

    .line 574
    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v6

    .line 576
    .local v6, "ppt":Lorg/apache/poi/xslf/usermodel/XMLSlideShow;
    iget-object v7, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v7}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getDefaultParagraphStyle(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v7

    .line 577
    .local v7, "themeProps":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    if-eqz v7, :cond_2

    invoke-virtual {p1, v7}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 578
    return v4

    .line 583
    .end local v6    # "ppt":Lorg/apache/poi/xslf/usermodel/XMLSlideShow;
    .end local v7    # "themeProps":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :cond_2
    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v6}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getDefaultMasterStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v6

    .line 584
    .local v6, "defaultProps":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    if-eqz v6, :cond_3

    invoke-virtual {p1, v6}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 585
    return v4

    .line 588
    :cond_3
    return v2
.end method


# virtual methods
.method copy(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;)V
    .locals 9
    .param p1, "r"    # Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    .line 592
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "srcFontFamily":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 594
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setFontFamily(Ljava/lang/String;)V

    .line 597
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v1

    .line 598
    .local v1, "srcFontColor":Lorg/apache/poi/sl/usermodel/PaintStyle;
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 599
    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V

    .line 602
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontSize()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 603
    .local v2, "srcFontSize":D
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontSize()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_2

    .line 604
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setFontSize(Ljava/lang/Double;)V

    .line 607
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isBold()Z

    move-result v4

    .line 608
    .local v4, "bold":Z
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isBold()Z

    move-result v5

    if-eq v4, v5, :cond_3

    .line 609
    invoke-virtual {p0, v4}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setBold(Z)V

    .line 612
    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isItalic()Z

    move-result v5

    .line 613
    .local v5, "italic":Z
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isItalic()Z

    move-result v6

    if-eq v5, v6, :cond_4

    .line 614
    invoke-virtual {p0, v5}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setItalic(Z)V

    .line 617
    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isUnderlined()Z

    move-result v6

    .line 618
    .local v6, "underline":Z
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isUnderlined()Z

    move-result v7

    if-eq v6, v7, :cond_5

    .line 619
    invoke-virtual {p0, v6}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setUnderlined(Z)V

    .line 622
    :cond_5
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isStrikethrough()Z

    move-result v7

    .line 623
    .local v7, "strike":Z
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isStrikethrough()Z

    move-result v8

    if-eq v7, v8, :cond_6

    .line 624
    invoke-virtual {p0, v7}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setStrikethrough(Z)V

    .line 626
    :cond_6
    return-void
.end method

.method public bridge synthetic createHyperlink()Lorg/apache/poi/sl/usermodel/Hyperlink;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->createHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public createHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;
    .locals 5

    .line 535
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    move-result-object v0

    .line 536
    .local v0, "hl":Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;
    if-eqz v0, :cond_0

    .line 537
    return-object v0

    .line 540
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    .line 541
    .local v1, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewHlinkClick()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v4}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v2
.end method

.method public getCharacterSpacing()D
    .locals 3

    .line 245
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$3;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$3;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;I)V

    .line 255
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;, "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher<Ljava/lang/Double;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z

    .line 256
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public getFieldType()Lorg/apache/poi/sl/usermodel/TextRun$FieldType;
    .locals 3

    .line 631
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_r:Lorg/apache/xmlbeans/XmlObject;

    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz v1, :cond_0

    .line 632
    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    .line 633
    .local v0, "tf":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "slidenum"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    sget-object v1, Lorg/apache/poi/sl/usermodel/TextRun$FieldType;->SLIDE_NUMBER:Lorg/apache/poi/sl/usermodel/TextRun$FieldType;

    return-object v1

    .line 637
    .end local v0    # "tf":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 3

    .line 167
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getParentParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 168
    .local v0, "hasPlaceholder":Z
    :goto_0
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v2

    invoke-direct {v1, p0, v2, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;IZ)V

    .line 196
    .local v1, "fetcher":Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;, "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher<Lorg/apache/poi/sl/usermodel/PaintStyle;>;"
    invoke-direct {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z

    .line 197
    invoke-virtual {v1}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/sl/usermodel/PaintStyle;

    return-object v2
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 3

    .line 297
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->getFontGroupFirst(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object v0

    .line 298
    .local v0, "fg":Lorg/apache/poi/common/usermodel/fonts/FontGroup;
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;)V

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getTypeface()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFontFamily(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;
    .locals 2
    .param p1, "fontGroup"    # Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    .line 303
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;)V

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getTypeface()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .locals 3
    .param p1, "fontGroup"    # Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    .line 308
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;)V

    .line 309
    .local v0, "fontInfo":Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getTypeface()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public getFontSize()Ljava/lang/Double;
    .locals 7

    .line 218
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 219
    .local v0, "scale":D
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getParentParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getNormAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    move-result-object v2

    .line 220
    .local v2, "afit":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;
    if-eqz v2, :cond_0

    .line 221
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->getFontScale()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x40f86a0000000000L    # 100000.0

    div-double v0, v3, v5

    .line 224
    :cond_0
    new-instance v3, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$2;

    iget-object v4, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v4}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v4

    invoke-direct {v3, p0, v4}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$2;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;I)V

    .line 234
    .local v3, "fetcher":Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;, "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher<Ljava/lang/Double;>;"
    invoke-direct {p0, v3}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z

    .line 235
    invoke-virtual {v3}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    :goto_0
    return-object v4
.end method

.method public bridge synthetic getHyperlink()Lorg/apache/poi/sl/usermodel/Hyperlink;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public getHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;
    .locals 4

    .line 546
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    .line 547
    .local v0, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 548
    return-object v1

    .line 550
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getHlinkClick()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    move-result-object v2

    .line 551
    .local v2, "hl":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;
    if-nez v2, :cond_1

    .line 552
    return-object v1

    .line 554
    :cond_1
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v1
.end method

.method getParentParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    return-object v0
.end method

.method public getPitchAndFamily()B
    .locals 5

    .line 314
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->getFontGroupFirst(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object v0

    .line 315
    .local v0, "fg":Lorg/apache/poi/common/usermodel/fonts/FontGroup;
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;)V

    .line 316
    .local v1, "fontInfo":Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;
    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getPitch()Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    move-result-object v2

    .line 317
    .local v2, "pitch":Lorg/apache/poi/common/usermodel/fonts/FontPitch;
    if-nez v2, :cond_0

    .line 318
    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->VARIABLE:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    .line 320
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getFamily()Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    move-result-object v3

    .line 321
    .local v3, "family":Lorg/apache/poi/common/usermodel/fonts/FontFamily;
    if-nez v3, :cond_1

    .line 322
    sget-object v3, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_SWISS:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    .line 324
    :cond_1
    invoke-static {v2, v3}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->getNativeId(Lorg/apache/poi/common/usermodel/fonts/FontPitch;Lorg/apache/poi/common/usermodel/fonts/FontFamily;)B

    move-result v4

    return v4
.end method

.method protected getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    .locals 2
    .param p1, "create"    # Z

    .line 503
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_r:Lorg/apache/xmlbeans/XmlObject;

    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz v1, :cond_2

    .line 504
    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    .line 505
    .local v0, "tf":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->isSetRPr()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    return-object v1

    .line 507
    :cond_0
    if-eqz p1, :cond_1

    .line 508
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    return-object v1

    .line 510
    .end local v0    # "tf":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;
    :cond_1
    goto :goto_0

    :cond_2
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    if-eqz v1, :cond_5

    .line 511
    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    .line 512
    .local v0, "tlb":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;->isSetRPr()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 513
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    return-object v1

    .line 514
    :cond_3
    if-eqz p1, :cond_4

    .line 515
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    return-object v1

    .line 517
    .end local v0    # "tlb":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;
    :cond_4
    goto :goto_0

    .line 518
    :cond_5
    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    .line 519
    .local v0, "tr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->isSetRPr()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 520
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    return-object v1

    .line 521
    :cond_6
    if-eqz p1, :cond_7

    .line 522
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    return-object v1

    .line 525
    .end local v0    # "tr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    :cond_7
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRawText()Ljava/lang/String;
    .locals 2

    .line 76
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_r:Lorg/apache/xmlbeans/XmlObject;

    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz v1, :cond_0

    .line 77
    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->getT()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    if-eqz v1, :cond_1

    .line 79
    const-string v0, "\n"

    return-object v0

    .line 81
    :cond_1
    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->getT()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRenderableText()Ljava/lang/String;
    .locals 7

    .line 85
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_r:Lorg/apache/xmlbeans/XmlObject;

    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz v1, :cond_1

    .line 86
    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    .line 87
    .local v0, "tf":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v1

    .line 88
    .local v1, "sheet":Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "slidenum"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    if-eqz v2, :cond_0

    .line 89
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getSlideNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 91
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->getT()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 92
    .end local v0    # "tf":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;
    .end local v1    # "sheet":Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    :cond_1
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    if-eqz v1, :cond_2

    .line 93
    const-string v0, "\n"

    return-object v0

    .line 97
    :cond_2
    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->getT()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "txt":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getTextCap()Lorg/apache/poi/sl/usermodel/TextRun$TextCap;

    move-result-object v1

    .line 99
    .local v1, "cap":Lorg/apache/poi/sl/usermodel/TextRun$TextCap;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    .local v2, "buf":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 101
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 102
    .local v4, "c":C
    const/16 v5, 0x9

    if-ne v4, v5, :cond_3

    .line 104
    const-string v5, "  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 106
    :cond_3
    sget-object v5, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$11;->$SwitchMap$org$apache$poi$sl$usermodel$TextRun$TextCap:[I

    invoke-virtual {v1}, Lorg/apache/poi/sl/usermodel/TextRun$TextCap;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    .line 114
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 111
    :cond_4
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 112
    goto :goto_1

    .line 108
    :cond_5
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 109
    nop

    .line 100
    .end local v4    # "c":C
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    .end local v3    # "i":I
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getTextCap()Lorg/apache/poi/sl/usermodel/TextRun$TextCap;
    .locals 2

    .line 418
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$7;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$7;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;I)V

    .line 429
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;, "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher<Lorg/apache/poi/sl/usermodel/TextRun$TextCap;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z

    .line 430
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/poi/sl/usermodel/TextRun$TextCap;->NONE:Lorg/apache/poi/sl/usermodel/TextRun$TextCap;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/usermodel/TextRun$TextCap;

    :goto_0
    return-object v1
.end method

.method public getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_r:Lorg/apache/xmlbeans/XmlObject;

    return-object v0
.end method

.method public isBold()Z
    .locals 2

    .line 440
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$8;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$8;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;I)V

    .line 450
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;, "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher<Ljava/lang/Boolean;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z

    .line 451
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public isItalic()Z
    .locals 2

    .line 461
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$9;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$9;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;I)V

    .line 471
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;, "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher<Ljava/lang/Boolean;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z

    .line 472
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public isStrikethrough()Z
    .locals 2

    .line 334
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$4;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$4;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;I)V

    .line 344
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;, "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher<Ljava/lang/Boolean;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z

    .line 345
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public isSubscript()Z
    .locals 2

    .line 399
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$6;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$6;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;I)V

    .line 409
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;, "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher<Ljava/lang/Boolean;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z

    .line 410
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public isSuperscript()Z
    .locals 2

    .line 350
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$5;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$5;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;I)V

    .line 360
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;, "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher<Ljava/lang/Boolean;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z

    .line 361
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public isUnderlined()Z
    .locals 2

    .line 482
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$10;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$10;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;I)V

    .line 492
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;, "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher<Ljava/lang/Boolean;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z

    .line 493
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public setBaselineOffset(D)V
    .locals 2
    .param p1, "baselineOffset"    # D

    .line 374
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    double-to-int v1, p1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setBaseline(I)V

    .line 375
    return-void
.end method

.method public setBold(Z)V
    .locals 1
    .param p1, "bold"    # Z

    .line 435
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setB(Z)V

    .line 436
    return-void
.end method

.method public setCharacterSpacing(D)V
    .locals 4
    .param p1, "spc"    # D

    .line 269
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    .line 270
    .local v0, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    const-wide/16 v1, 0x0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_0

    .line 271
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSpc()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetSpc()V

    goto :goto_0

    .line 275
    :cond_0
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double v1, v1, p1

    double-to-int v1, v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setSpc(I)V

    .line 277
    :cond_1
    :goto_0
    return-void
.end method

.method public setFontColor(Ljava/awt/Color;)V
    .locals 1
    .param p1, "color"    # Ljava/awt/Color;

    .line 147
    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V

    .line 148
    return-void
.end method

.method public setFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V
    .locals 7
    .param p1, "color"    # Lorg/apache/poi/sl/usermodel/PaintStyle;

    .line 152
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    if-eqz v0, :cond_1

    .line 155
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    .line 156
    .local v0, "sp":Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object v1

    .line 158
    .local v1, "c":Ljava/awt/Color;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v2

    .line 159
    .local v2, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSolidFill()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v3

    .line 161
    .local v3, "fill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    :goto_0
    new-instance v4, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getParentParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v5

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    .line 162
    .local v4, "col":Lorg/apache/poi/xslf/usermodel/XSLFColor;
    invoke-virtual {v4, v1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->setColor(Ljava/awt/Color;)V

    .line 163
    return-void

    .line 153
    .end local v0    # "sp":Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;
    .end local v1    # "c":Ljava/awt/Color;
    .end local v2    # "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    .end local v3    # "fill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .end local v4    # "col":Lorg/apache/poi/xslf/usermodel/XSLFColor;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Currently only SolidPaint is supported!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 3
    .param p1, "typeface"    # Ljava/lang/String;

    .line 281
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->getFontGroupFirst(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object v0

    .line 282
    .local v0, "fg":Lorg/apache/poi/common/usermodel/fonts/FontGroup;
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;)V

    invoke-virtual {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->setTypeface(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public setFontFamily(Ljava/lang/String;Lorg/apache/poi/common/usermodel/fonts/FontGroup;)V
    .locals 2
    .param p1, "typeface"    # Ljava/lang/String;
    .param p2, "fontGroup"    # Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    .line 287
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->setTypeface(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public setFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontInfo;Lorg/apache/poi/common/usermodel/fonts/FontGroup;)V
    .locals 2
    .param p1, "fontInfo"    # Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .param p2, "fontGroup"    # Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    .line 292
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->copyFrom(Lorg/apache/poi/common/usermodel/fonts/FontInfo;)V

    .line 293
    return-void
.end method

.method public setFontSize(Ljava/lang/Double;)V
    .locals 6
    .param p1, "fontSize"    # Ljava/lang/Double;

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    .line 203
    .local v0, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    if-nez p1, :cond_0

    .line 204
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSz()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetSz()V

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v1, v3

    if-ltz v5, :cond_2

    .line 212
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    mul-double v3, v3, v1

    double-to-int v1, v3

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setSz(I)V

    .line 214
    :cond_1
    :goto_0
    return-void

    .line 209
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Minimum font size is 1pt but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setItalic(Z)V
    .locals 1
    .param p1, "italic"    # Z

    .line 456
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setI(Z)V

    .line 457
    return-void
.end method

.method public setStrikethrough(Z)V
    .locals 2
    .param p1, "strike"    # Z

    .line 329
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType;->SNG_STRIKE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType;->NO_STRIKE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    :goto_0
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setStrike(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;)V

    .line 330
    return-void
.end method

.method public setSubscript(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 394
    if-eqz p1, :cond_0

    const-wide/high16 v0, -0x3fc7000000000000L    # -25.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setBaselineOffset(D)V

    .line 395
    return-void
.end method

.method public setSuperscript(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 384
    if-eqz p1, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setBaselineOffset(D)V

    .line 385
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_r:Lorg/apache/xmlbeans/XmlObject;

    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz v1, :cond_0

    .line 125
    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->setT(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_0
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    if-eqz v1, :cond_1

    .line 128
    return-void

    .line 130
    :cond_1
    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void
.end method

.method public setUnderlined(Z)V
    .locals 2
    .param p1, "underline"    # Z

    .line 477
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->SNG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    :goto_0
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setU(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    .line 478
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
