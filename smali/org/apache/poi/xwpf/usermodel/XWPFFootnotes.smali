.class public Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "XWPFFootnotes.java"


# instance fields
.field private ctFootnotes:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFootnotes;

.field protected document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

.field private listFootnote:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->listFootnote:Ljava/util/List;

    .line 63
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

    .line 56
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->listFootnote:Ljava/util/List;

    .line 57
    return-void
.end method


# virtual methods
.method public addFootnote(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;
    .locals 3
    .param p1, "note"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    .line 139
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->ctFootnotes:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFootnotes;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFootnotes;->addNewFootnote()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    move-result-object v0

    .line 140
    .local v0, "newNote":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 141
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;)V

    .line 142
    .local v1, "xNote":Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->listFootnote:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    return-object v1
.end method

.method public addFootnote(Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;)V
    .locals 2
    .param p1, "footnote"    # Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    .line 128
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->listFootnote:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->ctFootnotes:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFootnotes;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFootnotes;->addNewFootnote()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->getCTFtnEdn()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 130
    return-void
.end method

.method protected commit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    .line 93
    .local v0, "xmlOptions":Lorg/apache/xmlbeans/XmlOptions;
    new-instance v1, Ljavax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFootnotes;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "footnotes"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    .line 94
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    .line 95
    .local v1, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 96
    .local v2, "out":Ljava/io/OutputStream;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->ctFootnotes:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFootnotes;

    invoke-interface {v3, v2, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFootnotes;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 97
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 98
    return-void
.end method

.method public getFootnoteById(I)Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;
    .locals 3
    .param p1, "id"    # I

    .line 105
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->listFootnote:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    .line 106
    .local v1, "note":Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->getCTFtnEdn()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->getId()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 107
    return-object v1

    .end local v1    # "note":Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;
    :cond_0
    goto :goto_0

    .line 109
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFootnotesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->listFootnote:Ljava/util/List;

    return-object v0
.end method

.method public getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    if-eqz v0, :cond_0

    .line 151
    return-object v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    return-object v0
.end method

.method protected onDocumentRead()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 74
    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FootnotesDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FootnotesDocument;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .local v1, "notesDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FootnotesDocument;
    :try_start_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FootnotesDocument;->getFootnotes()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFootnotes;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->ctFootnotes:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFootnotes;
    :try_end_1
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 85
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->ctFootnotes:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFootnotes;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFootnotes;->getFootnoteArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    move-result-object v2

    .local v2, "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 86
    .local v5, "note":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;
    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->listFootnote:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    invoke-direct {v7, v5, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v5    # "note":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 88
    .end local v2    # "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_1
    return-void

    .line 76
    :catch_0
    move-exception v2

    goto :goto_1

    .line 79
    .end local v1    # "notesDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FootnotesDocument;
    :catchall_0
    move-exception v2

    .restart local v1    # "notesDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FootnotesDocument;
    goto :goto_2

    .line 76
    .end local v1    # "notesDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FootnotesDocument;
    :catch_1
    move-exception v2

    .line 77
    .restart local v1    # "notesDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FootnotesDocument;
    .local v2, "e":Lorg/apache/xmlbeans/XmlException;
    :goto_1
    :try_start_2
    new-instance v3, Lorg/apache/poi/POIXMLException;

    invoke-direct {v3}, Lorg/apache/poi/POIXMLException;-><init>()V

    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "notesDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FootnotesDocument;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 79
    .end local v2    # "e":Lorg/apache/xmlbeans/XmlException;
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "notesDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FootnotesDocument;
    :catchall_1
    move-exception v2

    :goto_2
    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v2
.end method

.method public setFootnotes(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFootnotes;)V
    .locals 0
    .param p1, "footnotes"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFootnotes;

    .line 118
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->ctFootnotes:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFootnotes;

    .line 119
    return-void
.end method

.method public setXWPFDocument(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V
    .locals 0
    .param p1, "doc"    # Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    .line 158
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    .line 159
    return-void
.end method
