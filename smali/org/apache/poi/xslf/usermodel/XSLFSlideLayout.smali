.class public Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
.super Lorg/apache/poi/xslf/usermodel/XSLFSheet;
.source "XSLFSlideLayout.java"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/MasterSheet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFSheet;",
        "Lorg/apache/poi/sl/usermodel/MasterSheet<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# instance fields
.field private _layout:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

.field private _master:Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;-><init>()V

    .line 43
    invoke-static {}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout$Factory;->newInstance()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_layout:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 2
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 51
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldLayoutDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/presentationml/x2006/main/SldLayoutDocument;

    move-result-object v0

    .line 53
    .local v0, "doc":Lorg/openxmlformats/schemas/presentationml/x2006/main/SldLayoutDocument;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldLayoutDocument;->getSldLayout()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_layout:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    .line 54
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->setCommonSlideData(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected canDraw(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
    .locals 3
    .param p1, "shape"    # Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 115
    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    if-eqz v0, :cond_0

    .line 116
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    .line 117
    .local v0, "txt":Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getCTPlaceholder()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v1

    .line 118
    .local v1, "ph":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;
    if-eqz v1, :cond_0

    .line 119
    const/4 v2, 0x0

    return v2

    .line 122
    .end local v0    # "txt":Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
    .end local v1    # "ph":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public copyLayout(Lorg/apache/poi/xslf/usermodel/XSLFSlide;)V
    .locals 6
    .param p1, "slide"    # Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    .line 142
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getShapes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 143
    .local v1, "sh":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    if-eqz v2, :cond_1

    .line 144
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    .line 145
    .local v2, "tsh":Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextType()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v3

    .line 146
    .local v3, "ph":Lorg/apache/poi/sl/usermodel/Placeholder;
    if-nez v3, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    sget-object v4, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout$1;->$SwitchMap$org$apache$poi$sl$usermodel$Placeholder:[I

    invoke-virtual {v3}, Lorg/apache/poi/sl/usermodel/Placeholder;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 155
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/xmlbeans/XmlObject;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    nop

    .line 157
    .end local v1    # "sh":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    .end local v2    # "tsh":Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    .end local v3    # "ph":Lorg/apache/poi/sl/usermodel/Placeholder;
    :cond_1
    goto :goto_0

    .line 159
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public bridge synthetic getBackground()Lorg/apache/poi/sl/usermodel/Background;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;

    move-result-object v0

    return-object v0
.end method

.method public getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_layout:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->getBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;

    move-result-object v0

    .line 129
    .local v0, "bg":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;
    if-eqz v0, :cond_0

    .line 130
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFBackground;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFBackground;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v1

    .line 132
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;

    move-result-object v1

    return-object v1
.end method

.method public getFollowMasterGraphics()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_layout:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;->getShowMasterSp()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    move-result-object v0

    return-object v0
.end method

.method public getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getSlideMaster()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_layout:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRootElementName()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, "sldLayout"

    return-object v0
.end method

.method public getSlideMaster()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;
    .locals 3

    .line 81
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_master:Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    if-nez v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getRelations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart;

    .line 83
    .local v1, "p":Lorg/apache/poi/POIXMLDocumentPart;
    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    if-eqz v2, :cond_0

    .line 84
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    iput-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_master:Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    .end local v1    # "p":Lorg/apache/poi/POIXMLDocumentPart;
    :cond_0
    goto :goto_0

    .line 88
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_master:Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    if-eqz v0, :cond_2

    .line 91
    return-object v0

    .line 89
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SlideMaster was not found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getSlideMaster()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/apache/poi/xslf/usermodel/SlideLayout;
    .locals 2

    .line 166
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_layout:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 167
    .local v0, "ordinal":I
    invoke-static {}, Lorg/apache/poi/xslf/usermodel/SlideLayout;->values()[Lorg/apache/poi/xslf/usermodel/SlideLayout;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1
.end method

.method public bridge synthetic getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    move-result-object v0

    return-object v0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_layout:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    return-object v0
.end method
