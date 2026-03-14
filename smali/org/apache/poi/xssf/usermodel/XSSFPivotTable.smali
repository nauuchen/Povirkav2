.class public Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "XSSFPivotTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;
    }
.end annotation


# static fields
.field protected static final CREATED_VERSION:S = 0x3s

.field protected static final MIN_REFRESHABLE_VERSION:S = 0x3s

.field protected static final UPDATED_VERSION:S = 0x3s


# instance fields
.field private dataSheet:Lorg/apache/poi/ss/usermodel/Sheet;

.field private parentSheet:Lorg/apache/poi/ss/usermodel/Sheet;

.field private pivotCache:Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;

.field private pivotCacheDefinition:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

.field private pivotCacheRecords:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;

.field private pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 80
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    .line 81
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCache:Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;

    .line 82
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCacheDefinition:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    .line 83
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCacheRecords:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;

    .line 84
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

    .line 96
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 97
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->readFrom(Ljava/io/InputStream;)V

    .line 98
    return-void
.end method

.method private addDataField(Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;ILjava/lang/String;)V
    .locals 6
    .param p1, "function"    # Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;
    .param p2, "columnIndex"    # I
    .param p3, "valueFieldName"    # Ljava/lang/String;

    .line 348
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->checkColumnIndex(I)V

    .line 350
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotArea()Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    .line 353
    .local v0, "pivotArea":Lorg/apache/poi/ss/util/AreaReference;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getDataFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getDataFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;

    move-result-object v1

    .local v1, "dataFields":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;
    goto :goto_0

    .line 356
    .end local v1    # "dataFields":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->addNewDataFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;

    move-result-object v1

    .line 358
    .restart local v1    # "dataFields":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;
    :goto_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;->addNewDataField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;

    move-result-object v2

    .line 359
    .local v2, "dataField":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->getValue()I

    move-result v3

    invoke-static {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;->setSubtotal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;)V

    .line 360
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getDataSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v4

    add-int/2addr v4, p2

    invoke-interface {v3, v4}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v3

    .line 362
    .local v3, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    sget-object v4, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-interface {v3, v4}, Lorg/apache/poi/ss/usermodel/Cell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 363
    invoke-interface {v2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;->setName(Ljava/lang/String;)V

    .line 364
    int-to-long v4, p2

    invoke-interface {v2, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;->setFld(J)V

    .line 365
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;->sizeOfDataFieldArray()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v1, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;->setCount(J)V

    .line 366
    return-void
.end method

.method private checkColumnIndex(I)V
    .locals 5
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotArea()Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    .line 241
    .local v0, "pivotArea":Lorg/apache/poi/ss/util/AreaReference;
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 243
    .local v1, "size":I
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    .line 246
    return-void

    .line 244
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Column Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setDataSheet(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 0
    .param p1, "dataSheet"    # Lorg/apache/poi/ss/usermodel/Sheet;

    .line 171
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->dataSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    .line 172
    return-void
.end method


# virtual methods
.method public addColumnLabel(Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;I)V
    .locals 1
    .param p1, "function"    # Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;
    .param p2, "columnIndex"    # I

    .line 335
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->addColumnLabel(Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;ILjava/lang/String;)V

    .line 336
    return-void
.end method

.method public addColumnLabel(Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;ILjava/lang/String;)V
    .locals 5
    .param p1, "function"    # Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;
    .param p2, "columnIndex"    # I
    .param p3, "valueFieldName"    # Ljava/lang/String;

    .line 307
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->checkColumnIndex(I)V

    .line 309
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->addDataColumn(IZ)V

    .line 310
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->addDataField(Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;ILjava/lang/String;)V

    .line 313
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getDataFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 315
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getColFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getColFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;

    move-result-object v0

    .local v0, "colFields":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;
    goto :goto_0

    .line 318
    .end local v0    # "colFields":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->addNewColFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;

    move-result-object v0

    .line 320
    .restart local v0    # "colFields":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;->addNewField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;

    move-result-object v1

    const/4 v2, -0x2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;->setX(I)V

    .line 321
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;->sizeOfFieldArray()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;->setCount(J)V

    .line 323
    .end local v0    # "colFields":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;
    :cond_1
    return-void
.end method

.method public addDataColumn(IZ)V
    .locals 3
    .param p1, "columnIndex"    # I
    .param p2, "isDataField"    # Z

    .line 375
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->checkColumnIndex(I)V

    .line 377
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getPivotFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;

    move-result-object v0

    .line 378
    .local v0, "pivotFields":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;

    move-result-object v1

    .line 380
    .local v1, "pivotField":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;
    invoke-interface {v1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setDataField(Z)V

    .line 381
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setShowAll(Z)V

    .line 382
    invoke-interface {v0, p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;->setPivotFieldArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;)V

    .line 383
    return-void
.end method

.method public addReportFilter(I)V
    .locals 10
    .param p1, "columnIndex"    # I

    .line 391
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->checkColumnIndex(I)V

    .line 393
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotArea()Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    .line 394
    .local v0, "pivotArea":Lorg/apache/poi/ss/util/AreaReference;
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    sub-int/2addr v1, v2

    .line 396
    .local v1, "lastRowIndex":I
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getPivotFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;

    move-result-object v2

    .line 398
    .local v2, "pivotFields":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;

    move-result-object v3

    .line 399
    .local v3, "pivotField":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->addNewItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;

    move-result-object v4

    .line 401
    .local v4, "items":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;
    sget-object v5, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis;->AXIS_PAGE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis$Enum;

    invoke-interface {v3, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setAxis(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis$Enum;)V

    .line 402
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setShowAll(Z)V

    .line 403
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-gt v5, v1, :cond_0

    .line 404
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;->addNewItem()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItem;

    move-result-object v6

    sget-object v7, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->DEFAULT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    invoke-interface {v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItem;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;)V

    .line 403
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 406
    .end local v5    # "i":I
    :cond_0
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;->sizeOfItemArray()I

    move-result v5

    int-to-long v5, v5

    invoke-interface {v4, v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;->setCount(J)V

    .line 407
    invoke-interface {v2, p1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;->setPivotFieldArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;)V

    .line 410
    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getPageFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 411
    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getPageFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;

    move-result-object v5

    .line 413
    .local v5, "pageFields":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;
    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setMultipleFieldFilters(Z)V

    goto :goto_1

    .line 415
    .end local v5    # "pageFields":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;
    :cond_1
    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->addNewPageFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;

    move-result-object v5

    .line 417
    .restart local v5    # "pageFields":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;
    :goto_1
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;->addNewPageField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;

    move-result-object v6

    .line 418
    .local v6, "pageField":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;
    const/4 v7, -0x1

    invoke-interface {v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;->setHier(I)V

    .line 419
    invoke-interface {v6, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;->setFld(I)V

    .line 421
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;->sizeOfPageFieldArray()I

    move-result v7

    int-to-long v7, v7

    invoke-interface {v5, v7, v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;->setCount(J)V

    .line 422
    iget-object v7, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getLocation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;

    move-result-object v7

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;->getCount()J

    move-result-wide v8

    invoke-interface {v7, v8, v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;->setColPageCount(J)V

    .line 423
    return-void
.end method

.method public addRowLabel(I)V
    .locals 8
    .param p1, "columnIndex"    # I

    .line 255
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->checkColumnIndex(I)V

    .line 257
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotArea()Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    .line 258
    .local v0, "pivotArea":Lorg/apache/poi/ss/util/AreaReference;
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    sub-int/2addr v1, v2

    .line 259
    .local v1, "lastRowIndex":I
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getPivotFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;

    move-result-object v2

    .line 261
    .local v2, "pivotFields":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;

    move-result-object v3

    .line 262
    .local v3, "pivotField":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->addNewItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;

    move-result-object v4

    .line 264
    .local v4, "items":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;
    sget-object v5, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis;->AXIS_ROW:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis$Enum;

    invoke-interface {v3, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setAxis(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis$Enum;)V

    .line 265
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setShowAll(Z)V

    .line 266
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-gt v5, v1, :cond_0

    .line 267
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;->addNewItem()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItem;

    move-result-object v6

    sget-object v7, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->DEFAULT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    invoke-interface {v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItem;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;)V

    .line 266
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 269
    .end local v5    # "i":I
    :cond_0
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;->sizeOfItemArray()I

    move-result v5

    int-to-long v5, v5

    invoke-interface {v4, v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;->setCount(J)V

    .line 270
    invoke-interface {v2, p1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;->setPivotFieldArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;)V

    .line 273
    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getRowFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 274
    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getRowFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;

    move-result-object v5

    .local v5, "rowFields":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;
    goto :goto_1

    .line 276
    .end local v5    # "rowFields":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;
    :cond_1
    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->addNewRowFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;

    move-result-object v5

    .line 279
    .restart local v5    # "rowFields":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;
    :goto_1
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;->addNewField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;

    move-result-object v6

    invoke-interface {v6, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;->setX(I)V

    .line 280
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;->sizeOfFieldArray()I

    move-result v6

    int-to-long v6, v6

    invoke-interface {v5, v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;->setCount(J)V

    .line 281
    return-void
.end method

.method protected commit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    .line 179
    .local v0, "xmlOptions":Lorg/apache/xmlbeans/XmlOptions;
    new-instance v1, Ljavax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pivotTableDefinition"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    .line 181
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    .line 182
    .local v1, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 183
    .local v2, "out":Ljava/io/OutputStream;
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v3, v2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 184
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 185
    return-void
.end method

.method protected createDefaultDataColumns()V
    .locals 7

    .line 465
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getPivotFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getPivotFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;

    move-result-object v0

    .local v0, "pivotFields":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;
    goto :goto_0

    .line 468
    .end local v0    # "pivotFields":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->addNewPivotFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;

    move-result-object v0

    .line 470
    .restart local v0    # "pivotFields":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotArea()Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v1

    .line 471
    .local v1, "sourceArea":Lorg/apache/poi/ss/util/AreaReference;
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v2

    .line 472
    .local v2, "firstColumn":I
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v3

    .line 474
    .local v3, "lastColumn":I
    move v4, v2

    .local v4, "i":I
    :goto_1
    if-gt v4, v3, :cond_1

    .line 475
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;->addNewPivotField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;

    move-result-object v5

    .line 476
    .local v5, "pivotField":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setDataField(Z)V

    .line 477
    invoke-interface {v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setShowAll(Z)V

    .line 474
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 479
    .end local v4    # "i":I
    .end local v5    # "pivotField":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;->sizeOfPivotFieldArray()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v0, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;->setCount(J)V

    .line 480
    return-void
.end method

.method protected createSourceReferences(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;)V
    .locals 7
    .param p1, "position"    # Lorg/apache/poi/ss/util/CellReference;
    .param p2, "sourceSheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p3, "refConfig"    # Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;

    .line 435
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    sget-object v2, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    .line 439
    .local v0, "destination":Lorg/apache/poi/ss/util/AreaReference;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getLocation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;

    move-result-object v1

    if-nez v1, :cond_0

    .line 440
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->addNewLocation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;

    move-result-object v1

    .line 441
    .local v1, "location":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;
    const-wide/16 v2, 0x1

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;->setFirstDataCol(J)V

    .line 442
    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;->setFirstDataRow(J)V

    .line 443
    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;->setFirstHeaderRow(J)V

    goto :goto_0

    .line 445
    .end local v1    # "location":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getLocation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;

    move-result-object v1

    .line 447
    .restart local v1    # "location":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->formatAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;->setRef(Ljava/lang/String;)V

    .line 448
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setLocation(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;)V

    .line 451
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotCacheDefinition()Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->getCTPivotCacheDefinition()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    move-result-object v2

    .line 452
    .local v2, "cacheDef":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->addNewCacheSource()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;

    move-result-object v3

    .line 453
    .local v3, "cacheSource":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;
    sget-object v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType;->WORKSHEET:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;)V

    .line 454
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;->addNewWorksheetSource()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;

    move-result-object v4

    .line 455
    .local v4, "worksheetSource":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;->setSheet(Ljava/lang/String;)V

    .line 456
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->setDataSheet(Lorg/apache/poi/ss/usermodel/Sheet;)V

    .line 458
    invoke-interface {p3, v4}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;->configureReference(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V

    .line 459
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;->getRef()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Pivot table source area reference or name must be specified."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 460
    :cond_2
    :goto_1
    return-void
.end method

.method public getCTPivotTableDefinition()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    return-object v0
.end method

.method public getDataSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->dataSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    return-object v0
.end method

.method public getParentSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->parentSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    return-object v0
.end method

.method protected getPivotArea()Lorg/apache/poi/ss/util/AreaReference;
    .locals 2

    .line 227
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getDataSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    .line 228
    .local v0, "wb":Lorg/apache/poi/ss/usermodel/Workbook;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotCacheDefinition()Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->getPivotArea(Lorg/apache/poi/ss/usermodel/Workbook;)Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v1

    .line 229
    .local v1, "pivotArea":Lorg/apache/poi/ss/util/AreaReference;
    return-object v1
.end method

.method public getPivotCache()Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCache:Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;

    return-object v0
.end method

.method public getPivotCacheDefinition()Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCacheDefinition:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    return-object v0
.end method

.method public getPivotCacheRecords()Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCacheRecords:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;

    return-object v0
.end method

.method public getRowLabelColumns()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getRowFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v0, "columnIndexes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getRowFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;->getFieldArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;

    move-result-object v1

    .local v1, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 288
    .local v4, "f":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;->getX()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    .end local v4    # "f":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 290
    .end local v1    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    return-object v0

    .line 292
    .end local v0    # "columnIndexes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    .line 105
    .local v0, "options":Lorg/apache/xmlbeans/XmlOptions;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setLoadReplaceDocumentElement(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    .line 106
    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v0    # "options":Lorg/apache/xmlbeans/XmlOptions;
    nop

    .line 110
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCTPivotTableDefinition(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;)V
    .locals 0
    .param p1, "pivotTableDefinition"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 141
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    .line 142
    return-void
.end method

.method protected setDefaultPivotTableDefinition()V
    .locals 6

    .line 193
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setMultipleFieldFilters(Z)V

    .line 195
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setIndent(J)V

    .line 197
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setCreatedVersion(S)V

    .line 199
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setMinRefreshableVersion(S)V

    .line 201
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setUpdatedVersion(S)V

    .line 203
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setItemPrintTitles(Z)V

    .line 205
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setUseAutoFormatting(Z)V

    .line 206
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setApplyNumberFormats(Z)V

    .line 207
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setApplyWidthHeightFormats(Z)V

    .line 208
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setApplyAlignmentFormats(Z)V

    .line 209
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setApplyPatternFormats(Z)V

    .line 210
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setApplyFontFormats(Z)V

    .line 211
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setApplyBorderFormats(Z)V

    .line 212
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCache:Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;->getCTPivotCache()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;->getCacheId()J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setCacheId(J)V

    .line 213
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PivotTable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getCacheId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setName(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    const-string v3, "Values"

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setDataCaption(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->addNewPivotTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;

    move-result-object v0

    .line 218
    .local v0, "style":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;
    const-string v3, "PivotStyleLight16"

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;->setName(Ljava/lang/String;)V

    .line 219
    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;->setShowLastColumn(Z)V

    .line 220
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;->setShowColStripes(Z)V

    .line 221
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;->setShowRowStripes(Z)V

    .line 222
    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;->setShowColHeaders(Z)V

    .line 223
    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;->setShowRowHeaders(Z)V

    .line 224
    return-void
.end method

.method public setParentSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 0
    .param p1, "parentSheet"    # Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 129
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->parentSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    .line 130
    return-void
.end method

.method public setPivotCache(Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;)V
    .locals 0
    .param p1, "pivotCache"    # Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;

    .line 114
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCache:Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;

    .line 115
    return-void
.end method

.method public setPivotCacheDefinition(Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;)V
    .locals 0
    .param p1, "pivotCacheDefinition"    # Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    .line 151
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCacheDefinition:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    .line 152
    return-void
.end method

.method public setPivotCacheRecords(Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;)V
    .locals 0
    .param p1, "pivotCacheRecords"    # Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;

    .line 161
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCacheRecords:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;

    .line 162
    return-void
.end method
