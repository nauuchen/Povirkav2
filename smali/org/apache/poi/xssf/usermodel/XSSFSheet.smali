.class public Lorg/apache/poi/xssf/usermodel/XSSFSheet;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "XSSFSheet.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Sheet;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_MARGIN_BOTTOM:D = 0.75

.field private static final DEFAULT_MARGIN_FOOTER:D = 0.3

.field private static final DEFAULT_MARGIN_HEADER:D = 0.3

.field private static final DEFAULT_MARGIN_LEFT:D = 0.7

.field private static final DEFAULT_MARGIN_RIGHT:D = 0.7

.field private static final DEFAULT_MARGIN_TOP:D = 0.75

.field private static final DEFAULT_ROW_HEIGHT:D = 15.0

.field public static final TWIPS_PER_POINT:I = 0x14

.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final _rows:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xssf/usermodel/XSSFRow;",
            ">;"
        }
    .end annotation
.end field

.field private arrayFormulas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation
.end field

.field private columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

.field private dataValidationHelper:Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;

.field private hyperlinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;",
            ">;"
        }
    .end annotation
.end field

.field private sharedFormulas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;",
            ">;"
        }
    .end annotation
.end field

.field protected sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

.field private sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

.field private tables:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xssf/usermodel/XSSFTable;",
            ">;"
        }
    .end annotation
.end field

.field protected worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    nop

    .line 150
    const-class v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 184
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 165
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    .line 185
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->dataValidationHelper:Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;

    .line 186
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->onDocumentCreate()V

    .line 187
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 198
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 165
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    .line 199
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->dataValidationHelper:Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;

    .line 200
    return-void
.end method

