.class public Lorg/apache/poi/xdgf/usermodel/XDGFPages;
.super Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;
.source "XDGFPages.java"


# instance fields
.field _pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFPage;",
            ">;"
        }
    .end annotation
.end field

.field _pagesObject:Lcom/microsoft/schemas/office/visio/x2012/main/PagesType;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 1
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .param p2, "document"    # Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    .line 51
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPages;->_pages:Ljava/util/List;

    .line 52
    return-void
.end method


# virtual methods
.method public getPageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFPage;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPages;->_pages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/PagesType;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPages;->_pagesObject:Lcom/microsoft/schemas/office/visio/x2012/main/PagesType;

    return-object v0
.end method

.method protected onDocumentRead()V
    .locals 9

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPages;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/PagesDocument$Factory;->parse(Ljava/io/InputStream;)Lcom/microsoft/schemas/office/visio/x2012/main/PagesDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/PagesDocument;->getPages()Lcom/microsoft/schemas/office/visio/x2012/main/PagesType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPages;->_pagesObject:Lcom/microsoft/schemas/office/visio/x2012/main/PagesType;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/POIXMLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    nop

    .line 71
    :try_start_1
    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/PagesType;->getPageArray()[Lcom/microsoft/schemas/office/visio/x2012/main/PageType;

    move-result-object v0

    .local v0, "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/PageType;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 73
    .local v3, "pageSettings":Lcom/microsoft/schemas/office/visio/x2012/main/PageType;
    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/PageType;->getRel()Lcom/microsoft/schemas/office/visio/x2012/main/RelType;

    move-result-object v4

    invoke-interface {v4}, Lcom/microsoft/schemas/office/visio/x2012/main/RelType;->getId()Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "relId":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/apache/poi/xdgf/usermodel/XDGFPages;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v5

    .line 76
    .local v5, "pageContentsPart":Lorg/apache/poi/POIXMLDocumentPart;
    if-eqz v5, :cond_1

    .line 79
    instance-of v6, v5, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;

    if-eqz v6, :cond_0

    .line 82
    move-object v6, v5

    check-cast v6, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;

    .line 83
    .local v6, "contents":Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;
    new-instance v7, Lorg/apache/poi/xdgf/usermodel/XDGFPage;

    iget-object v8, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPages;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-direct {v7, v3, v6, v8, p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/PageType;Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;Lorg/apache/poi/xdgf/usermodel/XDGFPages;)V

    .line 85
    .local v7, "page":Lorg/apache/poi/xdgf/usermodel/XDGFPage;
    invoke-virtual {v6}, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;->onDocumentRead()V

    .line 87
    iget-object v8, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPages;->_pages:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    nop

    .end local v3    # "pageSettings":Lcom/microsoft/schemas/office/visio/x2012/main/PageType;
    .end local v4    # "relId":Ljava/lang/String;
    .end local v5    # "pageContentsPart":Lorg/apache/poi/POIXMLDocumentPart;
    .end local v6    # "contents":Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;
    .end local v7    # "page":Lorg/apache/poi/xdgf/usermodel/XDGFPage;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .restart local v3    # "pageSettings":Lcom/microsoft/schemas/office/visio/x2012/main/PageType;
    .restart local v4    # "relId":Ljava/lang/String;
    .restart local v5    # "pageContentsPart":Lorg/apache/poi/POIXMLDocumentPart;
    :cond_0
    new-instance v6, Lorg/apache/poi/POIXMLException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected pages relationship for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 77
    :cond_1
    new-instance v6, Lorg/apache/poi/POIXMLException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PageSettings relationship for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 92
    .end local v0    # "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/PageType;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    .end local v3    # "pageSettings":Lcom/microsoft/schemas/office/visio/x2012/main/PageType;
    .end local v4    # "relId":Ljava/lang/String;
    .end local v5    # "pageContentsPart":Lorg/apache/poi/POIXMLDocumentPart;
    :cond_2
    nop

    .line 93
    return-void

    .line 90
    :catch_0
    move-exception v0

    goto :goto_1

    .line 66
    :catch_1
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 64
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 65
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catch Lorg/apache/poi/POIXMLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    .local v0, "e":Lorg/apache/poi/POIXMLException;
    :goto_1
    invoke-static {p0, v0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->wrap(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/POIXMLException;)Lorg/apache/poi/POIXMLException;

    move-result-object v1

    throw v1
.end method
