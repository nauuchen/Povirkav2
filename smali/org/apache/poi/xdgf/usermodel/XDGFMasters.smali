.class public Lorg/apache/poi/xdgf/usermodel/XDGFMasters;
.super Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;
.source "XDGFMasters.java"


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

.field _mastersObject:Lcom/microsoft/schemas/office/visio/x2012/main/MastersType;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 1
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .param p2, "document"    # Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMasters;->_masters:Ljava/util/Map;

    .line 53
    return-void
.end method


# virtual methods
.method public getMasterById(J)Lorg/apache/poi/xdgf/usermodel/XDGFMaster;
    .locals 2
    .param p1, "masterId"    # J

    .line 107
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMasters;->_masters:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    return-object v0
.end method

.method public getMastersList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFMaster;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMasters;->_masters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/MastersType;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMasters;->_mastersObject:Lcom/microsoft/schemas/office/visio/x2012/main/MastersType;

    return-object v0
.end method

.method protected onDocumentRead()V
    .locals 11

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFMasters;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/MastersDocument$Factory;->parse(Ljava/io/InputStream;)Lcom/microsoft/schemas/office/visio/x2012/main/MastersDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/MastersDocument;->getMasters()Lcom/microsoft/schemas/office/visio/x2012/main/MastersType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMasters;->_mastersObject:Lcom/microsoft/schemas/office/visio/x2012/main/MastersType;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/POIXMLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    nop

    .line 71
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v0, "masterSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;>;"
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMasters;->_mastersObject:Lcom/microsoft/schemas/office/visio/x2012/main/MastersType;

    invoke-interface {v1}, Lcom/microsoft/schemas/office/visio/x2012/main/MastersType;->getMasterArray()[Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;

    move-result-object v1

    .local v1, "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 73
    .local v4, "master":Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;
    invoke-interface {v4}, Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;->getRel()Lcom/microsoft/schemas/office/visio/x2012/main/RelType;

    move-result-object v5

    invoke-interface {v5}, Lcom/microsoft/schemas/office/visio/x2012/main/RelType;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    nop

    .end local v4    # "master":Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFMasters;->getRelationParts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 78
    .local v2, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    .line 80
    .local v3, "part":Lorg/apache/poi/POIXMLDocumentPart;
    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "relId":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;

    .line 83
    .local v5, "settings":Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;
    if-eqz v5, :cond_2

    .line 87
    instance-of v6, v3, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    if-eqz v6, :cond_1

    .line 91
    move-object v6, v3

    check-cast v6, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    .line 92
    .local v6, "contents":Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;
    invoke-virtual {v6}, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;->onDocumentRead()V

    .line 94
    new-instance v7, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    iget-object v8, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMasters;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-direct {v7, v5, v6, v8}, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    .line 95
    .local v7, "master":Lorg/apache/poi/xdgf/usermodel/XDGFMaster;
    iget-object v8, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMasters;->_masters:Ljava/util/Map;

    invoke-virtual {v7}, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->getID()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    nop

    .end local v2    # "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    .end local v3    # "part":Lorg/apache/poi/POIXMLDocumentPart;
    .end local v4    # "relId":Ljava/lang/String;
    .end local v5    # "settings":Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;
    .end local v6    # "contents":Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;
    .end local v7    # "master":Lorg/apache/poi/xdgf/usermodel/XDGFMaster;
    goto :goto_1

    .line 88
    .restart local v2    # "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    .restart local v3    # "part":Lorg/apache/poi/POIXMLDocumentPart;
    .restart local v4    # "relId":Ljava/lang/String;
    .restart local v5    # "settings":Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;
    :cond_1
    new-instance v6, Lorg/apache/poi/POIXMLException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected masters relationship for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 84
    :cond_2
    new-instance v6, Lorg/apache/poi/POIXMLException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Master relationship for "

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

    .line 99
    .end local v0    # "masterSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    .end local v3    # "part":Lorg/apache/poi/POIXMLDocumentPart;
    .end local v4    # "relId":Ljava/lang/String;
    .end local v5    # "settings":Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;
    :cond_3
    nop

    .line 100
    return-void

    .line 97
    :catch_0
    move-exception v0

    goto :goto_2

    .line 67
    :catch_1
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 65
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 66
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catch Lorg/apache/poi/POIXMLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    .local v0, "e":Lorg/apache/poi/POIXMLException;
    :goto_2
    invoke-static {p0, v0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->wrap(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/POIXMLException;)Lorg/apache/poi/POIXMLException;

    move-result-object v1

    throw v1
.end method