.method private varargs addIgnoredErrors(Ljava/lang/String;[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;)V
    .locals 2
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "ignoredErrorTypes"    # [Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    .line 4441
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetIgnoredErrors()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getIgnoredErrors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredErrors;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewIgnoredErrors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredErrors;

    move-result-object v0

    .line 4442
    .local v0, "ctIgnoredErrors":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredErrors;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredErrors;->addNewIgnoredError()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;

    move-result-object v1

    .line 4443
    .local v1, "ctIgnoredError":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;
    invoke-static {v1, p1, p2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFIgnoredErrorHelper;->addIgnoredErrors(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;Ljava/lang/String;[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;)V

    .line 4444
    return-void
.end method

.method private addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;Z)I
    .locals 3
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "validate"    # Z

    .line 401
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getNumberOfCells()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 404
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->validate(Lorg/apache/poi/ss/SpreadsheetVersion;)V

    .line 406
    if-eqz p2, :cond_0

    .line 409
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->validateArrayFormulas(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 413
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->validateMergedRegions(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 416
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetMergeCells()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getMergeCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewMergeCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;

    move-result-object v0

    .line 417
    .local v0, "ctMergeCells":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->addNewMergeCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;

    move-result-object v1

    .line 418
    .local v1, "ctMergeCell":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;->setRef(Ljava/lang/String;)V

    .line 419
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->sizeOfMergeCellArray()I

    move-result v2

    return v2

    .line 402
    .end local v0    # "ctMergeCells":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;
    .end local v1    # "ctMergeCell":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Merged region "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must contain 2 or more cells"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkForIntersectingMergedRegions()V
    .locals 8

    .line 492
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMergedRegions()Ljava/util/List;

    move-result-object v0

    .line 493
    .local v0, "regions":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 494
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 495
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 496
    .local v3, "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v0, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 497
    .local v5, "other":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v3, v5}, Lorg/apache/poi/ss/util/CellRangeAddress;->intersects(Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 501
    .end local v5    # "other":Lorg/apache/poi/ss/util/CellRangeAddress;
    goto :goto_1

    .line 498
    .restart local v5    # "other":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The range "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " intersects with another merged region "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in this sheet"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 501
    .local v6, "msg":Ljava/lang/String;
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 494
    .end local v3    # "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "other":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v6    # "msg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 505
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private checkForMergedRegionsIntersectingArrayFormulas()V
    .locals 2

    .line 466
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMergedRegions()Ljava/util/List;

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

    check-cast v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 467
    .local v1, "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->validateArrayFormulas(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .end local v1    # "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    goto :goto_0

    .line 469
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private collapseColumn(I)V
    .locals 13
    .param p1, "columnNumber"    # I

    .line 2139
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    .line 2140
    .local v0, "cols":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v2

    .line 2141
    .local v2, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v3, v0, v2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getIndexOfColumn(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)I

    move-result v3

    .line 2142
    .local v3, "colInfoIx":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 2143
    return-void

    .line 2146
    :cond_0
    invoke-direct {p0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findStartOfColumnOutlineGroup(I)I

    move-result v4

    .line 2148
    .local v4, "groupStartColInfoIx":I
    invoke-interface {v0, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v5

    .line 2151
    .local v5, "columnInfo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v6

    const/4 v7, 0x1

    invoke-direct {p0, v4, v6, v7}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setGroupHidden(IIZ)I

    move-result v6

    .line 2155
    .local v6, "lastColMax":I
    add-int/lit8 v8, v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setColumn(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 2157
    return-void
.end method

.method private collapseRow(I)V
    .locals 6
    .param p1, "rowIndex"    # I

    .line 2650
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    .line 2651
    .local v0, "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    if-eqz v0, :cond_1

    .line 2652
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findStartOfRowOutlineGroup(I)I

    move-result v1

    .line 2655
    .local v1, "startRow":I
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->writeHidden(Lorg/apache/poi/xssf/usermodel/XSSFRow;IZ)I

    move-result v3

    .line 2656
    .local v3, "lastRow":I
    invoke-virtual {p0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2657
    invoke-virtual {p0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setCollapsed(Z)V

    goto :goto_0

    .line 2659
    :cond_0
    invoke-virtual {p0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v4

    .line 2660
    .local v4, "newRow":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setCollapsed(Z)V

    .line 2663
    .end local v1    # "startRow":I
    .end local v3    # "lastRow":I
    .end local v4    # "newRow":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    :cond_1
    :goto_0
    return-void
.end method

.method private containsColumn(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;I)Z
    .locals 5
    .param p1, "col"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .param p2, "columnIndex"    # I

    .line 2441
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v0

    int-to-long v2, p2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    int-to-long v0, p2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private createPivotTable()Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    .locals 11

    .line 4209
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    .line 4210
    .local v0, "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPivotTables()Ljava/util/List;

    move-result-object v1

    .line 4211
    .local v1, "pivotTables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;>;"
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPivotTables()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 4213
    .local v2, "tableId":I
    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->PIVOT_TABLE:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    .line 4215
    .local v3, "pivotTable":Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    invoke-virtual {v3, p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->setParentSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    .line 4216
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4217
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v4

    .line 4220
    .local v4, "workbook":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    sget-object v5, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->PIVOT_CACHE_DEFINITION:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    .line 4222
    .local v5, "pivotCacheDefinition":Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;
    invoke-virtual {v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getRelationId(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object v6

    .line 4224
    .local v6, "rId":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v7

    .line 4225
    .local v7, "pivotPackagePart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v8

    sget-object v9, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    sget-object v10, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->PIVOT_CACHE_DEFINITION:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v10}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getRelation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 4228
    invoke-virtual {v3, v5}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->setPivotCacheDefinition(Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;)V

    .line 4231
    new-instance v8, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;

    invoke-virtual {v4, v6}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->addPivotCache(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;)V

    invoke-virtual {v3, v8}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->setPivotCache(Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;)V

    .line 4234
    sget-object v8, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->PIVOT_CACHE_RECORDS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v9

    invoke-virtual {v5, v8, v9, v2}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;

    .line 4238
    .local v8, "pivotCacheRecords":Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;
    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotCacheDefinition()Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->getCTPivotCacheDefinition()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    move-result-object v9

    invoke-virtual {v5, v8}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->getRelationId(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->setId(Ljava/lang/String;)V

    .line 4240
    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setPivotTables(Ljava/util/List;)V

    .line 4242
    return-object v3
.end method

.method private createPivotTable(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    .locals 2
    .param p1, "position"    # Lorg/apache/poi/ss/util/CellReference;
    .param p2, "sourceSheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p3, "refConfig"    # Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;

    .line 4288
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createPivotTable()Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    move-result-object v0

    .line 4290
    .local v0, "pivotTable":Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->setDefaultPivotTableDefinition()V

    .line 4293
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->createSourceReferences(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;)V

    .line 4296
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotCacheDefinition()Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->createCacheFields(Lorg/apache/poi/ss/usermodel/Sheet;)V

    .line 4297
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->createDefaultDataColumns()V

    .line 4299
    return-object v0
.end method

.method private ensureOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;
    .locals 2

    .line 1586
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    .line 1587
    .local v0, "sheetPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->isSetOutlinePr()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->addNewOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method private expandColumn(I)V
    .locals 16
    .param p1, "columnIndex"    # I

    .line 2326
    move-object/from16 v6, p0

    iget-object v0, v6, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v7

    .line 2327
    .local v7, "cols":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    iget-object v0, v6, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    move/from16 v8, p1

    int-to-long v2, v8

    invoke-virtual {v0, v2, v3, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v9

    .line 2328
    .local v9, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    iget-object v0, v6, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v0, v7, v9}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getIndexOfColumn(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)I

    move-result v10

    .line 2330
    .local v10, "colInfoIx":I
    invoke-interface {v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-direct {v6, v1, v10}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findColInfoIdx(II)I

    move-result v11

    .line 2331
    .local v11, "idx":I
    const/4 v0, -0x1

    if-ne v11, v0, :cond_0

    .line 2332
    return-void

    .line 2336
    :cond_0
    invoke-direct {v6, v11}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isColumnGroupCollapsed(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2337
    return-void

    .line 2341
    :cond_1
    invoke-direct {v6, v11}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findStartOfColumnOutlineGroup(I)I

    move-result v12

    .line 2342
    .local v12, "startIdx":I
    invoke-direct {v6, v11}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findEndOfColumnOutlineGroup(I)I

    move-result v13

    .line 2355
    .local v13, "endIdx":I
    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v14

    .line 2356
    .local v14, "colArray":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    aget-object v15, v14, v13

    .line 2357
    .local v15, "columnInfo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-direct {v6, v11}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isColumnGroupHiddenByParent(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 2358
    invoke-interface {v15}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v0

    .line 2359
    .local v0, "outlineLevel":S
    const/4 v2, 0x0

    .line 2360
    .local v2, "nestedGroup":Z
    move v3, v12

    .local v3, "i":I
    :goto_0
    if-gt v3, v13, :cond_4

    .line 2361
    aget-object v4, v14, v3

    .line 2362
    .local v4, "ci":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v5

    if-ne v0, v5, :cond_2

    .line 2363
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->unsetHidden()V

    .line 2364
    if-eqz v2, :cond_3

    .line 2365
    const/4 v2, 0x0

    .line 2366
    invoke-interface {v4, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setCollapsed(Z)V

    goto :goto_1

    .line 2369
    :cond_2
    const/4 v2, 0x1

    .line 2360
    .end local v4    # "ci":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2375
    .end local v0    # "outlineLevel":S
    .end local v2    # "nestedGroup":Z
    .end local v3    # "i":I
    :cond_4
    invoke-interface {v15}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v2

    long-to-int v0, v2

    add-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setColumn(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 2377
    return-void
.end method

.method private expandRow(I)V
    .locals 6
    .param p1, "rowNumber"    # I

    .line 2704
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2705
    return-void

    .line 2707
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    .line 2709
    .local v0, "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->isSetHidden()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2710
    return-void

    .line 2714
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findStartOfRowOutlineGroup(I)I

    move-result v1

    .line 2717
    .local v1, "startIdx":I
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findEndOfRowOutlineGroup(I)I

    move-result v2

    .line 2730
    .local v2, "endIdx":I
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v3

    .line 2731
    .local v3, "level":S
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isRowGroupHiddenByParent(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2732
    move v4, v1

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 2733
    invoke-virtual {p0, v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v5

    if-ne v3, v5, :cond_2

    .line 2734
    invoke-virtual {p0, v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->unsetHidden()V

    goto :goto_1

    .line 2735
    :cond_2
    invoke-direct {p0, v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isRowGroupCollapsed(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2736
    invoke-virtual {p0, v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->unsetHidden()V

    .line 2732
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2741
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v4

    .line 2743
    .local v4, "ctRow":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getCollapsed()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2744
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->unsetCollapsed()V

    .line 2746
    :cond_5
    return-void
.end method

.method private findColInfoIdx(II)I
    .locals 9
    .param p1, "columnValue"    # I
    .param p2, "fromColInfoIdx"    # I

    .line 2413
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    .line 2415
    .local v0, "cols":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    if-ltz p1, :cond_4

    .line 2419
    if-ltz p2, :cond_3

    .line 2424
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v1

    .line 2425
    .local v1, "colArray":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    move v2, p2

    .local v2, "k":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 2426
    aget-object v3, v1, v2

    .line 2428
    .local v3, "ci":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-direct {p0, v3, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->containsColumn(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2429
    return v2

    .line 2432
    :cond_0
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v4

    int-to-long v6, p2

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 2433
    goto :goto_1

    .line 2425
    .end local v3    # "ci":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2437
    .end local v2    # "k":I
    :cond_2
    :goto_1
    const/4 v2, -0x1

    return v2

    .line 2420
    .end local v1    # "colArray":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fromIdx parameter out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2416
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "column parameter out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private findEndOfColumnOutlineGroup(I)I
    .locals 8
    .param p1, "colInfoIndex"    # I

    .line 2304
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    .line 2306
    .local v0, "cols":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v1

    .line 2307
    .local v1, "colArray":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    aget-object v2, v1, p1

    .line 2308
    .local v2, "columnInfo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v3

    .line 2309
    .local v3, "level":I
    move v4, p1

    .line 2310
    .local v4, "idx":I
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    .line 2311
    .local v5, "lastIdx":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 2312
    add-int/lit8 v6, v4, 0x1

    aget-object v6, v1, v6

    .line 2313
    .local v6, "nextColumnInfo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-direct {p0, v2, v6}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isAdjacentBefore(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2314
    goto :goto_1

    .line 2316
    :cond_0
    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v7

    if-ge v7, v3, :cond_1

    .line 2317
    goto :goto_1

    .line 2319
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 2320
    move-object v2, v6

    .line 2321
    .end local v6    # "nextColumnInfo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    goto :goto_0

    .line 2322
    :cond_2
    :goto_1
    return v4
.end method

.method private findStartOfColumnOutlineGroup(I)I
    .locals 7
    .param p1, "pIdx"    # I

    .line 2284
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    .line 2285
    .local v0, "cols":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v1

    .line 2286
    .local v1, "colArray":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    aget-object v2, v1, p1

    .line 2287
    .local v2, "columnInfo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v3

    .line 2288
    .local v3, "level":I
    move v4, p1

    .line 2289
    .local v4, "idx":I
    :goto_0
    if-eqz v4, :cond_2

    .line 2290
    add-int/lit8 v5, v4, -0x1

    aget-object v5, v1, v5

    .line 2291
    .local v5, "prevColumnInfo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-direct {p0, v5, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isAdjacentBefore(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2292
    goto :goto_1

    .line 2294
    :cond_0
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v6

    if-ge v6, v3, :cond_1

    .line 2295
    goto :goto_1

    .line 2297
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 2298
    move-object v2, v5

    .line 2299
    .end local v5    # "prevColumnInfo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    goto :goto_0

    .line 2300
    :cond_2
    :goto_1
    return v4
.end method

.method private findStartOfRowOutlineGroup(I)I
    .locals 3
    .param p1, "rowIndex"    # I

    .line 2670
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v0

    .line 2671
    .local v0, "level":S
    move v1, p1

    .line 2672
    .local v1, "currentRow":I
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2673
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v2

    if-ge v2, v0, :cond_0

    .line 2674
    add-int/lit8 v2, v1, 0x1

    return v2

    .line 2676
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2678
    :cond_1
    return v1
.end method

.method private getBreaks(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;)[I
    .locals 5
    .param p1, "ctPageBreak"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    .line 887
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;->getBrkArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;

    move-result-object v0

    .line 888
    .local v0, "brkArray":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;
    array-length v1, v0

    new-array v1, v1, [I

    .line 889
    .local v1, "breaks":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 890
    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;->getId()J

    move-result-wide v3

    long-to-int v4, v3

    add-int/lit8 v4, v4, -0x1

    aput v4, v1, v2

    .line 889
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 892
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private getCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;
    .locals 13
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange<",
            "Lorg/apache/poi/xssf/usermodel/XSSFCell;",
            ">;"
        }
    .end annotation

    .line 3830
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v6

    .line 3831
    .local v6, "firstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v7

    .line 3832
    .local v7, "firstColumn":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v8

    .line 3833
    .local v8, "lastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v9

    .line 3834
    .local v9, "lastColumn":I
    sub-int v0, v8, v6

    add-int/lit8 v10, v0, 0x1

    .line 3835
    .local v10, "height":I
    sub-int v0, v9, v7

    add-int/lit8 v11, v0, 0x1

    .line 3836
    .local v11, "width":I
    new-instance v0, Ljava/util/ArrayList;

    mul-int v1, v10, v11

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v12, v0

    .line 3837
    .local v12, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFCell;>;"
    move v0, v6

    .local v0, "rowIn":I
    :goto_0
    if-gt v0, v8, :cond_3

    .line 3838
    move v1, v7

    .local v1, "colIn":I
    :goto_1
    if-gt v1, v9, :cond_2

    .line 3839
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v2

    .line 3840
    .local v2, "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    if-nez v2, :cond_0

    .line 3841
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v2

    .line 3843
    :cond_0
    invoke-virtual {v2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v3

    .line 3844
    .local v3, "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    if-nez v3, :cond_1

    .line 3845
    invoke-virtual {v2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v3

    .line 3847
    :cond_1
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3838
    .end local v2    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .end local v3    # "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3837
    .end local v1    # "colIn":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3850
    .end local v0    # "rowIn":I
    :cond_3
    const-class v5, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move v0, v6

    move v1, v7

    move v2, v10

    move v3, v11

    move-object v4, v12

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/ss/util/SSCellRange;->create(IIIILjava/util/List;Ljava/lang/Class;)Lorg/apache/poi/ss/util/SSCellRange;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;
    .locals 3

    .line 3351
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v0

    .line 3352
    .local v0, "views":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3353
    return-object v1

    .line 3355
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->sizeOfSheetViewArray()I

    move-result v2

    .line 3356
    .local v2, "sz":I
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->getSheetViewArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private getMaxOutlineLevelCols()S
    .locals 7

    .line 1707
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    .line 1708
    .local v0, "ctCols":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    const/4 v1, 0x0

    .line 1709
    .local v1, "outlineLevel":I
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v2

    .local v2, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 1710
    .local v5, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1709
    .end local v5    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1712
    .end local v2    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    int-to-short v2, v1

    return v2
.end method

.method private getMaxOutlineLevelRows()S
    .locals 4

    .line 1699
    const/4 v0, 0x0

    .line 1700
    .local v0, "outlineLevel":I
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    .line 1701
    .local v2, "xrow":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .end local v2    # "xrow":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    goto :goto_0

    .line 1703
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    int-to-short v1, v0

    return v1
.end method

.method private getPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;
    .locals 1

    .line 3403
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3404
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->addNewPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    .line 3406
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    move-result-object v0

    return-object v0
.end method

.method private static getReferenceBuiltInRecord(Ljava/lang/String;IIII)Ljava/lang/String;
    .locals 17
    .param p0, "sheetName"    # Ljava/lang/String;
    .param p1, "startC"    # I
    .param p2, "endC"    # I
    .param p3, "startR"    # I
    .param p4, "endR"    # I

    .line 4129
    new-instance v6, Lorg/apache/poi/ss/util/CellReference;

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    .line 4131
    .local v0, "colRef":Lorg/apache/poi/ss/util/CellReference;
    new-instance v7, Lorg/apache/poi/ss/util/CellReference;

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, v7

    move-object/from16 v2, p0

    move/from16 v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    .line 4133
    .local v1, "colRef2":Lorg/apache/poi/ss/util/CellReference;
    new-instance v8, Lorg/apache/poi/ss/util/CellReference;

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v2, v8

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-direct/range {v2 .. v7}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    .line 4135
    .local v2, "rowRef":Lorg/apache/poi/ss/util/CellReference;
    new-instance v9, Lorg/apache/poi/ss/util/CellReference;

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v3, v9

    move-object/from16 v4, p0

    move/from16 v5, p4

    invoke-direct/range {v3 .. v8}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    .line 4138
    .local v3, "rowRef2":Lorg/apache/poi/ss/util/CellReference;
    invoke-static/range {p0 .. p0}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4140
    .local v4, "escapedName":Ljava/lang/String;
    const-string v5, ""

    .line 4141
    .local v5, "c":Ljava/lang/String;
    const-string v6, ""

    .line 4143
    .local v6, "r":Ljava/lang/String;
    const-string v7, ":$"

    const-string v8, "!$"

    const/4 v9, -0x1

    move/from16 v10, p1

    if-ne v10, v9, :cond_0

    move/from16 v11, p2

    if-eq v11, v9, :cond_1

    goto :goto_0

    :cond_0
    move/from16 v11, p2

    .line 4144
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    aget-object v12, v12, v13

    .line 4145
    .local v12, "col1":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    move-result-object v14

    aget-object v13, v14, v13

    .line 4146
    .local v13, "col2":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4149
    .end local v12    # "col1":Ljava/lang/String;
    .end local v13    # "col2":Ljava/lang/String;
    :cond_1
    move/from16 v12, p3

    if-ne v12, v9, :cond_2

    move/from16 v13, p4

    if-eq v13, v9, :cond_3

    goto :goto_1

    :cond_2
    move/from16 v13, p4

    .line 4150
    :goto_1
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x1

    aget-object v9, v9, v14

    .line 4151
    .local v9, "row1":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    move-result-object v15

    aget-object v14, v15, v14

    .line 4152
    .local v14, "row2":Ljava/lang/String;
    const-string v15, "0"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 4153
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4157
    .end local v9    # "row1":Ljava/lang/String;
    .end local v14    # "row2":Ljava/lang/String;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 4158
    .local v7, "rng":Ljava/lang/StringBuilder;
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4159
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 4160
    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4162
    :cond_4
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4163
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private getRepeatingRowsOrColums(Z)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 14
    .param p1, "rows"    # Z

    .line 4168
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    .line 4169
    .local v0, "sheetIndex":I
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    const-string v2, "_xlnm.Print_Titles"

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v1

    .line 4171
    .local v1, "name":Lorg/apache/poi/xssf/usermodel/XSSFName;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4172
    return-object v2

    .line 4174
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getRefersToFormula()Ljava/lang/String;

    move-result-object v3

    .line 4175
    .local v3, "refStr":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 4176
    return-object v2

    .line 4178
    :cond_1
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4179
    .local v4, "parts":[Ljava/lang/String;
    sget-object v5, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v5}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v5

    .line 4180
    .local v5, "maxRowIndex":I
    sget-object v6, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v6}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v6

    .line 4181
    .local v6, "maxColIndex":I
    move-object v7, v4

    .local v7, "arr$":[Ljava/lang/String;
    array-length v8, v7

    .local v8, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v8, :cond_8

    aget-object v10, v7, v9

    .line 4182
    .local v10, "part":Ljava/lang/String;
    invoke-static {v10}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v11

    .line 4183
    .local v11, "range":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v11}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v11}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v12

    if-eq v12, v6, :cond_3

    :cond_2
    invoke-virtual {v11}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_4

    invoke-virtual {v11}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v12

    if-ne v12, v13, :cond_4

    .line 4187
    :cond_3
    if-eqz p1, :cond_7

    .line 4188
    return-object v11

    .line 4190
    :cond_4
    invoke-virtual {v11}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v11}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v12

    if-eq v12, v5, :cond_6

    :cond_5
    invoke-virtual {v11}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v12

    if-ne v12, v13, :cond_7

    invoke-virtual {v11}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v12

    if-ne v12, v13, :cond_7

    .line 4194
    :cond_6
    if-nez p1, :cond_7

    .line 4195
    return-object v11

    .line 4181
    .end local v10    # "part":Ljava/lang/String;
    .end local v11    # "range":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 4199
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v8    # "len$":I
    .end local v9    # "i$":I
    :cond_8
    return-object v2
.end method

.method private getRows(IIZ)Ljava/util/List;
    .locals 4
    .param p1, "startRowNum"    # I
    .param p2, "endRowNum"    # I
    .param p3, "createRowIfMissing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFRow;",
            ">;"
        }
    .end annotation

    .line 1468
    if-gt p1, p2, :cond_3

    .line 1471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1472
    .local v0, "rows":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFRow;>;"
    if-eqz p3, :cond_2

    .line 1473
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 1474
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v2

    .line 1475
    .local v2, "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    if-nez v2, :cond_0

    .line 1476
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v2

    .line 1478
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1473
    .end local v2    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_1
    goto :goto_1

    .line 1483
    :cond_2
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1484
    .local v1, "startI":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/Integer;

    add-int/lit8 v3, p2, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 1485
    .local v2, "endI":Ljava/lang/Integer;
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v3, v1, v2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 1486
    .local v3, "inclusive":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/poi/xssf/usermodel/XSSFRow;>;"
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1488
    .end local v1    # "startI":Ljava/lang/Integer;
    .end local v2    # "endI":Ljava/lang/Integer;
    .end local v3    # "inclusive":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/poi/xssf/usermodel/XSSFRow;>;"
    :goto_1
    return-object v0

    .line 1469
    .end local v0    # "rows":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFRow;>;"
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getRows: startRowNum must be less than or equal to endRowNum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSheetTypeHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;
    .locals 2

    .line 1108
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1109
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->setHeaderFooter(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    .line 1111
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v0

    return-object v0
.end method

.method private getSheetTypePageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;
    .locals 2

    .line 3384
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    .line 3385
    .local v0, "sheetPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->isSetPageSetUpPr()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getPageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->addNewPageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private getSheetTypeSelection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;
    .locals 2

    .line 3335
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->sizeOfSelectionArray()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3336
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->insertNewSelection(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;

    .line 3338
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getSelectionArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;

    move-result-object v0

    return-object v0
.end method

.method private getSheetTypeSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;
    .locals 1

    .line 990
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetFormatPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getSheetTypeSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;
    .locals 2

    .line 1101
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1102
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->setSheetPr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;)V

    .line 1104
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    return-object v0
.end method

.method private getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;
    .locals 3

    .line 2585
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2586
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->setSheetViewArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;)V

    .line 2588
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    return-object v0
.end method

.method private getSheetTypeSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;
    .locals 2

    .line 3224
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3225
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->setSheetViews(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;)V

    .line 3226
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->addNewSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    .line 3228
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v0

    return-object v0
.end method

.method private groupColumn1Based(II)V
    .locals 10
    .param p1, "fromColumn"    # I
    .param p2, "toColumn"    # I

    .line 1635
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    .line 1636
    .local v0, "ctCols":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v2

    .line 1641
    .local v2, "ctCol":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v4, p2

    invoke-virtual {v3, v4, v5, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v3

    .line 1642
    .local v3, "fixCol_before":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    if-eqz v3, :cond_0

    .line 1643
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    .line 1646
    :cond_0
    int-to-long v4, p1

    invoke-interface {v2, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    .line 1647
    int-to-long v4, p2

    invoke-interface {v2, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    .line 1648
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v4, v0, v2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    .line 1650
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v5, p2

    invoke-virtual {v4, v5, v6, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v4

    .line 1651
    .local v4, "fixCol_after":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 1652
    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v5, v3, v4}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColumnAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    .line 1655
    :cond_1
    move v5, p1

    .local v5, "index":I
    :goto_0
    if-gt v5, p2, :cond_2

    .line 1656
    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v7, v5

    invoke-virtual {v6, v7, v8, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v6

    .line 1658
    .local v6, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v7

    .line 1659
    .local v7, "outlineLevel":S
    add-int/lit8 v8, v7, 0x1

    int-to-short v8, v8

    invoke-interface {v6, v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setOutlineLevel(S)V

    .line 1660
    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v8

    long-to-int v5, v8

    .line 1655
    .end local v6    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .end local v7    # "outlineLevel":S
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1662
    .end local v5    # "index":I
    :cond_2
    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v5, v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->setColsArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;)V

    .line 1663
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setSheetFormatPrOutlineLevelCol()V

    .line 1664
    return-void
.end method

.method private initHyperlinks()V
    .locals 8

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    .line 282
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetHyperlinks()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    return-void

    .line 287
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHEET_HYPERLINKS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getRelation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    .line 291
    .local v0, "hyperRels":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getHyperlinks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;->getHyperlinkArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    move-result-object v1

    .local v1, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 292
    .local v4, "hyperlink":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;
    const/4 v5, 0x0

    .line 293
    .local v5, "hyperRel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 294
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationshipByID(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v6

    move-object v5, v6

    .line 297
    :cond_1
    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    invoke-direct {v7, v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;Lorg/apache/poi/openxml4j/opc/PackageRelationship;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    nop

    .end local v4    # "hyperlink":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;
    .end local v5    # "hyperRel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    .end local v0    # "hyperRels":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    .end local v1    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_2
    nop

    .line 302
    return-void

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private initRows(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;)V
    .locals 7
    .param p1, "worksheetParam"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 263
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 264
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->tables:Ljava/util/SortedMap;

    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sharedFormulas:Ljava/util/Map;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->arrayFormulas:Ljava/util/List;

    .line 267
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetData()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;->getRowArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 268
    .local v3, "row":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;
    new-instance v4, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-direct {v4, v3, p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    .line 270
    .local v4, "r":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 271
    .local v5, "rownumI":Ljava/lang/Integer;
    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v6, v5, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .end local v3    # "row":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;
    .end local v4    # "r":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .end local v5    # "rownumI":Ljava/lang/Integer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method private isAdjacentBefore(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z
    .locals 6
    .param p1, "col"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .param p2, "otherCol"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    .line 2279
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v0

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isColumnGroupCollapsed(I)Z
    .locals 8
    .param p1, "idx"    # I

    .line 2452
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    .line 2453
    .local v0, "cols":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v2

    .line 2454
    .local v2, "colArray":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findEndOfColumnOutlineGroup(I)I

    move-result v3

    .line 2455
    .local v3, "endOfOutlineGroupIdx":I
    add-int/lit8 v4, v3, 0x1

    .line 2456
    .local v4, "nextColInfoIx":I
    array-length v5, v2

    if-lt v4, v5, :cond_0

    .line 2457
    return v1

    .line 2459
    :cond_0
    aget-object v5, v2, v4

    .line 2461
    .local v5, "nextColInfo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    aget-object v6, v2, v3

    .line 2462
    .local v6, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-direct {p0, v6, v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isAdjacentBefore(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2463
    return v1

    .line 2466
    :cond_1
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getCollapsed()Z

    move-result v1

    return v1
.end method

.method private isColumnGroupHiddenByParent(I)Z
    .locals 10
    .param p1, "idx"    # I

    .line 2380
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    .line 2382
    .local v0, "cols":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    const/4 v1, 0x0

    .line 2383
    .local v1, "endLevel":I
    const/4 v2, 0x0

    .line 2384
    .local v2, "endHidden":Z
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findEndOfColumnOutlineGroup(I)I

    move-result v3

    .line 2385
    .local v3, "endOfOutlineGroupIdx":I
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v4

    .line 2386
    .local v4, "colArray":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 2387
    add-int/lit8 v5, v3, 0x1

    aget-object v5, v4, v5

    .line 2388
    .local v5, "nextInfo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    aget-object v6, v4, v3

    invoke-direct {p0, v6, v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isAdjacentBefore(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2389
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v1

    .line 2390
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getHidden()Z

    move-result v2

    .line 2394
    .end local v5    # "nextInfo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    :cond_0
    const/4 v5, 0x0

    .line 2395
    .local v5, "startLevel":I
    const/4 v6, 0x0

    .line 2396
    .local v6, "startHidden":Z
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findStartOfColumnOutlineGroup(I)I

    move-result v7

    .line 2397
    .local v7, "startOfOutlineGroupIdx":I
    if-lez v7, :cond_1

    .line 2398
    add-int/lit8 v8, v7, -0x1

    aget-object v8, v4, v8

    .line 2400
    .local v8, "prevInfo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    aget-object v9, v4, v7

    invoke-direct {p0, v8, v9}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isAdjacentBefore(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2401
    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v5

    .line 2402
    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getHidden()Z

    move-result v6

    .line 2406
    .end local v8    # "prevInfo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    :cond_1
    if-le v1, v5, :cond_2

    .line 2407
    return v2

    .line 2409
    :cond_2
    return v6
.end method

.method private isRowGroupCollapsed(I)Z
    .locals 2
    .param p1, "row"    # I

    .line 2804
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findEndOfRowOutlineGroup(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2805
    .local v0, "collapseRow":I
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2806
    const/4 v1, 0x0

    return v1

    .line 2808
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getCollapsed()Z

    move-result v1

    return v1
.end method

.method private isRowGroupHiddenByParent(I)Z
    .locals 6
    .param p1, "row"    # I

    .line 2771
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findEndOfRowOutlineGroup(I)I

    move-result v0

    .line 2772
    .local v0, "endOfOutlineGroupIdx":I
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2773
    const/4 v1, 0x0

    .line 2774
    .local v1, "endLevel":I
    const/4 v2, 0x0

    .local v2, "endHidden":Z
    goto :goto_0

    .line 2776
    .end local v1    # "endLevel":I
    .end local v2    # "endHidden":Z
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v1

    .line 2777
    .restart local v1    # "endLevel":I
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getHidden()Z

    move-result v2

    .line 2783
    .restart local v2    # "endHidden":Z
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findStartOfRowOutlineGroup(I)I

    move-result v3

    .line 2784
    .local v3, "startOfOutlineGroupIdx":I
    if-ltz v3, :cond_2

    invoke-virtual {p0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 2789
    :cond_1
    invoke-virtual {p0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v4

    .line 2791
    .local v4, "startLevel":I
    invoke-virtual {p0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getHidden()Z

    move-result v5

    .local v5, "startHidden":Z
    goto :goto_2

    .line 2786
    .end local v4    # "startLevel":I
    .end local v5    # "startHidden":Z
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 2787
    .restart local v4    # "startLevel":I
    const/4 v5, 0x0

    .line 2794
    .restart local v5    # "startHidden":Z
    :goto_2
    if-le v1, v4, :cond_3

    .line 2795
    return v2

    .line 2797
    :cond_3
    return v5
.end method

.method private static newSheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;
    .locals 8

    .line 310
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    .line 311
    .local v0, "worksheet":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v1

    .line 312
    .local v1, "ctFormat":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;
    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->setDefaultRowHeight(D)V

    .line 314
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->addNewSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v2

    .line 315
    .local v2, "ctView":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;
    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setWorkbookViewId(J)V

    .line 317
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewDimension()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetDimension;

    move-result-object v3

    const-string v4, "A1"

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetDimension;->setRef(Ljava/lang/String;)V

    .line 319
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetData()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;

    .line 321
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    move-result-object v3

    .line 322
    .local v3, "ctMargins":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;
    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setBottom(D)V

    .line 323
    const-wide v6, 0x3fd3333333333333L    # 0.3

    invoke-interface {v3, v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setFooter(D)V

    .line 324
    invoke-interface {v3, v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setHeader(D)V

    .line 325
    const-wide v6, 0x3fe6666666666666L    # 0.7

    invoke-interface {v3, v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setLeft(D)V

    .line 326
    invoke-interface {v3, v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setRight(D)V

    .line 327
    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setTop(D)V

    .line 329
    return-object v0
.end method

.method private removeBreak(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "ctPageBreak"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    .line 896
    add-int/lit8 v0, p1, 0x1

    .line 897
    .local v0, "index1":I
    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;->getBrkArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;

    move-result-object v1

    .line 898
    .local v1, "brkArray":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 899
    aget-object v3, v1, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;->getId()J

    move-result-wide v3

    int-to-long v5, v0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 900
    invoke-interface {p2, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;->removeBrk(I)V

    .line 898
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 904
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;
    .locals 1

    .line 3798
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetProtectionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3799
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    return-object v0

    .line 3801
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    return-object v0
.end method

.method private setBreak(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;I)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "ctPgBreak"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;
    .param p3, "lastIndex"    # I

    .line 1871
    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;->addNewBrk()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;

    move-result-object v0

    .line 1872
    .local v0, "brk":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;
    add-int/lit8 v1, p1, 0x1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;->setId(J)V

    .line 1873
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;->setMan(Z)V

    .line 1874
    int-to-long v1, p3

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;->setMax(J)V

    .line 1876
    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;->sizeOfBrkArray()I

    move-result v1

    .line 1877
    .local v1, "nPageBreaks":I
    int-to-long v2, v1

    invoke-interface {p2, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;->setCount(J)V

    .line 1878
    int-to-long v2, v1

    invoke-interface {p2, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;->setManualBreakCount(J)V

    .line 1879
    return-void
.end method

.method private setColWidthAttribute(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;)V
    .locals 6
    .param p1, "ctCols"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    .line 1670
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1671
    .local v3, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetWidth()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1672
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultColumnWidth()I

    move-result v4

    int-to-double v4, v4

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setWidth(D)V

    .line 1673
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setCustomWidth(Z)V

    .line 1670
    .end local v3    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1676
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return-void
.end method

.method private setColumn(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 19
    .param p1, "targetColumnIx"    # I
    .param p2, "style"    # Ljava/lang/Integer;
    .param p3, "level"    # Ljava/lang/Integer;
    .param p4, "hidden"    # Ljava/lang/Boolean;
    .param p5, "collapsed"    # Ljava/lang/Boolean;

    .line 2161
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v2

    .line 2162
    .local v2, "cols":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    const/4 v4, 0x0

    .line 2163
    .local v4, "ci":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v5

    .local v5, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    array-length v6, v5

    .local v6, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 2164
    .local v8, "tci":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v9

    .line 2165
    .local v9, "tciMin":J
    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v11

    .line 2166
    .local v11, "tciMax":J
    int-to-long v13, v1

    cmp-long v15, v9, v13

    if-ltz v15, :cond_0

    int-to-long v13, v1

    cmp-long v15, v11, v13

    if-gtz v15, :cond_0

    .line 2167
    move-object v4, v8

    .line 2168
    goto :goto_1

    .line 2170
    :cond_0
    int-to-long v13, v1

    cmp-long v15, v9, v13

    if-lez v15, :cond_1

    .line 2172
    goto :goto_1

    .line 2163
    .end local v8    # "tci":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .end local v9    # "tciMin":J
    .end local v11    # "tciMax":J
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2176
    .end local v5    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .end local v6    # "len$":I
    .end local v7    # "i$":I
    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 2179
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v3

    .line 2180
    .local v3, "nci":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    int-to-long v5, v1

    invoke-interface {v3, v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    .line 2181
    int-to-long v5, v1

    invoke-interface {v3, v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    .line 2182
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {v0, v5, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->unsetCollapsed(ZLorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    .line 2183
    iget-object v5, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v5, v2, v3}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    .line 2184
    return-void

    .line 2187
    .end local v3    # "nci":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    :cond_3
    const/4 v5, 0x1

    if-eqz p2, :cond_4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getStyle()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    cmp-long v10, v6, v8

    if-eqz v10, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    .line 2188
    .local v6, "styleChanged":Z
    :goto_2
    if-eqz p3, :cond_5

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v7, v8, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    .line 2189
    .local v7, "levelChanged":Z
    :goto_3
    if-eqz p4, :cond_6

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getHidden()Z

    move-result v8

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eq v8, v9, :cond_6

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    .line 2190
    .local v8, "hiddenChanged":Z
    :goto_4
    if-eqz p5, :cond_7

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getCollapsed()Z

    move-result v9

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eq v9, v10, :cond_7

    const/4 v9, 0x1

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    .line 2191
    .local v9, "collapsedChanged":Z
    :goto_5
    if-nez v7, :cond_8

    if-nez v8, :cond_8

    if-nez v9, :cond_8

    if-eqz v6, :cond_9

    :cond_8
    const/4 v3, 0x1

    .line 2192
    .local v3, "columnChanged":Z
    :cond_9
    if-nez v3, :cond_a

    .line 2194
    return-void

    .line 2197
    :cond_a
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v10

    .line 2198
    .local v10, "ciMin":J
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v12

    .line 2199
    .local v12, "ciMax":J
    int-to-long v14, v1

    cmp-long v5, v10, v14

    if-nez v5, :cond_b

    int-to-long v14, v1

    cmp-long v5, v12, v14

    if-nez v5, :cond_b

    .line 2201
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {v0, v5, v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->unsetCollapsed(ZLorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    .line 2202
    return-void

    .line 2205
    :cond_b
    int-to-long v14, v1

    cmp-long v5, v10, v14

    if-eqz v5, :cond_d

    int-to-long v14, v1

    cmp-long v5, v12, v14

    if-nez v5, :cond_c

    move/from16 v16, v3

    move/from16 v17, v6

    move/from16 v18, v7

    goto :goto_6

    .line 2221
    :cond_c
    iget-object v5, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v5, v2, v4}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v5

    .line 2222
    .local v5, "ciMid":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    iget-object v14, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v14, v2, v4}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v14

    .line 2223
    .local v14, "ciEnd":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    long-to-int v15, v12

    .line 2225
    .local v15, "lastcolumn":I
    move/from16 v16, v3

    .end local v3    # "columnChanged":Z
    .local v16, "columnChanged":Z
    add-int/lit8 v3, v1, -0x1

    move/from16 v17, v6

    move/from16 v18, v7

    .end local v6    # "styleChanged":Z
    .end local v7    # "levelChanged":Z
    .local v17, "styleChanged":Z
    .local v18, "levelChanged":Z
    int-to-long v6, v3

    invoke-interface {v4, v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    .line 2227
    int-to-long v6, v1

    invoke-interface {v5, v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    .line 2228
    int-to-long v6, v1

    invoke-interface {v5, v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    .line 2229
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {v0, v3, v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->unsetCollapsed(ZLorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    .line 2230
    iget-object v3, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v3, v2, v5}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    .line 2232
    add-int/lit8 v3, v1, 0x1

    int-to-long v6, v3

    invoke-interface {v14, v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    .line 2233
    int-to-long v6, v15

    invoke-interface {v14, v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    .line 2234
    iget-object v3, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v3, v2, v14}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    goto :goto_8

    .line 2205
    .end local v5    # "ciMid":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .end local v14    # "ciEnd":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .end local v15    # "lastcolumn":I
    .end local v16    # "columnChanged":Z
    .end local v17    # "styleChanged":Z
    .end local v18    # "levelChanged":Z
    .restart local v3    # "columnChanged":Z
    .restart local v6    # "styleChanged":Z
    .restart local v7    # "levelChanged":Z
    :cond_d
    move/from16 v16, v3

    move/from16 v17, v6

    move/from16 v18, v7

    .line 2209
    .end local v3    # "columnChanged":Z
    .end local v6    # "styleChanged":Z
    .end local v7    # "levelChanged":Z
    .restart local v16    # "columnChanged":Z
    .restart local v17    # "styleChanged":Z
    .restart local v18    # "levelChanged":Z
    :goto_6
    int-to-long v5, v1

    cmp-long v3, v10, v5

    if-nez v3, :cond_e

    .line 2210
    add-int/lit8 v3, v1, 0x1

    int-to-long v5, v3

    invoke-interface {v4, v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    goto :goto_7

    .line 2212
    :cond_e
    add-int/lit8 v3, v1, -0x1

    int-to-long v5, v3

    invoke-interface {v4, v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    .line 2214
    :goto_7
    iget-object v3, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v3, v2, v4}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v3

    .line 2215
    .local v3, "nci":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    int-to-long v5, v1

    invoke-interface {v3, v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    .line 2216
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {v0, v5, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->unsetCollapsed(ZLorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    .line 2217
    iget-object v5, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v5, v2, v3}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    .line 2219
    .end local v3    # "nci":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    nop

    .line 2236
    :goto_8
    return-void
.end method

.method private setGroupHidden(IIZ)I
    .locals 6
    .param p1, "pIdx"    # I
    .param p2, "level"    # I
    .param p3, "hidden"    # Z

    .line 2255
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    .line 2256
    .local v0, "cols":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    move v1, p1

    .line 2257
    .local v1, "idx":I
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v2

    .line 2258
    .local v2, "colArray":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    aget-object v3, v2, v1

    .line 2259
    .local v3, "columnInfo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_3

    .line 2260
    invoke-interface {v3, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setHidden(Z)V

    .line 2261
    add-int/lit8 v4, v1, 0x1

    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 2262
    add-int/lit8 v4, v1, 0x1

    aget-object v4, v2, v4

    .line 2264
    .local v4, "nextColumnInfo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-direct {p0, v3, v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isAdjacentBefore(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2265
    goto :goto_1

    .line 2268
    :cond_0
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v5

    if-ge v5, p2, :cond_1

    .line 2269
    goto :goto_1

    .line 2271
    :cond_1
    move-object v3, v4

    .line 2273
    .end local v4    # "nextColumnInfo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2275
    :cond_3
    :goto_1
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v4

    long-to-int v5, v4

    return v5
.end method

.method private setRepeatingRowsAndColumns(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 10
    .param p1, "rowDef"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "colDef"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 4069
    const/4 v0, -0x1

    .line 4070
    .local v0, "col1":I
    const/4 v1, -0x1

    .line 4071
    .local v1, "col2":I
    const/4 v2, -0x1

    .line 4072
    .local v2, "row1":I
    const/4 v3, -0x1

    .line 4074
    .local v3, "row2":I
    const/4 v4, -0x1

    if-eqz p1, :cond_2

    .line 4075
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v2

    .line 4076
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v3

    .line 4077
    if-ne v2, v4, :cond_0

    if-ne v3, v4, :cond_1

    :cond_0
    if-lt v2, v4, :cond_1

    if-lt v3, v4, :cond_1

    if-gt v2, v3, :cond_1

    goto :goto_0

    .line 4079
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid row range specification"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4082
    :cond_2
    :goto_0
    if-eqz p2, :cond_5

    .line 4083
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v0

    .line 4084
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v1

    .line 4085
    if-ne v0, v4, :cond_3

    if-ne v1, v4, :cond_4

    :cond_3
    if-lt v0, v4, :cond_4

    if-lt v1, v4, :cond_4

    if-gt v0, v1, :cond_4

    goto :goto_1

    .line 4087
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid column range specification"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4092
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v4

    .line 4094
    .local v4, "sheetIndex":I
    const/4 v5, 0x0

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    const/4 v6, 0x1

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    .line 4096
    .local v6, "removeAll":Z
    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v7

    const-string v8, "_xlnm.Print_Titles"

    invoke-virtual {v7, v8, v4}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v7

    .line 4098
    .local v7, "name":Lorg/apache/poi/xssf/usermodel/XSSFName;
    if-eqz v6, :cond_8

    .line 4099
    if-eqz v7, :cond_7

    .line 4100
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeName(Lorg/apache/poi/ss/usermodel/Name;)V

    .line 4102
    :cond_7
    return-void

    .line 4104
    :cond_8
    if-nez v7, :cond_9

    .line 4105
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v9

    invoke-virtual {v9, v8, v4}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v7

    .line 4109
    :cond_9
    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0, v1, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getReferenceBuiltInRecord(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v8

    .line 4111
    .local v8, "reference":Ljava/lang/String;
    invoke-virtual {v7, v8}, Lorg/apache/poi/xssf/usermodel/XSSFName;->setRefersToFormula(Ljava/lang/String;)V

    .line 4116
    iget-object v9, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPageSetup()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPageMargins()Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_3

    .line 4120
    :cond_a
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPrintSetup()Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;

    move-result-object v9

    invoke-virtual {v9, v5}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->setValidSettings(Z)V

    .line 4122
    :goto_3
    return-void
.end method

.method private setSheetFormatPrOutlineLevelCol()V
    .locals 2

    .line 3219
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMaxOutlineLevelCols()S

    move-result v0

    .line 3220
    .local v0, "maxLevelCol":S
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->setOutlineLevelCol(S)V

    .line 3221
    return-void
.end method

.method private setSheetFormatPrOutlineLevelRow()V
    .locals 2

    .line 3214
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMaxOutlineLevelRows()S

    move-result v0

    .line 3215
    .local v0, "maxLevelRow":S
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->setOutlineLevelRow(S)V

    .line 3216
    return-void
.end method

.method private shiftedRowNum(IIII)I
    .locals 1
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "n"    # I
    .param p4, "rownum"    # I

    .line 3131
    if-ge p4, p1, :cond_1

    if-gtz p3, :cond_0

    sub-int v0, p1, p4

    if-le v0, p3, :cond_1

    .line 3132
    :cond_0
    return p4

    .line 3136
    :cond_1
    if-le p4, p2, :cond_3

    if-ltz p3, :cond_2

    sub-int v0, p4, p2

    if-le v0, p3, :cond_3

    .line 3137
    :cond_2
    return p4

    .line 3141
    :cond_3
    if-ge p4, p1, :cond_4

    .line 3143
    sub-int v0, p2, p1

    add-int/2addr v0, p4

    return v0

    .line 3147
    :cond_4
    if-le p4, p2, :cond_5

    .line 3149
    sub-int v0, p2, p1

    sub-int v0, p4, v0

    return v0

    .line 3153
    :cond_5
    add-int v0, p4, p3

    return v0
.end method

.method private static shouldRemoveRow(IIII)Z
    .locals 1
    .param p0, "startRow"    # I
    .param p1, "endRow"    # I
    .param p2, "n"    # I
    .param p3, "rownum"    # I

    .line 3390
    add-int v0, p0, p2

    if-lt p3, v0, :cond_1

    add-int v0, p1, p2

    if-gt p3, v0, :cond_1

    .line 3392
    const/4 v0, 0x1

    if-lez p2, :cond_0

    if-le p3, p1, :cond_0

    .line 3393
    return v0

    .line 3395
    :cond_0
    if-gez p2, :cond_1

    if-ge p3, p0, :cond_1

    .line 3396
    return v0

    .line 3399
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private unsetCollapsed(ZLorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V
    .locals 0
    .param p1, "collapsed"    # Z
    .param p2, "ci"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    .line 2239
    if-eqz p1, :cond_0

    .line 2240
    invoke-interface {p2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setCollapsed(Z)V

    goto :goto_0

    .line 2242
    :cond_0
    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->unsetCollapsed()V

    .line 2244
    :goto_0
    return-void
.end method

.method private validateArrayFormulas(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 11
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 431
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 432
    .local v0, "firstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v1

    .line 433
    .local v1, "firstColumn":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v2

    .line 434
    .local v2, "lastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v3

    .line 436
    .local v3, "lastColumn":I
    move v4, v0

    .local v4, "rowIn":I
    :goto_0
    if-gt v4, v2, :cond_5

    .line 437
    invoke-virtual {p0, v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v5

    .line 438
    .local v5, "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    if-nez v5, :cond_0

    .line 439
    goto :goto_3

    .line 442
    :cond_0
    move v6, v1

    .local v6, "colIn":I
    :goto_1
    if-gt v6, v3, :cond_4

    .line 443
    invoke-virtual {v5, v6}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v7

    .line 444
    .local v7, "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    if-nez v7, :cond_1

    .line 445
    goto :goto_2

    .line 448
    :cond_1
    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 449
    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v8

    .line 450
    .local v8, "arrayRange":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v8}, Lorg/apache/poi/ss/util/CellRangeAddress;->getNumberOfCells()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    invoke-virtual {p1, v8}, Lorg/apache/poi/ss/util/CellRangeAddress;->intersects(Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_2

    .line 451
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The range "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " intersects with a multi-cell array formula. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "You cannot merge cells of an array."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 453
    .local v9, "msg":Ljava/lang/String;
    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-direct {v10, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 442
    .end local v7    # "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .end local v8    # "arrayRange":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v9    # "msg":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 436
    .end local v5    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .end local v6    # "colIn":I
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 458
    .end local v4    # "rowIn":I
    :cond_5
    return-void
.end method

.method private validateMergedRegions(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 5
    .param p1, "candidateRegion"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 478
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMergedRegions()Ljava/util/List;

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

    check-cast v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 479
    .local v1, "existingRegion":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->intersects(Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 480
    .end local v1    # "existingRegion":Lorg/apache/poi/ss/util/CellRangeAddress;
    goto :goto_0

    .restart local v1    # "existingRegion":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot add merged region "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to sheet because it overlaps with an existing merged region ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 484
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "existingRegion":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_1
    return-void
.end method

.method private writeHidden(Lorg/apache/poi/xssf/usermodel/XSSFRow;IZ)I
    .locals 3
    .param p1, "xRow"    # Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .param p2, "rowIndex"    # I
    .param p3, "hidden"    # Z

    .line 2682
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v0

    .line 2683
    .local v0, "level":S
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->rowIterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2684
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object p1, v2

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    .line 2687
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v2

    if-ge v2, p2, :cond_1

    .line 2688
    goto :goto_0

    .line 2691
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v2

    if-lt v2, v0, :cond_0

    .line 2692
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v2

    invoke-interface {v2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setHidden(Z)V

    .line 2693
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2697
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    :cond_2
    return p2
.end method


# virtual methods
.method public addHyperlink(Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;)V
    .locals 1
    .param p1, "hyperlink"    # Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 3273
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3274
    return-void
.end method

.method public varargs addIgnoredErrors(Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;)V
    .locals 1
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "ignoredErrorTypes"    # [Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    .line 4413
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->validate(Lorg/apache/poi/ss/SpreadsheetVersion;)V

    .line 4414
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addIgnoredErrors(Ljava/lang/String;[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;)V

    .line 4415
    return-void
.end method

.method public varargs addIgnoredErrors(Lorg/apache/poi/ss/util/CellReference;[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;)V
    .locals 1
    .param p1, "cell"    # Lorg/apache/poi/ss/util/CellReference;
    .param p2, "ignoredErrorTypes"    # [Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    .line 4403
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addIgnoredErrors(Ljava/lang/String;[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;)V

    .line 4404
    return-void
.end method

.method public addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I
    .locals 1
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 367
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;Z)I

    move-result v0

    return v0
.end method

.method public addMergedRegionUnsafe(Lorg/apache/poi/ss/util/CellRangeAddress;)I
    .locals 1
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 385
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;Z)I

    move-result v0

    return v0
.end method

.method public addValidationData(Lorg/apache/poi/ss/usermodel/DataValidation;)V
    .locals 6
    .param p1, "dataValidation"    # Lorg/apache/poi/ss/usermodel/DataValidation;

    .line 3918
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;

    .line 3919
    .local v0, "xssfDataValidation":Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getDataValidations()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;

    move-result-object v1

    .line 3920
    .local v1, "dataValidations":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;
    if-nez v1, :cond_0

    .line 3921
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewDataValidations()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;

    move-result-object v1

    .line 3923
    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;->sizeOfDataValidationArray()I

    move-result v2

    .line 3924
    .local v2, "currentCount":I
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;->addNewDataValidation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    move-result-object v3

    .line 3925
    .local v3, "newval":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->getCtDdataValidation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 3926
    add-int/lit8 v4, v2, 0x1

    int-to-long v4, v4

    invoke-interface {v1, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;->setCount(J)V

    .line 3928
    return-void
.end method

.method public autoSizeColumn(I)V
    .locals 1
    .param p1, "column"    # I

    .line 531
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->autoSizeColumn(IZ)V

    .line 532
    return-void
.end method

.method public autoSizeColumn(IZ)V
    .locals 7
    .param p1, "column"    # I
    .param p2, "useMergedCells"    # Z

    .line 549
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/SheetUtil;->getColumnWidth(Lorg/apache/poi/ss/usermodel/Sheet;IZ)D

    move-result-wide v0

    .line 551
    .local v0, "width":D
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    .line 552
    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    mul-double v0, v0, v2

    .line 553
    const v2, 0xff00

    .line 554
    .local v2, "maxColumnWidth":I
    int-to-double v3, v2

    cmpl-double v5, v0, v3

    if-lez v5, :cond_0

    .line 555
    int-to-double v0, v2

    .line 557
    :cond_0
    double-to-int v3, v0

    invoke-virtual {p0, p1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setColumnWidth(II)V

    .line 558
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v4, p1

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColBestFit(JZ)V

    .line 560
    .end local v2    # "maxColumnWidth":I
    :cond_1
    return-void
.end method

.method protected commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3449
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 3450
    .local v0, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 3451
    .local v1, "out":Ljava/io/OutputStream;
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->write(Ljava/io/OutputStream;)V

    .line 3452
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 3453
    return-void
.end method

.method public copyRows(IIILorg/apache/poi/ss/usermodel/CellCopyPolicy;)V
    .locals 1
    .param p1, "srcStartRow"    # I
    .param p2, "srcEndRow"    # I
    .param p3, "destStartRow"    # I
    .param p4, "cellCopyPolicy"    # Lorg/apache/poi/ss/usermodel/CellCopyPolicy;

    .line 2946
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRows(IIZ)Ljava/util/List;

    move-result-object v0

    .line 2947
    .local v0, "srcRows":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFRow;>;"
    invoke-virtual {p0, v0, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->copyRows(Ljava/util/List;ILorg/apache/poi/ss/usermodel/CellCopyPolicy;)V

    .line 2948
    return-void
.end method

.method public copyRows(Ljava/util/List;ILorg/apache/poi/ss/usermodel/CellCopyPolicy;)V
    .locals 12
    .param p2, "destStartRow"    # I
    .param p3, "policy"    # Lorg/apache/poi/ss/usermodel/CellCopyPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/ss/usermodel/Row;",
            ">;I",
            "Lorg/apache/poi/ss/usermodel/CellCopyPolicy;",
            ")V"
        }
    .end annotation

    .line 2854
    .local p1, "srcRows":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/poi/ss/usermodel/Row;>;"
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_9

    .line 2857
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Row;

    .line 2858
    .local v1, "srcStartRow":Lorg/apache/poi/ss/usermodel/Row;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/Row;

    .line 2860
    .local v2, "srcEndRow":Lorg/apache/poi/ss/usermodel/Row;
    if-eqz v1, :cond_8

    .line 2864
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v3

    .line 2865
    .local v3, "srcStartRowNum":I
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v4

    .line 2869
    .local v4, "srcEndRowNum":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 2870
    .local v5, "size":I
    const/4 v6, 0x1

    .local v6, "index":I
    :goto_0
    if-ge v6, v5, :cond_3

    .line 2871
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/ss/usermodel/Row;

    .line 2872
    .local v7, "curRow":Lorg/apache/poi/ss/usermodel/Row;
    if-eqz v7, :cond_2

    .line 2878
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v8

    invoke-interface {v7}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v9

    const-string v10, "Got srcRows["

    if-ne v8, v9, :cond_1

    .line 2882
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v8

    invoke-interface {v7}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v9

    if-ne v8, v9, :cond_0

    .line 2870
    .end local v7    # "curRow":Lorg/apache/poi/ss/usermodel/Row;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2883
    .restart local v7    # "curRow":Lorg/apache/poi/ss/usermodel/Row;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "All rows in srcRows must belong to the same sheet. Expected all rows from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2879
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "All rows in srcRows must belong to the same sheet in the same workbook.Expected all rows from same workbook ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "). "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] from different workbook ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2873
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "srcRows may not contain null rows. Found null row at index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2891
    .end local v6    # "index":I
    .end local v7    # "curRow":Lorg/apache/poi/ss/usermodel/Row;
    :cond_3
    new-instance v6, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;

    invoke-direct {v6, p3}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;-><init>(Lorg/apache/poi/ss/usermodel/CellCopyPolicy;)V

    .line 2894
    .local v6, "options":Lorg/apache/poi/ss/usermodel/CellCopyPolicy;
    invoke-virtual {v6, v0}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->setCopyMergedRegions(Z)V

    .line 2899
    move v0, p2

    .line 2900
    .local v0, "r":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/ss/usermodel/Row;

    .line 2902
    .local v8, "srcRow":Lorg/apache/poi/ss/usermodel/Row;
    invoke-virtual {p3}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCondenseRows()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2903
    add-int/lit8 v9, v0, 0x1

    .local v0, "destRowNum":I
    .local v9, "r":I
    goto :goto_2

    .line 2905
    .end local v9    # "r":I
    .local v0, "r":I
    :cond_4
    invoke-interface {v8}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v9

    sub-int/2addr v9, v3

    .line 2906
    .local v9, "shift":I
    add-int v10, p2, v9

    move v9, v0

    move v0, v10

    .line 2909
    .local v0, "destRowNum":I
    .local v9, "r":I
    :goto_2
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v10

    .line 2910
    .local v10, "destRow":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    invoke-virtual {v10, v8, v6}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->copyRowFrom(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/usermodel/CellCopyPolicy;)V

    .line 2911
    .end local v0    # "destRowNum":I
    .end local v8    # "srcRow":Lorg/apache/poi/ss/usermodel/Row;
    .end local v10    # "destRow":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    move v0, v9

    goto :goto_1

    .line 2918
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "r":I
    .local v0, "r":I
    :cond_5
    invoke-virtual {p3}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyMergedRegions()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2920
    sub-int v7, p2, v3

    .line 2921
    .local v7, "shift":I
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 2922
    .local v9, "srcRegion":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v9}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v10

    if-gt v3, v10, :cond_6

    invoke-virtual {v9}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v10

    if-gt v10, v4, :cond_6

    .line 2924
    invoke-virtual {v9}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v10

    .line 2925
    .local v10, "destRegion":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v10}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {v10, v11}, Lorg/apache/poi/ss/util/CellRangeAddress;->setFirstRow(I)V

    .line 2926
    invoke-virtual {v10}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {v10, v11}, Lorg/apache/poi/ss/util/CellRangeAddress;->setLastRow(I)V

    .line 2927
    invoke-virtual {p0, v10}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I

    .line 2928
    .end local v9    # "srcRegion":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v10    # "destRegion":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_6
    goto :goto_3

    .line 2931
    .end local v7    # "shift":I
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_7
    return-void

    .line 2861
    .end local v0    # "r":I
    .end local v3    # "srcStartRowNum":I
    .end local v4    # "srcEndRowNum":I
    .end local v5    # "size":I
    .end local v6    # "options":Lorg/apache/poi/ss/usermodel/CellCopyPolicy;
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "copyRows: First row cannot be null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2855
    .end local v1    # "srcStartRow":Lorg/apache/poi/ss/usermodel/Row;
    .end local v2    # "srcEndRow":Lorg/apache/poi/ss/usermodel/Row;
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No rows to copy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic createDrawingPatriarch()Lorg/apache/poi/ss/usermodel/Drawing;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v0

    return-object v0
.end method

.method public createDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    .locals 6

    .line 597
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;

    move-result-object v0

    .line 598
    .local v0, "ctDrawing":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;
    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v1

    return-object v1

    .line 603
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->DRAWINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 604
    .local v1, "drawingNumber":I
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->DRAWINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {p0, v2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getNextPartNumber(Lorg/apache/poi/POIXMLRelation;I)I

    move-result v1

    .line 605
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->DRAWINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v1, v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object v2

    .line 606
    .local v2, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    .line 607
    .local v3, "drawing":Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v4

    .line 611
    .local v4, "relId":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;

    move-result-object v0

    .line 612
    invoke-interface {v0, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;->setId(Ljava/lang/String;)V

    .line 615
    return-object v3
.end method

.method public createFreezePane(II)V
    .locals 0
    .param p1, "colSplit"    # I
    .param p2, "rowSplit"    # I

    .line 677
    invoke-virtual {p0, p1, p2, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createFreezePane(IIII)V

    .line 678
    return-void
.end method

.method public createFreezePane(IIII)V
    .locals 5
    .param p1, "colSplit"    # I
    .param p2, "rowSplit"    # I
    .param p3, "leftmostColumn"    # I
    .param p4, "topRow"    # I

    .line 694
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    .line 697
    .local v0, "ctView":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;
    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 698
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->isSetPane()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 699
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->unsetPane()V

    .line 701
    :cond_0
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setSelectionArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;)V

    .line 702
    return-void

    .line 705
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->isSetPane()Z

    move-result v2

    if-nez v2, :cond_2

    .line 706
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->addNewPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    .line 708
    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    move-result-object v2

    .line 710
    .local v2, "pane":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;
    if-lez p1, :cond_3

    .line 711
    int-to-double v3, p1

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setXSplit(D)V

    goto :goto_0

    .line 713
    :cond_3
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->isSetXSplit()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 714
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->unsetXSplit()V

    .line 717
    :cond_4
    :goto_0
    if-lez p2, :cond_5

    .line 718
    int-to-double v3, p2

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setYSplit(D)V

    goto :goto_1

    .line 720
    :cond_5
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->isSetYSplit()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 721
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->unsetYSplit()V

    .line 725
    :cond_6
    :goto_1
    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState;->FROZEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState$Enum;

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setState(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState$Enum;)V

    .line 726
    const/4 v3, 0x0

    if-nez p2, :cond_7

    .line 727
    new-instance v4, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v4, v3, p3}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setTopLeftCell(Ljava/lang/String;)V

    .line 728
    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane;->TOP_RIGHT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setActivePane(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;)V

    goto :goto_2

    .line 729
    :cond_7
    if-nez p1, :cond_8

    .line 730
    new-instance v4, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v4, p4, v3}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setTopLeftCell(Ljava/lang/String;)V

    .line 731
    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane;->BOTTOM_LEFT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setActivePane(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;)V

    goto :goto_2

    .line 733
    :cond_8
    new-instance v3, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v3, p4, p3}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setTopLeftCell(Ljava/lang/String;)V

    .line 734
    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane;->BOTTOM_RIGHT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setActivePane(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;)V

    .line 737
    :goto_2
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setSelectionArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;)V

    .line 738
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->addNewSelection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;

    move-result-object v1

    .line 739
    .local v1, "sel":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->getActivePane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;->setPane(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;)V

    .line 740
    return-void
.end method

.method public createPivotTable(Lorg/apache/poi/ss/usermodel/Name;Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    .locals 2
    .param p1, "source"    # Lorg/apache/poi/ss/usermodel/Name;
    .param p2, "position"    # Lorg/apache/poi/ss/util/CellReference;

    .line 4352
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Name;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createPivotTable(Lorg/apache/poi/ss/usermodel/Name;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    move-result-object v0

    return-object v0
.end method

.method public createPivotTable(Lorg/apache/poi/ss/usermodel/Name;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    .locals 3
    .param p1, "source"    # Lorg/apache/poi/ss/usermodel/Name;
    .param p2, "position"    # Lorg/apache/poi/ss/util/CellReference;
    .param p3, "sourceSheet"    # Lorg/apache/poi/ss/usermodel/Sheet;

    .line 4330
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Name;->getSheetName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Name;->getSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4331
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The named range references another sheet than the defined source sheet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4335
    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet$3;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/apache/poi/ss/usermodel/Name;)V

    invoke-direct {p0, p2, p3, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createPivotTable(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    move-result-object v0

    return-object v0
.end method

.method public createPivotTable(Lorg/apache/poi/ss/usermodel/Table;Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    .locals 2
    .param p1, "source"    # Lorg/apache/poi/ss/usermodel/Table;
    .param p2, "position"    # Lorg/apache/poi/ss/util/CellReference;

    .line 4364
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet$4;

    invoke-direct {v1, p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet$4;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/apache/poi/ss/usermodel/Table;)V

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createPivotTable(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    move-result-object v0

    return-object v0
.end method

.method public createPivotTable(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    .locals 3
    .param p1, "source"    # Lorg/apache/poi/ss/util/AreaReference;
    .param p2, "position"    # Lorg/apache/poi/ss/util/CellReference;

    .line 4311
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v0

    .line 4312
    .local v0, "sourceSheetName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4313
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v1

    .line 4314
    .local v1, "sourceSheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createPivotTable(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    move-result-object v2

    return-object v2

    .line 4316
    .end local v1    # "sourceSheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    :cond_0
    invoke-virtual {p0, p1, p2, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createPivotTable(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    move-result-object v1

    return-object v1
.end method

.method public createPivotTable(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    .locals 4
    .param p1, "source"    # Lorg/apache/poi/ss/util/AreaReference;
    .param p2, "position"    # Lorg/apache/poi/ss/util/CellReference;
    .param p3, "sourceSheet"    # Lorg/apache/poi/ss/usermodel/Sheet;

    .line 4256
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v0

    .line 4257
    .local v0, "sourceSheetName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4258
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The area is referenced in another sheet than the defined source sheet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4262
    :cond_1
    :goto_0
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet$2;

    invoke-direct {v1, p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet$2;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/apache/poi/ss/util/AreaReference;)V

    invoke-direct {p0, p2, p3, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createPivotTable(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic createRow(I)Lorg/apache/poi/ss/usermodel/Row;
    .locals 1
    .param p1, "x0"    # I

    .line 149
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    return-object v0
.end method

.method public createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .locals 5
    .param p1, "rownum"    # I

    .line 755
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 757
    .local v0, "rownumI":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    .line 758
    .local v1, "prev":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    if-eqz v1, :cond_1

    .line 764
    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getFirstCellNum()S

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 765
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getFirstCellNum()S

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->removeCell(Lorg/apache/poi/ss/usermodel/Cell;)V

    goto :goto_0

    .line 768
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v2

    .line 769
    .local v2, "ctRow":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto :goto_2

    .line 771
    .end local v2    # "ctRow":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le p1, v2, :cond_2

    goto :goto_1

    .line 777
    :cond_2
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v2, v0}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v2

    .line 778
    .local v2, "idx":I
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetData()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;->insertNewRow(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v3

    move-object v2, v3

    .local v3, "ctRow":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;
    goto :goto_2

    .line 773
    .end local v2    # "idx":I
    .end local v3    # "ctRow":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;
    :cond_3
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetData()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;->addNewRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v2

    .line 781
    .local v2, "ctRow":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;
    :goto_2
    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-direct {v3, v2, p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    .line 782
    .local v3, "r":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    invoke-virtual {v3, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->setRowNum(I)V

    .line 783
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v4, v0, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    return-object v3
.end method

.method public createSplitPane(IIIII)V
    .locals 2
    .param p1, "xSplitPos"    # I
    .param p2, "ySplitPos"    # I
    .param p3, "leftmostColumn"    # I
    .param p4, "topRow"    # I
    .param p5, "activePane"    # I

    .line 802
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createFreezePane(IIII)V

    .line 803
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState;->SPLIT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setState(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState$Enum;)V

    .line 804
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    move-result-object v0

    invoke-static {p5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setActivePane(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;)V

    .line 805
    return-void
.end method

.method public createTable()Lorg/apache/poi/xssf/usermodel/XSSFTable;
    .locals 8

    .line 3962
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetTableParts()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3963
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewTableParts()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableParts;

    .line 3966
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getTableParts()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableParts;

    move-result-object v0

    .line 3967
    .local v0, "tblParts":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableParts;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableParts;->addNewTablePart()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTablePart;

    move-result-object v1

    .line 3971
    .local v1, "tbl":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTablePart;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->TABLE:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 3972
    .local v2, "tableNumber":I
    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->TABLE:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v2, v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object v3

    .line 3973
    .local v3, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v3}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    .line 3974
    .local v4, "table":Lorg/apache/poi/xssf/usermodel/XSSFTable;
    invoke-virtual {v3}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTablePart;->setId(Ljava/lang/String;)V

    .line 3975
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v5

    int-to-long v6, v2

    invoke-interface {v5, v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->setId(J)V

    .line 3977
    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->tables:Ljava/util/SortedMap;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTablePart;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3979
    return-object v4
.end method

.method public disableLocking()V
    .locals 2

    .line 3659
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSheet(Z)V

    .line 3660
    return-void
.end method

.method public enableLocking()V
    .locals 2

    .line 3652
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSheet(Z)V

    .line 3653
    return-void
.end method

.method public findEndOfRowOutlineGroup(I)I
    .locals 4
    .param p1, "row"    # I

    .line 2752
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v0

    .line 2754
    .local v0, "level":S
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getLastRowNum()I

    move-result v1

    .line 2755
    .local v1, "lastRowNum":I
    move v2, p1

    .local v2, "currentRow":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2756
    invoke-virtual {p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v3

    if-ge v3, v0, :cond_0

    .line 2758
    goto :goto_1

    .line 2755
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2761
    :cond_1
    :goto_1
    return v2
.end method

.method public getActiveCell()Lorg/apache/poi/ss/util/CellAddress;
    .locals 2

    .line 3304
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSelection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;->getActiveCell()Ljava/lang/String;

    move-result-object v0

    .line 3305
    .local v0, "address":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3306
    const/4 v1, 0x0

    return-object v1

    .line 3308
    :cond_0
    new-instance v1, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public getAutobreaks()Z
    .locals 3

    .line 2092
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    .line 2093
    .local v0, "sheetPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->isSetPageSetUpPr()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getPageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object v1

    .line 2095
    .local v1, "psSetup":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;
    :goto_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;->getAutoPageBreaks()Z

    move-result v2

    return v2
.end method

.method protected getCTDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;
    .locals 1

    .line 664
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;

    move-result-object v0

    return-object v0
.end method

.method protected getCTLegacyDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;
    .locals 1

    .line 667
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getLegacyDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;

    move-result-object v0

    return-object v0
.end method

.method public getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 339
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    return-object v0
.end method

.method public bridge synthetic getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/ss/usermodel/Comment;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 149
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object v0

    return-object v0
.end method

.method public getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;
    .locals 8
    .param p1, "address"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 815
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 816
    return-object v1

    .line 819
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v0

    .line 820
    .local v0, "row":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v2

    .line 822
    .local v2, "column":I
    new-instance v3, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v3, v0, v2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    .line 823
    .local v3, "ref":Lorg/apache/poi/ss/util/CellAddress;
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    invoke-virtual {v4, v3}, Lorg/apache/poi/xssf/model/CommentsTable;->getCTComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v4

    .line 824
    .local v4, "ctComment":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    if-nez v4, :cond_1

    .line 825
    return-object v1

    .line 828
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getVMLDrawing(Z)Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    move-result-object v5

    .line 829
    .local v5, "vml":Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;
    new-instance v6, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    iget-object v7, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->findCommentShape(II)Lcom/microsoft/schemas/vml/CTShape;

    move-result-object v1

    :goto_0
    invoke-direct {v6, v7, v4, v1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;-><init>(Lorg/apache/poi/xssf/model/CommentsTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Lcom/microsoft/schemas/vml/CTShape;)V

    return-object v6
.end method

.method public getCellComments()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            "Lorg/apache/poi/xssf/usermodel/XSSFComment;",
            ">;"
        }
    .end annotation

    .line 840
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    if-nez v0, :cond_0

    .line 841
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 843
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/CommentsTable;->getCellComments()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getColumnBreaks()[I
    .locals 1

    .line 914
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetColBreaks()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getBreaks(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;)[I

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    :goto_0
    return-object v0
.end method

.method public getColumnHelper()Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;
    .locals 1

    .line 343
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    return-object v0
.end method

.method public getColumnOutlineLevel(I)I
    .locals 4
    .param p1, "columnIndex"    # I

    .line 4388
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v1, p1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    .line 4389
    .local v0, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    if-nez v0, :cond_0

    .line 4390
    return v3

    .line 4392
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v1

    return v1
.end method

.method public getColumnStyle(I)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 3
    .param p1, "column"    # I

    .line 1002
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColDefaultStyle(J)I

    move-result v0

    .line 1003
    .local v0, "idx":I
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    int-to-short v2, v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCellStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object v1

    return-object v1
.end method

.method public getColumnWidth(I)I
    .locals 5
    .param p1, "columnIndex"    # I

    .line 932
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v1, p1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    .line 933
    .local v0, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetWidth()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getWidth()D

    move-result-wide v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultColumnWidth()I

    move-result v1

    int-to-double v1, v1

    .line 934
    .local v1, "width":D
    :goto_1
    const-wide/high16 v3, 0x4070000000000000L    # 256.0

    mul-double v3, v3, v1

    double-to-int v3, v3

    return v3
.end method

.method public getColumnWidthInPixels(I)F
    .locals 5
    .param p1, "columnIndex"    # I

    .line 947
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnWidth(I)I

    move-result v0

    int-to-float v0, v0

    .line 948
    .local v0, "widthIn256":F
    float-to-double v1, v0

    const-wide/high16 v3, 0x4070000000000000L    # 256.0

    div-double/2addr v1, v3

    const-wide v3, 0x401c01bda0000000L    # 7.001699924468994

    mul-double v1, v1, v3

    double-to-float v1, v1

    return v1
.end method

.method protected getCommentsTable(Z)Lorg/apache/poi/xssf/model/CommentsTable;
    .locals 4
    .param p1, "create"    # Z

    .line 3366
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 3370
    :try_start_0
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHEET_COMMENTS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getSheetId()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {p0, v0, v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/model/CommentsTable;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/PartAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3378
    goto :goto_0

    .line 3372
    :catch_0
    move-exception v0

    .line 3376
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/PartAlreadyExistsException;
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHEET_COMMENTS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/model/CommentsTable;

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    .line 3380
    .end local v0    # "e":Lorg/apache/poi/openxml4j/exceptions/PartAlreadyExistsException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    return-object v0
.end method

.method public getDataValidationHelper()Lorg/apache/poi/ss/usermodel/DataValidationHelper;
    .locals 1

    .line 3886
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->dataValidationHelper:Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;

    return-object v0
.end method

.method public getDataValidations()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;",
            ">;"
        }
    .end annotation

    .line 3891
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3892
    .local v0, "xssfValidations":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;>;"
    move-object/from16 v1, p0

    iget-object v2, v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getDataValidations()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;

    move-result-object v2

    .line 3893
    .local v2, "dataValidations":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;->getCount()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_4

    .line 3894
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;->getDataValidationArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    move-result-object v3

    .local v3, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 3895
    .local v6, "ctDataValidation":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;
    new-instance v7, Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-direct {v7}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>()V

    .line 3898
    .local v7, "addressList":Lorg/apache/poi/ss/util/CellRangeAddressList;
    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getSqref()Ljava/util/List;

    move-result-object v8

    .line 3899
    .local v8, "sqref":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 3900
    .local v10, "stRef":Ljava/lang/String;
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 3901
    .local v11, "regions":[Ljava/lang/String;
    move-object v12, v11

    .local v12, "arr$":[Ljava/lang/String;
    array-length v13, v12

    .local v13, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_2
    if-ge v14, v13, :cond_1

    aget-object v15, v12, v14

    .line 3902
    .local v15, "region":Ljava/lang/String;
    const-string v1, ":"

    invoke-virtual {v15, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3903
    .local v1, "parts":[Ljava/lang/String;
    move-object/from16 v16, v2

    .end local v2    # "dataValidations":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;
    .local v16, "dataValidations":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;
    new-instance v2, Lorg/apache/poi/ss/util/CellReference;

    const/16 v17, 0x0

    move-object/from16 v18, v3

    .end local v3    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;
    .local v18, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;
    aget-object v3, v1, v17

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    .line 3904
    .local v2, "begin":Lorg/apache/poi/ss/util/CellReference;
    array-length v3, v1

    move/from16 v17, v4

    .end local v4    # "len$":I
    .local v17, "len$":I
    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    new-instance v3, Lorg/apache/poi/ss/util/CellReference;

    aget-object v4, v1, v4

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    move-object v3, v2

    .line 3905
    .local v3, "end":Lorg/apache/poi/ss/util/CellReference;
    :goto_3
    new-instance v4, Lorg/apache/poi/ss/util/CellRangeAddress;

    move-object/from16 v19, v1

    .end local v1    # "parts":[Ljava/lang/String;
    .local v19, "parts":[Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    move-object/from16 v20, v8

    .end local v8    # "sqref":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "sqref":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v8

    move-object/from16 v21, v9

    .end local v9    # "i$":Ljava/util/Iterator;
    .local v21, "i$":Ljava/util/Iterator;
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v9

    move-object/from16 v22, v2

    .end local v2    # "begin":Lorg/apache/poi/ss/util/CellReference;
    .local v22, "begin":Lorg/apache/poi/ss/util/CellReference;
    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v2

    invoke-direct {v4, v1, v8, v9, v2}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    move-object v1, v4

    .line 3906
    .local v1, "cellRangeAddress":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v7, v1}, Lorg/apache/poi/ss/util/CellRangeAddressList;->addCellRangeAddress(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 3901
    .end local v1    # "cellRangeAddress":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v3    # "end":Lorg/apache/poi/ss/util/CellReference;
    .end local v15    # "region":Ljava/lang/String;
    .end local v19    # "parts":[Ljava/lang/String;
    .end local v22    # "begin":Lorg/apache/poi/ss/util/CellReference;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move/from16 v4, v17

    move-object/from16 v3, v18

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    goto :goto_2

    .end local v16    # "dataValidations":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;
    .end local v17    # "len$":I
    .end local v18    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;
    .end local v20    # "sqref":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    .local v2, "dataValidations":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;
    .local v3, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;
    .restart local v4    # "len$":I
    .restart local v8    # "sqref":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    move/from16 v17, v4

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    .line 3908
    .end local v2    # "dataValidations":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;
    .end local v3    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;
    .end local v4    # "len$":I
    .end local v8    # "sqref":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "stRef":Ljava/lang/String;
    .end local v11    # "regions":[Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v13    # "len$":I
    .end local v14    # "i$":I
    .restart local v16    # "dataValidations":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;
    .restart local v17    # "len$":I
    .restart local v18    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;
    .restart local v20    # "sqref":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "i$":Ljava/util/Iterator;
    move-object/from16 v1, p0

    goto :goto_1

    .line 3899
    .end local v16    # "dataValidations":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;
    .end local v17    # "len$":I
    .end local v18    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;
    .end local v20    # "sqref":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    .restart local v2    # "dataValidations":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;
    .restart local v3    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;
    .restart local v4    # "len$":I
    .restart local v8    # "sqref":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    move/from16 v17, v4

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    .line 3909
    .end local v2    # "dataValidations":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;
    .end local v3    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;
    .end local v4    # "len$":I
    .end local v8    # "sqref":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .restart local v16    # "dataValidations":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;
    .restart local v17    # "len$":I
    .restart local v18    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;
    .restart local v20    # "sqref":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;

    invoke-direct {v1, v7, v6}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;-><init>(Lorg/apache/poi/ss/util/CellRangeAddressList;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;)V

    .line 3910
    .local v1, "xssfDataValidation":Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3894
    .end local v1    # "xssfDataValidation":Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;
    .end local v6    # "ctDataValidation":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;
    .end local v7    # "addressList":Lorg/apache/poi/ss/util/CellRangeAddressList;
    .end local v20    # "sqref":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    .end local v16    # "dataValidations":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;
    .end local v17    # "len$":I
    .end local v18    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;
    .restart local v2    # "dataValidations":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;
    .restart local v3    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;
    .restart local v4    # "len$":I
    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    move/from16 v17, v4

    .end local v2    # "dataValidations":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;
    .end local v3    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;
    .end local v4    # "len$":I
    .restart local v16    # "dataValidations":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;
    .restart local v17    # "len$":I
    .restart local v18    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;
    goto :goto_4

    .line 3893
    .end local v5    # "i$":I
    .end local v16    # "dataValidations":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;
    .end local v17    # "len$":I
    .end local v18    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;
    .restart local v2    # "dataValidations":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;
    :cond_4
    move-object/from16 v16, v2

    .line 3913
    .end local v2    # "dataValidations":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;
    .restart local v16    # "dataValidations":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;
    :goto_4
    return-object v0
.end method

.method public getDefaultColumnWidth()I
    .locals 3

    .line 962
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v0

    .line 963
    .local v0, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;
    if-nez v0, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->getBaseColWidth()J

    move-result-wide v1

    long-to-int v1, v1

    :goto_0
    return v1
.end method

.method public getDefaultRowHeight()S
    .locals 2

    .line 974
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultRowHeightInPoints()F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getDefaultRowHeightInPoints()F
    .locals 3

    .line 985
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v0

    .line 986
    .local v0, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->getDefaultRowHeight()D

    move-result-wide v1

    :goto_0
    double-to-float v1, v1

    return v1
.end method

.method public getDisplayGuts()Z
    .locals 3

    .line 1036
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    .line 1037
    .local v0, "sheetPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v1

    .line 1038
    .local v1, "outlinePr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;
    :goto_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;->getShowOutlineSymbols()Z

    move-result v2

    return v2
.end method

.method public bridge synthetic getDrawingPatriarch()Lorg/apache/poi/ss/usermodel/Drawing;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v0

    return-object v0
.end method

.method public getDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    .locals 7

    .line 571
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;

    move-result-object v0

    .line 572
    .local v0, "ctDrawing":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;
    if-eqz v0, :cond_2

    .line 574
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRelationParts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 575
    .local v2, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    .line 576
    .local v3, "p":Lorg/apache/poi/POIXMLDocumentPart;
    instance-of v4, v3, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    if-eqz v4, :cond_0

    .line 577
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    .line 578
    .local v4, "dr":Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v5

    .line 579
    .local v5, "drId":Ljava/lang/String;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 580
    return-object v4

    .line 584
    .end local v2    # "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    .end local v3    # "p":Lorg/apache/poi/POIXMLDocumentPart;
    .end local v4    # "dr":Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    .end local v5    # "drId":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 585
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find drawing with id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in the list of the sheet\'s relationships"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 587
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getEvenFooter()Lorg/apache/poi/ss/usermodel/Footer;
    .locals 2

    .line 1157
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFEvenFooter;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFEvenFooter;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    return-object v0
.end method

.method public getEvenHeader()Lorg/apache/poi/ss/usermodel/Header;
    .locals 2

    .line 1180
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFEvenHeader;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFEvenHeader;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    return-object v0
.end method

.method getFirstCellInArrayFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;)Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .locals 4
    .param p1, "cell"    # Lorg/apache/poi/xssf/usermodel/XSSFCell;

    .line 3818
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->arrayFormulas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 3819
    .local v1, "range":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->isInRange(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3820
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v2

    return-object v2

    .end local v1    # "range":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_0
    goto :goto_0

    .line 3823
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstFooter()Lorg/apache/poi/ss/usermodel/Footer;
    .locals 2

    .line 1164
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFFirstFooter;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFFirstFooter;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    return-object v0
.end method

.method public getFirstHeader()Lorg/apache/poi/ss/usermodel/Header;
    .locals 2

    .line 1187
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFFirstHeader;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFFirstHeader;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    return-object v0
.end method

.method public getFirstRowNum()I
    .locals 1

    .line 1084
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getFitToPage()Z
    .locals 3

    .line 1094
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    .line 1095
    .local v0, "sheetPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->isSetPageSetUpPr()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getPageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object v1

    .line 1097
    .local v1, "psSetup":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;
    :goto_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;->getFitToPage()Z

    move-result v2

    return v2
.end method

.method public getFooter()Lorg/apache/poi/ss/usermodel/Footer;
    .locals 1

    .line 1127
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getOddFooter()Lorg/apache/poi/ss/usermodel/Footer;

    move-result-object v0

    return-object v0
.end method

.method public getForceFormulaRecalculation()Z
    .locals 2

    .line 2058
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetCalcPr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2059
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetCalcPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetCalcPr;

    move-result-object v0

    .line 2060
    .local v0, "calc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetCalcPr;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetCalcPr;->getFullCalcOnLoad()Z

    move-result v1

    return v1

    .line 2062
    .end local v0    # "calc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetCalcPr;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHeader()Lorg/apache/poi/ss/usermodel/Header;
    .locals 1

    .line 1141
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getOddHeader()Lorg/apache/poi/ss/usermodel/Header;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontallyCenter()Z
    .locals 2

    .line 1196
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    .line 1197
    .local v0, "opts":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->getHorizontalCentered()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic getHyperlink(II)Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .line 149
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getHyperlink(II)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 149
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public getHyperlink(II)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 855
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    .locals 4
    .param p1, "addr"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 867
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, "ref":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    .line 869
    .local v2, "hyperlink":Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getCellRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 870
    return-object v2

    .end local v2    # "hyperlink":Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    :cond_0
    goto :goto_0

    .line 873
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getHyperlinkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;",
            ">;"
        }
    .end annotation

    .line 883
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIgnoredErrors()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/usermodel/IgnoredErrorType;",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;>;"
        }
    .end annotation

    .line 4424
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4425
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/poi/ss/usermodel/IgnoredErrorType;Ljava/util/Set<Lorg/apache/poi/ss/util/CellRangeAddress;>;>;"
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetIgnoredErrors()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4426
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getIgnoredErrors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredErrors;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredErrors;->getIgnoredErrorList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;

    .line 4427
    .local v2, "err":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;
    invoke-static {v2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFIgnoredErrorHelper;->getErrorTypes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    .line 4428
    .local v4, "errType":Lorg/apache/poi/ss/usermodel/IgnoredErrorType;
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4429
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4431
    :cond_0
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->getSqref()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 4432
    .local v6, "ref":Ljava/lang/Object;
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v4    # "errType":Lorg/apache/poi/ss/usermodel/IgnoredErrorType;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "ref":Ljava/lang/Object;
    :cond_1
    goto :goto_1

    .end local v2    # "err":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    goto :goto_0

    .line 4437
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    return-object v0
.end method

.method public getLastRowNum()I
    .locals 1

    .line 1202
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getLeftCol()S
    .locals 3

    .line 1207
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->getSheetViewArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getTopLeftCell()Ljava/lang/String;

    move-result-object v0

    .line 1208
    .local v0, "cellRef":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1209
    return v1

    .line 1211
    :cond_0
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    .line 1212
    .local v1, "cellReference":Lorg/apache/poi/ss/util/CellReference;
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v2

    return v2
.end method

.method public getMargin(S)D
    .locals 4
    .param p1, "margin"    # S

    .line 1229
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPageMargins()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1230
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1233
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    move-result-object v0

    .line 1234
    .local v0, "pageMargins":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;
    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 1246
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->getFooter()D

    move-result-wide v1

    return-wide v1

    .line 1248
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown margin constant:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1244
    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->getHeader()D

    move-result-wide v1

    return-wide v1

    .line 1242
    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->getBottom()D

    move-result-wide v1

    return-wide v1

    .line 1240
    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->getTop()D

    move-result-wide v1

    return-wide v1

    .line 1238
    :cond_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->getRight()D

    move-result-wide v1

    return-wide v1

    .line 1236
    :cond_6
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->getLeft()D

    move-result-wide v1

    return-wide v1
.end method

.method public getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 4
    .param p1, "index"    # I

    .line 1301
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getMergeCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;

    move-result-object v0

    .line 1302
    .local v0, "ctMergeCells":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;
    if-eqz v0, :cond_0

    .line 1306
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->getMergeCellArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;

    move-result-object v1

    .line 1307
    .local v1, "ctMergeCell":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;->getRef()Ljava/lang/String;

    move-result-object v2

    .line 1308
    .local v2, "ref":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v3

    return-object v3

    .line 1303
    .end local v1    # "ctMergeCell":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;
    .end local v2    # "ref":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This worksheet does not contain merged regions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMergedRegions()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation

    .line 1319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1320
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getMergeCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;

    move-result-object v1

    .line 1321
    .local v1, "ctMergeCells":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;
    if-nez v1, :cond_0

    .line 1322
    return-object v0

    .line 1325
    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->getMergeCellArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;

    move-result-object v2

    .local v2, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 1326
    .local v5, "ctMergeCell":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;->getRef()Ljava/lang/String;

    move-result-object v6

    .line 1327
    .local v6, "ref":Ljava/lang/String;
    invoke-static {v6}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1325
    .end local v5    # "ctMergeCell":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;
    .end local v6    # "ref":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1329
    .end local v2    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_1
    return-object v0
.end method

.method public getNumHyperlinks()I
    .locals 1

    .line 1344
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNumMergedRegions()I
    .locals 2

    .line 1339
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getMergeCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;

    move-result-object v0

    .line 1340
    .local v0, "ctMergeCells":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->sizeOfMergeCellArray()I

    move-result v1

    :goto_0
    return v1
.end method

.method protected getNumberOfComments()I
    .locals 1

    .line 3331
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/CommentsTable;->getNumberOfComments()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getOddFooter()Lorg/apache/poi/ss/usermodel/Footer;
    .locals 2

    .line 1150
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFOddFooter;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFOddFooter;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    return-object v0
.end method

.method public getOddHeader()Lorg/apache/poi/ss/usermodel/Header;
    .locals 2

    .line 1173
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFOddHeader;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFOddHeader;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    return-object v0
.end method

.method public getPaneInformation()Lorg/apache/poi/ss/util/PaneInformation;
    .locals 12

    .line 1354
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    move-result-object v0

    .line 1356
    .local v0, "pane":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1357
    return-object v1

    .line 1360
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->isSetTopLeftCell()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->getTopLeftCell()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    .line 1361
    .local v1, "cellRef":Lorg/apache/poi/ss/util/CellReference;
    :cond_1
    new-instance v9, Lorg/apache/poi/ss/util/PaneInformation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->getXSplit()D

    move-result-wide v2

    double-to-int v2, v2

    int-to-short v3, v2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->getYSplit()D

    move-result-wide v4

    double-to-int v2, v4

    int-to-short v4, v2

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v5

    :goto_0
    int-to-short v5, v5

    if-nez v1, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v6

    :goto_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->getActivePane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;

    move-result-object v7

    invoke-virtual {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;->intValue()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    int-to-byte v7, v7

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->getState()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState$Enum;

    move-result-object v10

    sget-object v11, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState;->FROZEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState$Enum;

    if-ne v10, v11, :cond_4

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lorg/apache/poi/ss/util/PaneInformation;-><init>(SSSSBZ)V

    return-object v9
.end method

.method public getPhysicalNumberOfRows()I
    .locals 1

    .line 1373
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    return v0
.end method

.method public getPivotTables()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;",
            ">;"
        }
    .end annotation

    .line 4377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4378
    .local v0, "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;>;"
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPivotTables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    .line 4379
    .local v2, "table":Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 4380
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v2    # "table":Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    :cond_0
    goto :goto_0

    .line 4383
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public bridge synthetic getPrintSetup()Lorg/apache/poi/ss/usermodel/PrintSetup;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPrintSetup()Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;

    move-result-object v0

    return-object v0
.end method

.method public getPrintSetup()Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;
    .locals 2

    .line 1383
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;)V

    return-object v0
.end method

.method public getProtect()Z
    .locals 1

    .line 1393
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    return v0
.end method

.method public getRepeatingColumns()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    .line 4050
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRepeatingRowsOrColums(Z)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatingRows()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    .line 4044
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRepeatingRowsOrColums(Z)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRow(I)Lorg/apache/poi/ss/usermodel/Row;
    .locals 1
    .param p1, "x0"    # I

    .line 149
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    return-object v0
.end method

.method public getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .locals 2
    .param p1, "rownum"    # I

    .line 1452
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1453
    .local v0, "rownumI":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    return-object v1
.end method

.method public getRowBreaks()[I
    .locals 1

    .line 1499
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetRowBreaks()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getRowBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getBreaks(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;)[I

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    :goto_0
    return-object v0
.end method

.method public getRowSumsBelow()Z
    .locals 3

    .line 1518
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    .line 1519
    .local v0, "sheetPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->isSetOutlinePr()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1521
    .local v1, "outlinePr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;->getSummaryBelow()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    return v2
.end method

.method public getRowSumsRight()Z
    .locals 3

    .line 1557
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    .line 1558
    .local v0, "sheetPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->isSetOutlinePr()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v1

    .line 1560
    .local v1, "outlinePr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;
    :goto_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;->getSummaryRight()Z

    move-result v2

    return v2
.end method

.method public getScenarioProtect()Z
    .locals 1

    .line 1597
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetProtection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getScenarios()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSharedFormula(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;
    .locals 2
    .param p1, "sid"    # I
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 3417
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sharedFormulas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    return-object v0
.end method

.method public bridge synthetic getSheetConditionalFormatting()Lorg/apache/poi/ss/usermodel/SheetConditionalFormatting;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetConditionalFormatting()Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getSheetConditionalFormatting()Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;
    .locals 1

    .line 4009
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    return-object v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 4

    .line 4019
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    .line 4020
    .local v0, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;
    if-nez v0, :cond_0

    .line 4021
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    .line 4023
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->isSetTabColor()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4024
    const/4 v1, 0x0

    return-object v1

    .line 4026
    :cond_1
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getTabColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v1
.end method

.method public getTables()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFTable;",
            ">;"
        }
    .end annotation

    .line 3986
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->tables:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTopRow()S
    .locals 3

    .line 1608
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getTopLeftCell()Ljava/lang/String;

    move-result-object v0

    .line 1609
    .local v0, "cellRef":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1610
    const/4 v1, 0x0

    return v1

    .line 1612
    :cond_0
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    .line 1613
    .local v1, "cellReference":Lorg/apache/poi/ss/util/CellReference;
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    int-to-short v2, v2

    return v2
.end method

.method protected getVMLDrawing(Z)Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;
    .locals 11
    .param p1, "autoCreate"    # Z

    .line 626
    const/4 v0, 0x0

    .line 627
    .local v0, "drawing":Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTLegacyDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;

    move-result-object v1

    .line 628
    .local v1, "ctDrawing":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 629
    if-eqz p1, :cond_3

    .line 631
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v4

    sget-object v5, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->VML_DRAWINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v3

    .line 632
    .local v4, "drawingNumber":I
    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->VML_DRAWINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v5

    invoke-virtual {p0, v3, v5, v4, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object v2

    .line 633
    .local v2, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    .line 634
    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v3

    .line 638
    .local v3, "relId":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewLegacyDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;

    move-result-object v1

    .line 639
    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;->setId(Ljava/lang/String;)V

    .line 640
    .end local v2    # "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    .end local v3    # "relId":Ljava/lang/String;
    .end local v4    # "drawingNumber":I
    goto :goto_2

    .line 643
    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;->getId()Ljava/lang/String;

    move-result-object v4

    .line 644
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRelationParts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 645
    .local v6, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v6}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v7

    .line 646
    .local v7, "p":Lorg/apache/poi/POIXMLDocumentPart;
    instance-of v8, v7, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    if-eqz v8, :cond_1

    .line 647
    move-object v8, v7

    check-cast v8, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    .line 648
    .local v8, "dr":Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;
    invoke-virtual {v6}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v9

    .line 649
    .local v9, "drId":Ljava/lang/String;
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 650
    move-object v0, v8

    .line 651
    goto :goto_1

    .line 655
    .end local v6    # "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    .end local v7    # "p":Lorg/apache/poi/POIXMLDocumentPart;
    .end local v8    # "dr":Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;
    .end local v9    # "drId":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 656
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 657
    sget-object v5, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v6, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t find VML drawing with id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in the list of the sheet\'s relationships"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-virtual {v5, v6, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 660
    .end local v4    # "id":Ljava/lang/String;
    :cond_3
    :goto_2
    return-object v0
.end method

.method public getVerticallyCenter()Z
    .locals 2

    .line 1623
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    .line 1624
    .local v0, "opts":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->getVerticalCentered()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    return-object v0
.end method

.method public getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .locals 1

    .line 209
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    return-object v0
.end method

.method public groupColumn(II)V
    .locals 2
    .param p1, "fromColumn"    # I
    .param p2, "toColumn"    # I

    .line 1632
    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->groupColumn1Based(II)V

    .line 1633
    return-void
.end method

.method public groupRow(II)V
    .locals 5
    .param p1, "fromRow"    # I
    .param p2, "toRow"    # I

    .line 1686
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 1687
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v1

    .line 1688
    .local v1, "xrow":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    if-nez v1, :cond_0

    .line 1689
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v1

    .line 1691
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v2

    .line 1692
    .local v2, "ctrow":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v3

    .line 1693
    .local v3, "outlineLevel":S
    add-int/lit8 v4, v3, 0x1

    int-to-short v4, v4

    invoke-interface {v2, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setOutlineLevel(S)V

    .line 1686
    .end local v1    # "xrow":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .end local v2    # "ctrow":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;
    .end local v3    # "outlineLevel":S
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1695
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setSheetFormatPrOutlineLevelRow()V

    .line 1696
    return-void
.end method

.method public hasComments()Z
    .locals 1

    .line 3327
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/CommentsTable;->getNumberOfComments()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAutoFilterLocked()Z
    .locals 1

    .line 3540
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getAutoFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isCellInArrayFormulaContext(Lorg/apache/poi/xssf/usermodel/XSSFCell;)Z
    .locals 4
    .param p1, "cell"    # Lorg/apache/poi/xssf/usermodel/XSSFCell;

    .line 3809
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->arrayFormulas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 3810
    .local v1, "range":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->isInRange(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3811
    const/4 v2, 0x1

    return v2

    .end local v1    # "range":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_0
    goto :goto_0

    .line 3814
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isColumnBroken(I)Z
    .locals 5
    .param p1, "column"    # I

    .line 1720
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnBreaks()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 1721
    .local v3, "colBreak":I
    if-ne v3, p1, :cond_0

    .line 1722
    const/4 v4, 0x1

    return v4

    .line 1720
    .end local v3    # "colBreak":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1725
    .end local v0    # "arr$":[I
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isColumnHidden(I)Z
    .locals 4
    .param p1, "columnIndex"    # I

    .line 1736
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v1, p1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    .line 1737
    .local v0, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public isDeleteColumnsLocked()Z
    .locals 1

    .line 3547
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getDeleteColumns()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDeleteRowsLocked()Z
    .locals 1

    .line 3554
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getDeleteRows()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisplayFormulas()Z
    .locals 1

    .line 1747
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getShowFormulas()Z

    move-result v0

    return v0
.end method

.method public isDisplayGridlines()Z
    .locals 1

    .line 1759
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getShowGridLines()Z

    move-result v0

    return v0
.end method

.method public isDisplayRowColHeadings()Z
    .locals 1

    .line 1789
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getShowRowColHeaders()Z

    move-result v0

    return v0
.end method

.method public isDisplayZeros()Z
    .locals 2

    .line 1061
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    .line 1062
    .local v0, "view":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getShowZeros()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public isFormatCellsLocked()Z
    .locals 1

    .line 3561
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getFormatCells()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFormatColumnsLocked()Z
    .locals 1

    .line 3568
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getFormatColumns()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFormatRowsLocked()Z
    .locals 1

    .line 3575
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getFormatRows()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInsertColumnsLocked()Z
    .locals 1

    .line 3582
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getInsertColumns()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInsertHyperlinksLocked()Z
    .locals 1

    .line 3589
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getInsertHyperlinks()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInsertRowsLocked()Z
    .locals 1

    .line 3596
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getInsertRows()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isObjectsLocked()Z
    .locals 1

    .line 3617
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getObjects()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPivotTablesLocked()Z
    .locals 1

    .line 3603
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getPivotTables()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrintGridlines()Z
    .locals 2

    .line 1815
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    .line 1816
    .local v0, "opts":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->getGridLines()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPrintRowAndColumnHeadings()Z
    .locals 2

    .line 1838
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    .line 1839
    .local v0, "opts":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->getHeadings()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRightToLeft()Z
    .locals 2

    .line 1024
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    .line 1025
    .local v0, "view":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getRightToLeft()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRowBroken(I)Z
    .locals 5
    .param p1, "row"    # I

    .line 1862
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRowBreaks()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 1863
    .local v3, "rowBreak":I
    if-ne v3, p1, :cond_0

    .line 1864
    const/4 v4, 0x1

    return v4

    .line 1862
    .end local v3    # "rowBreak":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1867
    .end local v0    # "arr$":[I
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isScenariosLocked()Z
    .locals 1

    .line 3624
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getScenarios()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelectLockedCellsLocked()Z
    .locals 1

    .line 3631
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getSelectLockedCells()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelectUnlockedCellsLocked()Z
    .locals 1

    .line 3638
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getSelectUnlockedCells()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelected()Z
    .locals 2

    .line 3243
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    .line 3244
    .local v0, "view":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getTabSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSheetLocked()Z
    .locals 1

    .line 3645
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetProtection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getSheet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSheetProtectionEnabled()Z
    .locals 1

    .line 3805
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetProtection()Z

    move-result v0

    return v0
.end method

.method public isSortLocked()Z
    .locals 1

    .line 3610
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getSort()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Row;",
            ">;"
        }
    .end annotation

    .line 2082
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->rowIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lockAutoFilter(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3668
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setAutoFilter(Z)V

    .line 3669
    return-void
.end method

.method public lockDeleteColumns(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3677
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setDeleteColumns(Z)V

    .line 3678
    return-void
.end method

.method public lockDeleteRows(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3686
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setDeleteRows(Z)V

    .line 3687
    return-void
.end method

.method public lockFormatCells(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3695
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setFormatCells(Z)V

    .line 3696
    return-void
.end method

.method public lockFormatColumns(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3704
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setFormatColumns(Z)V

    .line 3705
    return-void
.end method

.method public lockFormatRows(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3713
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setFormatRows(Z)V

    .line 3714
    return-void
.end method

.method public lockInsertColumns(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3722
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setInsertColumns(Z)V

    .line 3723
    return-void
.end method

.method public lockInsertHyperlinks(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3731
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setInsertHyperlinks(Z)V

    .line 3732
    return-void
.end method

.method public lockInsertRows(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3740
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setInsertRows(Z)V

    .line 3741
    return-void
.end method

.method public lockObjects(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3767
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setObjects(Z)V

    .line 3768
    return-void
.end method

.method public lockPivotTables(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3749
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setPivotTables(Z)V

    .line 3750
    return-void
.end method

.method public lockScenarios(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3776
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setScenarios(Z)V

    .line 3777
    return-void
.end method

.method public lockSelectLockedCells(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3785
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSelectLockedCells(Z)V

    .line 3786
    return-void
.end method

.method public lockSelectUnlockedCells(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3794
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSelectUnlockedCells(Z)V

    .line 3795
    return-void
.end method

.method public lockSort(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3758
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSort(Z)V

    .line 3759
    return-void
.end method

.method protected onDocumentCreate()V
    .locals 2

    .line 256
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->newSheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 257
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->initRows(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;)V

    .line 258
    new-instance v0, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    .line 260
    return-void
.end method

.method protected onDocumentRead()V
    .locals 2

    .line 218
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    nop

    .line 222
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method onReadCell(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V
    .locals 10
    .param p1, "cell"    # Lorg/apache/poi/xssf/usermodel/XSSFCell;

    .line 3422
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v0

    .line 3423
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v1

    .line 3424
    .local v1, "f":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    move-result-object v2

    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType;->SHARED:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    if-ne v2, v3, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->isSetRef()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getStringValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3427
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    .line 3428
    .local v2, "sf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v3

    .line 3429
    .local v3, "sfRef":Lorg/apache/poi/ss/util/CellRangeAddress;
    new-instance v4, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v4, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    .line 3433
    .local v4, "cellRef":Lorg/apache/poi/ss/util/CellReference;
    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v5

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v6

    if-gt v5, v6, :cond_0

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v5

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 3434
    :cond_0
    new-instance v5, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v6

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v7

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v8

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v5

    .line 3437
    .local v5, "effectiveRef":Ljava/lang/String;
    invoke-interface {v2, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->setRef(Ljava/lang/String;)V

    .line 3440
    .end local v5    # "effectiveRef":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sharedFormulas:Ljava/util/Map;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getSi()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3442
    .end local v2    # "sf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;
    .end local v3    # "sfRef":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v4    # "cellRef":Lorg/apache/poi/ss/util/CellReference;
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    move-result-object v2

    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType;->ARRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    if-ne v2, v3, :cond_3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getRef()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3443
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->arrayFormulas:Ljava/util/List;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3445
    :cond_3
    return-void
.end method

.method protected onSheetDelete()V
    .locals 4

    .line 4450
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRelationParts()Ljava/util/List;

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

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 4451
    .local v1, "part":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    if-eqz v2, :cond_0

    .line 4453
    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-virtual {p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeTable(Lorg/apache/poi/xssf/usermodel/XSSFTable;)V

    .line 4454
    goto :goto_0

    .line 4456
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeRelation(Lorg/apache/poi/POIXMLDocumentPart;Z)Z

    goto :goto_0

    .line 4458
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "part":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    :cond_1
    return-void
.end method

.method public protectSheet(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .line 1405
    if-eqz p1, :cond_0

    .line 1406
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    .line 1407
    .local v0, "sheetProtection":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setSheetPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    .line 1408
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSheet(Z)V

    .line 1409
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setScenarios(Z)V

    .line 1410
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setObjects(Z)V

    .line 1411
    .end local v0    # "sheetProtection":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;
    goto :goto_0

    .line 1412
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->unsetSheetProtection()V

    .line 1414
    :goto_0
    return-void
.end method

.method protected read(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;->getWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    nop

    .line 231
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->initRows(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;)V

    .line 232
    new-instance v0, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    .line 234
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRelationParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 235
    .local v1, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v2

    .line 236
    .local v2, "p":Lorg/apache/poi/POIXMLDocumentPart;
    instance-of v3, v2, Lorg/apache/poi/xssf/model/CommentsTable;

    if-eqz v3, :cond_0

    .line 237
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/xssf/model/CommentsTable;

    iput-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    .line 239
    :cond_0
    instance-of v3, v2, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    if-eqz v3, :cond_1

    .line 240
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->tables:Ljava/util/SortedMap;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_1
    instance-of v3, v2, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    if-eqz v3, :cond_2

    .line 243
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPivotTables()Ljava/util/List;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v1    # "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    .end local v2    # "p":Lorg/apache/poi/POIXMLDocumentPart;
    :cond_2
    goto :goto_0

    .line 248
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->initHyperlinks()V

    .line 249
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected readOleObject(J)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;
    .locals 16
    .param p1, "shapeId"    # J

    .line 4467
    const-string v1, "can\'t close reader"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetOleObjects()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 4468
    return-object v2

    .line 4472
    :cond_0
    const-string v3, "declare namespace p=\'http://schemas.openxmlformats.org/spreadsheetml/2006/main\' .//p:oleObject"

    .line 4473
    .local v3, "xquery":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getOleObjects()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v4

    .line 4475
    .local v4, "cur":Lorg/apache/xmlbeans/XmlCursor;
    :try_start_0
    invoke-interface {v4, v3}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    .line 4476
    const/4 v0, 0x0

    move-object v5, v0

    .line 4477
    .local v5, "coo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;
    :cond_1
    :goto_0
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4478
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v6, "shapeId"

    invoke-direct {v0, v2, v6}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Lorg/apache/xmlbeans/XmlCursor;->getAttributeText(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 4479
    .local v6, "sId":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v0, v7, p1

    if-eqz v0, :cond_2

    .line 4480
    goto :goto_0

    .line 4483
    :cond_2
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    move-object v7, v0

    .line 4484
    .local v7, "xObj":Lorg/apache/xmlbeans/XmlObject;
    nop

    instance-of v0, v7, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    if-eqz v0, :cond_3

    .line 4486
    move-object v0, v7

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    move-object v5, v0

    .end local v5    # "coo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;
    .local v0, "coo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;
    goto/16 :goto_4

    .line 4488
    .end local v0    # "coo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;
    .restart local v5    # "coo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;
    :cond_3
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->newXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v8, v0

    .line 4490
    .local v8, "reader":Ljavax/xml/stream/XMLStreamReader;
    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x0

    :try_start_1
    invoke-static {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects$Factory;->parse(Ljavax/xml/stream/XMLStreamReader;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;

    move-result-object v0

    move-object v13, v0

    .line 4491
    .local v13, "coos":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;
    invoke-interface {v13}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;->sizeOfOleObjectArray()I

    move-result v0
    :try_end_1
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_4

    .line 4499
    :try_start_2
    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->close()V
    :try_end_2
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4502
    :goto_1
    goto :goto_0

    .line 4500
    :catch_0
    move-exception v0

    move-object v14, v0

    move-object v0, v14

    .line 4501
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    :try_start_3
    sget-object v14, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->logger:Lorg/apache/poi/util/POILogger;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v12

    aput-object v0, v10, v9

    invoke-virtual {v14, v11, v10}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "e":Ljavax/xml/stream/XMLStreamException;
    goto :goto_1

    .line 4494
    :cond_4
    :try_start_4
    invoke-interface {v13, v12}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;->getOleObjectArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    move-result-object v0
    :try_end_4
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v5, v0

    .line 4499
    .end local v13    # "coos":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;
    :try_start_5
    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->close()V
    :try_end_5
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4502
    :goto_2
    goto :goto_4

    .line 4500
    :catch_1
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 4501
    .restart local v0    # "e":Ljavax/xml/stream/XMLStreamException;
    :try_start_6
    sget-object v13, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->logger:Lorg/apache/poi/util/POILogger;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v12

    aput-object v0, v10, v9

    invoke-virtual {v13, v11, v10}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4503
    .end local v0    # "e":Ljavax/xml/stream/XMLStreamException;
    :goto_3
    goto :goto_4

    .line 4498
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_5

    .line 4495
    :catch_2
    move-exception v0

    .line 4496
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    :try_start_7
    sget-object v13, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->logger:Lorg/apache/poi/util/POILogger;

    new-array v14, v10, [Ljava/lang/Object;

    const-string v15, "can\'t parse CTOleObjects"

    aput-object v15, v14, v12

    aput-object v0, v14, v9

    invoke-virtual {v13, v11, v14}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4499
    .end local v0    # "e":Lorg/apache/xmlbeans/XmlException;
    :try_start_8
    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->close()V
    :try_end_8
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 4500
    :catch_3
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 4501
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    :try_start_9
    sget-object v13, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->logger:Lorg/apache/poi/util/POILogger;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v12

    aput-object v0, v10, v9

    invoke-virtual {v13, v11, v10}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_3

    .line 4508
    .end local v0    # "e":Ljavax/xml/stream/XMLStreamException;
    .end local v8    # "reader":Ljavax/xml/stream/XMLStreamReader;
    :goto_4
    const-string v0, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    const-string v8, "objectPr"

    invoke-interface {v4, v0, v8}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v0, :cond_5

    .line 4509
    goto :goto_7

    .line 4511
    .end local v6    # "sId":Ljava/lang/String;
    .end local v7    # "xObj":Lorg/apache/xmlbeans/XmlObject;
    :cond_5
    goto/16 :goto_0

    .line 4499
    .restart local v6    # "sId":Ljava/lang/String;
    .restart local v7    # "xObj":Lorg/apache/xmlbeans/XmlObject;
    .restart local v8    # "reader":Ljavax/xml/stream/XMLStreamReader;
    :goto_5
    :try_start_a
    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->close()V
    :try_end_a
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 4502
    goto :goto_6

    .line 4500
    :catch_4
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 4501
    .restart local v0    # "e":Ljavax/xml/stream/XMLStreamException;
    :try_start_b
    sget-object v13, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->logger:Lorg/apache/poi/util/POILogger;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v12

    aput-object v0, v10, v9

    invoke-virtual {v13, v11, v10}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 4502
    .end local v0    # "e":Ljavax/xml/stream/XMLStreamException;
    :goto_6
    nop

    .end local v3    # "xquery":Ljava/lang/String;
    .end local v4    # "cur":Lorg/apache/xmlbeans/XmlCursor;
    .end local p1    # "shapeId":J
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 4512
    .end local v6    # "sId":Ljava/lang/String;
    .end local v7    # "xObj":Lorg/apache/xmlbeans/XmlObject;
    .end local v8    # "reader":Ljavax/xml/stream/XMLStreamReader;
    .restart local v3    # "xquery":Ljava/lang/String;
    .restart local v4    # "cur":Lorg/apache/xmlbeans/XmlCursor;
    .restart local p1    # "shapeId":J
    :cond_6
    :goto_7
    if-nez v5, :cond_7

    goto :goto_8

    :cond_7
    move-object v2, v5

    .line 4514
    :goto_8
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object v2

    .end local v5    # "coo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;
    :catchall_1
    move-exception v0

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw v0
.end method

.method public removeArrayFormula(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellRange;
    .locals 6
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange<",
            "Lorg/apache/poi/xssf/usermodel/XSSFCell;",
            ">;"
        }
    .end annotation

    .line 3866
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    if-ne v0, p0, :cond_3

    .line 3869
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->arrayFormulas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 3870
    .local v1, "range":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->isInRange(Lorg/apache/poi/ss/usermodel/Cell;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3871
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->arrayFormulas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3872
    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;

    move-result-object v2

    .line 3873
    .local v2, "cr":Lorg/apache/poi/ss/usermodel/CellRange;, "Lorg/apache/poi/ss/usermodel/CellRange<Lorg/apache/poi/xssf/usermodel/XSSFCell;>;"
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/CellRange;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    .line 3874
    .local v4, "c":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    sget-object v5, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .end local v4    # "c":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    goto :goto_1

    .line 3876
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v2

    .end local v1    # "range":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v2    # "cr":Lorg/apache/poi/ss/usermodel/CellRange;, "Lorg/apache/poi/ss/usermodel/CellRange<Lorg/apache/poi/xssf/usermodel/XSSFCell;>;"
    :cond_1
    goto :goto_0

    .line 3879
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getR()Ljava/lang/String;

    move-result-object v0

    .line 3880
    .local v0, "ref":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cell "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not part of an array formula."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3867
    .end local v0    # "ref":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified cell does not belong to this sheet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeColumnBreak(I)V
    .locals 1
    .param p1, "column"    # I

    .line 1905
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetColBreaks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1906
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeBreak(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;)V

    .line 1908
    :cond_0
    return-void
.end method

.method public removeHyperlink(II)V
    .locals 4
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 3287
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v0

    .line 3288
    .local v0, "ref":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3289
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    .line 3290
    .local v2, "hyperlink":Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getCellRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3291
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 3292
    return-void

    .line 3294
    .end local v2    # "hyperlink":Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    :cond_0
    goto :goto_0

    .line 3295
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;>;"
    :cond_1
    return-void
.end method

.method public removeMergedRegion(I)V
    .locals 3
    .param p1, "index"    # I

    .line 1917
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetMergeCells()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1918
    return-void

    .line 1921
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getMergeCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;

    move-result-object v0

    .line 1922
    .local v0, "ctMergeCells":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->sizeOfMergeCellArray()I

    move-result v1

    .line 1923
    .local v1, "size":I
    if-ltz p1, :cond_2

    if-ge p1, v1, :cond_2

    .line 1924
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 1925
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->removeMergeCell(I)V

    goto :goto_0

    .line 1927
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->unsetMergeCells()V

    .line 1929
    :goto_0
    return-void

    .line 1923
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public removeMergedRegions(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1942
    .local p1, "indices":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetMergeCells()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1943
    return-void

    .line 1946
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getMergeCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;

    move-result-object v0

    .line 1947
    .local v0, "ctMergeCells":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->sizeOfMergeCellArray()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1949
    .local v1, "newMergeCells":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;>;"
    const/4 v2, 0x0

    .line 1950
    .local v2, "idx":I
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->getMergeCellArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;

    move-result-object v3

    .local v3, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 1951
    .local v6, "mc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "idx":I
    .local v7, "idx":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1952
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1950
    .end local v6    # "mc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    move v2, v7

    goto :goto_0

    .line 1956
    .end local v3    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    .end local v7    # "idx":I
    .restart local v2    # "idx":I
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1957
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->unsetMergeCells()V

    goto :goto_1

    .line 1959
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;

    .line 1960
    .local v3, "newMergeCellsArray":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;

    invoke-interface {v0, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->setMergeCellArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;)V

    .line 1962
    .end local v3    # "newMergeCellsArray":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;
    :goto_1
    return-void
.end method

.method public removeRow(Lorg/apache/poi/ss/usermodel/Row;)V
    .locals 7
    .param p1, "row"    # Lorg/apache/poi/ss/usermodel/Row;

    .line 1971
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    if-ne v0, p0, :cond_4

    .line 1975
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1976
    .local v0, "cellsToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/poi/xssf/usermodel/XSSFCell;>;"
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/Cell;

    .line 1977
    .local v2, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1980
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    .line 1981
    .local v2, "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    invoke-interface {p1, v2}, Lorg/apache/poi/ss/usermodel/Row;->removeCell(Lorg/apache/poi/ss/usermodel/Cell;)V

    .end local v2    # "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    goto :goto_1

    .line 1985
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v1

    .line 1986
    .local v1, "rowNum":I
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 1988
    .local v2, "rowNumI":Ljava/lang/Integer;
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v3, v2}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/SortedMap;->size()I

    move-result v3

    .line 1989
    .local v3, "idx":I
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v4, v2}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1990
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetData()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;->removeRow(I)V

    .line 1993
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    if-eqz v4, :cond_3

    .line 1994
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCellComments()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/util/CellAddress;

    .line 1995
    .local v5, "ref":Lorg/apache/poi/ss/util/CellAddress;
    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v6

    if-ne v6, v1, :cond_2

    .line 1996
    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    invoke-virtual {v6, v5}, Lorg/apache/poi/xssf/model/CommentsTable;->removeComment(Lorg/apache/poi/ss/util/CellAddress;)Z

    .end local v5    # "ref":Lorg/apache/poi/ss/util/CellAddress;
    :cond_2
    goto :goto_2

    .line 2000
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void

    .line 1972
    .end local v0    # "cellsToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/poi/xssf/usermodel/XSSFCell;>;"
    .end local v1    # "rowNum":I
    .end local v2    # "rowNumI":Ljava/lang/Integer;
    .end local v3    # "idx":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified row does not belong to this sheet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeRowBreak(I)V
    .locals 1
    .param p1, "row"    # I

    .line 2007
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetRowBreaks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2008
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getRowBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeBreak(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;)V

    .line 2010
    :cond_0
    return-void
.end method

.method public removeTable(Lorg/apache/poi/xssf/usermodel/XSSFTable;)V
    .locals 8
    .param p1, "t"    # Lorg/apache/poi/xssf/usermodel/XSSFTable;

    .line 3994
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getId()J

    move-result-wide v0

    .line 3995
    .local v0, "id":J
    const/4 v2, 0x0

    .line 3997
    .local v2, "toDelete":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->tables:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3998
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getId()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-nez v7, :cond_0

    move-object v2, v4

    goto :goto_0

    .line 4000
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    :cond_1
    if-eqz v2, :cond_2

    .line 4001
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeRelation(Lorg/apache/poi/POIXMLDocumentPart;Z)Z

    .line 4002
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->tables:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4003
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->onTableDelete()V

    .line 4005
    :cond_2
    return-void
.end method

.method public rowIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Row;",
            ">;"
        }
    .end annotation

    .line 2073
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setActiveCell(Lorg/apache/poi/ss/util/CellAddress;)V
    .locals 4
    .param p1, "address"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 3316
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object v0

    .line 3317
    .local v0, "ref":Ljava/lang/String;
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSelection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;

    move-result-object v1

    .line 3318
    .local v1, "ctsel":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;
    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;->setActiveCell(Ljava/lang/String;)V

    .line 3319
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;->setSqref(Ljava/util/List;)V

    .line 3320
    return-void
.end method

.method public setArrayFormula(Ljava/lang/String;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;
    .locals 3
    .param p1, "formula"    # Ljava/lang/String;
    .param p2, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange<",
            "Lorg/apache/poi/xssf/usermodel/XSSFCell;",
            ">;"
        }
    .end annotation

    .line 3856
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;

    move-result-object v0

    .line 3858
    .local v0, "cr":Lorg/apache/poi/ss/usermodel/CellRange;, "Lorg/apache/poi/ss/usermodel/CellRange<Lorg/apache/poi/xssf/usermodel/XSSFCell;>;"
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/CellRange;->getTopLeftCell()Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    .line 3859
    .local v1, "mainArrayFormulaCell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellArrayFormula(Ljava/lang/String;Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 3860
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->arrayFormulas:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3861
    return-object v0
.end method

.method public bridge synthetic setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/AutoFilter;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 149
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/xssf/usermodel/XSSFAutoFilter;

    move-result-object v0

    return-object v0
.end method

.method public setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/xssf/usermodel/XSSFAutoFilter;
    .locals 14
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 3932
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getAutoFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;

    move-result-object v0

    .line 3933
    .local v0, "af":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;
    if-nez v0, :cond_0

    .line 3934
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewAutoFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;

    move-result-object v0

    .line 3937
    :cond_0
    new-instance v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    .line 3939
    .local v1, "norm":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v2

    .line 3940
    .local v2, "ref":Ljava/lang/String;
    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;->setRef(Ljava/lang/String;)V

    .line 3942
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v3

    .line 3943
    .local v3, "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v4

    .line 3944
    .local v4, "sheetIndex":I
    const-string v5, "_xlnm._FilterDatabase"

    invoke-virtual {v3, v5, v4}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v6

    .line 3945
    .local v6, "name":Lorg/apache/poi/xssf/usermodel/XSSFName;
    if-nez v6, :cond_1

    .line 3946
    invoke-virtual {v3, v5, v4}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v6

    .line 3949
    :cond_1
    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getCTName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setHidden(Z)V

    .line 3950
    new-instance v5, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v10

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v11

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v8, v5

    invoke-direct/range {v8 .. v13}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    .line 3951
    .local v5, "r1":Lorg/apache/poi/ss/util/CellReference;
    new-instance v13, Lorg/apache/poi/ss/util/CellReference;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v9

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v10

    const/4 v11, 0x1

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    .line 3952
    .local v7, "r2":Lorg/apache/poi/ss/util/CellReference;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3953
    .local v8, "fmla":Ljava/lang/String;
    invoke-virtual {v6, v8}, Lorg/apache/poi/xssf/usermodel/XSSFName;->setRefersToFormula(Ljava/lang/String;)V

    .line 3955
    new-instance v9, Lorg/apache/poi/xssf/usermodel/XSSFAutoFilter;

    invoke-direct {v9, p0}, Lorg/apache/poi/xssf/usermodel/XSSFAutoFilter;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    return-object v9
.end method

.method public setAutobreaks(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 2105
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    .line 2106
    .local v0, "sheetPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->isSetPageSetUpPr()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getPageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->addNewPageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object v1

    .line 2107
    .local v1, "psSetup":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;->setAutoPageBreaks(Z)V

    .line 2108
    return-void
.end method

.method public setColumnBreak(I)V
    .locals 2
    .param p1, "column"    # I

    .line 2123
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isColumnBroken(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2124
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetColBreaks()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewColBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    move-result-object v0

    .line 2125
    .local v0, "pgBreak":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;
    :goto_0
    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setBreak(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;I)V

    .line 2127
    .end local v0    # "pgBreak":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;
    :cond_1
    return-void
.end method

.method public setColumnGroupCollapsed(IZ)V
    .locals 0
    .param p1, "columnNumber"    # I
    .param p2, "collapsed"    # Z

    .line 2131
    if-eqz p2, :cond_0

    .line 2132
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->collapseColumn(I)V

    goto :goto_0

    .line 2134
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->expandColumn(I)V

    .line 2136
    :goto_0
    return-void
.end method

.method public setColumnHidden(IZ)V
    .locals 3
    .param p1, "columnIndex"    # I
    .param p2, "hidden"    # Z

    .line 2477
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, p2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColHidden(JZ)V

    .line 2478
    return-void
.end method

.method public setColumnWidth(II)V
    .locals 7
    .param p1, "columnIndex"    # I
    .param p2, "width"    # I

    .line 2526
    const v0, 0xff00

    if-gt p2, v0, :cond_0

    .line 2530
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v1, p1

    int-to-double v3, p2

    const-wide/high16 v5, 0x4070000000000000L    # 256.0

    div-double/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColWidth(JD)V

    .line 2531
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v1, p1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setCustomWidth(JZ)V

    .line 2532
    return-void

    .line 2527
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The maximum column width for an individual cell is 255 characters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDefaultColumnStyle(ILorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 3
    .param p1, "column"    # I
    .param p2, "style"    # Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 2536
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, p2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColDefaultStyle(JLorg/apache/poi/ss/usermodel/CellStyle;)V

    .line 2537
    return-void
.end method

.method public setDefaultColumnWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .line 2548
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->setBaseColWidth(J)V

    .line 2549
    return-void
.end method

.method public setDefaultRowHeight(S)V
    .locals 2
    .param p1, "height"    # S

    .line 2559
    int-to-float v0, p1

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setDefaultRowHeightInPoints(F)V

    .line 2560
    return-void
.end method

.method public setDefaultRowHeightInPoints(F)V
    .locals 3
    .param p1, "height"    # F

    .line 2569
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v0

    .line 2570
    .local v0, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;
    float-to-double v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->setDefaultRowHeight(D)V

    .line 2571
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->setCustomHeight(Z)V

    .line 2572
    return-void
.end method

.method public setDisplayFormulas(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 2581
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setShowFormulas(Z)V

    .line 2582
    return-void
.end method

.method public setDisplayGridlines(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 1773
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setShowGridLines(Z)V

    .line 1774
    return-void
.end method

.method public setDisplayGuts(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 1048
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    .line 1049
    .local v0, "sheetPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->addNewOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v1

    .line 1050
    .local v1, "outlinePr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;->setShowOutlineSymbols(Z)V

    .line 1051
    return-void
.end method

.method public setDisplayRowColHeadings(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 1805
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setShowRowColHeaders(Z)V

    .line 1806
    return-void
.end method

.method public setDisplayZeros(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 1073
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    .line 1074
    .local v0, "view":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setShowZeros(Z)V

    .line 1075
    return-void
.end method

.method public setFitToPage(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 2598
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypePageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;->setFitToPage(Z)V

    .line 2599
    return-void
.end method

.method public setForceFormulaRecalculation(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 2034
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCTWorkbook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getCalcPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;

    move-result-object v0

    .line 2036
    .local v0, "calcPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetCalcPr()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2038
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetCalcPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetCalcPr;

    move-result-object v1

    .line 2039
    .local v1, "calc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetCalcPr;
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetCalcPr;->setFullCalcOnLoad(Z)V

    .line 2040
    .end local v1    # "calc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetCalcPr;
    goto :goto_0

    .line 2041
    :cond_0
    if-eqz p1, :cond_1

    .line 2043
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetCalcPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetCalcPr;

    move-result-object v1

    .line 2044
    .restart local v1    # "calc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetCalcPr;
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetCalcPr;->setFullCalcOnLoad(Z)V

    .line 2046
    .end local v1    # "calc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetCalcPr;
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->getCalcMode()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode;->MANUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;

    if-ne v1, v2, :cond_2

    .line 2047
    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode;->AUTO:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->setCalcMode(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;)V

    .line 2050
    :cond_2
    return-void
.end method

.method public setHorizontallyCenter(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 2608
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPrintOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    .line 2610
    .local v0, "opts":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;
    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->setHorizontalCentered(Z)V

    .line 2611
    return-void
.end method

.method public setMargin(SD)V
    .locals 4
    .param p1, "margin"    # S
    .param p2, "size"    # D

    .line 1266
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPageMargins()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    move-result-object v0

    .line 1268
    .local v0, "pageMargins":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;
    :goto_0
    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 1285
    invoke-interface {v0, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setFooter(D)V

    .line 1286
    goto :goto_1

    .line 1288
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown margin constant:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1282
    :cond_2
    invoke-interface {v0, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setHeader(D)V

    .line 1283
    goto :goto_1

    .line 1279
    :cond_3
    invoke-interface {v0, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setBottom(D)V

    .line 1280
    goto :goto_1

    .line 1276
    :cond_4
    invoke-interface {v0, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setTop(D)V

    .line 1277
    goto :goto_1

    .line 1273
    :cond_5
    invoke-interface {v0, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setRight(D)V

    .line 1274
    goto :goto_1

    .line 1270
    :cond_6
    invoke-interface {v0, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setLeft(D)V

    .line 1271
    nop

    .line 1290
    :goto_1
    return-void
.end method

.method public setPrintGridlines(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 1826
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPrintOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    .line 1828
    .local v0, "opts":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;
    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->setGridLines(Z)V

    .line 1829
    return-void
.end method

.method public setPrintRowAndColumnHeadings(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 1849
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPrintOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    .line 1851
    .local v0, "opts":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;
    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->setHeadings(Z)V

    .line 1852
    return-void
.end method

.method public setRepeatingColumns(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1
    .param p1, "columnRangeRef"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 4062
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRepeatingRows()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    .line 4063
    .local v0, "rowRangeRef":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setRepeatingRowsAndColumns(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 4064
    return-void
.end method

.method public setRepeatingRows(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1
    .param p1, "rowRangeRef"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 4055
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRepeatingColumns()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    .line 4056
    .local v0, "columnRangeRef":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setRepeatingRowsAndColumns(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 4057
    return-void
.end method

.method public setRightToLeft(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 1013
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    .line 1014
    .local v0, "view":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setRightToLeft(Z)V

    .line 1015
    return-void
.end method

.method public setRowBreak(I)V
    .locals 2
    .param p1, "row"    # I

    .line 1894
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isRowBroken(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1895
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetRowBreaks()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getRowBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewRowBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    move-result-object v0

    .line 1896
    .local v0, "pgBreak":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;
    :goto_0
    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setBreak(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;I)V

    .line 1898
    .end local v0    # "pgBreak":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;
    :cond_1
    return-void
.end method

.method public setRowGroupCollapsed(IZ)V
    .locals 0
    .param p1, "rowIndex"    # I
    .param p2, "collapse"    # Z

    .line 2639
    if-eqz p2, :cond_0

    .line 2640
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->collapseRow(I)V

    goto :goto_0

    .line 2642
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->expandRow(I)V

    .line 2644
    :goto_0
    return-void
.end method

.method public setRowSumsBelow(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 1539
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->ensureOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;->setSummaryBelow(Z)V

    .line 1540
    return-void
.end method

.method public setRowSumsRight(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 1578
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->ensureOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;->setSummaryRight(Z)V

    .line 1579
    return-void
.end method

.method public setSelected(Z)V
    .locals 5
    .param p1, "value"    # Z

    .line 3260
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v0

    .line 3261
    .local v0, "views":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->getSheetViewArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v1

    .local v1, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 3262
    .local v4, "view":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;
    invoke-interface {v4, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setTabSelected(Z)V

    .line 3261
    .end local v4    # "view":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3264
    .end local v1    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    return-void
.end method

.method public setSheetPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hashAlgo"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 1424
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetProtectionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1425
    return-void

    .line 1427
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->setPassword(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;Ljava/lang/String;)V

    .line 1428
    return-void
.end method

.method public setTabColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 2
    .param p1, "color"    # Lorg/apache/poi/xssf/usermodel/XSSFColor;

    .line 4035
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    .line 4036
    .local v0, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;
    if-nez v0, :cond_0

    .line 4037
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    .line 4039
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->setTabColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 4040
    return-void
.end method

.method public setVerticallyCenter(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 2620
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPrintOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    .line 2622
    .local v0, "opts":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;
    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->setVerticalCentered(Z)V

    .line 2623
    return-void
.end method

.method public setZoom(I)V
    .locals 3
    .param p1, "scale"    # I

    .line 2832
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0x190

    if-gt p1, v0, :cond_0

    .line 2835
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setZoomScale(J)V

    .line 2836
    return-void

    .line 2833
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Valid scale values range from 10 to 400"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shiftRows(III)V
    .locals 6
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "n"    # I

    .line 2966
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->shiftRows(IIIZZ)V

    .line 2967
    return-void
.end method

.method public shiftRows(IIIZZ)V
    .locals 21
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "n"    # I
    .param p4, "copyRowHeight"    # Z
    .param p5, "resetOriginalRowHeight"    # Z

    .line 2987
    move-object/from16 v0, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getVMLDrawing(Z)Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    move-result-object v10

    .line 2990
    .local v10, "vml":Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->rowIterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2991
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    .line 2992
    .local v2, "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v3

    .line 2995
    .local v3, "rownum":I
    invoke-static {v7, v8, v9, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->shouldRemoveRow(IIII)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2998
    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 2999
    .local v4, "rownumI":Ljava/lang/Integer;
    iget-object v5, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v5, v4}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/SortedMap;->size()I

    move-result v5

    .line 3000
    .local v5, "idx":I
    iget-object v6, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetData()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;->removeRow(I)V

    .line 3003
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 3007
    iget-object v6, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    if-eqz v6, :cond_2

    .line 3008
    invoke-virtual {v6}, Lorg/apache/poi/xssf/model/CommentsTable;->getCTComments()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    move-result-object v6

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getCommentList()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;

    move-result-object v6

    .line 3009
    .local v6, "lst":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;
    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;->getCommentArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v11

    .local v11, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    array-length v12, v11

    .local v12, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    if-ge v13, v12, :cond_1

    aget-object v14, v11, v13

    .line 3010
    .local v14, "comment":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    invoke-interface {v14}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object v15

    .line 3011
    .local v15, "strRef":Ljava/lang/String;
    move-object/from16 v16, v1

    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    .local v16, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    new-instance v1, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v1, v15}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    .line 3014
    .local v1, "ref":Lorg/apache/poi/ss/util/CellAddress;
    move-object/from16 v17, v2

    .end local v2    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .local v17, "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 3015
    iget-object v2, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    invoke-virtual {v2, v1}, Lorg/apache/poi/xssf/model/CommentsTable;->removeComment(Lorg/apache/poi/ss/util/CellAddress;)Z

    .line 3016
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v2

    move-object/from16 v18, v4

    .end local v4    # "rownumI":Ljava/lang/Integer;
    .local v18, "rownumI":Ljava/lang/Integer;
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v4

    invoke-virtual {v10, v2, v4}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->removeCommentShape(II)Z

    goto :goto_2

    .line 3014
    .end local v18    # "rownumI":Ljava/lang/Integer;
    .restart local v4    # "rownumI":Ljava/lang/Integer;
    :cond_0
    move-object/from16 v18, v4

    .line 3009
    .end local v1    # "ref":Lorg/apache/poi/ss/util/CellAddress;
    .end local v4    # "rownumI":Ljava/lang/Integer;
    .end local v14    # "comment":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .end local v15    # "strRef":Ljava/lang/String;
    .restart local v18    # "rownumI":Ljava/lang/Integer;
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v4, v18

    goto :goto_1

    .end local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    .end local v17    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .end local v18    # "rownumI":Ljava/lang/Integer;
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    .restart local v2    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .restart local v4    # "rownumI":Ljava/lang/Integer;
    :cond_1
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    .end local v2    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .end local v4    # "rownumI":Ljava/lang/Integer;
    .restart local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    .restart local v17    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .restart local v18    # "rownumI":Ljava/lang/Integer;
    goto :goto_3

    .line 3007
    .end local v6    # "lst":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;
    .end local v11    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .end local v12    # "len$":I
    .end local v13    # "i$":I
    .end local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    .end local v17    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .end local v18    # "rownumI":Ljava/lang/Integer;
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    .restart local v2    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .restart local v4    # "rownumI":Ljava/lang/Integer;
    :cond_2
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    .line 3022
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    .end local v2    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .end local v4    # "rownumI":Ljava/lang/Integer;
    .restart local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    .restart local v17    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .restart local v18    # "rownumI":Ljava/lang/Integer;
    :goto_3
    iget-object v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 3023
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    .line 3024
    .local v2, "link":Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    new-instance v4, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getCellRef()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    .line 3025
    .local v4, "ref":Lorg/apache/poi/ss/util/CellReference;
    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v6

    if-ne v6, v3, :cond_3

    .line 3026
    iget-object v6, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3028
    .end local v2    # "link":Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    .end local v4    # "ref":Lorg/apache/poi/ss/util/CellReference;
    :cond_3
    goto :goto_4

    .line 2995
    .end local v5    # "idx":I
    .end local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    .end local v17    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .end local v18    # "rownumI":Ljava/lang/Integer;
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    .local v2, "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    :cond_4
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 3031
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    .end local v2    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .end local v3    # "rownum":I
    .restart local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    :cond_5
    move-object/from16 v1, v16

    goto/16 :goto_0

    .line 2990
    .end local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    :cond_6
    move-object/from16 v16, v1

    .line 3036
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    new-instance v1, Ljava/util/TreeMap;

    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFSheet$1;

    invoke-direct {v2, v0, v9}, Lorg/apache/poi/xssf/usermodel/XSSFSheet$1;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;I)V

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    move-object v11, v1

    .line 3059
    .local v11, "commentsToShift":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Lorg/apache/poi/xssf/usermodel/XSSFComment;Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->rowIterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3060
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    .line 3061
    .restart local v2    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v3

    .line 3063
    .restart local v3    # "rownum":I
    iget-object v4, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    if-eqz v4, :cond_b

    .line 3065
    invoke-direct {v0, v7, v8, v9, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->shiftedRowNum(IIII)I

    move-result v4

    .line 3068
    .local v4, "newrownum":I
    if-eq v4, v3, :cond_a

    .line 3069
    iget-object v5, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    invoke-virtual {v5}, Lorg/apache/poi/xssf/model/CommentsTable;->getCTComments()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getCommentList()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;

    move-result-object v5

    .line 3070
    .local v5, "lst":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;->getCommentArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v6

    .local v6, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    array-length v12, v6

    .restart local v12    # "len$":I
    const/4 v13, 0x0

    .restart local v13    # "i$":I
    :goto_6
    if-ge v13, v12, :cond_9

    aget-object v14, v6, v13

    .line 3071
    .restart local v14    # "comment":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    invoke-interface {v14}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object v15

    .line 3072
    .local v15, "oldRef":Ljava/lang/String;
    move-object/from16 v16, v1

    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    .restart local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, v15}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    .line 3075
    .local v1, "ref":Lorg/apache/poi/ss/util/CellReference;
    move-object/from16 v17, v5

    .end local v5    # "lst":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;
    .local v17, "lst":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v5

    if-ne v5, v3, :cond_8

    .line 3076
    new-instance v5, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-object/from16 v18, v6

    .end local v6    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .local v18, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    iget-object v6, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    if-nez v10, :cond_7

    const/16 v19, 0x0

    move-object/from16 v20, v19

    move/from16 v19, v12

    move-object/from16 v12, v20

    goto :goto_7

    :cond_7
    move/from16 v19, v12

    .end local v12    # "len$":I
    .local v19, "len$":I
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v12

    invoke-virtual {v10, v3, v12}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->findCommentShape(II)Lcom/microsoft/schemas/vml/CTShape;

    move-result-object v12

    :goto_7
    invoke-direct {v5, v6, v14, v12}, Lorg/apache/poi/xssf/usermodel/XSSFComment;-><init>(Lorg/apache/poi/xssf/model/CommentsTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Lcom/microsoft/schemas/vml/CTShape;)V

    .line 3081
    .local v5, "xssfComment":Lorg/apache/poi/xssf/usermodel/XSSFComment;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v11, v5, v6}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 3075
    .end local v5    # "xssfComment":Lorg/apache/poi/xssf/usermodel/XSSFComment;
    .end local v18    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .end local v19    # "len$":I
    .restart local v6    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .restart local v12    # "len$":I
    :cond_8
    move-object/from16 v18, v6

    move/from16 v19, v12

    .line 3070
    .end local v1    # "ref":Lorg/apache/poi/ss/util/CellReference;
    .end local v6    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .end local v12    # "len$":I
    .end local v14    # "comment":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .end local v15    # "oldRef":Ljava/lang/String;
    .restart local v18    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .restart local v19    # "len$":I
    :goto_8
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move/from16 v12, v19

    goto :goto_6

    .end local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    .end local v17    # "lst":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;
    .end local v18    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .end local v19    # "len$":I
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    .local v5, "lst":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;
    .restart local v6    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .restart local v12    # "len$":I
    :cond_9
    move-object/from16 v16, v1

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move/from16 v19, v12

    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    .end local v5    # "lst":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;
    .end local v6    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .end local v12    # "len$":I
    .restart local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    .restart local v17    # "lst":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;
    .restart local v18    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .restart local v19    # "len$":I
    goto :goto_9

    .line 3068
    .end local v13    # "i$":I
    .end local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    .end local v17    # "lst":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;
    .end local v18    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .end local v19    # "len$":I
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    :cond_a
    move-object/from16 v16, v1

    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    .restart local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    goto :goto_9

    .line 3063
    .end local v4    # "newrownum":I
    .end local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    :cond_b
    move-object/from16 v16, v1

    .line 3087
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    .restart local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    :goto_9
    if-lt v3, v7, :cond_e

    if-le v3, v8, :cond_c

    .line 3088
    move-object/from16 v1, v16

    goto/16 :goto_5

    .line 3091
    :cond_c
    if-nez p4, :cond_d

    .line 3092
    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->setHeight(S)V

    .line 3095
    :cond_d
    invoke-virtual {v2, v9}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->shift(I)V

    .line 3096
    .end local v2    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .end local v3    # "rownum":I
    move-object/from16 v1, v16

    goto/16 :goto_5

    .line 3087
    .restart local v2    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .restart local v3    # "rownum":I
    :cond_e
    move-object/from16 v1, v16

    goto/16 :goto_5

    .line 3059
    .end local v2    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .end local v3    # "rownum":I
    .end local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    :cond_f
    move-object/from16 v16, v1

    .line 3101
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    invoke-interface {v11}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3102
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/poi/xssf/usermodel/XSSFComment;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->setRow(I)V

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/poi/xssf/usermodel/XSSFComment;Ljava/lang/Integer;>;"
    goto :goto_a

    .line 3105
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_10
    new-instance v1, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;

    invoke-direct {v1, v0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    move-object v12, v1

    .line 3107
    .local v12, "rowShifter":Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v13

    .line 3108
    .local v13, "sheetIndex":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1, v13}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v14

    .line 3109
    .local v14, "sheetName":Ljava/lang/String;
    sget-object v6, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    move v1, v13

    move-object v2, v14

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/ss/formula/FormulaShifter;->createForRowShift(ILjava/lang/String;IIILorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/formula/FormulaShifter;

    move-result-object v1

    .line 3112
    .local v1, "shifter":Lorg/apache/poi/ss/formula/FormulaShifter;
    invoke-virtual {v12, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateNamedRanges(Lorg/apache/poi/ss/formula/FormulaShifter;)V

    .line 3113
    invoke-virtual {v12, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateFormulas(Lorg/apache/poi/ss/formula/FormulaShifter;)V

    .line 3114
    invoke-virtual {v12, v7, v8, v9}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->shiftMergedRegions(III)Ljava/util/List;

    .line 3115
    invoke-virtual {v12, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateConditionalFormatting(Lorg/apache/poi/ss/formula/FormulaShifter;)V

    .line 3116
    invoke-virtual {v12, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateHyperlinks(Lorg/apache/poi/ss/formula/FormulaShifter;)V

    .line 3119
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3120
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/poi/xssf/usermodel/XSSFRow;>;"
    iget-object v3, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    .line 3122
    .local v4, "r":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 3123
    .local v5, "rownumI":Ljava/lang/Integer;
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3124
    .end local v4    # "r":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .end local v5    # "rownumI":Ljava/lang/Integer;
    goto :goto_b

    .line 3125
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_11
    iget-object v3, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->clear()V

    .line 3126
    iget-object v3, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v3, v2}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 3127
    return-void
.end method

.method public showInPane(II)V
    .locals 3
    .param p1, "toprow"    # I
    .param p2, "leftcol"    # I

    .line 3165
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 3166
    .local v0, "cellReference":Lorg/apache/poi/ss/util/CellReference;
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v1

    .line 3167
    .local v1, "cellRef":Ljava/lang/String;
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setTopLeftCell(Ljava/lang/String;)V

    .line 3168
    return-void
.end method

.method public ungroupColumn(II)V
    .locals 7
    .param p1, "fromColumn"    # I
    .param p2, "toColumn"    # I

    .line 3172
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    .line 3173
    .local v0, "cols":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    move v2, p1

    .local v2, "index":I
    :goto_0
    if-gt v2, p2, :cond_1

    .line 3174
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v3

    .line 3175
    .local v3, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    if-eqz v3, :cond_0

    .line 3176
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v4

    .line 3177
    .local v4, "outlineLevel":S
    add-int/lit8 v5, v4, -0x1

    int-to-short v5, v5

    invoke-interface {v3, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setOutlineLevel(S)V

    .line 3178
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v5

    long-to-int v2, v5

    .line 3180
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v5

    if-gtz v5, :cond_0

    .line 3181
    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v5, v0, v3}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getIndexOfColumn(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)I

    move-result v5

    .line 3182
    .local v5, "colIndex":I
    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v6, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->removeCol(I)V

    .line 3173
    .end local v3    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .end local v4    # "outlineLevel":S
    .end local v5    # "colIndex":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3186
    .end local v2    # "index":I
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2, v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->setColsArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;)V

    .line 3187
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setSheetFormatPrOutlineLevelCol()V

    .line 3188
    return-void
.end method

.method public ungroupRow(II)V
    .locals 6
    .param p1, "fromRow"    # I
    .param p2, "toRow"    # I

    .line 3198
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 3199
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v1

    .line 3200
    .local v1, "xrow":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    if-eqz v1, :cond_0

    .line 3201
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v2

    .line 3202
    .local v2, "ctRow":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v3

    .line 3203
    .local v3, "outlineLevel":I
    add-int/lit8 v4, v3, -0x1

    int-to-short v4, v4

    invoke-interface {v2, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setOutlineLevel(S)V

    .line 3205
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getFirstCellNum()S

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 3206
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeRow(Lorg/apache/poi/ss/usermodel/Row;)V

    .line 3198
    .end local v1    # "xrow":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .end local v2    # "ctRow":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;
    .end local v3    # "outlineLevel":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3210
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setSheetFormatPrOutlineLevelRow()V

    .line 3211
    return-void
.end method

.method public validateMergedRegions()V
    .locals 0

    .line 516
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->checkForMergedRegionsIntersectingArrayFormulas()V

    .line 517
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->checkForIntersectingMergedRegions()V

    .line 518
    return-void
.end method

.method public validateSheetPassword(Ljava/lang/String;)Z
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .line 1436
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetProtectionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1437
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1439
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->validatePassword(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected write(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3456
    const/4 v0, 0x0

    .line 3457
    .local v0, "setToNull":Z
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->sizeOfColsArray()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3458
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v1

    .line 3459
    .local v1, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->sizeOfColArray()I

    move-result v2

    if-nez v2, :cond_0

    .line 3460
    const/4 v0, 0x1

    .line 3463
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->setColsArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;)V

    goto :goto_0

    .line 3465
    :cond_0
    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setColWidthAttribute(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;)V

    .line 3470
    .end local v1    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 3471
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getHyperlinks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3472
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewHyperlinks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;

    .line 3474
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    .line 3475
    .local v1, "ctHls":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 3478
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    .line 3479
    .local v3, "hyperlink":Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->generateRelationIfNeeded(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 3481
    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getCTHyperlink()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    move-result-object v4

    aput-object v4, v1, v2

    .line 3475
    .end local v3    # "hyperlink":Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3483
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getHyperlinks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;->setHyperlinkArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;)V

    .line 3484
    .end local v1    # "ctHls":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;
    goto :goto_3

    .line 3486
    :cond_4
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getHyperlinks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 3487
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getHyperlinks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;->sizeOfHyperlinkArray()I

    move-result v1

    .line 3488
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_5

    .line 3489
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getHyperlinks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;->removeHyperlink(I)V

    .line 3488
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 3495
    .end local v2    # "i":I
    :cond_5
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->unsetHyperlinks()V

    .line 3501
    .end local v1    # "count":I
    :cond_6
    :goto_3
    const v1, 0x7fffffff

    .local v1, "minCell":I
    const/high16 v2, -0x80000000

    .line 3502
    .local v2, "maxCell":I
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    .line 3504
    .local v4, "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->onDocumentWrite()V

    .line 3507
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getFirstCellNum()S

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_7

    .line 3508
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getFirstCellNum()S

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3510
    :cond_7
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getLastCellNum()S

    move-result v5

    if-eq v5, v6, :cond_8

    .line 3511
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getLastCellNum()S

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .end local v4    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    :cond_8
    goto :goto_4

    .line 3516
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_9
    const v3, 0x7fffffff

    if-eq v1, v3, :cond_b

    .line 3517
    new-instance v3, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getFirstRowNum()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getLastRowNum()I

    move-result v5

    invoke-direct {v3, v4, v5, v1, v2}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v3

    .line 3518
    .local v3, "ref":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetDimension()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3519
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getDimension()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetDimension;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetDimension;->setRef(Ljava/lang/String;)V

    goto :goto_5

    .line 3521
    :cond_a
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewDimension()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetDimension;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetDimension;->setRef(Ljava/lang/String;)V

    .line 3525
    .end local v3    # "ref":Ljava/lang/String;
    :cond_b
    :goto_5
    new-instance v3, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v4, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v3, v4}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    .line 3526
    .local v3, "xmlOptions":Lorg/apache/xmlbeans/XmlOptions;
    new-instance v4, Ljavax/xml/namespace/QName;

    sget-object v5, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v5}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "worksheet"

    invoke-direct {v4, v5, v6}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    .line 3528
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v4, p1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 3531
    if-eqz v0, :cond_c

    .line 3532
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewCols()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    .line 3534
    :cond_c
    return-void
.end method
