.class public Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;
.super Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;
.source "XDGFPageContents.java"


# instance fields
.field protected _masters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFMaster;",
            ">;"
        }
    .end annotation
.end field

.field protected _page:Lorg/apache/poi/xdgf/usermodel/XDGFPage;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 1
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .param p2, "document"    # Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;->_masters:Ljava/util/Map;

    .line 42
    return-void
.end method


# virtual methods
.method public getMasterById(J)Lorg/apache/poi/xdgf/usermodel/XDGFMaster;
    .locals 2
    .param p1, "id"    # J

    .line 88
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;->_masters:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    return-object v0
.end method

.method public getPage()Lorg/apache/poi/xdgf/usermodel/XDGFPage;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;->_page:Lorg/apache/poi/xdgf/usermodel/XDGFPage;

    return-object v0
.end method

.method protected onDocumentRead()V
    .locals 6

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsDocument$Factory;->parse(Ljava/io/InputStream;)Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsDocument;->getPageContents()Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;->_pageContents:Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/POIXMLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    nop

    .line 55
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;->getRelations()Ljava/util/List;

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

    .line 56
    .local v1, "part":Lorg/apache/poi/POIXMLDocumentPart;
    instance-of v2, v1, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    if-nez v2, :cond_0

    .line 57
    goto :goto_0

    .line 60
    :cond_0
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    invoke-virtual {v2}, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;->getMaster()Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    move-result-object v2

    .line 61
    .local v2, "master":Lorg/apache/poi/xdgf/usermodel/XDGFMaster;
    iget-object v3, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;->_masters:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->getID()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    nop

    .end local v1    # "part":Lorg/apache/poi/POIXMLDocumentPart;
    .end local v2    # "master":Lorg/apache/poi/xdgf/usermodel/XDGFMaster;
    goto :goto_0

    .line 64
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-super {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->onDocumentRead()V

    .line 66
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;->_shapes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 67
    .local v1, "shape":Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->isTopmost()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->setupMaster(Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;)V

    .end local v1    # "shape":Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    :cond_2
    goto :goto_1

    .line 73
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    nop

    .line 74
    return-void

    .line 71
    :catch_0
    move-exception v0

    goto :goto_2

    .line 51
    :catch_1
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 49
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 50
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catch Lorg/apache/poi/POIXMLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    .local v0, "e":Lorg/apache/poi/POIXMLException;
    :goto_2
    invoke-static {p0, v0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->wrap(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/POIXMLException;)Lorg/apache/poi/POIXMLException;

    move-result-object v1

    throw v1
.end method

.method protected setPage(Lorg/apache/poi/xdgf/usermodel/XDGFPage;)V
    .locals 0
    .param p1, "page"    # Lorg/apache/poi/xdgf/usermodel/XDGFPage;

    .line 84
    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;->_page:Lorg/apache/poi/xdgf/usermodel/XDGFPage;

    .line 85
    return-void
.end method
