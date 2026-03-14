.class public Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;
.super Lorg/apache/poi/xslf/usermodel/XSLFSheet;
.source "XSLFSlideMaster.java"

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
.field private _layouts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;",
            ">;"
        }
    .end annotation
.end field

.field private _slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

.field private _theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;-><init>()V

    .line 68
    invoke-static {}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster$Factory;->newInstance()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    .line 69
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 2
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 76
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldMasterDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/presentationml/x2006/main/SldMasterDocument;

    move-result-object v0

    .line 78
    .local v0, "doc":Lorg/openxmlformats/schemas/presentationml/x2006/main/SldMasterDocument;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldMasterDocument;->getSldMaster()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    .line 79
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->setCommonSlideData(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;)V

    .line 80
    return-void
.end method

.method private getLayouts()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_layouts:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_layouts:Ljava/util/Map;

    .line 100
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getRelations()Ljava/util/List;

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

    .line 101
    .local v1, "p":Lorg/apache/poi/POIXMLDocumentPart;
    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    if-eqz v2, :cond_0

    .line 102
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    .line 103
    .local v2, "layout":Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_layouts:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .end local v1    # "p":Lorg/apache/poi/POIXMLDocumentPart;
    .end local v2    # "layout":Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    :cond_0
    goto :goto_0

    .line 107
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_layouts:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected canDraw(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
    .locals 3
    .param p1, "shape"    # Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 188
    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    if-eqz v0, :cond_0

    .line 189
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    .line 190
    .local v0, "txt":Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getCTPlaceholder()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v1

    .line 191
    .local v1, "ph":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;
    if-eqz v1, :cond_0

    .line 192
    const/4 v2, 0x0

    return v2

    .line 195
    .end local v0    # "txt":Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
    .end local v1    # "ph":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getBackground()Lorg/apache/poi/sl/usermodel/Background;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;

    move-result-object v0

    return-object v0
.end method

.method public getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;
    .locals 2

    .line 200
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->getBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;

    move-result-object v0

    .line 201
    .local v0, "bg":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;
    if-eqz v0, :cond_0

    .line 202
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFBackground;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFBackground;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v1

    .line 204
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLayout(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getLayouts()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    return-object v0
.end method

.method public getLayout(Lorg/apache/poi/xslf/usermodel/SlideLayout;)Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    .locals 3
    .param p1, "type"    # Lorg/apache/poi/xslf/usermodel/SlideLayout;

    .line 126
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getLayouts()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    .line 127
    .local v1, "layout":Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getType()Lorg/apache/poi/xslf/usermodel/SlideLayout;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 128
    return-object v1

    .end local v1    # "layout":Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    :cond_0
    goto :goto_0

    .line 131
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    move-result-object v0

    return-object v0
.end method

.method public getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;
    .locals 1

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRootElementName()Ljava/lang/String;
    .locals 1

    .line 89
    const-string v0, "sldMaster"

    return-object v0
.end method

.method public getSlideLayouts()[Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    .locals 2

    .line 115
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getLayouts()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_layouts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    return-object v0
.end method

.method protected getTextProperties(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;
    .locals 4
    .param p1, "textType"    # Lorg/apache/poi/sl/usermodel/Placeholder;

    .line 165
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;->getTxStyles()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterTextStyles;

    move-result-object v0

    .line 166
    .local v0, "txStyles":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterTextStyles;
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster$1;->$SwitchMap$org$apache$poi$sl$usermodel$Placeholder:[I

    invoke-virtual {p1}, Lorg/apache/poi/sl/usermodel/Placeholder;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    move-object v1, v3

    .line 176
    .local v1, "props":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterTextStyles;->getOtherStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object v1

    goto :goto_0

    .line 166
    .end local v1    # "props":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;
    :cond_0
    move-object v1, v3

    .line 173
    .restart local v1    # "props":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterTextStyles;->getBodyStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object v1

    .line 174
    goto :goto_0

    .line 170
    .end local v1    # "props":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterTextStyles;->getTitleStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object v1

    .line 171
    .restart local v1    # "props":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;
    nop

    .line 179
    :goto_0
    return-object v1
.end method

.method public getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    .locals 4

    .line 148
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    if-nez v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getRelations()Ljava/util/List;

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

    .line 150
    .local v1, "p":Lorg/apache/poi/POIXMLDocumentPart;
    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    if-eqz v2, :cond_0

    .line 151
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iput-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    .line 152
    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;->getClrMap()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;

    move-result-object v2

    .line 153
    .local v2, "cmap":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;
    if-eqz v2, :cond_1

    .line 154
    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    invoke-virtual {v3, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->initColorMap(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;)V

    goto :goto_1

    .end local v1    # "p":Lorg/apache/poi/POIXMLDocumentPart;
    .end local v2    # "cmap":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;
    :cond_0
    goto :goto_0

    .line 160
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    return-object v0
.end method

.method public bridge synthetic getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    move-result-object v0

    return-object v0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    return-object v0
.end method
