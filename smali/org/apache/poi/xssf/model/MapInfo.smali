.class public Lorg/apache/poi/xssf/model/MapInfo;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "MapInfo.java"


# instance fields
.field private mapInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

.field private maps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xssf/usermodel/XSSFMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 59
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/model/MapInfo;->mapInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 68
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/MapInfo;->readFrom(Ljava/io/InputStream;)V

    .line 69
    return-void
.end method


# virtual methods
.method protected commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/MapInfo;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 156
    .local v0, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 157
    .local v1, "out":Ljava/io/OutputStream;
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/model/MapInfo;->writeTo(Ljava/io/OutputStream;)V

    .line 158
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 159
    return-void
.end method

.method public getAllXSSFMaps()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/xssf/usermodel/XSSFMap;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/apache/poi/xssf/model/MapInfo;->maps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getCTMapInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/poi/xssf/model/MapInfo;->mapInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

    return-object v0
.end method

.method public getCTSchemaById(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;
    .locals 6
    .param p1, "schemaId"    # Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, "xmlSchema":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;
    iget-object v1, p0, Lorg/apache/poi/xssf/model/MapInfo;->mapInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;->getSchemaArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;

    move-result-object v1

    .local v1, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 113
    .local v4, "schema":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    move-object v0, v4

    .line 115
    goto :goto_1

    .line 112
    .end local v4    # "schema":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method public getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/MapInfo;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    return-object v0
.end method

.method public getXSSFMapById(I)Lorg/apache/poi/xssf/usermodel/XSSFMap;
    .locals 2
    .param p1, "id"    # I

    .line 123
    iget-object v0, p0, Lorg/apache/poi/xssf/model/MapInfo;->maps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFMap;

    return-object v0
.end method

.method public getXSSFMapByName(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFMap;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, "matchedMap":Lorg/apache/poi/xssf/usermodel/XSSFMap;
    iget-object v1, p0, Lorg/apache/poi/xssf/model/MapInfo;->maps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFMap;

    .line 131
    .local v2, "map":Lorg/apache/poi/xssf/usermodel/XSSFMap;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFMap;->getCtMap()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFMap;->getCtMap()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    move-object v0, v2

    .end local v2    # "map":Lorg/apache/poi/xssf/usermodel/XSSFMap;
    :cond_0
    goto :goto_0

    .line 136
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/MapInfoDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/MapInfoDocument;

    move-result-object v0

    .line 74
    .local v0, "doc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/MapInfoDocument;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/MapInfoDocument;->getMapInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xssf/model/MapInfo;->mapInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/xssf/model/MapInfo;->maps:Ljava/util/Map;

    .line 77
    iget-object v1, p0, Lorg/apache/poi/xssf/model/MapInfo;->mapInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;->getMapArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;

    move-result-object v1

    .local v1, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 78
    .local v4, "map":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;
    iget-object v5, p0, Lorg/apache/poi/xssf/model/MapInfo;->maps:Ljava/util/Map;

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;->getID()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lorg/apache/poi/xssf/usermodel/XSSFMap;

    invoke-direct {v7, v4, p0}, Lorg/apache/poi/xssf/usermodel/XSSFMap;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;Lorg/apache/poi/xssf/model/MapInfo;)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    nop

    .end local v4    # "map":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "doc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/MapInfoDocument;
    .end local v1    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    nop

    .line 84
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/MapInfoDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/MapInfoDocument;

    move-result-object v0

    .line 149
    .local v0, "doc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/MapInfoDocument;
    iget-object v1, p0, Lorg/apache/poi/xssf/model/MapInfo;->mapInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/MapInfoDocument;->setMapInfo(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;)V

    .line 150
    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v0, p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/MapInfoDocument;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 151
    return-void
.end method
