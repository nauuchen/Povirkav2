.class public Lorg/apache/poi/xssf/streaming/SXSSFSheet;
.super Ljava/lang/Object;
.source "SXSSFSheet.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Sheet;


# instance fields
.field private final _autoSizeColumnTracker:Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

.field private _randomAccessWindowSize:I

.field private final _rows:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xssf/streaming/SXSSFRow;",
            ">;"
        }
    .end annotation
.end field

.field final _sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

.field private final _workbook:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

.field private final _writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

.field private allFlushed:Z

.field private lastFlushedRowNumber:I

.field private outlineLevelRow:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 2
    .param p1, "workbook"    # Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
    .param p2, "xSheet"    # Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    .line 71
    const/16 v0, 0x64

    iput v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_randomAccessWindowSize:I

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->outlineLevelRow:I

    .line 74
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->lastFlushedRowNumber:I

    .line 75
    iput-boolean v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->allFlushed:Z

    .line 78
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_workbook:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    .line 79
    iput-object p2, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 80
    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->createSheetDataWriter()Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    .line 81
    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getRandomAccessWindowSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->setRandomAccessWindowSize(I)V

    .line 82
    new-instance v0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;-><init>(Lorg/apache/poi/ss/usermodel/Sheet;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_autoSizeColumnTracker:Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

    .line 83
    return-void
.end method

.method private collapseRow(I)V
    .locals 6
    .param p1, "rowIndex"    # I

    .line 1362
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;

    move-result-object v0

    .line 1363
    .local v0, "row":Lorg/apache/poi/xssf/streaming/SXSSFRow;
    if-eqz v0, :cond_1

    .line 1366
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->findStartOfRowOutlineGroup(I)I

    move-result v1

    .line 1369
    .local v1, "startRow":I
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->writeHidden(Lorg/apache/poi/xssf/streaming/SXSSFRow;IZ)I

    move-result v3

    .line 1370
    .local v3, "lastRow":I
    invoke-virtual {p0, v3}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;

    move-result-object v4

    .line 1371
    .local v4, "lastRowObj":Lorg/apache/poi/xssf/streaming/SXSSFRow;
    if-eqz v4, :cond_0

    .line 1372
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->setCollapsed(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1374
    :cond_0
    invoke-virtual {p0, v3}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->createRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;

    move-result-object v5

    .line 1375
    .local v5, "newRow":Lorg/apache/poi/xssf/streaming/SXSSFRow;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->setCollapsed(Ljava/lang/Boolean;)V

    .line 1378
    .end local v1    # "startRow":I
    .end local v3    # "lastRow":I
    .end local v4    # "lastRowObj":Lorg/apache/poi/xssf/streaming/SXSSFRow;
    .end local v5    # "newRow":Lorg/apache/poi/xssf/streaming/SXSSFRow;
    :goto_0
    return-void

    .line 1364
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid row number("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "). Row does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private findStartOfRowOutlineGroup(I)I
    .locals 5
    .param p1, "rowIndex"    # I

    .line 1385
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;

    move-result-object v0

    .line 1386
    .local v0, "row":Lorg/apache/poi/ss/usermodel/Row;
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/xssf/streaming/SXSSFRow;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getOutlineLevel()I

    move-result v1

    .line 1387
    .local v1, "level":I
    if-eqz v1, :cond_2

    .line 1390
    move v2, p1

    .line 1391
    .local v2, "currentRow":I
    :goto_0
    invoke-virtual {p0, v2}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1392
    invoke-virtual {p0, v2}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getOutlineLevel()I

    move-result v3

    if-ge v3, v1, :cond_0

    .line 1393
    add-int/lit8 v3, v2, 0x1

    return v3

    .line 1395
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1397
    :cond_1
    add-int/lit8 v3, v2, 0x1

    return v3

    .line 1388
    .end local v2    # "currentRow":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Outline level is zero for the row ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private flushOneRow()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1872
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1873
    .local v0, "firstRowNum":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1874
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1875
    .local v1, "rowIndex":I
    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/streaming/SXSSFRow;

    .line 1877
    .local v2, "row":Lorg/apache/poi/xssf/streaming/SXSSFRow;
    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_autoSizeColumnTracker:Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

    invoke-virtual {v3, v2}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->updateColumnWidths(Lorg/apache/poi/ss/usermodel/Row;)V

    .line 1878
    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    invoke-virtual {v3, v1, v2}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeRow(ILorg/apache/poi/xssf/streaming/SXSSFRow;)V

    .line 1879
    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1880
    iput v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->lastFlushedRowNumber:I

    .line 1882
    .end local v1    # "rowIndex":I
    .end local v2    # "row":Lorg/apache/poi/xssf/streaming/SXSSFRow;
    :cond_0
    return-void
.end method

.method private safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;
    .locals 2

    .line 2093
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    .line 2094
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->isSheetProtectionEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2095
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v1

    return-object v1

    .line 2097
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v1

    return-object v1
.end method

.method private setWorksheetOutlineLevelRow()V
    .locals 3

    .line 1317
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    .line 1318
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetFormatPr()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v1

    .line 1321
    .local v1, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;
    :goto_0
    iget v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->outlineLevelRow:I

    if-lez v2, :cond_1

    .line 1322
    int-to-short v2, v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->setOutlineLevelRow(S)V

    .line 1324
    :cond_1
    return-void
.end method

.method private writeHidden(Lorg/apache/poi/xssf/streaming/SXSSFRow;IZ)I
    .locals 3
    .param p1, "xRow"    # Lorg/apache/poi/xssf/streaming/SXSSFRow;
    .param p2, "rowIndex"    # I
    .param p3, "hidden"    # Z

    .line 1401
    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getOutlineLevel()I

    move-result v0

    .line 1402
    .local v0, "level":I
    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;

    move-result-object v1

    .line 1404
    .local v1, "currRow":Lorg/apache/poi/xssf/streaming/SXSSFRow;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getOutlineLevel()I

    move-result v2

    if-lt v2, v0, :cond_0

    .line 1405
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->setHidden(Ljava/lang/Boolean;)V

    .line 1406
    add-int/lit8 p2, p2, 0x1

    .line 1407
    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;

    move-result-object v1

    goto :goto_0

    .line 1409
    :cond_0
    return p2
.end method


# virtual methods
.method public addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I
    .locals 1
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 394
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I

    move-result v0

    return v0
.end method

.method public addMergedRegionUnsafe(Lorg/apache/poi/ss/util/CellRangeAddress;)I
    .locals 1
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 406
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addMergedRegionUnsafe(Lorg/apache/poi/ss/util/CellRangeAddress;)I

    move-result v0

    return v0
.end method

.method public addValidationData(Lorg/apache/poi/ss/usermodel/DataValidation;)V
    .locals 1
    .param p1, "dataValidation"    # Lorg/apache/poi/ss/usermodel/DataValidation;

    .line 1769
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addValidationData(Lorg/apache/poi/ss/usermodel/DataValidation;)V

    .line 1770
    return-void
.end method

.method public areAllRowsFlushed()Z
    .locals 1

    .line 1836
    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->allFlushed:Z

    return v0
.end method

.method public autoSizeColumn(I)V
    .locals 1
    .param p1, "column"    # I

    .line 1553
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->autoSizeColumn(IZ)V

    .line 1554
    return-void
.end method

.method public autoSizeColumn(IZ)V
    .locals 5
    .param p1, "column"    # I
    .param p2, "useMergedCells"    # Z

    .line 1596
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_autoSizeColumnTracker:Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->getBestFitColumnWidth(IZ)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1600
    .local v0, "flushedWidth":I
    nop

    .line 1603
    const-wide/high16 v1, 0x4070000000000000L    # 256.0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/SheetUtil;->getColumnWidth(Lorg/apache/poi/ss/usermodel/Sheet;IZ)D

    move-result-wide v3

    mul-double v3, v3, v1

    double-to-int v1, v3

    .line 1607
    .local v1, "activeWidth":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1609
    .local v2, "bestFitWidth":I
    if-lez v2, :cond_0

    .line 1610
    const v3, 0xff00

    .line 1611
    .local v3, "maxColumnWidth":I
    const v4, 0xff00

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1612
    .local v4, "width":I
    invoke-virtual {p0, p1, v4}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->setColumnWidth(II)V

    .line 1614
    .end local v3    # "maxColumnWidth":I
    .end local v4    # "width":I
    :cond_0
    return-void

    .line 1598
    .end local v0    # "flushedWidth":I
    .end local v1    # "activeWidth":I
    .end local v2    # "bestFitWidth":I
    :catch_0
    move-exception v1

    .line 1599
    .restart local v0    # "flushedWidth":I
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not auto-size column. Make sure the column was tracked prior to auto-sizing the column."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public changeRowNum(Lorg/apache/poi/xssf/streaming/SXSSFRow;I)V
    .locals 2
    .param p1, "row"    # Lorg/apache/poi/xssf/streaming/SXSSFRow;
    .param p2, "newRowNum"    # I

    .line 1886
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->removeRow(Lorg/apache/poi/ss/usermodel/Row;)V

    .line 1887
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1888
    return-void
.end method

.method public bridge synthetic createDrawingPatriarch()Lorg/apache/poi/ss/usermodel/Drawing;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/xssf/streaming/SXSSFDrawing;

    move-result-object v0

    return-object v0
.end method

.method public createDrawingPatriarch()Lorg/apache/poi/xssf/streaming/SXSSFDrawing;
    .locals 3

    .line 1688
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFDrawing;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xssf/streaming/SXSSFDrawing;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/xssf/usermodel/XSSFDrawing;)V

    return-object v0
.end method

.method public createFreezePane(II)V
    .locals 1
    .param p1, "colSplit"    # I
    .param p2, "rowSplit"    # I

    .line 1024
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createFreezePane(II)V

    .line 1025
    return-void
.end method

.method public createFreezePane(IIII)V
    .locals 1
    .param p1, "colSplit"    # I
    .param p2, "rowSplit"    # I
    .param p3, "leftmostColumn"    # I
    .param p4, "topRow"    # I

    .line 1013
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createFreezePane(IIII)V

    .line 1014
    return-void
.end method

.method public bridge synthetic createRow(I)Lorg/apache/poi/ss/usermodel/Row;
    .locals 1
    .param p1, "x0"    # I

    .line 65
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->createRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;

    move-result-object v0

    return-object v0
.end method

.method public createRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;
    .locals 7
    .param p1, "rownum"    # I

    .line 121
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v0

    .line 122
    .local v0, "maxrow":I
    if-ltz p1, :cond_4

    if-gt p1, v0, :cond_4

    .line 128
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->getLastFlushedRow()I

    move-result v1

    const-string v2, "] that is already written to disk."

    const-string v3, "in the range [0,"

    const-string v4, "] "

    const-string v5, "Attempting to write a row["

    if-le p1, v1, :cond_3

    .line 135
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPhysicalNumberOfRows()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getLastRowNum()I

    move-result v1

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getLastRowNum()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_1
    :goto_0
    new-instance v1, Lorg/apache/poi/xssf/streaming/SXSSFRow;

    invoke-direct {v1, p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFSheet;)V

    .line 142
    .local v1, "newRow":Lorg/apache/poi/xssf/streaming/SXSSFRow;
    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->allFlushed:Z

    .line 144
    iget v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_randomAccessWindowSize:I

    if-ltz v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    iget v3, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_randomAccessWindowSize:I

    if-le v2, v3, :cond_2

    .line 148
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->flushRows(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_1

    .line 150
    :catch_0
    move-exception v2

    .line 152
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 155
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_2
    :goto_1
    return-object v1

    .line 129
    .end local v1    # "newRow":Lorg/apache/poi/xssf/streaming/SXSSFRow;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    invoke-virtual {v4}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->getLastFlushedRow()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid row number ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") outside allowable range (0.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createSplitPane(IIIII)V
    .locals 6
    .param p1, "xSplitPos"    # I
    .param p2, "ySplitPos"    # I
    .param p3, "leftmostColumn"    # I
    .param p4, "topRow"    # I
    .param p5, "activePane"    # I

    .line 1043
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createSplitPane(IIIII)V

    .line 1044
    return-void
.end method

.method public disableLocking()V
    .locals 2

    .line 1953
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSheet(Z)V

    .line 1954
    return-void
.end method

.method dispose()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1907
    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->allFlushed:Z

    if-nez v0, :cond_0

    .line 1908
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->flushRows()V

    .line 1910
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->dispose()Z

    move-result v0

    return v0
.end method

.method public enableLocking()V
    .locals 2

    .line 1946
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSheet(Z)V

    .line 1947
    return-void
.end method

.method public flushRows()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1867
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->flushRows(I)V

    .line 1868
    return-void
.end method

.method public flushRows(I)V
    .locals 1
    .param p1, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1852
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 1853
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->flushOneRow()V

    goto :goto_0

    .line 1855
    :cond_0
    if-nez p1, :cond_1

    .line 1856
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->allFlushed:Z

    .line 1858
    :cond_1
    return-void
.end method

.method public getActiveCell()Lorg/apache/poi/ss/util/CellAddress;
    .locals 1

    .line 1923
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getActiveCell()Lorg/apache/poi/ss/util/CellAddress;

    move-result-object v0

    return-object v0
.end method

.method public getAutobreaks()Z
    .locals 1

    .line 658
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getAutobreaks()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/ss/usermodel/Comment;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 65
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object v0

    return-object v0
.end method

.method public getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;
    .locals 1
    .param p1, "ref"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 1624
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object v0

    return-object v0
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

    .line 1634
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCellComments()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getColumnBreaks()[I
    .locals 1

    .line 1170
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnBreaks()[I

    move-result-object v0

    return-object v0
.end method

.method public getColumnOutlineLevel(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    .line 1915
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnOutlineLevel(I)I

    move-result v0

    return v0
.end method

.method public getColumnStyle(I)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1
    .param p1, "column"    # I

    .line 376
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnStyle(I)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    return-object v0
.end method

.method public getColumnWidth(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    .line 279
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnWidth(I)I

    move-result v0

    return v0
.end method

.method public getColumnWidthInPixels(I)F
    .locals 1
    .param p1, "columnIndex"    # I

    .line 292
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnWidthInPixels(I)F

    move-result v0

    return v0
.end method

.method public getDataValidationHelper()Lorg/apache/poi/ss/usermodel/DataValidationHelper;
    .locals 1

    .line 1753
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDataValidationHelper()Lorg/apache/poi/ss/usermodel/DataValidationHelper;

    move-result-object v0

    return-object v0
.end method

.method public getDataValidations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;",
            ">;"
        }
    .end annotation

    .line 1759
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDataValidations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultColumnWidth()I
    .locals 1

    .line 316
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultColumnWidth()I

    move-result v0

    return v0
.end method

.method public getDefaultRowHeight()S
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultRowHeight()S

    move-result v0

    return v0
.end method

.method public getDefaultRowHeightInPoints()F
    .locals 1

    .line 341
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultRowHeightInPoints()F

    move-result v0

    return v0
.end method

.method public getDisplayGuts()Z
    .locals 1

    .line 670
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDisplayGuts()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDrawingPatriarch()Lorg/apache/poi/ss/usermodel/Drawing;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v0

    return-object v0
.end method

.method public getDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    .locals 1

    .line 1677
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v0

    return-object v0
.end method

.method public getFirstRowNum()I
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->getNumberOfFlushedRows()I

    move-result v0

    if-lez v0, :cond_0

    .line 214
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->getLowestIndexOfFlushedRows()I

    move-result v0

    return v0

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getFitToPage()Z
    .locals 1

    .line 681
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getFitToPage()Z

    move-result v0

    return v0
.end method

.method public getFooter()Lorg/apache/poi/ss/usermodel/Footer;
    .locals 1

    .line 800
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getFooter()Lorg/apache/poi/ss/usermodel/Footer;

    move-result-object v0

    return-object v0
.end method

.method public getForceFormulaRecalculation()Z
    .locals 1

    .line 952
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getForceFormulaRecalculation()Z

    move-result v0

    return v0
.end method

.method public getHeader()Lorg/apache/poi/ss/usermodel/Header;
    .locals 1

    .line 787
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getHeader()Lorg/apache/poi/ss/usermodel/Header;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontallyCenter()Z
    .locals 1

    .line 449
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getHorizontallyCenter()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getHyperlink(II)Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .line 65
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getHyperlink(II)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 65
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public getHyperlink(II)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 1646
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getHyperlink(II)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    .locals 1
    .param p1, "addr"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 1658
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object v0

    return-object v0
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

    .line 1668
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getHyperlinkList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastFlushedRowNum()I
    .locals 1

    .line 1842
    iget v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->lastFlushedRowNumber:I

    return v0
.end method

.method public getLastRowNum()I
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getLeftCol()S
    .locals 1

    .line 918
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getLeftCol()S

    move-result v0

    return v0
.end method

.method public getMargin(S)D
    .locals 2
    .param p1, "margin"    # S

    .line 826
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMargin(S)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1
    .param p1, "index"    # I

    .line 504
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getMergedRegions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMergedRegions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNumMergedRegions()I
    .locals 1

    .line 491
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getNumMergedRegions()I

    move-result v0

    return v0
.end method

.method public getPaneInformation()Lorg/apache/poi/ss/util/PaneInformation;
    .locals 1

    .line 1054
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPaneInformation()Lorg/apache/poi/ss/util/PaneInformation;

    move-result-object v0

    return-object v0
.end method

.method public getPhysicalNumberOfRows()I
    .locals 2

    .line 202
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->getNumberOfFlushedRows()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getPrintSetup()Lorg/apache/poi/ss/usermodel/PrintSetup;
    .locals 1

    .line 774
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPrintSetup()Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;

    move-result-object v0

    return-object v0
.end method

.method public getProtect()Z
    .locals 1

    .line 849
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getProtect()Z

    move-result v0

    return v0
.end method

.method public getRepeatingColumns()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    .line 1796
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRepeatingColumns()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatingRows()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    .line 1791
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRepeatingRows()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRow(I)Lorg/apache/poi/ss/usermodel/Row;
    .locals 1
    .param p1, "x0"    # I

    .line 65
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;

    move-result-object v0

    return-object v0
.end method

.method public getRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;
    .locals 2
    .param p1, "rownum"    # I

    .line 191
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFRow;

    return-object v0
.end method

.method public getRowBreaks()[I
    .locals 1

    .line 1160
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRowBreaks()[I

    move-result-object v0

    return-object v0
.end method

.method public getRowNum(Lorg/apache/poi/xssf/streaming/SXSSFRow;)I
    .locals 3
    .param p1, "row"    # Lorg/apache/poi/xssf/streaming/SXSSFRow;

    .line 1892
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/poi/xssf/streaming/SXSSFRow;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1894
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1895
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/poi/xssf/streaming/SXSSFRow;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1896
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 1898
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/poi/xssf/streaming/SXSSFRow;>;"
    :cond_0
    goto :goto_0

    .line 1899
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/poi/xssf/streaming/SXSSFRow;>;>;"
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getRowSumsBelow()Z
    .locals 1

    .line 700
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRowSumsBelow()Z

    move-result v0

    return v0
.end method

.method public getRowSumsRight()Z
    .locals 1

    .line 719
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRowSumsRight()Z

    move-result v0

    return v0
.end method

.method public getScenarioProtect()Z
    .locals 1

    .line 870
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getScenarioProtect()Z

    move-result v0

    return v0
.end method

.method public getSheetConditionalFormatting()Lorg/apache/poi/ss/usermodel/SheetConditionalFormatting;
    .locals 1

    .line 1785
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetConditionalFormatting()Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;

    move-result-object v0

    return-object v0
.end method

.method getSheetDataWriter()Lorg/apache/poi/xssf/streaming/SheetDataWriter;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    return-object v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 1

    .line 1711
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    .line 1935
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getTabColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getTopRow()S
    .locals 1

    .line 906
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getTopRow()S

    move-result v0

    return v0
.end method

.method public getTrackedColumnsForAutoSizing()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1525
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_autoSizeColumnTracker:Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->getTrackedColumns()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getVerticallyCenter()Z
    .locals 1

    .line 458
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getVerticallyCenter()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object v0

    return-object v0
.end method

.method public getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
    .locals 1

    .line 1700
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_workbook:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    return-object v0
.end method

.method public getWorksheetXMLInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->flushRows(I)V

    .line 98
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->close()V

    .line 99
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->getWorksheetXMLInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public groupColumn(II)V
    .locals 1
    .param p1, "fromColumn"    # I
    .param p2, "toColumn"    # I

    .line 1225
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->groupColumn(II)V

    .line 1226
    return-void
.end method

.method public groupRow(II)V
    .locals 4
    .param p1, "fromRow"    # I
    .param p2, "toRow"    # I

    .line 1280
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/streaming/SXSSFRow;

    .line 1281
    .local v1, "row":Lorg/apache/poi/xssf/streaming/SXSSFRow;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getOutlineLevel()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 1282
    .local v2, "level":I
    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->setOutlineLevel(I)V

    .line 1284
    iget v3, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->outlineLevelRow:I

    if-le v2, v3, :cond_0

    .line 1285
    iput v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->outlineLevelRow:I

    .line 1287
    .end local v1    # "row":Lorg/apache/poi/xssf/streaming/SXSSFRow;
    .end local v2    # "level":I
    :cond_0
    goto :goto_0

    .line 1289
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->setWorksheetOutlineLevelRow()V

    .line 1290
    return-void
.end method

.method public isColumnBroken(I)Z
    .locals 1
    .param p1, "column"    # I

    .line 1191
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isColumnBroken(I)Z

    move-result v0

    return v0
.end method

.method public isColumnHidden(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .line 251
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isColumnHidden(I)Z

    move-result v0

    return v0
.end method

.method public isColumnTrackedForAutoSizing(I)Z
    .locals 1
    .param p1, "column"    # I

    .line 1512
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_autoSizeColumnTracker:Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->isColumnTracked(I)Z

    move-result v0

    return v0
.end method

.method public isDisplayFormulas()Z
    .locals 1

    .line 1098
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isDisplayFormulas()Z

    move-result v0

    return v0
.end method

.method public isDisplayGridlines()Z
    .locals 1

    .line 1076
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isDisplayGridlines()Z

    move-result v0

    return v0
.end method

.method public isDisplayRowColHeadings()Z
    .locals 1

    .line 1119
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isDisplayRowColHeadings()Z

    move-result v0

    return v0
.end method

.method public isDisplayZeros()Z
    .locals 1

    .line 576
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isDisplayZeros()Z

    move-result v0

    return v0
.end method

.method public isPrintGridlines()Z
    .locals 1

    .line 730
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isPrintGridlines()Z

    move-result v0

    return v0
.end method

.method public isPrintRowAndColumnHeadings()Z
    .locals 1

    .line 752
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isPrintRowAndColumnHeadings()Z

    move-result v0

    return v0
.end method

.method public isRightToLeft()Z
    .locals 1

    .line 598
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isRightToLeft()Z

    move-result v0

    return v0
.end method

.method public isRowBroken(I)Z
    .locals 1
    .param p1, "row"    # I

    .line 1140
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isRowBroken(I)Z

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 1721
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSelected()Z

    move-result v0

    return v0
.end method

.method isSheetProtectionEnabled()Z
    .locals 2

    .line 2101
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    .line 2102
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetProtection()Z

    move-result v1

    return v1
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

    .line 106
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->rowIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lockAutoFilter(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1962
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setAutoFilter(Z)V

    .line 1963
    return-void
.end method

.method public lockDeleteColumns(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1971
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setDeleteColumns(Z)V

    .line 1972
    return-void
.end method

.method public lockDeleteRows(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1980
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setDeleteRows(Z)V

    .line 1981
    return-void
.end method

.method public lockFormatCells(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1989
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setFormatCells(Z)V

    .line 1990
    return-void
.end method

.method public lockFormatColumns(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1998
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setFormatColumns(Z)V

    .line 1999
    return-void
.end method

.method public lockFormatRows(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 2007
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setFormatRows(Z)V

    .line 2008
    return-void
.end method

.method public lockInsertColumns(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 2016
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setInsertColumns(Z)V

    .line 2017
    return-void
.end method

.method public lockInsertHyperlinks(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 2025
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setInsertHyperlinks(Z)V

    .line 2026
    return-void
.end method

.method public lockInsertRows(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 2034
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setInsertRows(Z)V

    .line 2035
    return-void
.end method

.method public lockObjects(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 2061
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setObjects(Z)V

    .line 2062
    return-void
.end method

.method public lockPivotTables(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 2043
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setPivotTables(Z)V

    .line 2044
    return-void
.end method

.method public lockScenarios(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 2070
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setScenarios(Z)V

    .line 2071
    return-void
.end method

.method public lockSelectLockedCells(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 2079
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSelectLockedCells(Z)V

    .line 2080
    return-void
.end method

.method public lockSelectUnlockedCells(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 2088
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSelectUnlockedCells(Z)V

    .line 2089
    return-void
.end method

.method public lockSort(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 2052
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSort(Z)V

    .line 2053
    return-void
.end method

.method public protectSheet(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .line 859
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->protectSheet(Ljava/lang/String;)V

    .line 860
    return-void
.end method

.method public removeArrayFormula(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellRange;
    .locals 1
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange<",
            "+",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation

    .line 1747
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeArrayFormula(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellRange;

    move-result-object v0

    return-object v0
.end method

.method public removeColumnBreak(I)V
    .locals 1
    .param p1, "column"    # I

    .line 1201
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeColumnBreak(I)V

    .line 1202
    return-void
.end method

.method public removeMergedRegion(I)V
    .locals 1
    .param p1, "index"    # I

    .line 469
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeMergedRegion(I)V

    .line 470
    return-void
.end method

.method public removeMergedRegions(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 480
    .local p1, "indices":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeMergedRegions(Ljava/util/Collection;)V

    .line 481
    return-void
.end method

.method public removeRow(Lorg/apache/poi/ss/usermodel/Row;)V
    .locals 3
    .param p1, "row"    # Lorg/apache/poi/ss/usermodel/Row;

    .line 166
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 170
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/poi/xssf/streaming/SXSSFRow;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 173
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/poi/xssf/streaming/SXSSFRow;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 175
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 176
    return-void

    .line 178
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/poi/xssf/streaming/SXSSFRow;>;"
    :cond_0
    goto :goto_0

    .line 179
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/poi/xssf/streaming/SXSSFRow;>;>;"
    :cond_1
    return-void

    .line 167
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified row does not belong to this sheet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeRowBreak(I)V
    .locals 1
    .param p1, "row"    # I

    .line 1150
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeRowBreak(I)V

    .line 1151
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

    .line 528
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 529
    .local v0, "result":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    return-object v0
.end method

.method public setActiveCell(Lorg/apache/poi/ss/util/CellAddress;)V
    .locals 1
    .param p1, "address"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 1931
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setActiveCell(Lorg/apache/poi/ss/util/CellAddress;)V

    .line 1932
    return-void
.end method

.method public setArrayFormula(Ljava/lang/String;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;
    .locals 1
    .param p1, "formula"    # Ljava/lang/String;
    .param p2, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange<",
            "+",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation

    .line 1735
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setArrayFormula(Ljava/lang/String;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;

    move-result-object v0

    return-object v0
.end method

.method public setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/AutoFilter;
    .locals 1
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 1780
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/xssf/usermodel/XSSFAutoFilter;

    move-result-object v0

    return-object v0
.end method

.method public setAutobreaks(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 540
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setAutobreaks(Z)V

    .line 541
    return-void
.end method

.method public setColumnBreak(I)V
    .locals 1
    .param p1, "column"    # I

    .line 1180
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setColumnBreak(I)V

    .line 1181
    return-void
.end method

.method public setColumnGroupCollapsed(IZ)V
    .locals 1
    .param p1, "columnNumber"    # I
    .param p2, "collapsed"    # Z

    .line 1213
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setColumnGroupCollapsed(IZ)V

    .line 1214
    return-void
.end method

.method public setColumnHidden(IZ)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "hidden"    # Z

    .line 239
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setColumnHidden(IZ)V

    .line 240
    return-void
.end method

.method public setColumnWidth(II)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "width"    # I

    .line 268
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setColumnWidth(II)V

    .line 269
    return-void
.end method

.method public setDefaultColumnStyle(ILorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 1
    .param p1, "column"    # I
    .param p2, "style"    # Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 1421
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setDefaultColumnStyle(ILorg/apache/poi/ss/usermodel/CellStyle;)V

    .line 1422
    return-void
.end method

.method public setDefaultColumnWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .line 304
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setDefaultColumnWidth(I)V

    .line 305
    return-void
.end method

.method public setDefaultRowHeight(S)V
    .locals 1
    .param p1, "height"    # S

    .line 353
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setDefaultRowHeight(S)V

    .line 354
    return-void
.end method

.method public setDefaultRowHeightInPoints(F)V
    .locals 1
    .param p1, "height"    # F

    .line 364
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setDefaultRowHeightInPoints(F)V

    .line 365
    return-void
.end method

.method public setDisplayFormulas(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 1087
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setDisplayFormulas(Z)V

    .line 1088
    return-void
.end method

.method public setDisplayGridlines(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 1065
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setDisplayGridlines(Z)V

    .line 1066
    return-void
.end method

.method public setDisplayGuts(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 551
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setDisplayGuts(Z)V

    .line 552
    return-void
.end method

.method public setDisplayRowColHeadings(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 1109
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setDisplayRowColHeadings(Z)V

    .line 1110
    return-void
.end method

.method public setDisplayZeros(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 563
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setDisplayZeros(Z)V

    .line 564
    return-void
.end method

.method public setFitToPage(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 609
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setFitToPage(Z)V

    .line 610
    return-void
.end method

.method public setForceFormulaRecalculation(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 943
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setForceFormulaRecalculation(Z)V

    .line 944
    return-void
.end method

.method public setHorizontallyCenter(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 440
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setHorizontallyCenter(Z)V

    .line 441
    return-void
.end method

.method public setMargin(SD)V
    .locals 1
    .param p1, "margin"    # S
    .param p2, "size"    # D

    .line 838
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setMargin(SD)V

    .line 839
    return-void
.end method

.method public setPrintGridlines(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 741
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setPrintGridlines(Z)V

    .line 742
    return-void
.end method

.method public setPrintRowAndColumnHeadings(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 763
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setPrintRowAndColumnHeadings(Z)V

    .line 764
    return-void
.end method

.method public setRandomAccessWindowSize(I)V
    .locals 2
    .param p1, "value"    # I

    .line 1826
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    .line 1829
    iput p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_randomAccessWindowSize:I

    .line 1830
    return-void

    .line 1827
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RandomAccessWindowSize must be either -1 or a positive integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRepeatingColumns(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1
    .param p1, "columnRangeRef"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 1806
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setRepeatingColumns(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 1807
    return-void
.end method

.method public setRepeatingRows(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1
    .param p1, "rowRangeRef"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 1801
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setRepeatingRows(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 1802
    return-void
.end method

.method public setRightToLeft(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 587
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setRightToLeft(Z)V

    .line 588
    return-void
.end method

.method public setRowBreak(I)V
    .locals 1
    .param p1, "row"    # I

    .line 1129
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setRowBreak(I)V

    .line 1130
    return-void
.end method

.method public setRowGroupCollapsed(IZ)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "collapse"    # Z

    .line 1350
    if-eqz p2, :cond_0

    .line 1351
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->collapseRow(I)V

    .line 1356
    return-void

    .line 1354
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to expand row: Not Implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRowOutlineLevel(II)V
    .locals 2
    .param p1, "rownum"    # I
    .param p2, "level"    # I

    .line 1308
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFRow;

    .line 1309
    .local v0, "row":Lorg/apache/poi/xssf/streaming/SXSSFRow;
    invoke-virtual {v0, p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->setOutlineLevel(I)V

    .line 1310
    if-lez p2, :cond_0

    iget v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->outlineLevelRow:I

    if-le p2, v1, :cond_0

    .line 1311
    iput p2, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->outlineLevelRow:I

    .line 1312
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->setWorksheetOutlineLevelRow()V

    .line 1314
    :cond_0
    return-void
.end method

.method public setRowSumsBelow(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 628
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setRowSumsBelow(Z)V

    .line 629
    return-void
.end method

.method public setRowSumsRight(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 647
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setRowSumsRight(Z)V

    .line 648
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 814
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setSelected(Z)V

    .line 815
    return-void
.end method

.method public setTabColor(I)V
    .locals 5
    .param p1, "colorIndex"    # I

    .line 2111
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    .line 2112
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v1

    .line 2113
    .local v1, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;
    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v1

    .line 2114
    :cond_0
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v2

    .line 2115
    .local v2, "color":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    int-to-long v3, p1

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 2116
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->setTabColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 2117
    return-void
.end method

.method public setTabColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 1
    .param p1, "color"    # Lorg/apache/poi/xssf/usermodel/XSSFColor;

    .line 1939
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setTabColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V

    .line 1940
    return-void
.end method

.method public setVerticallyCenter(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 429
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setVerticallyCenter(Z)V

    .line 430
    return-void
.end method

.method public setZoom(I)V
    .locals 1
    .param p1, "scale"    # I

    .line 894
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setZoom(I)V

    .line 895
    return-void
.end method

.method public shiftRows(III)V
    .locals 2
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "n"    # I
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 975
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NotImplemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shiftRows(IIIZZ)V
    .locals 2
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "n"    # I
    .param p4, "copyRowHeight"    # Z
    .param p5, "resetOriginalRowHeight"    # Z
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 1000
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NotImplemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showInPane(II)V
    .locals 1
    .param p1, "toprow"    # I
    .param p2, "leftcol"    # I

    .line 931
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->showInPane(II)V

    .line 932
    return-void
.end method

.method public trackAllColumnsForAutoSizing()V
    .locals 1

    .line 1460
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_autoSizeColumnTracker:Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackAllColumns()V

    .line 1461
    return-void
.end method

.method public trackColumnForAutoSizing(I)V
    .locals 1
    .param p1, "column"    # I

    .line 1437
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_autoSizeColumnTracker:Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackColumn(I)Z

    .line 1438
    return-void
.end method

.method public trackColumnsForAutoSizing(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1450
    .local p1, "columns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_autoSizeColumnTracker:Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackColumns(Ljava/util/Collection;)V

    .line 1451
    return-void
.end method

.method public ungroupColumn(II)V
    .locals 1
    .param p1, "fromColumn"    # I
    .param p2, "toColumn"    # I

    .line 1237
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->ungroupColumn(II)V

    .line 1238
    return-void
.end method

.method public ungroupRow(II)V
    .locals 1
    .param p1, "fromRow"    # I
    .param p2, "toRow"    # I

    .line 1335
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->ungroupRow(II)V

    .line 1336
    return-void
.end method

.method public untrackAllColumnsForAutoSizing()V
    .locals 1

    .line 1500
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_autoSizeColumnTracker:Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackAllColumns()V

    .line 1501
    return-void
.end method

.method public untrackColumnForAutoSizing(I)Z
    .locals 1
    .param p1, "column"    # I

    .line 1476
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_autoSizeColumnTracker:Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackColumn(I)Z

    move-result v0

    return v0
.end method

.method public untrackColumnsForAutoSizing(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1490
    .local p1, "columns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_autoSizeColumnTracker:Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackColumns(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public validateMergedRegions()V
    .locals 1

    .line 418
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->validateMergedRegions()V

    .line 419
    return-void
.end method
