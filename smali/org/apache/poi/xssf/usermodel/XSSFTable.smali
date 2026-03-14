.class public Lorg/apache/poi/xssf/usermodel/XSSFTable;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "XSSFTable.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Table;


# instance fields
.field private transient columnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private transient commonXPath:Ljava/lang/String;

.field private transient ctColumns:[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

.field private ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

.field private transient endCellReference:Lorg/apache/poi/ss/util/CellReference;

.field private transient name:Ljava/lang/String;

.field private transient startCellReference:Lorg/apache/poi/ss/util/CellReference;

.field private transient styleName:Ljava/lang/String;

.field private transient xmlColumnPr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 79
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    .line 80
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

    .line 88
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 89
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->readFrom(Ljava/io/InputStream;)V

    .line 90
    return-void
.end method

.method private static caseInsensitive(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 503
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTableColumns()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctColumns:[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->getTableColumnArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctColumns:[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctColumns:[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    return-object v0
.end method

.method private setCellReferences()V
    .locals 5

    .line 417
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getRef()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "ref":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 419
    const/4 v1, 0x2

    const-string v2, ":"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "boundaries":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 421
    .local v2, "from":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v1, v3

    .line 422
    .local v3, "to":Ljava/lang/String;
    new-instance v4, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v4, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->startCellReference:Lorg/apache/poi/ss/util/CellReference;

    .line 423
    new-instance v4, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v4, v3}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->endCellReference:Lorg/apache/poi/ss/util/CellReference;

    .line 425
    .end local v1    # "boundaries":[Ljava/lang/String;
    .end local v2    # "from":Ljava/lang/String;
    .end local v3    # "to":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public addColumn()V
    .locals 5
    .annotation runtime Lorg/apache/poi/util/Internal;
        value = "Return type likely to change"
    .end annotation

    .line 241
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v0

    .line 242
    .local v0, "columns":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;
    if-nez v0, :cond_0

    .line 243
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->addNewTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v0

    .line 247
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->addNewTableColumn()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    move-result-object v1

    .line 248
    .local v1, "column":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->sizeOfTableColumnArray()I

    move-result v2

    .line 249
    .local v2, "num":I
    int-to-long v3, v2

    invoke-interface {v0, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->setCount(J)V

    .line 250
    int-to-long v3, v2

    invoke-interface {v1, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->setId(J)V

    .line 253
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->updateHeaders()V

    .line 254
    return-void
.end method

.method protected commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 129
    .local v0, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 130
    .local v1, "out":Ljava/io/OutputStream;
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->writeTo(Ljava/io/OutputStream;)V

    .line 131
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 132
    return-void
.end method

.method public contains(Lorg/apache/poi/ss/usermodel/Cell;)Z
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 616
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 618
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 620
    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartRowIndex()I

    move-result v2

    if-lt v1, v2, :cond_2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndRowIndex()I

    move-result v2

    if-gt v1, v2, :cond_2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartColIndex()I

    move-result v2

    if-lt v1, v2, :cond_2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndColIndex()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 624
    const/4 v0, 0x1

    return v0

    .line 626
    :cond_2
    return v0
.end method

.method public findColumnIndex(Ljava/lang/String;)I
    .locals 11
    .param p1, "columnHeader"    # Ljava/lang/String;

    .line 519
    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 520
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->columnMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 522
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getTableColumns()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    move-result-object v1

    array-length v1, v1

    .line 523
    .local v1, "count":I
    new-instance v2, Ljava/util/HashMap;

    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->columnMap:Ljava/util/HashMap;

    .line 525
    const/4 v2, 0x0

    .line 526
    .local v2, "i":I
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getTableColumns()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    move-result-object v3

    .local v3, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 527
    .local v6, "column":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getName()Ljava/lang/String;

    move-result-object v7

    .line 528
    .local v7, "columnName":Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->columnMap:Ljava/util/HashMap;

    invoke-static {v7}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->caseInsensitive(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    nop

    .end local v6    # "column":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    .end local v7    # "columnName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 526
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 534
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->columnMap:Ljava/util/HashMap;

    const-string v2, "\'"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->caseInsensitive(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 535
    .local v1, "idx":Ljava/lang/Integer;
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    return v0
.end method

.method public getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
        since = "POI 3.15 beta 3"
    .end annotation

    .line 140
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    return-object v0
.end method

.method public getCellReferences()Lorg/apache/poi/ss/util/AreaReference;
    .locals 4

    .line 352
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v0
.end method

.method public getCommonXpath()Ljava/lang/String;
    .locals 13

    .line 181
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->commonXPath:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 182
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 183
    .local v1, "commonTokens":[Ljava/lang/String;
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getTableColumns()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    move-result-object v2

    .local v2, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    const-string v5, "/"

    if-ge v4, v3, :cond_3

    aget-object v6, v2, v4

    .line 184
    .local v6, "column":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getXmlColumnPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 185
    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getXmlColumnPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    move-result-object v7

    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;->getXpath()Ljava/lang/String;

    move-result-object v7

    .line 186
    .local v7, "xpath":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, "tokens":[Ljava/lang/String;
    array-length v8, v1

    if-nez v8, :cond_0

    .line 188
    move-object v1, v5

    goto :goto_2

    .line 191
    :cond_0
    array-length v8, v1

    array-length v9, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 193
    .local v8, "maxLength":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v8, :cond_2

    .line 194
    aget-object v10, v1, v9

    aget-object v11, v5, v9

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 195
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v0, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    .line 197
    .local v10, "subCommonTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-array v11, v0, [Ljava/lang/String;

    .line 199
    .local v11, "container":[Ljava/lang/String;
    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    move-object v1, v12

    check-cast v1, [Ljava/lang/String;

    .line 200
    goto :goto_2

    .line 193
    .end local v10    # "subCommonTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "container":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 183
    .end local v5    # "tokens":[Ljava/lang/String;
    .end local v6    # "column":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    .end local v7    # "xpath":Ljava/lang/String;
    .end local v8    # "maxLength":I
    .end local v9    # "i":I
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 207
    .end local v2    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_3
    const-string v2, ""

    aput-object v2, v1, v0

    .line 208
    invoke-static {v1, v5}, Lorg/apache/poi/util/StringUtil;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->commonXPath:Ljava/lang/String;

    .line 211
    .end local v1    # "commonTokens":[Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->commonXPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndCellReference()Lorg/apache/poi/ss/util/CellReference;
    .locals 1

    .line 407
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->endCellReference:Lorg/apache/poi/ss/util/CellReference;

    if-nez v0, :cond_0

    .line 408
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->setCellReferences()V

    .line 410
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->endCellReference:Lorg/apache/poi/ss/util/CellReference;

    return-object v0
.end method

.method public getEndColIndex()I
    .locals 1

    .line 593
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v0

    return v0
.end method

.method public getEndRowIndex()I
    .locals 1

    .line 600
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    return v0
.end method

.method public getHeaderRowCount()I
    .locals 2

    .line 572
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getHeaderRowCount()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->setName(Ljava/lang/String;)V

    .line 263
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfMappedColumns()J
    .locals 2

    .line 330
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumerOfMappedColumns()J
    .locals 2

    .line 338
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getNumberOfMappedColumns()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCount()I
    .locals 5

    .line 453
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    .line 454
    .local v0, "from":Lorg/apache/poi/ss/util/CellReference;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    .line 456
    .local v1, "to":Lorg/apache/poi/ss/util/CellReference;
    const/4 v2, 0x0

    .line 457
    .local v2, "rowCount":I
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 458
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 460
    :cond_0
    return v2
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 1

    .line 542
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartCellReference()Lorg/apache/poi/ss/util/CellReference;
    .locals 1

    .line 392
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->startCellReference:Lorg/apache/poi/ss/util/CellReference;

    if-nez v0, :cond_0

    .line 393
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->setCellReferences()V

    .line 395
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->startCellReference:Lorg/apache/poi/ss/util/CellReference;

    return-object v0
.end method

.method public getStartColIndex()I
    .locals 1

    .line 579
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v0

    return v0
.end method

.method public getStartRowIndex()I
    .locals 1

    .line 586
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    return v0
.end method

.method public getStyle()Lorg/apache/poi/ss/usermodel/TableStyleInfo;
    .locals 3

    .line 607
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->isSetTableStyleInfo()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 608
    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;-><init>(Lorg/apache/poi/xssf/model/StylesTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;)V

    return-object v0
.end method

.method public getStyleName()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->styleName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->isSetTableStyleInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->setStyleName(Ljava/lang/String;)V

    .line 288
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->styleName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalsRowCount()I
    .locals 2

    .line 563
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTotalsRowCount()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object v0
.end method

.method public getXmlColumnPrs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->xmlColumnPr:Ljava/util/List;

    if-nez v0, :cond_1

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->xmlColumnPr:Ljava/util/List;

    .line 223
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getTableColumns()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 224
    .local v3, "column":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getXmlColumnPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 225
    new-instance v4, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getXmlColumnPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    move-result-object v5

    invoke-direct {v4, p0, v3, v5}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;)V

    .line 226
    .local v4, "columnPr":Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;
    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->xmlColumnPr:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v3    # "column":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    .end local v4    # "columnPr":Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->xmlColumnPr:Ljava/util/List;

    return-object v0
.end method

.method public isHasTotalsRow()Z
    .locals 1

    .line 553
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTotalsRowShown()Z

    move-result v0

    return v0
.end method

.method public mapsTo(J)Z
    .locals 6
    .param p1, "id"    # J

    .line 149
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getXmlColumnPrs()Ljava/util/List;

    move-result-object v0

    .line 151
    .local v0, "pointers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;

    .line 152
    .local v2, "pointer":Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->getMapId()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    .line 153
    const/4 v3, 0x1

    return v3

    .end local v2    # "pointer":Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;
    :cond_0
    goto :goto_0

    .line 157
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected onTableDelete()V
    .locals 4

    .line 633
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getRelationParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 634
    .local v1, "part":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->removeRelation(Lorg/apache/poi/POIXMLDocumentPart;Z)Z

    goto :goto_0

    .line 636
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "part":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    :cond_0
    return-void
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/TableDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/TableDocument;

    move-result-object v0

    .line 100
    .local v0, "doc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/TableDocument;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/TableDocument;->getTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0    # "doc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/TableDocument;
    nop

    .line 104
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCellReferences(Lorg/apache/poi/ss/util/AreaReference;)V
    .locals 4
    .param p1, "refs"    # Lorg/apache/poi/ss/util/AreaReference;

    .line 367
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/AreaReference;->formatAsString()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "ref":Ljava/lang/String;
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 373
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->setRef(Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->isSetAutoFilter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getAutoFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;->setRef(Ljava/lang/String;)V

    .line 379
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->updateReferences()V

    .line 380
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->updateHeaders()V

    .line 381
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->setDisplayName(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "newName"    # Ljava/lang/String;

    .line 271
    if-nez p1, :cond_0

    .line 272
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->unsetName()V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->name:Ljava/lang/String;

    .line 274
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->setName(Ljava/lang/String;)V

    .line 277
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->name:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setStyleName(Ljava/lang/String;)V
    .locals 1
    .param p1, "newStyleName"    # Ljava/lang/String;

    .line 297
    if-nez p1, :cond_1

    .line 298
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->isSetTableStyleInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->unsetName()V

    .line 301
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->styleName:Ljava/lang/String;

    .line 302
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->isSetTableStyleInfo()Z

    move-result v0

    if-nez v0, :cond_2

    .line 305
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->addNewTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    .line 307
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->setName(Ljava/lang/String;)V

    .line 308
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->styleName:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public updateHeaders()V
    .locals 13

    .line 477
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 478
    .local v0, "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    .line 479
    .local v1, "ref":Lorg/apache/poi/ss/util/CellReference;
    if-nez v1, :cond_0

    return-void

    .line 481
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    .line 482
    .local v2, "headerRow":I
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v3

    .line 483
    .local v3, "firstHeaderColumn":I
    invoke-virtual {v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v4

    .line 484
    .local v4, "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    new-instance v5, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v5}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    .line 486
    .local v5, "formatter":Lorg/apache/poi/ss/usermodel/DataFormatter;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v6

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->validate()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 487
    move v6, v3

    .line 488
    .local v6, "cellnum":I
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v7

    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v7

    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->getTableColumnArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    move-result-object v7

    .local v7, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    array-length v8, v7

    .local v8, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 489
    .local v10, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    invoke-virtual {v4, v6}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v11

    .line 490
    .local v11, "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    if-eqz v11, :cond_1

    .line 491
    invoke-virtual {v5, v11}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->setName(Ljava/lang/String;)V

    .line 493
    :cond_1
    nop

    .end local v10    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    .end local v11    # "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    add-int/lit8 v6, v6, 0x1

    .line 488
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 495
    .end local v7    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    .end local v8    # "len$":I
    .end local v9    # "i$":I
    :cond_2
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctColumns:[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    .line 496
    iput-object v7, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->columnMap:Ljava/util/HashMap;

    .line 497
    iput-object v7, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->xmlColumnPr:Ljava/util/List;

    .line 498
    iput-object v7, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->commonXPath:Ljava/lang/String;

    .line 500
    .end local v6    # "cellnum":I
    :cond_3
    return-void
.end method

.method public updateReferences()V
    .locals 1

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->startCellReference:Lorg/apache/poi/ss/util/CellReference;

    .line 440
    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->endCellReference:Lorg/apache/poi/ss/util/CellReference;

    .line 441
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->updateHeaders()V

    .line 121
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/TableDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/TableDocument;

    move-result-object v0

    .line 122
    .local v0, "doc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/TableDocument;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/TableDocument;->setTable(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;)V

    .line 123
    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v0, p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/TableDocument;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 124
    return-void
.end method
