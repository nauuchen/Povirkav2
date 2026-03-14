.class public Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
.super Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;
.source "XWPFFooter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0
    .param p1, "parent"    # Lorg/apache/poi/POIXMLDocumentPart;
    .param p2, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;-><init>(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;)V
    .locals 4
    .param p1, "doc"    # Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .param p2, "hdrFtr"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;)V

    .line 50
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;->headerFooter:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    .line 51
    .local v0, "cursor":Lorg/apache/xmlbeans/XmlCursor;
    const-string v1, "./*"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    .line 52
    :goto_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 54
    .local v1, "o":Lorg/apache/xmlbeans/XmlObject;
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-eqz v2, :cond_0

    .line 55
    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-object v3, v1

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-direct {v2, v3, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 56
    .local v2, "p":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;->paragraphs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;->bodyElements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v2    # "p":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    :cond_0
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v2, :cond_1

    .line 60
    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-object v3, v1

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-direct {v2, v3, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 61
    .local v2, "t":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;->tables:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;->bodyElements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v1    # "o":Lorg/apache/xmlbeans/XmlObject;
    .end local v2    # "t":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    :cond_1
    goto :goto_0

    .line 66
    :cond_2
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 67
    return-void
.end method


# virtual methods
.method protected commit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    .line 82
    .local v0, "xmlOptions":Lorg/apache/xmlbeans/XmlOptions;
    new-instance v1, Ljavax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ftr"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    .line 83
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    .line 84
    .local v1, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 85
    .local v2, "out":Ljava/io/OutputStream;
    invoke-super {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->_getHdrFtr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 86
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 87
    return-void
.end method

.method public getPartType()Lorg/apache/poi/xwpf/usermodel/BodyType;
    .locals 1

    .line 135
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/BodyType;->FOOTER:Lorg/apache/poi/xwpf/usermodel/BodyType;

    return-object v0
.end method

.method protected onDocumentRead()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-super {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->onDocumentRead()V

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "ftrDocument":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FtrDocument;
    const/4 v1, 0x0

    .line 95
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 96
    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FtrDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FtrDocument;

    move-result-object v2

    move-object v0, v2

    .line 97
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FtrDocument;->getFtr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;->headerFooter:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    .line 100
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;->headerFooter:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v2

    .line 101
    .local v2, "cursor":Lorg/apache/xmlbeans/XmlCursor;
    const-string v3, "./*"

    invoke-interface {v2, v3}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    .line 102
    :goto_0
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 103
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    .line 104
    .local v3, "o":Lorg/apache/xmlbeans/XmlObject;
    instance-of v4, v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-eqz v4, :cond_0

    .line 105
    new-instance v4, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-object v5, v3

    check-cast v5, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-direct {v4, v5, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 106
    .local v4, "p":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;->paragraphs:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;->bodyElements:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v4    # "p":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    :cond_0
    instance-of v4, v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v4, :cond_1

    .line 110
    new-instance v4, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-object v5, v3

    check-cast v5, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-direct {v4, v5, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 111
    .local v4, "t":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;->tables:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;->bodyElements:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v4    # "t":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    :cond_1
    instance-of v4, v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    if-eqz v4, :cond_2

    .line 115
    new-instance v4, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    move-object v5, v3

    check-cast v5, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    invoke-direct {v4, v5, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 116
    .local v4, "c":Lorg/apache/poi/xwpf/usermodel/XWPFSDT;
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;->bodyElements:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v3    # "o":Lorg/apache/xmlbeans/XmlObject;
    .end local v4    # "c":Lorg/apache/poi/xwpf/usermodel/XWPFSDT;
    :cond_2
    goto :goto_0

    .line 119
    :cond_3
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v2    # "cursor":Lorg/apache/xmlbeans/XmlCursor;
    if-eqz v1, :cond_4

    .line 124
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 127
    :cond_4
    return-void

    .line 123
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 120
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Lorg/apache/poi/POIXMLException;

    invoke-direct {v3, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "ftrDocument":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FtrDocument;
    .end local v1    # "is":Ljava/io/InputStream;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "ftrDocument":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FtrDocument;
    .restart local v1    # "is":Ljava/io/InputStream;
    :goto_1
    if-eqz v1, :cond_5

    .line 124
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_5
    throw v2
.end method
