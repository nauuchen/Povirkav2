.class public Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "XSSFPivotCacheDefinition.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 55
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    .line 56
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->createDefaultValues()V

    .line 57
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 70
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->readFrom(Ljava/io/InputStream;)V

    .line 71
    return-void
.end method

.method private createDefaultValues()V
    .locals 3

    .line 93
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->setCreatedVersion(S)V

    .line 94
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->setMinRefreshableVersion(S)V

    .line 95
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->setRefreshedVersion(S)V

    .line 96
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    const-string v1, "Apache POI"

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->setRefreshedBy(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->setRefreshedDate(D)V

    .line 98
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->setRefreshOnLoad(Z)V

    .line 99
    return-void
.end method


# virtual methods
.method protected commit()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 105
    .local v0, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 106
    .local v1, "out":Ljava/io/OutputStream;
    new-instance v2, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v3, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v2, v3}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    .line 108
    .local v2, "xmlOptions":Lorg/apache/xmlbeans/XmlOptions;
    new-instance v3, Ljavax/xml/namespace/QName;

    sget-object v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pivotCacheDefinition"

    invoke-direct {v3, v4, v5}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    .line 110
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    invoke-interface {v3, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 111
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 112
    return-void
.end method

.method protected createCacheFields(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 11
    .param p1, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;

    .line 164
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->getPivotArea(Lorg/apache/poi/ss/usermodel/Workbook;)Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    .line 165
    .local v0, "ar":Lorg/apache/poi/ss/util/AreaReference;
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    .line 166
    .local v1, "firstCell":Lorg/apache/poi/ss/util/CellReference;
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v2

    .line 167
    .local v2, "lastCell":Lorg/apache/poi/ss/util/CellReference;
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v3

    .line 168
    .local v3, "columnStart":I
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v4

    .line 169
    .local v4, "columnEnd":I
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v5

    invoke-interface {p1, v5}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v5

    .line 171
    .local v5, "row":Lorg/apache/poi/ss/usermodel/Row;
    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->getCacheFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 172
    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->getCacheFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;

    move-result-object v6

    .local v6, "cFields":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;
    goto :goto_0

    .line 174
    .end local v6    # "cFields":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;
    :cond_0
    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->addNewCacheFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;

    move-result-object v6

    .line 177
    .restart local v6    # "cFields":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;
    :goto_0
    move v7, v3

    .local v7, "i":I
    :goto_1
    if-gt v7, v4, :cond_2

    .line 178
    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;->addNewCacheField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheField;

    move-result-object v8

    .line 179
    .local v8, "cf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheField;
    if-ne v7, v4, :cond_1

    .line 180
    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;->sizeOfCacheFieldArray()I

    move-result v9

    int-to-long v9, v9

    invoke-interface {v6, v9, v10}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;->setCount(J)V

    .line 183
    :cond_1
    const-wide/16 v9, 0x0

    invoke-interface {v8, v9, v10}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheField;->setNumFmtId(J)V

    .line 184
    invoke-interface {v5, v7}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v9

    .line 185
    .local v9, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    sget-object v10, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-interface {v9, v10}, Lorg/apache/poi/ss/usermodel/Cell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 186
    invoke-interface {v5, v7}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheField;->setName(Ljava/lang/String;)V

    .line 187
    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheField;->addNewSharedItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSharedItems;

    .line 177
    .end local v8    # "cf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheField;
    .end local v9    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 189
    .end local v7    # "i":I
    :cond_2
    return-void
.end method

.method public getCTPivotCacheDefinition()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    return-object v0
.end method

.method public getPivotArea(Lorg/apache/poi/ss/usermodel/Workbook;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 11
    .param p1, "wb"    # Lorg/apache/poi/ss/usermodel/Workbook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->getCacheSource()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;->getWorksheetSource()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;

    move-result-object v0

    .line 123
    .local v0, "wsSource":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;->getRef()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "ref":Ljava/lang/String;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;->getName()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Pivot cache must reference an area, named range, or table."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 132
    new-instance v3, Lorg/apache/poi/ss/util/AreaReference;

    sget-object v4, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v3, v1, v4}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v3

    .line 135
    :cond_2
    if-eqz v2, :cond_6

    .line 138
    invoke-interface {p1, v2}, Lorg/apache/poi/ss/usermodel/Workbook;->getName(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Name;

    move-result-object v3

    .line 139
    .local v3, "range":Lorg/apache/poi/ss/usermodel/Name;
    if-eqz v3, :cond_3

    .line 140
    new-instance v4, Lorg/apache/poi/ss/util/AreaReference;

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Name;->getRefersToFormula()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v4

    .line 145
    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;->getSheet()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 146
    .local v4, "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getTables()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    .line 148
    .local v6, "table":Lorg/apache/poi/xssf/usermodel/XSSFTable;
    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 149
    new-instance v7, Lorg/apache/poi/ss/util/AreaReference;

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v8

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v9

    sget-object v10, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v7

    .end local v6    # "table":Lorg/apache/poi/xssf/usermodel/XSSFTable;
    :cond_4
    goto :goto_1

    .line 154
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Name \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' was not found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 135
    .end local v3    # "range":Lorg/apache/poi/ss/usermodel/Name;
    .end local v4    # "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    :cond_6
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    .line 78
    .local v0, "options":Lorg/apache/xmlbeans/XmlOptions;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setLoadReplaceDocumentElement(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    .line 79
    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "options":Lorg/apache/xmlbeans/XmlOptions;
    nop

    .line 83
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
