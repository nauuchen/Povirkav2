.class public Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;
.super Lorg/apache/poi/POIXMLDocument;
.source "XmlVisioDocument.java"


# instance fields
.field protected _document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

.field protected _masters:Lorg/apache/poi/xdgf/usermodel/XDGFMasters;

.field protected _pages:Lorg/apache/poi/xdgf/usermodel/XDGFPages;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-static {p1}, Lorg/apache/poi/util/PackageHelper;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 3
    .param p1, "pkg"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const-string v0, "http://schemas.microsoft.com/visio/2010/relationships/document"

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentDocument1$Factory;->parse(Ljava/io/InputStream;)Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentDocument1;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentDocument1;->getVisioDocument()Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .local v0, "document":Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;
    nop

    .line 76
    new-instance v1, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-direct {v1, v0}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;)V

    iput-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    .line 79
    new-instance v1, Lorg/apache/poi/xdgf/usermodel/XDGFFactory;

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-direct {v1, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFFactory;-><init>(Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->load(Lorg/apache/poi/POIXMLFactory;)V

    .line 80
    return-void

    .line 72
    .end local v0    # "document":Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;
    :catch_0
    move-exception v1

    .line 73
    .restart local v0    # "document":Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/poi/POIXMLException;

    invoke-direct {v2, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 70
    .end local v0    # "document":Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 71
    .restart local v0    # "document":Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;
    .local v1, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v2, Lorg/apache/poi/POIXMLException;

    invoke-direct {v2, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public getAllEmbedds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getPages()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFPage;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->_pages:Lorg/apache/poi/xdgf/usermodel/XDGFPages;

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFPages;->getPageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 1
    .param p1, "id"    # J

    .line 131
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v0

    return-object v0
.end method

.method protected onDocumentRead()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->getRelations()Ljava/util/List;

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

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart;

    .line 98
    .local v1, "part":Lorg/apache/poi/POIXMLDocumentPart;
    instance-of v2, v1, Lorg/apache/poi/xdgf/usermodel/XDGFPages;

    if-eqz v2, :cond_0

    .line 99
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xdgf/usermodel/XDGFPages;

    iput-object v2, p0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->_pages:Lorg/apache/poi/xdgf/usermodel/XDGFPages;

    goto :goto_1

    .line 101
    :cond_0
    instance-of v2, v1, Lorg/apache/poi/xdgf/usermodel/XDGFMasters;

    if-eqz v2, :cond_1

    .line 102
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xdgf/usermodel/XDGFMasters;

    iput-object v2, p0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->_masters:Lorg/apache/poi/xdgf/usermodel/XDGFMasters;

    .end local v1    # "part":Lorg/apache/poi/POIXMLDocumentPart;
    :cond_1
    :goto_1
    goto :goto_0

    .line 105
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->_masters:Lorg/apache/poi/xdgf/usermodel/XDGFMasters;

    if-eqz v0, :cond_3

    .line 106
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFMasters;->onDocumentRead()V

    .line 108
    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->_pages:Lorg/apache/poi/xdgf/usermodel/XDGFPages;

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFPages;->onDocumentRead()V

    .line 109
    return-void
.end method
