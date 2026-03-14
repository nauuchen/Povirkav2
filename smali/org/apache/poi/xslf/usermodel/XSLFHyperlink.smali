.class public Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;
.super Ljava/lang/Object;
.source "XSLFHyperlink.java"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Hyperlink;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/sl/usermodel/Hyperlink<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# instance fields
.field final _link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

.field final _sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;


# direct methods
.method constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0
    .param p1, "link"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;
    .param p2, "sheet"    # Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    .line 37
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    .line 38
    return-void
.end method

.method private linkToExternal(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 116
    .local v0, "thisPP":Lorg/apache/poi/openxml4j/opc/PackagePart;
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetId()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->removeRelationship(Ljava/lang/String;)V

    .line 119
    :cond_0
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->HYPERLINK:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getRelation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addExternalRelationship(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    .line 120
    .local v1, "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setId(Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetAction()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->unsetAction()V

    .line 124
    :cond_1
    return-void
.end method

.method private linkToRelativeSlide(Ljava/lang/String;)V
    .locals 4
    .param p1, "jump"    # Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 161
    .local v0, "thisPP":Lorg/apache/poi/openxml4j/opc/PackagePart;
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetId()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->removeRelationship(Ljava/lang/String;)V

    .line 164
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    const-string v2, ""

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setId(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppaction://hlinkshowjump?jump="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setAction(Ljava/lang/String;)V

    .line 166
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 3

    .line 52
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v1

    .line 59
    .local v1, "targetURI":Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 54
    .end local v1    # "targetURI":Ljava/net/URI;
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getAction()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getTooltip()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 78
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->getTypeEnum()Lorg/apache/poi/common/usermodel/HyperlinkType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/common/usermodel/HyperlinkType;->getCode()I

    move-result v0

    return v0
.end method

.method public getTypeEnum()Lorg/apache/poi/common/usermodel/HyperlinkType;
    .locals 3

    .line 83
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 85
    const-string v0, ""

    .line 87
    :cond_0
    const-string v1, "ppaction://hlinksldjump"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ppaction://hlinkshowjump"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "address":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 93
    const-string v1, ""

    .line 95
    :cond_2
    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 96
    sget-object v2, Lorg/apache/poi/common/usermodel/HyperlinkType;->EMAIL:Lorg/apache/poi/common/usermodel/HyperlinkType;

    return-object v2

    .line 98
    :cond_3
    sget-object v2, Lorg/apache/poi/common/usermodel/HyperlinkType;->URL:Lorg/apache/poi/common/usermodel/HyperlinkType;

    return-object v2

    .line 88
    .end local v1    # "address":Ljava/lang/String;
    :cond_4
    :goto_0
    sget-object v1, Lorg/apache/poi/common/usermodel/HyperlinkType;->DOCUMENT:Lorg/apache/poi/common/usermodel/HyperlinkType;

    return-object v1
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    return-object v0
.end method

.method public linkToEmail(Ljava/lang/String;)V
    .locals 2
    .param p1, "emailAddress"    # Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->linkToExternal(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->setLabel(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public linkToFirstSlide()V
    .locals 1

    .line 151
    const-string v0, "firstslide"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->linkToRelativeSlide(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public linkToLastSlide()V
    .locals 1

    .line 156
    const-string v0, "lastslide"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->linkToRelativeSlide(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public linkToNextSlide()V
    .locals 1

    .line 141
    const-string v0, "nextslide"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->linkToRelativeSlide(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public linkToPreviousSlide()V
    .locals 1

    .line 146
    const-string v0, "previousslide"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->linkToRelativeSlide(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public linkToSlide(Lorg/apache/poi/sl/usermodel/Slide;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Slide<",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    .line 128
    .local p1, "slide":Lorg/apache/poi/sl/usermodel/Slide;, "Lorg/apache/poi/sl/usermodel/Slide<Lorg/apache/poi/xslf/usermodel/XSLFShape;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;>;"
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 129
    .local v0, "thisPP":Lorg/apache/poi/openxml4j/opc/PackagePart;
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    .line 130
    .local v1, "otherPPN":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetId()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->removeRelationship(Ljava/lang/String;)V

    .line 133
    :cond_0
    sget-object v2, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    sget-object v3, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->SLIDE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v2

    .line 135
    .local v2, "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setId(Ljava/lang/String;)V

    .line 136
    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    const-string v4, "ppaction://hlinksldjump"

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setAction(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public linkToUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 110
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->linkToExternal(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->setLabel(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->linkToUrl(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setTooltip(Ljava/lang/String;)V

    .line 70
    return-void
.end method
