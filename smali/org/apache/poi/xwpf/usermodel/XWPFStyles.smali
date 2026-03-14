.class public Lorg/apache/poi/xwpf/usermodel/XWPFStyles;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "XWPFStyles.java"


# instance fields
.field private ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

.field private defaultParaStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;

.field private defaultRunStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

.field private latentStyles:Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;

.field private listStyle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    .line 69
    return-void
.end method

.method private getUsedStyleList(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p1, "style"    # Lorg/apache/poi/xwpf/usermodel/XWPFStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/XWPFStyle;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFStyle;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFStyle;",
            ">;"
        }
    .end annotation

    .line 223
    .local p2, "usedStyleList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xwpf/usermodel/XWPFStyle;>;"
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getBasisStyleID()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "basisStyleID":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getStyle(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    move-result-object v1

    .line 225
    .local v1, "basisStyle":Lorg/apache/poi/xwpf/usermodel/XWPFStyle;
    if-eqz v1, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 226
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-direct {p0, v1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getUsedStyleList(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;Ljava/util/List;)Ljava/util/List;

    .line 229
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getLinkStyleID()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "linkStyleID":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getStyle(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    move-result-object v3

    .line 231
    .local v3, "linkStyle":Lorg/apache/poi/xwpf/usermodel/XWPFStyle;
    if-eqz v3, :cond_1

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 232
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-direct {p0, v3, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getUsedStyleList(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;Ljava/util/List;)Ljava/util/List;

    .line 236
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getNextStyleID()Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, "nextStyleID":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getStyle(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    move-result-object v5

    .line 238
    .local v5, "nextStyle":Lorg/apache/poi/xwpf/usermodel/XWPFStyle;
    if-eqz v5, :cond_2

    invoke-interface {p2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 239
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-direct {p0, v3, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getUsedStyleList(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;Ljava/util/List;)Ljava/util/List;

    .line 242
    :cond_2
    return-object p2
.end method


# virtual methods
.method public addStyle(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;)V
    .locals 3
    .param p1, "style"    # Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    .line 175
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->addNewStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    .line 177
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->sizeOfStyleArray()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 178
    .local v0, "pos":I
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getCTStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->setStyleArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;)V

    .line 179
    return-void
.end method

.method protected commit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    .line 102
    .local v0, "xmlOptions":Lorg/apache/xmlbeans/XmlOptions;
    new-instance v1, Ljavax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "styles"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    .line 103
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    .line 104
    .local v1, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 105
    .local v2, "out":Ljava/io/OutputStream;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {v3, v2, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 106
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 107
    return-void

    .line 98
    .end local v0    # "xmlOptions":Lorg/apache/xmlbeans/XmlOptions;
    .end local v1    # "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v2    # "out":Ljava/io/OutputStream;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to write out styles that were never read in!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected ensureDocDefaults()V
    .locals 5

    .line 110
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->isSetDocDefaults()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->addNewDocDefaults()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->getDocDefaults()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;

    move-result-object v0

    .line 115
    .local v0, "docDefaults":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->isSetPPrDefault()Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->addNewPPrDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;

    .line 117
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->isSetRPrDefault()Z

    move-result v1

    if-nez v1, :cond_2

    .line 118
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->addNewRPrDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;

    .line 120
    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->getPPrDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;

    move-result-object v1

    .line 121
    .local v1, "pprd":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->getRPrDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;

    move-result-object v2

    .line 122
    .local v2, "rprd":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;->isSetPPr()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;->addNewPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    .line 123
    :cond_3
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;->isSetRPr()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    .line 125
    :cond_4
    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;)V

    iput-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultRunStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    .line 126
    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;)V

    iput-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultParaStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;

    .line 127
    return-void
.end method

.method protected getCTLanguage()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;
    .locals 2

    .line 246
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ensureDocDefaults()V

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "lang":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultRunStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetLang()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultRunStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getLang()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultRunStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewLang()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;

    move-result-object v0

    .line 255
    :goto_0
    return-object v0
.end method

.method public getDefaultParagraphStyle()Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;
    .locals 1

    .line 316
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ensureDocDefaults()V

    .line 317
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultParaStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;

    return-object v0
.end method

.method public getDefaultRunStyle()Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;
    .locals 1

    .line 308
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ensureDocDefaults()V

    .line 309
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultRunStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    return-object v0
.end method

.method public getLatentStyles()Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;
    .locals 1

    .line 324
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->latentStyles:Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;

    return-object v0
.end method

.method public getNumberOfStyles()I
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStyle(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFStyle;
    .locals 3
    .param p1, "styleID"    # Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    .line 190
    .local v1, "style":Lorg/apache/poi/xwpf/usermodel/XWPFStyle;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getStyleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 191
    return-object v1

    .line 194
    :cond_0
    goto :goto_1

    .line 192
    :catch_0
    move-exception v2

    .line 194
    .end local v1    # "style":Lorg/apache/poi/xwpf/usermodel/XWPFStyle;
    :goto_1
    goto :goto_0

    .line 196
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStyleWithSameName(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;)Lorg/apache/poi/xwpf/usermodel/XWPFStyle;
    .locals 3
    .param p1, "style"    # Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    .line 296
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    .line 297
    .local v1, "ownStyle":Lorg/apache/poi/xwpf/usermodel/XWPFStyle;
    invoke-virtual {v1, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->hasSameName(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    return-object v1

    .end local v1    # "ownStyle":Lorg/apache/poi/xwpf/usermodel/XWPFStyle;
    :cond_0
    goto :goto_0

    .line 301
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUsedStyleList(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;)Ljava/util/List;
    .locals 2
    .param p1, "style"    # Lorg/apache/poi/xwpf/usermodel/XWPFStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/XWPFStyle;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFStyle;",
            ">;"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v0, "usedStyleList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xwpf/usermodel/XWPFStyle;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getUsedStyleList(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected onDocumentRead()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 85
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .local v1, "stylesDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;
    :try_start_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;->getStyles()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->setStyles(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;)V

    .line 87
    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->getLatentStyles()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;Lorg/apache/poi/xwpf/usermodel/XWPFStyles;)V

    iput-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->latentStyles:Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;
    :try_end_1
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 92
    nop

    .line 93
    return-void

    .line 88
    :catch_0
    move-exception v2

    goto :goto_0

    .line 91
    .end local v1    # "stylesDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;
    :catchall_0
    move-exception v2

    .restart local v1    # "stylesDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;
    goto :goto_1

    .line 88
    .end local v1    # "stylesDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;
    :catch_1
    move-exception v2

    .line 89
    .restart local v1    # "stylesDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;
    .local v2, "e":Lorg/apache/xmlbeans/XmlException;
    :goto_0
    :try_start_2
    new-instance v3, Lorg/apache/poi/POIXMLException;

    const-string v4, "Unable to read styles"

    invoke-direct {v3, v4, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "stylesDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 91
    .end local v2    # "e":Lorg/apache/xmlbeans/XmlException;
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "stylesDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;
    :catchall_1
    move-exception v2

    :goto_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v2
.end method

.method public setDefaultFonts(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;)V
    .locals 1
    .param p1, "fonts"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    .line 285
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ensureDocDefaults()V

    .line 287
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultRunStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 288
    .local v0, "runProps":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->setRFonts(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;)V

    .line 289
    return-void
.end method

.method public setEastAsia(Ljava/lang/String;)V
    .locals 1
    .param p1, "strEastAsia"    # Ljava/lang/String;

    .line 275
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getCTLanguage()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;

    move-result-object v0

    .line 276
    .local v0, "lang":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;->setEastAsia(Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method public setSpellingLanguage(Ljava/lang/String;)V
    .locals 1
    .param p1, "strSpellingLanguage"    # Ljava/lang/String;

    .line 264
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getCTLanguage()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;

    move-result-object v0

    .line 265
    .local v0, "lang":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;->setVal(Ljava/lang/Object;)V

    .line 266
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;->setBidi(Ljava/lang/Object;)V

    .line 267
    return-void
.end method

.method public setStyles(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;)V
    .locals 6
    .param p1, "styles"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    .line 135
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    .line 138
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->getStyleArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 139
    .local v3, "style":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;
    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    new-instance v5, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    invoke-direct {v5, v3, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;Lorg/apache/poi/xwpf/usermodel/XWPFStyles;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v3    # "style":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->isSetDocDefaults()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->getDocDefaults()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;

    move-result-object v0

    .line 143
    .local v0, "docDefaults":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->isSetRPrDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->getRPrDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;->isSetRPr()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->getRPrDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;)V

    iput-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultRunStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    .line 147
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->isSetPPrDefault()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->getPPrDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;->isSetPPr()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->getPPrDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;)V

    iput-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultParaStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;

    .line 152
    .end local v0    # "docDefaults":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;
    :cond_2
    return-void
.end method

.method public styleExist(Ljava/lang/String;)Z
    .locals 3
    .param p1, "styleID"    # Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    .line 162
    .local v1, "style":Lorg/apache/poi/xwpf/usermodel/XWPFStyle;
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getStyleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    const/4 v2, 0x1

    return v2

    .end local v1    # "style":Lorg/apache/poi/xwpf/usermodel/XWPFStyle;
    :cond_0
    goto :goto_0

    .line 165
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
