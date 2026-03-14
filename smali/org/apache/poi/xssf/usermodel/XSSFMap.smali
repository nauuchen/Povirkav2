.class public Lorg/apache/poi/xssf/usermodel/XSSFMap;
.super Ljava/lang/Object;
.source "XSSFMap.java"


# instance fields
.field private ctMap:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;

.field private mapInfo:Lorg/apache/poi/xssf/model/MapInfo;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;Lorg/apache/poi/xssf/model/MapInfo;)V
    .locals 0
    .param p1, "ctMap"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;
    .param p2, "mapInfo"    # Lorg/apache/poi/xssf/model/MapInfo;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFMap;->ctMap:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;

    .line 51
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFMap;->mapInfo:Lorg/apache/poi/xssf/model/MapInfo;

    .line 52
    return-void
.end method


# virtual methods
.method public getCTSchema()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFMap;->ctMap:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;->getSchemaID()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "schemaId":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFMap;->mapInfo:Lorg/apache/poi/xssf/model/MapInfo;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/model/MapInfo;->getCTSchemaById(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;

    move-result-object v1

    return-object v1
.end method

.method public getCtMap()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFMap;->ctMap:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;

    return-object v0
.end method

.method public getRelatedSingleXMLCell()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "relatedSimpleXmlCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFMap;->mapInfo:Lorg/apache/poi/xssf/model/MapInfo;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/model/MapInfo;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNumberOfSheets()I

    move-result v1

    .line 82
    .local v1, "sheetNumber":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 83
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFMap;->mapInfo:Lorg/apache/poi/xssf/model/MapInfo;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/model/MapInfo;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v3

    .line 84
    .local v3, "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRelations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/POIXMLDocumentPart;

    .line 85
    .local v5, "p":Lorg/apache/poi/POIXMLDocumentPart;
    instance-of v6, v5, Lorg/apache/poi/xssf/model/SingleXmlCells;

    if-eqz v6, :cond_1

    .line 86
    move-object v6, v5

    check-cast v6, Lorg/apache/poi/xssf/model/SingleXmlCells;

    .line 87
    .local v6, "singleXMLCells":Lorg/apache/poi/xssf/model/SingleXmlCells;
    invoke-virtual {v6}, Lorg/apache/poi/xssf/model/SingleXmlCells;->getAllSimpleXmlCell()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;

    .line 88
    .local v8, "cell":Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;
    invoke-virtual {v8}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;->getMapId()J

    move-result-wide v9

    iget-object v11, p0, Lorg/apache/poi/xssf/usermodel/XSSFMap;->ctMap:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;

    invoke-interface {v11}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;->getID()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-nez v13, :cond_0

    .line 89
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v8    # "cell":Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;
    :cond_0
    goto :goto_2

    .line 92
    .end local v5    # "p":Lorg/apache/poi/POIXMLDocumentPart;
    .end local v6    # "singleXMLCells":Lorg/apache/poi/xssf/model/SingleXmlCells;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_1
    goto :goto_1

    .line 82
    .end local v3    # "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v2    # "i":I
    :cond_3
    return-object v0
.end method

.method public getRelatedTables()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFTable;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFMap;->mapInfo:Lorg/apache/poi/xssf/model/MapInfo;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/model/MapInfo;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/Sheet;

    .line 104
    .local v2, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRelationParts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 105
    .local v4, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v4}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->TABLE:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getRelation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    invoke-virtual {v4}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    .line 107
    .local v5, "table":Lorg/apache/poi/xssf/usermodel/XSSFTable;
    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFMap;->ctMap:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;->getID()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->mapsTo(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 108
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v4    # "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    .end local v5    # "table":Lorg/apache/poi/xssf/usermodel/XSSFTable;
    :cond_0
    goto :goto_1

    .end local v2    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    goto :goto_0

    .line 114
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v0
.end method

.method public getSchema()Lorg/w3c/dom/Node;
    .locals 3

    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "xmlSchema":Lorg/w3c/dom/Node;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFMap;->getCTSchema()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;

    move-result-object v1

    .line 70
    .local v1, "schema":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 72
    return-object v0
.end method
