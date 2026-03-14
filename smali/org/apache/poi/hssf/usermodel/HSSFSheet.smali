.class public final Lorg/apache/poi/hssf/usermodel/HSSFSheet;
.super Ljava/lang/Object;
.source "HSSFSheet.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Sheet;


# static fields
.field private static final DEBUG:I = 0x1

.field public static final INITIAL_CAPACITY:I

.field private static final PX_DEFAULT:F = 32.0f

.field private static final PX_MODIFIED:F = 36.56f

.field private static final log:Lorg/apache/poi/util/POILogger;


# instance fields
.field protected final _book:Lorg/apache/poi/hssf/model/InternalWorkbook;

.field private _firstrow:I

.field private _lastrow:I

.field private _patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

.field private final _rows:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hssf/usermodel/HSSFRow;",
            ">;"
        }
    .end annotation
.end field

.field private final _sheet:Lorg/apache/poi/hssf/model/InternalSheet;

.field protected final _workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 84
    const-class v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    .line 102
    const-string v0, "HSSFSheet.RowInitialCapacity"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lorg/apache/poi/util/Configurator;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->INITIAL_CAPACITY:I

    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 1
    .param p1, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    .line 127
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    .line 128
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 129
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 130
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/model/InternalSheet;)V
    .locals 1
    .param p1, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/model/InternalSheet;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    .line 142
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    .line 143
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 144
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 145
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setPropertiesFromSheet(Lorg/apache/poi/hssf/model/InternalSheet;)V

    .line 146
    return-void
.end method

.method private addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;Z)I
    .locals 5
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "validate"    # Z

    .line 715
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getNumberOfCells()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 718
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->validate(Lorg/apache/poi/ss/SpreadsheetVersion;)V

    .line 720
    if-eqz p2, :cond_0

    .line 723
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->validateArrayFormulas(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 727
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->validateMergedRegions(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 730
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/poi/hssf/model/InternalSheet;->addMergedRegion(IIII)I

    move-result v0

    return v0

    .line 716
    :cond_1
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

.method private addRow(Lorg/apache/poi/hssf/usermodel/HSSFRow;Z)V
    .locals 3
    .param p1, "row"    # Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .param p2, "addLow"    # Z

    .line 363
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    if-eqz p2, :cond_0

    .line 365
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowRecord()Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->addRow(Lorg/apache/poi/hssf/record/RowRecord;)V

    .line 367
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 368
    .local v0, "firstRow":Z
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getLastRowNum()I

    move-result v2

    if-gt v1, v2, :cond_2

    if-eqz v0, :cond_3

    .line 369
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    .line 371
    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getFirstRowNum()I

    move-result v2

    if-lt v1, v2, :cond_4

    if-eqz v0, :cond_5

    .line 372
    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    .line 374
    :cond_5
    return-void
.end method

.method private checkForIntersectingMergedRegions()V
    .locals 8

    .line 790
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getMergedRegions()Ljava/util/List;

    move-result-object v0

    .line 791
    .local v0, "regions":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 792
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 793
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 794
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

    .line 795
    .local v5, "other":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v3, v5}, Lorg/apache/poi/ss/util/CellRangeAddress;->intersects(Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 799
    .end local v5    # "other":Lorg/apache/poi/ss/util/CellRangeAddress;
    goto :goto_1

    .line 796
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

    .line 799
    .local v6, "msg":Ljava/lang/String;
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 792
    .end local v3    # "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "other":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v6    # "msg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 803
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private checkForMergedRegionsIntersectingArrayFormulas()V
    .locals 2

    .line 770
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getMergedRegions()Ljava/util/List;

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

    .line 771
    .local v1, "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->validateArrayFormulas(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .end local v1    # "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    goto :goto_0

    .line 773
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private static clip(I)I
    .locals 2
    .param p0, "row"    # I

    .line 1534
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private createRowFromRecord(Lorg/apache/poi/hssf/record/RowRecord;)Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .locals 2
    .param p1, "row"    # Lorg/apache/poi/hssf/record/RowRecord;

    .line 277
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v0, v1, p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/RowRecord;)V

    .line 279
    .local v0, "hrow":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->addRow(Lorg/apache/poi/hssf/usermodel/HSSFRow;Z)V

    .line 280
    return-object v0
.end method

.method private findCellCommentLocations(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Ljava/util/Map;)V
    .locals 7
    .param p1, "container"    # Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;",
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            "Lorg/apache/poi/hssf/usermodel/HSSFComment;",
            ">;)V"
        }
    .end annotation

    .line 2446
    .local p2, "locations":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/poi/ss/util/CellAddress;Lorg/apache/poi/hssf/usermodel/HSSFComment;>;"
    invoke-interface {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;->getChildren()Ljava/util/List;

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

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 2447
    .local v1, "object":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 2448
    .local v2, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    instance-of v3, v2, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    if-eqz v3, :cond_0

    .line 2449
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    invoke-direct {p0, v3, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->findCellCommentLocations(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Ljava/util/Map;)V

    .line 2450
    goto :goto_0

    .line 2452
    :cond_0
    instance-of v3, v2, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    if-eqz v3, :cond_1

    .line 2453
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    .line 2454
    .local v3, "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->hasPosition()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2455
    new-instance v4, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getRow()I

    move-result v5

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getColumn()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2458
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .end local v3    # "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    :cond_1
    goto :goto_0

    .line 2459
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private findFirstRow(I)I
    .locals 3
    .param p1, "firstrow"    # I

    .line 343
    add-int/lit8 v0, p1, 0x1

    .line 344
    .local v0, "rownum":I
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v1

    .line 346
    .local v1, "r":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getLastRowNum()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 347
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v1

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getLastRowNum()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 351
    const/4 v2, 0x0

    return v2

    .line 353
    :cond_1
    return v0
.end method

.method private findLastRow(I)I
    .locals 3
    .param p1, "lastrow"    # I

    .line 323
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 324
    return v0

    .line 326
    :cond_0
    add-int/lit8 v1, p1, -0x1

    .line 327
    .local v1, "rownum":I
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v2

    .line 329
    .local v2, "r":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    :goto_0
    if-nez v2, :cond_1

    if-lez v1, :cond_1

    .line 330
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v2

    goto :goto_0

    .line 332
    :cond_1
    if-nez v2, :cond_2

    .line 333
    return v0

    .line 335
    :cond_2
    return v1
.end method

.method private getBuiltinNameRecord(B)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 3
    .param p1, "builtinCode"    # B

    .line 2604
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    .line 2605
    .local v0, "sheetIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1, v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->findExistingBuiltinNameRecordIdx(IB)I

    move-result v1

    .line 2607
    .local v1, "recIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2608
    const/4 v2, 0x0

    return-object v2

    .line 2610
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v2

    return-object v2
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
            "Lorg/apache/poi/hssf/usermodel/HSSFCell;",
            ">;"
        }
    .end annotation

    .line 2287
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v6

    .line 2288
    .local v6, "firstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v7

    .line 2289
    .local v7, "firstColumn":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v8

    .line 2290
    .local v8, "lastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v9

    .line 2291
    .local v9, "lastColumn":I
    sub-int v0, v8, v6

    add-int/lit8 v10, v0, 0x1

    .line 2292
    .local v10, "height":I
    sub-int v0, v9, v7

    add-int/lit8 v11, v0, 0x1

    .line 2293
    .local v11, "width":I
    new-instance v0, Ljava/util/ArrayList;

    mul-int v1, v10, v11

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v12, v0

    .line 2294
    .local v12, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/usermodel/HSSFCell;>;"
    move v0, v6

    .local v0, "rowIn":I
    :goto_0
    if-gt v0, v8, :cond_3

    .line 2295
    move v1, v7

    .local v1, "colIn":I
    :goto_1
    if-gt v1, v9, :cond_2

    .line 2296
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v2

    .line 2297
    .local v2, "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    if-nez v2, :cond_0

    .line 2298
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v2

    .line 2300
    :cond_0
    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v3

    .line 2301
    .local v3, "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    if-nez v3, :cond_1

    .line 2302
    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v3

    .line 2304
    :cond_1
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2295
    .end local v2    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .end local v3    # "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2294
    .end local v1    # "colIn":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2307
    .end local v0    # "rowIn":I
    :cond_3
    const-class v5, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move v0, v6

    move v1, v7

    move v2, v10

    move v3, v11

    move-object v4, v12

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/ss/util/SSCellRange;->create(IIIILjava/util/List;Ljava/lang/Class;)Lorg/apache/poi/ss/util/SSCellRange;

    move-result-object v0

    return-object v0
.end method

.method private getPatriarch(Z)Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .locals 5
    .param p1, "createIfMissing"    # Z

    .line 2042
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    if-eqz v0, :cond_0

    .line 2043
    return-object v0

    .line 2045
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findDrawingGroup()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v0

    .line 2046
    .local v0, "dm":Lorg/apache/poi/hssf/model/DrawingManager2;
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2047
    if-nez p1, :cond_1

    .line 2048
    return-object v1

    .line 2050
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createDrawingGroup()V

    .line 2051
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getDrawingManager()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v0

    .line 2054
    :cond_2
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v3, 0x2694

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/EscherAggregate;

    .line 2055
    .local v2, "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    if-nez v2, :cond_5

    .line 2056
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lorg/apache/poi/hssf/model/InternalSheet;->aggregateDrawingRecords(Lorg/apache/poi/hssf/model/DrawingManager2;Z)I

    move-result v3

    .line 2057
    .local v3, "pos":I
    const/4 v4, -0x1

    if-ne v4, v3, :cond_4

    .line 2058
    if-eqz p1, :cond_3

    .line 2059
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4}, Lorg/apache/poi/hssf/model/InternalSheet;->aggregateDrawingRecords(Lorg/apache/poi/hssf/model/DrawingManager2;Z)I

    move-result v1

    .line 2060
    .end local v3    # "pos":I
    .local v1, "pos":I
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lorg/apache/poi/hssf/record/EscherAggregate;

    .line 2061
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    invoke-direct {v3, p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/EscherAggregate;)V

    .line 2062
    .local v3, "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->afterCreate()V

    .line 2063
    return-object v3

    .line 2065
    .end local v1    # "pos":I
    .local v3, "pos":I
    :cond_3
    return-object v1

    .line 2068
    :cond_4
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/record/EscherAggregate;

    .line 2070
    .end local v3    # "pos":I
    :cond_5
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/EscherAggregate;)V

    return-object v1
.end method

.method private getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;
    .locals 1

    .line 1333
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    move-result-object v0

    return-object v0
.end method

.method private getRepeatingRowsOrColums(Z)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 13
    .param p1, "rows"    # Z

    .line 2563
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getBuiltinNameRecord(B)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    .line 2564
    .local v0, "rec":Lorg/apache/poi/hssf/record/NameRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2565
    return-object v1

    .line 2568
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    .line 2569
    .local v2, "nameDefinition":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    if-nez v2, :cond_1

    .line 2570
    return-object v1

    .line 2573
    :cond_1
    sget-object v3, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v3}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v3

    .line 2574
    .local v3, "maxRowIndex":I
    sget-object v4, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v4}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v4

    .line 2576
    .local v4, "maxColIndex":I
    move-object v5, v2

    .local v5, "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    array-length v6, v5

    .local v6, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 2578
    .local v8, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v9, v8, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v9, :cond_3

    .line 2579
    move-object v9, v8

    check-cast v9, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    .line 2581
    .local v9, "areaPtg":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    invoke-virtual {v9}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getFirstColumn()I

    move-result v10

    const/4 v11, -0x1

    if-nez v10, :cond_2

    invoke-virtual {v9}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getLastColumn()I

    move-result v10

    if-ne v10, v4, :cond_2

    .line 2583
    if-eqz p1, :cond_3

    .line 2584
    new-instance v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v9}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getFirstRow()I

    move-result v10

    invoke-virtual {v9}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getLastRow()I

    move-result v12

    invoke-direct {v1, v10, v12, v11, v11}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    return-object v1

    .line 2587
    :cond_2
    invoke-virtual {v9}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getFirstRow()I

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v9}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getLastRow()I

    move-result v10

    if-ne v10, v3, :cond_3

    .line 2589
    if-nez p1, :cond_3

    .line 2590
    new-instance v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v9}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getFirstColumn()I

    move-result v10

    invoke-virtual {v9}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getLastColumn()I

    move-result v12

    invoke-direct {v1, v11, v11, v10, v12}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    return-object v1

    .line 2576
    .end local v8    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v9    # "areaPtg":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2599
    .end local v5    # "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v6    # "len$":I
    .end local v7    # "i$":I
    :cond_4
    return-object v1
.end method

.method private lookForComment(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;II)Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .locals 5
    .param p1, "container"    # Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;
    .param p2, "row"    # I
    .param p3, "column"    # I

    .line 2404
    invoke-interface {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 2405
    .local v1, "object":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 2406
    .local v2, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    instance-of v3, v2, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    if-eqz v3, :cond_1

    .line 2407
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;

    invoke-direct {p0, v3, p2, p3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->lookForComment(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;II)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v3

    .line 2408
    .local v3, "res":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    if-eqz v3, :cond_0

    .line 2409
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    return-object v4

    .line 2413
    .end local v3    # "res":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :cond_1
    instance-of v3, v2, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    if-eqz v3, :cond_2

    .line 2414
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    .line 2415
    .local v3, "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->hasPosition()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getColumn()I

    move-result v4

    if-ne v4, p3, :cond_2

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getRow()I

    move-result v4

    if-ne v4, p2, :cond_2

    .line 2416
    return-object v3

    .line 2419
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .end local v3    # "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    :cond_2
    goto :goto_0

    .line 2420
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private notifyRowShifting(Lorg/apache/poi/hssf/usermodel/HSSFRow;)V
    .locals 5
    .param p1, "row"    # Lorg/apache/poi/hssf/usermodel/HSSFRow;

    .line 1727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Row[rownum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] contains cell(s) included in a multi-cell array formula. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "You cannot change part of an array."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1729
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/Cell;

    .line 1730
    .local v2, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 1731
    .local v3, "hcell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1732
    invoke-virtual {v3, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyArrayFormulaChanging(Ljava/lang/String;)V

    .line 1734
    .end local v2    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v3    # "hcell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    :cond_0
    goto :goto_0

    .line 1735
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private setPropertiesFromSheet(Lorg/apache/poi/hssf/model/InternalSheet;)V
    .locals 18
    .param p1, "sheet"    # Lorg/apache/poi/hssf/model/InternalSheet;

    .line 187
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getNextRow()Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    .line 189
    .local v1, "row":Lorg/apache/poi/hssf/record/RowRecord;
    :goto_0
    if-eqz v1, :cond_0

    .line 190
    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createRowFromRecord(Lorg/apache/poi/hssf/record/RowRecord;)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    .line 192
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getNextRow()Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getCellValueIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 196
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/CellValueRecordInterface;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 198
    .local v3, "timestart":J
    sget-object v5, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v7, :cond_1

    .line 199
    new-array v7, v8, [Ljava/lang/Object;

    const-string v10, "Time at start of cell creating in HSSF sheet = "

    aput-object v10, v7, v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v6

    invoke-virtual {v5, v6, v7}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 202
    :cond_1
    const/4 v5, 0x0

    .line 205
    .local v5, "lastrow":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 206
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 208
    .local v7, "cval":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 209
    .local v10, "cellstart":J
    move-object v12, v5

    .line 211
    .local v12, "hrow":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v13

    invoke-interface {v7}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v14

    if-eq v13, v14, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v14, p1

    goto :goto_3

    .line 212
    :cond_3
    :goto_2
    invoke-interface {v7}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v13

    invoke-virtual {v0, v13}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v12

    .line 213
    move-object v5, v12

    .line 214
    if-nez v12, :cond_4

    .line 224
    new-instance v13, Lorg/apache/poi/hssf/record/RowRecord;

    invoke-interface {v7}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v14

    invoke-direct {v13, v14}, Lorg/apache/poi/hssf/record/RowRecord;-><init>(I)V

    .line 225
    .local v13, "rowRec":Lorg/apache/poi/hssf/record/RowRecord;
    move-object/from16 v14, p1

    invoke-virtual {v14, v13}, Lorg/apache/poi/hssf/model/InternalSheet;->addRow(Lorg/apache/poi/hssf/record/RowRecord;)V

    .line 226
    invoke-direct {v0, v13}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createRowFromRecord(Lorg/apache/poi/hssf/record/RowRecord;)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v12

    goto :goto_3

    .line 214
    .end local v13    # "rowRec":Lorg/apache/poi/hssf/record/RowRecord;
    :cond_4
    move-object/from16 v14, p1

    .line 229
    :goto_3
    sget-object v13, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v13, v6}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 230
    instance-of v15, v7, Lorg/apache/poi/hssf/record/Record;

    if-eqz v15, :cond_5

    .line 231
    new-array v15, v6, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "record id = "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v8, v7

    check-cast v8, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v8}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v15, v9

    const/4 v6, 0x1

    invoke-virtual {v13, v6, v15}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_4

    .line 233
    :cond_5
    new-array v8, v6, [Ljava/lang/Object;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "record = "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    const/4 v6, 0x1

    invoke-virtual {v13, v6, v8}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 236
    :cond_6
    :goto_4
    invoke-virtual {v12, v7}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCellFromRecord(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 237
    invoke-virtual {v13, v6}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 238
    const/4 v8, 0x2

    new-array v15, v8, [Ljava/lang/Object;

    const-string v8, "record took "

    aput-object v8, v15, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v15, v6

    invoke-virtual {v13, v6, v15}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 242
    .end local v7    # "cval":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .end local v10    # "cellstart":J
    .end local v12    # "hrow":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    :cond_7
    const/4 v8, 0x2

    goto/16 :goto_1

    .line 243
    :cond_8
    move-object/from16 v14, p1

    sget-object v7, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v7, v6}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 244
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v10, "total sheet cell creation took "

    aput-object v10, v8, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v7, v6, v8}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 247
    :cond_9
    return-void
.end method

.method private setRepeatingRowsAndColumns(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 27
    .param p1, "rowDef"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "colDef"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 2486
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v1

    .line 2487
    .local v1, "sheetIndex":I
    sget-object v2, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v2

    .line 2488
    .local v2, "maxRowIndex":I
    sget-object v3, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v3}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v14

    .line 2490
    .local v14, "maxColIndex":I
    const/4 v3, -0x1

    .line 2491
    .local v3, "col1":I
    const/4 v4, -0x1

    .line 2492
    .local v4, "col2":I
    const/4 v5, -0x1

    .line 2493
    .local v5, "row1":I
    const/4 v6, -0x1

    .line 2495
    .local v6, "row2":I
    const/4 v7, -0x1

    if-eqz p1, :cond_2

    .line 2496
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v5

    .line 2497
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v6

    .line 2498
    if-ne v5, v7, :cond_0

    if-ne v6, v7, :cond_1

    :cond_0
    if-gt v5, v6, :cond_1

    if-ltz v5, :cond_1

    if-gt v5, v2, :cond_1

    if-ltz v6, :cond_1

    if-gt v6, v2, :cond_1

    move v15, v5

    move/from16 v16, v6

    goto :goto_0

    .line 2501
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid row range specification"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2495
    :cond_2
    move v15, v5

    move/from16 v16, v6

    .line 2504
    .end local v5    # "row1":I
    .end local v6    # "row2":I
    .local v15, "row1":I
    .local v16, "row2":I
    :goto_0
    if-eqz p2, :cond_5

    .line 2505
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v3

    .line 2506
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    .line 2507
    if-ne v3, v7, :cond_3

    if-ne v4, v7, :cond_4

    :cond_3
    if-gt v3, v4, :cond_4

    if-ltz v3, :cond_4

    if-gt v3, v14, :cond_4

    if-ltz v4, :cond_4

    if-gt v4, v14, :cond_4

    move/from16 v17, v3

    move/from16 v18, v4

    goto :goto_1

    .line 2510
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid column range specification"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2504
    :cond_5
    move/from16 v17, v3

    move/from16 v18, v4

    .line 2514
    .end local v3    # "col1":I
    .end local v4    # "col2":I
    .local v17, "col1":I
    .local v18, "col2":I
    :goto_1
    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkExternSheet(I)S

    move-result v19

    .line 2517
    .local v19, "externSheetIndex":S
    const/4 v13, 0x1

    const/4 v12, 0x0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    move/from16 v20, v3

    .line 2518
    .local v20, "setBoth":Z
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    move/from16 v21, v3

    .line 2520
    .local v21, "removeAll":Z
    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getBuiltInName(BI)Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object v3

    .line 2522
    .local v3, "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    if-eqz v21, :cond_9

    .line 2523
    if-eqz v3, :cond_8

    .line 2524
    iget-object v4, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v4, v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->removeName(Lorg/apache/poi/ss/usermodel/Name;)V

    .line 2526
    :cond_8
    return-void

    .line 2528
    :cond_9
    if-nez v3, :cond_a

    .line 2529
    iget-object v5, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v5, v4, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createBuiltInName(BI)Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object v3

    move-object v11, v3

    goto :goto_4

    .line 2528
    :cond_a
    move-object v11, v3

    .line 2533
    .end local v3    # "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    .local v11, "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    :goto_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v3

    .line 2534
    .local v10, "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    if-eqz v20, :cond_b

    .line 2535
    const/16 v3, 0x17

    .line 2536
    .local v3, "exprsSize":I
    new-instance v4, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    const/16 v5, 0x17

    invoke-direct {v4, v5}, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;-><init>(I)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2538
    .end local v3    # "exprsSize":I
    :cond_b
    if-eqz p2, :cond_c

    .line 2539
    new-instance v22, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v3, v22

    move v5, v2

    move/from16 v6, v17

    move/from16 v7, v18

    move-object/from16 v25, v10

    .end local v10    # "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    .local v25, "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    move/from16 v10, v23

    move-object/from16 v26, v11

    .end local v11    # "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    .local v26, "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    move/from16 v11, v24

    move/from16 v23, v1

    const/4 v1, 0x0

    .end local v1    # "sheetIndex":I
    .local v23, "sheetIndex":I
    move/from16 v12, v19

    invoke-direct/range {v3 .. v12}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;-><init>(IIIIZZZZI)V

    .line 2541
    .local v3, "colArea":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    move-object/from16 v12, v25

    .end local v25    # "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    .local v12, "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2538
    .end local v3    # "colArea":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    .end local v12    # "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    .end local v23    # "sheetIndex":I
    .end local v26    # "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    .restart local v1    # "sheetIndex":I
    .restart local v10    # "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    .restart local v11    # "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    :cond_c
    move/from16 v23, v1

    move-object v12, v10

    move-object/from16 v26, v11

    const/4 v1, 0x0

    .line 2543
    .end local v1    # "sheetIndex":I
    .end local v10    # "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    .end local v11    # "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    .restart local v12    # "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    .restart local v23    # "sheetIndex":I
    .restart local v26    # "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    :goto_5
    if-eqz p1, :cond_d

    .line 2544
    new-instance v3, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v22, 0x0

    move-object v4, v3

    move v5, v15

    move/from16 v6, v16

    move v8, v14

    move-object v1, v12

    .end local v12    # "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    .local v1, "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    move/from16 v12, v22

    move/from16 v22, v2

    const/4 v2, 0x1

    .end local v2    # "maxRowIndex":I
    .local v22, "maxRowIndex":I
    move/from16 v13, v19

    invoke-direct/range {v4 .. v13}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;-><init>(IIIIZZZZI)V

    .line 2546
    .local v3, "rowArea":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2543
    .end local v1    # "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    .end local v3    # "rowArea":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    .end local v22    # "maxRowIndex":I
    .restart local v2    # "maxRowIndex":I
    .restart local v12    # "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    :cond_d
    move/from16 v22, v2

    move-object v1, v12

    const/4 v2, 0x1

    .line 2548
    .end local v2    # "maxRowIndex":I
    .end local v12    # "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    .restart local v1    # "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    .restart local v22    # "maxRowIndex":I
    :goto_6
    if-eqz v20, :cond_e

    .line 2549
    sget-object v3, Lorg/apache/poi/ss/formula/ptg/UnionPtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2552
    :cond_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 2553
    .local v3, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2554
    move-object/from16 v4, v26

    .end local v26    # "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    .local v4, "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    invoke-virtual {v4, v3}, Lorg/apache/poi/hssf/usermodel/HSSFName;->setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 2556
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getPrintSetup()Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;

    move-result-object v5

    .line 2557
    .local v5, "printSetup":Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->setValidSettings(Z)V

    .line 2558
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setActive(Z)V

    .line 2559
    return-void
.end method

.method private showInPane(SS)V
    .locals 1
    .param p1, "toprow"    # S
    .param p2, "leftcol"    # S

    .line 1469
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setTopRow(S)V

    .line 1470
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/model/InternalSheet;->setLeftCol(S)V

    .line 1471
    return-void
.end method

.method private validateArrayFormulas(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 11
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 739
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 740
    .local v0, "firstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v1

    .line 741
    .local v1, "firstColumn":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v2

    .line 742
    .local v2, "lastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v3

    .line 743
    .local v3, "lastColumn":I
    move v4, v0

    .local v4, "rowIn":I
    :goto_0
    if-gt v4, v2, :cond_5

    .line 744
    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v5

    .line 745
    .local v5, "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    if-nez v5, :cond_0

    goto :goto_3

    .line 747
    :cond_0
    move v6, v1

    .local v6, "colIn":I
    :goto_1
    if-gt v6, v3, :cond_4

    .line 748
    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v7

    .line 749
    .local v7, "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    if-nez v7, :cond_1

    goto :goto_2

    .line 751
    :cond_1
    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 752
    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v8

    .line 753
    .local v8, "arrayRange":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v8}, Lorg/apache/poi/ss/util/CellRangeAddress;->getNumberOfCells()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    invoke-virtual {p1, v8}, Lorg/apache/poi/ss/util/CellRangeAddress;->intersects(Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_2

    .line 754
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

    .line 756
    .local v9, "msg":Ljava/lang/String;
    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-direct {v10, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 747
    .end local v7    # "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .end local v8    # "arrayRange":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v9    # "msg":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 743
    .end local v5    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .end local v6    # "colIn":I
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 762
    .end local v4    # "rowIn":I
    :cond_5
    return-void
.end method

.method private validateMergedRegions(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 5
    .param p1, "candidateRegion"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 776
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getMergedRegions()Ljava/util/List;

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

    .line 777
    .local v1, "existingRegion":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->intersects(Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 778
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

    .line 782
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "existingRegion":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_1
    return-void
.end method


# virtual methods
.method public addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I
    .locals 1
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 670
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;Z)I

    move-result v0

    return v0
.end method

.method public addMergedRegionUnsafe(Lorg/apache/poi/ss/util/CellRangeAddress;)I
    .locals 1
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 688
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;Z)I

    move-result v0

    return v0
.end method

.method public addValidationData(Lorg/apache/poi/ss/usermodel/DataValidation;)V
    .locals 3
    .param p1, "dataValidation"    # Lorg/apache/poi/ss/usermodel/DataValidation;

    .line 461
    if-eqz p1, :cond_0

    .line 464
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;

    .line 465
    .local v0, "hssfDataValidation":Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getOrCreateDataValidityTable()Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    move-result-object v1

    .line 467
    .local v1, "dvt":Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;
    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->createDVRecord(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)Lorg/apache/poi/hssf/record/DVRecord;

    move-result-object v2

    .line 468
    .local v2, "dvRecord":Lorg/apache/poi/hssf/record/DVRecord;
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->addDataValidation(Lorg/apache/poi/hssf/record/DVRecord;)V

    .line 469
    return-void

    .line 462
    .end local v0    # "hssfDataValidation":Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;
    .end local v1    # "dvt":Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;
    .end local v2    # "dvRecord":Lorg/apache/poi/hssf/record/DVRecord;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "objValidation must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public autoSizeColumn(I)V
    .locals 1
    .param p1, "column"    # I

    .line 2147
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->autoSizeColumn(IZ)V

    .line 2148
    return-void
.end method

.method public autoSizeColumn(IZ)V
    .locals 6
    .param p1, "column"    # I
    .param p2, "useMergedCells"    # Z

    .line 2165
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/SheetUtil;->getColumnWidth(Lorg/apache/poi/ss/usermodel/Sheet;IZ)D

    move-result-wide v0

    .line 2167
    .local v0, "width":D
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    .line 2168
    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    mul-double v0, v0, v2

    .line 2169
    const v2, 0xff00

    .line 2170
    .local v2, "maxColumnWidth":I
    int-to-double v3, v2

    cmpl-double v5, v0, v3

    if-lez v5, :cond_0

    .line 2171
    int-to-double v0, v2

    .line 2173
    :cond_0
    double-to-int v3, v0

    invoke-virtual {p0, p1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setColumnWidth(II)V

    .line 2175
    .end local v2    # "maxColumnWidth":I
    :cond_1
    return-void
.end method

.method cloneSheet(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 6
    .param p1, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 149
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 150
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->cloneSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/model/InternalSheet;)V

    .line 151
    .local v0, "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    iget-object v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v2, 0xec

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v1

    .line 152
    .local v1, "pos":I
    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/DrawingRecord;

    .line 153
    .local v2, "dr":Lorg/apache/poi/hssf/record/DrawingRecord;
    if-eqz v2, :cond_0

    .line 154
    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 157
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->createPatriarch(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v3

    .line 158
    .local v3, "patr":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    iget-object v4, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 159
    iput-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 161
    .end local v3    # "patr":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    :cond_1
    return-object v0
.end method

.method public createDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .locals 1

    .line 2037
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getPatriarch(Z)Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 2038
    return-object v0
.end method

.method public bridge synthetic createDrawingPatriarch()Lorg/apache/poi/ss/usermodel/Drawing;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    return-object v0
.end method

.method public createFreezePane(II)V
    .locals 0
    .param p1, "colSplit"    # I
    .param p2, "rowSplit"    # I

    .line 1768
    invoke-virtual {p0, p1, p2, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createFreezePane(IIII)V

    .line 1769
    return-void
.end method

.method public createFreezePane(IIII)V
    .locals 2
    .param p1, "colSplit"    # I
    .param p2, "rowSplit"    # I
    .param p3, "leftmostColumn"    # I
    .param p4, "topRow"    # I

    .line 1749
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->validateColumn(I)V

    .line 1750
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->validateRow(I)V

    .line 1751
    if-lt p3, p1, :cond_1

    .line 1753
    if-lt p4, p2, :cond_0

    .line 1755
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4, p3}, Lorg/apache/poi/hssf/model/InternalSheet;->createFreezePane(IIII)V

    .line 1756
    return-void

    .line 1754
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "topRow parameter must not be less than leftmostColumn parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1752
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "leftmostColumn parameter must not be less than colSplit parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .locals 3
    .param p1, "rownum"    # I

    .line 259
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v0, v1, p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;I)V

    .line 261
    .local v0, "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDefaultRowHeight()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->setHeight(S)V

    .line 262
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowRecord()Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/RowRecord;->setBadFontHeight(Z)V

    .line 264
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->addRow(Lorg/apache/poi/hssf/usermodel/HSSFRow;Z)V

    .line 265
    return-object v0
.end method

.method public bridge synthetic createRow(I)Lorg/apache/poi/ss/usermodel/Row;
    .locals 1
    .param p1, "x0"    # I

    .line 83
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v0

    return-object v0
.end method

.method public createSplitPane(IIIII)V
    .locals 6
    .param p1, "xSplitPos"    # I
    .param p2, "ySplitPos"    # I
    .param p3, "leftmostColumn"    # I
    .param p4, "topRow"    # I
    .param p5, "activePane"    # I

    .line 1787
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/hssf/model/InternalSheet;->createSplitPane(IIIII)V

    .line 1788
    return-void
.end method

.method public dumpDrawingRecords(ZLjava/io/PrintWriter;)V
    .locals 5
    .param p1, "fat"    # Z
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1977
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getDrawingManager()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->aggregateDrawingRecords(Lorg/apache/poi/hssf/model/DrawingManager2;Z)I

    .line 1979
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    const/16 v1, 0x2694

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/EscherAggregate;

    .line 1980
    .local v0, "r":Lorg/apache/poi/hssf/record/EscherAggregate;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/EscherAggregate;->getEscherRecords()Ljava/util/List;

    move-result-object v1

    .line 1981
    .local v1, "escherRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ddf/EscherRecord;

    .line 1982
    .local v4, "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    if-eqz p1, :cond_0

    .line 1983
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 1985
    :cond_0
    invoke-virtual {v4, p2, v2}, Lorg/apache/poi/ddf/EscherRecord;->display(Ljava/io/PrintWriter;I)V

    .end local v4    # "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    :goto_1
    goto :goto_0

    .line 1988
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1989
    return-void
.end method

.method protected findCellComment(II)Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 2396
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    .line 2397
    .local v0, "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    if-nez v0, :cond_0

    .line 2398
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    .line 2400
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->lookForComment(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;II)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v1

    return-object v1
.end method

.method public getActiveCell()Lorg/apache/poi/ss/util/CellAddress;
    .locals 3

    .line 2628
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getActiveCellRow()I

    move-result v0

    .line 2629
    .local v0, "row":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getActiveCellCol()S

    move-result v1

    .line 2630
    .local v1, "col":I
    new-instance v2, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    return-object v2
.end method

.method public getAlternateExpression()Z
    .locals 2

    .line 1088
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getAlternateExpression()Z

    move-result v0

    return v0
.end method

.method public getAlternateFormula()Z
    .locals 2

    .line 1098
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getAlternateFormula()Z

    move-result v0

    return v0
.end method

.method public getAutobreaks()Z
    .locals 2

    .line 1109
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getAutobreaks()Z

    move-result v0

    return v0
.end method

.method public getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .locals 2
    .param p1, "ref"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 2184
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->findCellComment(II)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/ss/usermodel/Comment;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 83
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v0

    return-object v0
.end method

.method public getCellComments()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            "Lorg/apache/poi/hssf/usermodel/HSSFComment;",
            ">;"
        }
    .end annotation

    .line 2430
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    .line 2431
    .local v0, "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    if-nez v0, :cond_0

    .line 2432
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    .line 2435
    :cond_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 2436
    .local v1, "locations":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/poi/ss/util/CellAddress;Lorg/apache/poi/hssf/usermodel/HSSFComment;>;"
    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->findCellCommentLocations(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Ljava/util/Map;)V

    .line 2437
    return-object v1
.end method

.method public getColumnBreaks()[I
    .locals 1

    .line 1908
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getColumnBreaks()[I

    move-result-object v0

    return-object v0
.end method

.method public getColumnOutlineLevel(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    .line 2620
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getColumnOutlineLevel(I)I

    move-result v0

    return v0
.end method

.method public getColumnStyle(I)Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .locals 4
    .param p1, "column"    # I

    .line 630
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getXFIndexForColAt(S)S

    move-result v0

    .line 632
    .local v0, "styleIndex":S
    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 634
    const/4 v1, 0x0

    return-object v1

    .line 637
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v1

    .line 638
    .local v1, "xf":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    return-object v2
.end method

.method public bridge synthetic getColumnStyle(I)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1
    .param p1, "x0"    # I

    .line 83
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getColumnStyle(I)Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public getColumnWidth(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    .line 544
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getColumnWidth(I)I

    move-result v0

    return v0
.end method

.method public getColumnWidthInPixels(I)F
    .locals 4
    .param p1, "column"    # I

    .line 549
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getColumnWidth(I)I

    move-result v0

    .line 550
    .local v0, "cw":I
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDefaultColumnWidth()I

    move-result v1

    mul-int/lit16 v1, v1, 0x100

    .line 551
    .local v1, "def":I
    if-ne v0, v1, :cond_0

    const/high16 v2, 0x42000000    # 32.0f

    goto :goto_0

    :cond_0
    const v2, 0x42123d71    # 36.56f

    .line 553
    .local v2, "px":F
    :goto_0
    int-to-float v3, v0

    div-float/2addr v3, v2

    return v3
.end method

.method public getDataValidationHelper()Lorg/apache/poi/ss/usermodel/DataValidationHelper;
    .locals 1

    .line 2349
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidationHelper;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidationHelper;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object v0
.end method

.method public getDataValidations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;",
            ">;"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getOrCreateDataValidityTable()Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    move-result-object v0

    .line 427
    .local v0, "dvt":Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v1, "hssfValidations":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;>;"
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFSheet$1;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet$1;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Ljava/util/List;)V

    .line 450
    .local v2, "visitor":Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 451
    return-object v1
.end method

.method public getDefaultColumnWidth()I
    .locals 1

    .line 564
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getDefaultColumnWidth()I

    move-result v0

    return v0
.end method

.method public getDefaultRowHeight()S
    .locals 1

    .line 587
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getDefaultRowHeight()S

    move-result v0

    return v0
.end method

.method public getDefaultRowHeightInPoints()F
    .locals 2

    .line 598
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getDefaultRowHeight()S

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getDialog()Z
    .locals 2

    .line 1119
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getDialog()Z

    move-result v0

    return v0
.end method

.method public getDisplayGuts()Z
    .locals 2

    .line 1130
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getDisplayGuts()Z

    move-result v0

    return v0
.end method

.method public getDrawingEscherAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;
    .locals 4

    .line 1996
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findDrawingGroup()Lorg/apache/poi/hssf/model/DrawingManager2;

    .line 2000
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getDrawingManager()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2001
    return-object v1

    .line 2004
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getDrawingManager()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/hssf/model/InternalSheet;->aggregateDrawingRecords(Lorg/apache/poi/hssf/model/DrawingManager2;Z)I

    move-result v0

    .line 2007
    .local v0, "found":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 2009
    return-object v1

    .line 2013
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v2, 0x2694

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/EscherAggregate;

    return-object v1
.end method

.method public getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .locals 1

    .line 2023
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getPatriarch(Z)Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 2024
    return-object v0
.end method

.method public bridge synthetic getDrawingPatriarch()Lorg/apache/poi/ss/usermodel/Drawing;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    return-object v0
.end method

.method public getFirstRowNum()I
    .locals 1

    .line 403
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    return v0
.end method

.method public getFitToPage()Z
    .locals 2

    .line 1170
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getFitToPage()Z

    move-result v0

    return v0
.end method

.method public getFooter()Lorg/apache/poi/hssf/usermodel/HSSFFooter;
    .locals 2

    .line 1255
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFFooter;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFFooter;-><init>(Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;)V

    return-object v0
.end method

.method public bridge synthetic getFooter()Lorg/apache/poi/ss/usermodel/Footer;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getFooter()Lorg/apache/poi/hssf/usermodel/HSSFFooter;

    move-result-object v0

    return-object v0
.end method

.method public getForceFormulaRecalculation()Z
    .locals 1

    .line 834
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getUncalced()Z

    move-result v0

    return v0
.end method

.method public getHeader()Lorg/apache/poi/hssf/usermodel/HSSFHeader;
    .locals 2

    .line 1250
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFHeader;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFHeader;-><init>(Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;)V

    return-object v0
.end method

.method public bridge synthetic getHeader()Lorg/apache/poi/ss/usermodel/Header;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getHeader()Lorg/apache/poi/hssf/usermodel/HSSFHeader;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontallyCenter()Z
    .locals 1

    .line 871
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getHCenter()Lorg/apache/poi/hssf/record/HCenterRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HCenterRecord;->getHCenter()Z

    move-result v0

    return v0
.end method

.method public getHyperlink(II)Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
    .locals 4
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 2196
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

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

    check-cast v1, Lorg/apache/poi/hssf/record/RecordBase;

    .line 2197
    .local v1, "rec":Lorg/apache/poi/hssf/record/RecordBase;
    instance-of v2, v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    if-eqz v2, :cond_0

    .line 2198
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    .line 2199
    .local v2, "link":Lorg/apache/poi/hssf/record/HyperlinkRecord;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getFirstColumn()I

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getFirstRow()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 2200
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    invoke-direct {v3, v2}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;-><init>(Lorg/apache/poi/hssf/record/HyperlinkRecord;)V

    return-object v3

    .line 2202
    .end local v1    # "rec":Lorg/apache/poi/hssf/record/RecordBase;
    .end local v2    # "link":Lorg/apache/poi/hssf/record/HyperlinkRecord;
    :cond_0
    goto :goto_0

    .line 2204
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
    .locals 2
    .param p1, "addr"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 2216
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getHyperlink(II)Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHyperlink(II)Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .line 83
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getHyperlink(II)Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 83
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public getHyperlinkList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;",
            ">;"
        }
    .end annotation

    .line 2226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2227
    .local v0, "hyperlinkList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;>;"
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

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

    check-cast v2, Lorg/apache/poi/hssf/record/RecordBase;

    .line 2228
    .local v2, "rec":Lorg/apache/poi/hssf/record/RecordBase;
    instance-of v3, v2, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    if-eqz v3, :cond_0

    .line 2229
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    .line 2230
    .local v3, "link":Lorg/apache/poi/hssf/record/HyperlinkRecord;
    new-instance v4, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    invoke-direct {v4, v3}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;-><init>(Lorg/apache/poi/hssf/record/HyperlinkRecord;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2231
    .end local v2    # "rec":Lorg/apache/poi/hssf/record/RecordBase;
    .end local v3    # "link":Lorg/apache/poi/hssf/record/HyperlinkRecord;
    :cond_0
    goto :goto_0

    .line 2233
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public getLastRowNum()I
    .locals 1

    .line 421
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    return v0
.end method

.method public getLeftCol()S
    .locals 1

    .line 1444
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getLeftCol()S

    move-result v0

    return v0
.end method

.method public getMargin(S)D
    .locals 2
    .param p1, "margin"    # S

    .line 1302
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 1308
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getMargin(S)D

    move-result-wide v0

    return-wide v0

    .line 1304
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getFooterMargin()D

    move-result-wide v0

    return-wide v0

    .line 1306
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getHeaderMargin()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1
    .param p1, "index"    # I

    .line 931
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getMergedRegionAt(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getMergedRegions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation

    .line 939
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 940
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getNumMergedRegions()I

    move-result v1

    .line 941
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 942
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->getMergedRegionAt(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 941
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 944
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public getNumMergedRegions()I
    .locals 1

    .line 923
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getNumMergedRegions()I

    move-result v0

    return v0
.end method

.method public getObjectProtect()Z
    .locals 1

    .line 1359
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->isObjectProtected()Z

    move-result v0

    return v0
.end method

.method public getPaneInformation()Lorg/apache/poi/ss/util/PaneInformation;
    .locals 1

    .line 1797
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPaneInformation()Lorg/apache/poi/ss/util/PaneInformation;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()S
    .locals 1

    .line 1350
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->getPasswordHash()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getPhysicalNumberOfRows()I
    .locals 1

    .line 393
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method

.method public getPrintSetup()Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;
    .locals 2

    .line 1245
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;-><init>(Lorg/apache/poi/hssf/record/PrintSetupRecord;)V

    return-object v0
.end method

.method public bridge synthetic getPrintSetup()Lorg/apache/poi/ss/usermodel/PrintSetup;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getPrintSetup()Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;

    move-result-object v0

    return-object v0
.end method

.method public getProtect()Z
    .locals 1

    .line 1343
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->isSheetProtected()Z

    move-result v0

    return v0
.end method

.method public getRepeatingColumns()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    .line 2468
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRepeatingRowsOrColums(Z)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatingRows()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    .line 2463
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRepeatingRowsOrColums(Z)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .locals 2
    .param p1, "rowIndex"    # I

    .line 385
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    return-object v0
.end method

.method public bridge synthetic getRow(I)Lorg/apache/poi/ss/usermodel/Row;
    .locals 1
    .param p1, "x0"    # I

    .line 83
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v0

    return-object v0
.end method

.method public getRowBreaks()[I
    .locals 1

    .line 1899
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getRowBreaks()[I

    move-result-object v0

    return-object v0
.end method

.method public getRowSumsBelow()Z
    .locals 2

    .line 1181
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getRowSumsBelow()Z

    move-result v0

    return v0
.end method

.method public getRowSumsRight()Z
    .locals 2

    .line 1192
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getRowSumsRight()Z

    move-result v0

    return v0
.end method

.method public getScenarioProtect()Z
    .locals 1

    .line 1369
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->isScenarioProtected()Z

    move-result v0

    return v0
.end method

.method getSheet()Lorg/apache/poi/hssf/model/InternalSheet;
    .locals 1

    .line 976
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    return-object v0
.end method

.method public getSheetConditionalFormatting()Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;
    .locals 1

    .line 2267
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object v0
.end method

.method public bridge synthetic getSheetConditionalFormatting()Lorg/apache/poi/ss/usermodel/SheetConditionalFormatting;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheetConditionalFormatting()Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 3

    .line 2278
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    .line 2279
    .local v0, "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v1

    .line 2280
    .local v1, "idx":I
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getTopRow()S
    .locals 1

    .line 1433
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getTopRow()S

    move-result v0

    return v0
.end method

.method public getVerticallyCenter()Z
    .locals 1

    .line 853
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getVCenter()Lorg/apache/poi/hssf/record/VCenterRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/VCenterRecord;->getVCenter()Z

    move-result v0

    return v0
.end method

.method public getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    return-object v0
.end method

.method public bridge synthetic getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    return-object v0
.end method

.method public groupColumn(II)V
    .locals 2
    .param p1, "fromColumn"    # I
    .param p2, "toColumn"    # I

    .line 2092
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->groupColumnRange(IIZ)V

    .line 2093
    return-void
.end method

.method public groupRow(II)V
    .locals 2
    .param p1, "fromRow"    # I
    .param p2, "toRow"    # I

    .line 2108
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->groupRowRange(IIZ)V

    .line 2109
    return-void
.end method

.method protected insertChartRecords(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;)V"
        }
    .end annotation

    .line 1722
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x23e

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v0

    .line 1723
    .local v0, "window2Loc":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1724
    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 1282
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->isActive()Z

    move-result v0

    return v0
.end method

.method public isColumnBroken(I)Z
    .locals 1
    .param p1, "column"    # I

    .line 1937
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->isColumnBroken(I)Z

    move-result v0

    return v0
.end method

.method public isColumnHidden(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .line 490
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->isColumnHidden(I)Z

    move-result v0

    return v0
.end method

.method public isDisplayFormulas()Z
    .locals 1

    .line 1837
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->isDisplayFormulas()Z

    move-result v0

    return v0
.end method

.method public isDisplayGridlines()Z
    .locals 1

    .line 1817
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->isDisplayGridlines()Z

    move-result v0

    return v0
.end method

.method public isDisplayRowColHeadings()Z
    .locals 1

    .line 1857
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->isDisplayRowColHeadings()Z

    move-result v0

    return v0
.end method

.method public isDisplayZeros()Z
    .locals 1

    .line 1146
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getDisplayZeros()Z

    move-result v0

    return v0
.end method

.method public isGridsPrinted()Z
    .locals 1

    .line 647
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->isGridsPrinted()Z

    move-result v0

    return v0
.end method

.method public isPrintGridlines()Z
    .locals 1

    .line 1203
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPrintGridlines()Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;->getPrintGridlines()Z

    move-result v0

    return v0
.end method

.method public isPrintRowAndColumnHeadings()Z
    .locals 1

    .line 1224
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPrintHeaders()Lorg/apache/poi/hssf/record/PrintHeadersRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintHeadersRecord;->getPrintHeaders()Z

    move-result v0

    return v0
.end method

.method public isRightToLeft()Z
    .locals 1

    .line 891
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getArabic()Z

    move-result v0

    return v0
.end method

.method public isRowBroken(I)Z
    .locals 1
    .param p1, "row"    # I

    .line 1882
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->isRowBroken(I)Z

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 1265
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getSelected()Z

    move-result v0

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

    .line 965
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->rowIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected preSerialize()V
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->preSerialize()V

    .line 171
    :cond_0
    return-void
.end method

.method public protectSheet(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .line 1379
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->protectSheet(Ljava/lang/String;ZZ)V

    .line 1380
    return-void
.end method

.method public removeArrayFormula(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellRange;
    .locals 7
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange<",
            "Lorg/apache/poi/hssf/usermodel/HSSFCell;",
            ">;"
        }
    .end annotation

    .line 2328
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 2331
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v0

    .line 2332
    .local v0, "rec":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    instance-of v1, v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    if-eqz v1, :cond_1

    .line 2336
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 2337
    .local v1, "fra":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->removeArrayFormula(II)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    .line 2339
    .local v2, "range":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;

    move-result-object v3

    .line 2341
    .local v3, "result":Lorg/apache/poi/ss/usermodel/CellRange;, "Lorg/apache/poi/ss/usermodel/CellRange<Lorg/apache/poi/hssf/usermodel/HSSFCell;>;"
    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/CellRange;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 2342
    .local v5, "c":Lorg/apache/poi/ss/usermodel/Cell;
    sget-object v6, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-interface {v5, v6}, Lorg/apache/poi/ss/usermodel/Cell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .end local v5    # "c":Lorg/apache/poi/ss/usermodel/Cell;
    goto :goto_0

    .line 2344
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v3

    .line 2333
    .end local v1    # "fra":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    .end local v2    # "range":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v3    # "result":Lorg/apache/poi/ss/usermodel/CellRange;, "Lorg/apache/poi/ss/usermodel/CellRange<Lorg/apache/poi/hssf/usermodel/HSSFCell;>;"
    :cond_1
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v1

    .line 2334
    .local v1, "ref":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cell "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not part of an array formula."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2329
    .end local v0    # "rec":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .end local v1    # "ref":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified cell does not belong to this sheet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeColumnBreak(I)V
    .locals 1
    .param p1, "column"    # I

    .line 1947
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->removeColumnBreak(I)V

    .line 1948
    return-void
.end method

.method protected removeHyperlink(Lorg/apache/poi/hssf/record/HyperlinkRecord;)V
    .locals 3
    .param p1, "link"    # Lorg/apache/poi/hssf/record/HyperlinkRecord;

    .line 2252
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/RecordBase;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2253
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/RecordBase;

    .line 2254
    .local v1, "rec":Lorg/apache/poi/hssf/record/RecordBase;
    instance-of v2, v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    if-eqz v2, :cond_0

    .line 2255
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    .line 2256
    .local v2, "recLink":Lorg/apache/poi/hssf/record/HyperlinkRecord;
    if-ne p1, v2, :cond_0

    .line 2257
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2259
    return-void

    .line 2262
    .end local v1    # "rec":Lorg/apache/poi/hssf/record/RecordBase;
    .end local v2    # "recLink":Lorg/apache/poi/hssf/record/HyperlinkRecord;
    :cond_0
    goto :goto_0

    .line 2263
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/RecordBase;>;"
    :cond_1
    return-void
.end method

.method protected removeHyperlink(Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;)V
    .locals 1
    .param p1, "link"    # Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    .line 2243
    iget-object v0, p1, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->removeHyperlink(Lorg/apache/poi/hssf/record/HyperlinkRecord;)V

    .line 2244
    return-void
.end method

.method public removeMergedRegion(I)V
    .locals 1
    .param p1, "index"    # I

    .line 901
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->removeMergedRegion(I)V

    .line 902
    return-void
.end method

.method public removeMergedRegions(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 911
    .local p1, "indices":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 912
    .local v1, "i":I
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->removeMergedRegion(I)V

    .end local v1    # "i":I
    goto :goto_0

    .line 914
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public removeRow(Lorg/apache/poi/ss/usermodel/Row;)V
    .locals 7
    .param p1, "row"    # Lorg/apache/poi/ss/usermodel/Row;

    .line 290
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    .line 291
    .local v0, "hrow":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    const-string v2, "Specified row does not belong to this sheet"

    if-ne v1, p0, :cond_6

    .line 294
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/usermodel/Cell;

    .line 295
    .local v3, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 296
    .local v4, "xcell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 297
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Row[rownum="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] contains cell(s) included in a multi-cell array formula. You cannot change part of an array."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 298
    .local v5, "msg":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyArrayFormulaChanging(Ljava/lang/String;)V

    .line 300
    .end local v3    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v4    # "xcell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .end local v5    # "msg":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 302
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 303
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 304
    .local v1, "key":Ljava/lang/Integer;
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    .line 305
    .local v3, "removedRow":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    if-ne v3, p1, :cond_4

    .line 309
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getLastRowNum()I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 310
    iget v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->findLastRow(I)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    .line 312
    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getFirstRowNum()I

    move-result v4

    if-ne v2, v4, :cond_3

    .line 313
    iget v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->findFirstRow(I)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    .line 315
    :cond_3
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowRecord()Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/poi/hssf/model/InternalSheet;->removeRow(Lorg/apache/poi/hssf/record/RowRecord;)V

    goto :goto_1

    .line 307
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 317
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v3    # "removedRow":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    :cond_5
    :goto_1
    return-void

    .line 292
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeRowBreak(I)V
    .locals 1
    .param p1, "row"    # I

    .line 1890
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->removeRowBreak(I)V

    .line 1891
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

    .line 955
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 956
    .local v0, "result":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    return-object v0
.end method

.method public setActive(Z)V
    .locals 1
    .param p1, "sel"    # Z

    .line 1291
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setActive(Z)V

    .line 1292
    return-void
.end method

.method public setActiveCell(Lorg/apache/poi/ss/util/CellAddress;)V
    .locals 3
    .param p1, "address"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 2638
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v0

    .line 2639
    .local v0, "row":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v1

    int-to-short v1, v1

    .line 2640
    .local v1, "col":S
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/model/InternalSheet;->setActiveCellRow(I)V

    .line 2641
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->setActiveCellCol(S)V

    .line 2642
    return-void
.end method

.method public setAlternativeExpression(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 985
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    .line 988
    .local v0, "record":Lorg/apache/poi/hssf/record/WSBoolRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setAlternateExpression(Z)V

    .line 989
    return-void
.end method

.method public setAlternativeFormula(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 997
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    .line 1000
    .local v0, "record":Lorg/apache/poi/hssf/record/WSBoolRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setAlternateFormula(Z)V

    .line 1001
    return-void
.end method

.method public setArrayFormula(Ljava/lang/String;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;
    .locals 5
    .param p1, "formula"    # Ljava/lang/String;
    .param p2, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange<",
            "Lorg/apache/poi/hssf/usermodel/HSSFCell;",
            ">;"
        }
    .end annotation

    .line 2313
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    .line 2314
    .local v0, "sheetIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    sget-object v2, Lorg/apache/poi/ss/formula/FormulaType;->ARRAY:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-static {p1, v1, v2, v0}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/ss/formula/FormulaType;I)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    .line 2315
    .local v1, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;

    move-result-object v2

    .line 2317
    .local v2, "cells":Lorg/apache/poi/ss/usermodel/CellRange;, "Lorg/apache/poi/ss/usermodel/CellRange<Lorg/apache/poi/hssf/usermodel/HSSFCell;>;"
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/CellRange;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 2318
    .local v4, "c":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    invoke-virtual {v4, p2}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellArrayFormula(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .end local v4    # "c":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    goto :goto_0

    .line 2320
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/CellRange;->getTopLeftCell()Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 2321
    .local v3, "mainArrayFormulaCell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 2322
    .local v4, "agg":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    invoke-virtual {v4, p2, v1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setArrayFormula(Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 2323
    return-object v2
.end method

.method public setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/hssf/usermodel/HSSFAutoFilter;
    .locals 24
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 2354
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    .line 2355
    .local v1, "workbook":Lorg/apache/poi/hssf/model/InternalWorkbook;
    iget-object v2, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v2

    .line 2357
    .local v2, "sheetIndex":I
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0xd

    invoke-virtual {v1, v4, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSpecificBuiltinRecord(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v3

    .line 2359
    .local v3, "name":Lorg/apache/poi/hssf/record/NameRecord;
    if-nez v3, :cond_0

    .line 2360
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v4, v5}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBuiltInName(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v3

    move-object v13, v3

    goto :goto_0

    .line 2359
    :cond_0
    move-object v13, v3

    .line 2363
    .end local v3    # "name":Lorg/apache/poi/hssf/record/NameRecord;
    .local v13, "name":Lorg/apache/poi/hssf/record/NameRecord;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v3

    .line 2366
    .local v3, "firstRow":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 2367
    const/4 v3, 0x0

    move v14, v3

    goto :goto_1

    .line 2366
    :cond_1
    move v14, v3

    .line 2371
    .end local v3    # "firstRow":I
    .local v14, "firstRow":I
    :goto_1
    new-instance v15, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v15

    move v4, v14

    move v12, v2

    invoke-direct/range {v3 .. v12}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;-><init>(IIIIZZZZI)V

    .line 2374
    .local v3, "ptg":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    const/4 v4, 0x1

    new-array v5, v4, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v13, v5}, Lorg/apache/poi/hssf/record/NameRecord;->setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 2376
    new-instance v5, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;

    invoke-direct {v5}, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;-><init>()V

    move-object v15, v5

    .line 2378
    .local v15, "r":Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v4

    sub-int v12, v5, v4

    .line 2379
    .local v12, "numcols":I
    int-to-short v4, v12

    invoke-virtual {v15, v4}, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;->setNumEntries(S)V

    .line 2380
    iget-object v4, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v5, 0x200

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v11

    .line 2381
    .local v11, "idx":I
    iget-object v4, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v11, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2384
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v10

    .line 2385
    .local v10, "p":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v16

    .line 2386
    .local v16, "firstColumn":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v9

    .line 2387
    .local v9, "lastColumn":I
    move/from16 v4, v16

    move v8, v4

    .local v8, "col":I
    :goto_2
    if-gt v8, v9, :cond_2

    .line 2388
    new-instance v7, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    const/4 v5, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    int-to-short v4, v8

    add-int/lit8 v6, v8, 0x1

    int-to-short v6, v6

    add-int/lit8 v20, v14, 0x1

    move/from16 v21, v4

    move-object v4, v7

    move/from16 v19, v6

    const/4 v6, 0x0

    move-object/from16 v22, v7

    move/from16 v7, v17

    move/from16 v17, v8

    .end local v8    # "col":I
    .local v17, "col":I
    move/from16 v8, v18

    move/from16 v18, v9

    .end local v9    # "lastColumn":I
    .local v18, "lastColumn":I
    move/from16 v9, v21

    move-object/from16 v23, v10

    .end local v10    # "p":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .local v23, "p":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    move v10, v14

    move/from16 v21, v11

    .end local v11    # "idx":I
    .local v21, "idx":I
    move/from16 v11, v19

    move/from16 v19, v12

    .end local v12    # "numcols":I
    .local v19, "numcols":I
    move/from16 v12, v20

    invoke-direct/range {v4 .. v12}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;-><init>(IIIISISI)V

    move-object/from16 v5, v22

    move-object/from16 v4, v23

    .end local v23    # "p":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .local v4, "p":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->createComboBox(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    .line 2387
    add-int/lit8 v8, v17, 0x1

    move-object v10, v4

    move/from16 v9, v18

    move/from16 v12, v19

    move/from16 v11, v21

    .end local v17    # "col":I
    .restart local v8    # "col":I
    goto :goto_2

    .line 2392
    .end local v4    # "p":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .end local v8    # "col":I
    .end local v18    # "lastColumn":I
    .end local v19    # "numcols":I
    .end local v21    # "idx":I
    .restart local v9    # "lastColumn":I
    .restart local v10    # "p":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .restart local v11    # "idx":I
    .restart local v12    # "numcols":I
    :cond_2
    new-instance v5, Lorg/apache/poi/hssf/usermodel/HSSFAutoFilter;

    invoke-direct {v5, v0}, Lorg/apache/poi/hssf/usermodel/HSSFAutoFilter;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object v5
.end method

.method public bridge synthetic setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/AutoFilter;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 83
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/hssf/usermodel/HSSFAutoFilter;

    move-result-object v0

    return-object v0
.end method

.method public setAutobreaks(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 1010
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    .line 1013
    .local v0, "record":Lorg/apache/poi/hssf/record/WSBoolRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setAutobreaks(Z)V

    .line 1014
    return-void
.end method

.method public setColumnBreak(I)V
    .locals 4
    .param p1, "column"    # I

    .line 1925
    int-to-short v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->validateColumn(I)V

    .line 1926
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    int-to-short v1, p1

    sget-object v2, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v2

    int-to-short v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->setColumnBreak(SSS)V

    .line 1927
    return-void
.end method

.method public setColumnGroupCollapsed(IZ)V
    .locals 1
    .param p1, "columnNumber"    # I
    .param p2, "collapsed"    # Z

    .line 2081
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalSheet;->setColumnGroupCollapsed(IZ)V

    .line 2082
    return-void
.end method

.method public setColumnHidden(IZ)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "hidden"    # Z

    .line 479
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalSheet;->setColumnHidden(IZ)V

    .line 480
    return-void
.end method

.method public setColumnWidth(II)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "width"    # I

    .line 533
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalSheet;->setColumnWidth(II)V

    .line 534
    return-void
.end method

.method public setDefaultColumnStyle(ILorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 2
    .param p1, "column"    # I
    .param p2, "style"    # Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 2133
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    move-object v1, p2

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getIndex()S

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDefaultColumnStyle(II)V

    .line 2134
    return-void
.end method

.method public setDefaultColumnWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .line 575
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDefaultColumnWidth(I)V

    .line 576
    return-void
.end method

.method public setDefaultRowHeight(S)V
    .locals 1
    .param p1, "height"    # S

    .line 609
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDefaultRowHeight(S)V

    .line 610
    return-void
.end method

.method public setDefaultRowHeightInPoints(F)V
    .locals 2
    .param p1, "height"    # F

    .line 620
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v1, v1, p1

    float-to-int v1, v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDefaultRowHeight(S)V

    .line 621
    return-void
.end method

.method public setDialog(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 1022
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    .line 1025
    .local v0, "record":Lorg/apache/poi/hssf/record/WSBoolRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setDialog(Z)V

    .line 1026
    return-void
.end method

.method public setDisplayFormulas(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 1827
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDisplayFormulas(Z)V

    .line 1828
    return-void
.end method

.method public setDisplayGridlines(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 1807
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDisplayGridlines(Z)V

    .line 1808
    return-void
.end method

.method public setDisplayGuts(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 1035
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    .line 1038
    .local v0, "record":Lorg/apache/poi/hssf/record/WSBoolRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setDisplayGuts(Z)V

    .line 1039
    return-void
.end method

.method public setDisplayRowColHeadings(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 1847
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDisplayRowColHeadings(Z)V

    .line 1848
    return-void
.end method

.method public setDisplayZeros(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 1160
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setDisplayZeros(Z)V

    .line 1161
    return-void
.end method

.method public setFitToPage(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 1048
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    .line 1051
    .local v0, "record":Lorg/apache/poi/hssf/record/WSBoolRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setFitToPage(Z)V

    .line 1052
    return-void
.end method

.method public setForceFormulaRecalculation(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 823
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setUncalced(Z)V

    .line 824
    return-void
.end method

.method public setGridsPrinted(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 656
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setGridsPrinted(Z)V

    .line 657
    return-void
.end method

.method public setHorizontallyCenter(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 863
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getHCenter()Lorg/apache/poi/hssf/record/HCenterRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HCenterRecord;->setHCenter(Z)V

    .line 864
    return-void
.end method

.method public setMargin(SD)V
    .locals 1
    .param p1, "margin"    # S
    .param p2, "size"    # D

    .line 1320
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 1328
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->setMargin(SD)V

    goto :goto_0

    .line 1322
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setFooterMargin(D)V

    .line 1323
    goto :goto_0

    .line 1325
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setHeaderMargin(D)V

    .line 1326
    nop

    .line 1330
    :goto_0
    return-void
.end method

.method public setPrintGridlines(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 1214
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPrintGridlines()Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;->setPrintGridlines(Z)V

    .line 1215
    return-void
.end method

.method public setPrintRowAndColumnHeadings(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 1235
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPrintHeaders()Lorg/apache/poi/hssf/record/PrintHeadersRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PrintHeadersRecord;->setPrintHeaders(Z)V

    .line 1236
    return-void
.end method

.method public setRepeatingColumns(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1
    .param p1, "columnRangeRef"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 2479
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRepeatingRows()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    .line 2480
    .local v0, "rowRangeRef":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setRepeatingRowsAndColumns(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 2481
    return-void
.end method

.method public setRepeatingRows(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1
    .param p1, "rowRangeRef"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 2473
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRepeatingColumns()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    .line 2474
    .local v0, "columnRangeRef":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setRepeatingRowsAndColumns(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 2475
    return-void
.end method

.method public setRightToLeft(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 881
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setArabic(Z)V

    .line 882
    return-void
.end method

.method public setRowBreak(I)V
    .locals 3
    .param p1, "row"    # I

    .line 1873
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->validateRow(I)V

    .line 1874
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->setRowBreak(ISS)V

    .line 1875
    return-void
.end method

.method public setRowGroupCollapsed(IZ)V
    .locals 1
    .param p1, "rowIndex"    # I
    .param p2, "collapse"    # Z

    .line 2118
    if-eqz p2, :cond_0

    .line 2119
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRowsAggregate()Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->collapseRow(I)V

    goto :goto_0

    .line 2121
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRowsAggregate()Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->expandRow(I)V

    .line 2123
    :goto_0
    return-void
.end method

.method public setRowSumsBelow(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 1061
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    .line 1064
    .local v0, "record":Lorg/apache/poi/hssf/record/WSBoolRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setRowSumsBelow(Z)V

    .line 1066
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setAlternateExpression(Z)V

    .line 1067
    return-void
.end method

.method public setRowSumsRight(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 1076
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    .line 1079
    .local v0, "record":Lorg/apache/poi/hssf/record/WSBoolRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setRowSumsRight(Z)V

    .line 1080
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "sel"    # Z

    .line 1275
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setSelected(Z)V

    .line 1276
    return-void
.end method

.method public setVerticallyCenter(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 845
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getVCenter()Lorg/apache/poi/hssf/record/VCenterRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/VCenterRecord;->setVCenter(Z)V

    .line 846
    return-void
.end method

.method public setZoom(I)V
    .locals 1
    .param p1, "scale"    # I

    .line 1422
    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setZoom(II)V

    .line 1423
    return-void
.end method

.method public setZoom(II)V
    .locals 2
    .param p1, "numerator"    # I
    .param p2, "denominator"    # I

    .line 1392
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const v1, 0xffff

    if-gt p1, v1, :cond_1

    .line 1394
    if-lt p2, v0, :cond_0

    if-gt p2, v1, :cond_0

    .line 1397
    new-instance v0, Lorg/apache/poi/hssf/record/SCLRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/SCLRecord;-><init>()V

    .line 1398
    .local v0, "sclRecord":Lorg/apache/poi/hssf/record/SCLRecord;
    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/SCLRecord;->setNumerator(S)V

    .line 1399
    int-to-short v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/SCLRecord;->setDenominator(S)V

    .line 1400
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalSheet;->setSCLRecord(Lorg/apache/poi/hssf/record/SCLRecord;)V

    .line 1401
    return-void

    .line 1395
    .end local v0    # "sclRecord":Lorg/apache/poi/hssf/record/SCLRecord;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Denominator must be greater than 0 and less than 65536"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1393
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Numerator must be greater than 0 and less than 65536"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected shiftMerged(IIIZ)V
    .locals 1
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "n"    # I
    .param p4, "isRow"    # Z

    .line 1483
    new-instance v0, Lorg/apache/poi/hssf/usermodel/helpers/HSSFRowShifter;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/helpers/HSSFRowShifter;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    .line 1484
    .local v0, "rowShifter":Lorg/apache/poi/ss/usermodel/helpers/RowShifter;
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->shiftMergedRegions(III)Ljava/util/List;

    .line 1485
    return-void
.end method

.method public shiftRows(III)V
    .locals 6
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "n"    # I

    .line 1503
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->shiftRows(IIIZZ)V

    .line 1504
    return-void
.end method

.method public shiftRows(IIIZZ)V
    .locals 7
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "n"    # I
    .param p4, "copyRowHeight"    # Z
    .param p5, "resetOriginalRowHeight"    # Z

    .line 1525
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->shiftRows(IIIZZZ)V

    .line 1526
    return-void
.end method

.method public shiftRows(IIIZZZ)V
    .locals 18
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "n"    # I
    .param p4, "copyRowHeight"    # Z
    .param p5, "resetOriginalRowHeight"    # Z
    .param p6, "moveComments"    # Z

    .line 1559
    move-object/from16 v0, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    if-lt v8, v7, :cond_17

    .line 1562
    if-gez v9, :cond_0

    .line 1563
    move/from16 v1, p1

    .line 1564
    .local v1, "s":I
    const/4 v2, 0x1

    move v10, v1

    move v11, v2

    .local v2, "inc":I
    goto :goto_0

    .line 1565
    .end local v1    # "s":I
    .end local v2    # "inc":I
    :cond_0
    if-lez v9, :cond_16

    .line 1566
    move/from16 v1, p2

    .line 1567
    .restart local v1    # "s":I
    const/4 v2, -0x1

    move v10, v1

    move v11, v2

    .line 1573
    .end local v1    # "s":I
    .local v10, "s":I
    .local v11, "inc":I
    :goto_0
    new-instance v1, Lorg/apache/poi/hssf/usermodel/helpers/HSSFRowShifter;

    invoke-direct {v1, v0}, Lorg/apache/poi/hssf/usermodel/helpers/HSSFRowShifter;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    move-object v12, v1

    .line 1582
    .local v12, "rowShifter":Lorg/apache/poi/ss/usermodel/helpers/RowShifter;
    if-eqz p6, :cond_3

    .line 1583
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v1

    .line 1584
    .local v1, "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 1585
    .local v3, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    instance-of v4, v3, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    if-nez v4, :cond_1

    .line 1586
    goto :goto_1

    .line 1588
    :cond_1
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    .line 1589
    .local v4, "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getRow()I

    move-result v5

    .line 1590
    .local v5, "r":I
    if-gt v7, v5, :cond_2

    if-gt v5, v8, :cond_2

    .line 1591
    add-int v6, v5, v9

    invoke-static {v6}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->clip(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setRow(I)V

    .line 1593
    .end local v3    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .end local v4    # "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .end local v5    # "r":I
    :cond_2
    goto :goto_1

    .line 1597
    .end local v1    # "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v12, v7, v8, v9}, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->shiftMergedRegions(III)Ljava/util/List;

    .line 1600
    iget-object v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v1

    invoke-virtual {v1, v7, v8, v9}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->shiftRowBreaks(III)V

    .line 1603
    add-int v13, v7, v9

    .line 1604
    .local v13, "firstOverwrittenRow":I
    add-int v14, v8, v9

    .line 1605
    .local v14, "lastOverwrittenRow":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getHyperlinkList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    .line 1607
    .local v2, "link":Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->getFirstRow()I

    move-result v3

    .line 1608
    .local v3, "firstRow":I
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->getLastRow()I

    move-result v4

    .line 1609
    .local v4, "lastRow":I
    if-gt v13, v3, :cond_4

    if-gt v3, v14, :cond_4

    if-gt v14, v4, :cond_4

    if-gt v4, v14, :cond_4

    .line 1611
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->removeHyperlink(Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;)V

    .line 1613
    .end local v2    # "link":Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
    .end local v3    # "firstRow":I
    .end local v4    # "lastRow":I
    :cond_4
    goto :goto_2

    .line 1615
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    move v1, v10

    .local v1, "rowNum":I
    :goto_3
    if-lt v1, v7, :cond_d

    if-gt v1, v8, :cond_d

    if-ltz v1, :cond_d

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_d

    .line 1616
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v2

    .line 1620
    .local v2, "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    if-eqz v2, :cond_6

    invoke-direct {v0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->notifyRowShifting(Lorg/apache/poi/hssf/usermodel/HSSFRow;)V

    .line 1622
    :cond_6
    add-int v3, v1, v9

    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v3

    .line 1623
    .local v3, "row2Replace":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    if-nez v3, :cond_7

    .line 1624
    add-int v4, v1, v9

    invoke-virtual {v0, v4}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v3

    .line 1632
    :cond_7
    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->removeAllCells()V

    .line 1636
    if-nez v2, :cond_8

    goto :goto_5

    .line 1639
    :cond_8
    if-eqz p4, :cond_9

    .line 1640
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getHeight()S

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->setHeight(S)V

    .line 1642
    :cond_9
    if-eqz p5, :cond_a

    .line 1643
    const/16 v4, 0xff

    invoke-virtual {v2, v4}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->setHeight(S)V

    .line 1648
    :cond_a
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cellIterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "cells":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Cell;>;"
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1649
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 1650
    .local v5, "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getHyperlink()Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    move-result-object v6

    .line 1651
    .local v6, "link":Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
    invoke-virtual {v2, v5}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->removeCell(Lorg/apache/poi/ss/usermodel/Cell;)V

    .line 1652
    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v15

    .line 1653
    .local v15, "cellRecord":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    move-object/from16 v16, v4

    .end local v4    # "cells":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Cell;>;"
    .local v16, "cells":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Cell;>;"
    add-int v4, v1, v9

    invoke-interface {v15, v4}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->setRow(I)V

    .line 1654
    invoke-virtual {v3, v15}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCellFromRecord(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 1655
    iget-object v4, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    move-object/from16 v17, v3

    .end local v3    # "row2Replace":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .local v17, "row2Replace":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    add-int v3, v1, v9

    invoke-virtual {v4, v3, v15}, Lorg/apache/poi/hssf/model/InternalSheet;->addValueRecord(ILorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    .line 1657
    if-eqz v6, :cond_b

    .line 1658
    invoke-virtual {v6}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->getFirstRow()I

    move-result v3

    add-int/2addr v3, v9

    invoke-virtual {v6, v3}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setFirstRow(I)V

    .line 1659
    invoke-virtual {v6}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->getLastRow()I

    move-result v3

    add-int/2addr v3, v9

    invoke-virtual {v6, v3}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLastRow(I)V

    .line 1661
    .end local v5    # "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .end local v6    # "link":Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
    .end local v15    # "cellRecord":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    :cond_b
    move-object/from16 v4, v16

    move-object/from16 v3, v17

    goto :goto_4

    .line 1648
    .end local v16    # "cells":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Cell;>;"
    .end local v17    # "row2Replace":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .restart local v3    # "row2Replace":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .restart local v4    # "cells":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Cell;>;"
    :cond_c
    move-object/from16 v17, v3

    move-object/from16 v16, v4

    .line 1663
    .end local v3    # "row2Replace":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .end local v4    # "cells":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Cell;>;"
    .restart local v17    # "row2Replace":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->removeAllCells()V

    .line 1615
    .end local v2    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .end local v17    # "row2Replace":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    :goto_5
    add-int/2addr v1, v11

    goto/16 :goto_3

    .line 1667
    .end local v1    # "rowNum":I
    :cond_d
    const/4 v1, 0x0

    if-lez v9, :cond_10

    .line 1669
    iget v2, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    if-ne v7, v2, :cond_f

    .line 1671
    add-int v2, v7, v9

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    .line 1672
    add-int/lit8 v1, v7, 0x1

    .local v1, "i":I
    :goto_6
    add-int v2, v7, v9

    if-ge v1, v2, :cond_f

    .line 1673
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1674
    iput v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    .line 1675
    goto :goto_7

    .line 1672
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1679
    .end local v1    # "i":I
    :cond_f
    :goto_7
    add-int v1, v8, v9

    iget v2, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    if-le v1, v2, :cond_13

    .line 1680
    add-int v1, v8, v9

    sget-object v2, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    goto :goto_9

    .line 1684
    :cond_10
    add-int v2, v7, v9

    iget v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    if-ge v2, v3, :cond_11

    .line 1685
    add-int v2, v7, v9

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    .line 1687
    :cond_11
    iget v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    if-ne v8, v1, :cond_13

    .line 1690
    add-int v1, v8, v9

    sget-object v2, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    .line 1691
    add-int/lit8 v1, v8, -0x1

    .restart local v1    # "i":I
    :goto_8
    add-int v2, v8, v9

    if-le v1, v2, :cond_13

    .line 1692
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1693
    iput v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    .line 1694
    goto :goto_9

    .line 1691
    :cond_12
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1702
    .end local v1    # "i":I
    :cond_13
    :goto_9
    iget-object v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v15

    .line 1703
    .local v15, "sheetIndex":I
    iget-object v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1, v15}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v16

    .line 1704
    .local v16, "sheetName":Ljava/lang/String;
    iget-object v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, v15}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkExternSheet(I)S

    move-result v6

    .line 1705
    .local v6, "externSheetIndex":S
    sget-object v17, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    move v1, v6

    move-object/from16 v2, v16

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move v7, v6

    .end local v6    # "externSheetIndex":S
    .local v7, "externSheetIndex":S
    move-object/from16 v6, v17

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/ss/formula/FormulaShifter;->createForRowShift(ILjava/lang/String;IIILorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/formula/FormulaShifter;

    move-result-object v1

    .line 1707
    .local v1, "shifter":Lorg/apache/poi/ss/formula/FormulaShifter;
    iget-object v2, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v2, v1, v7}, Lorg/apache/poi/hssf/model/InternalSheet;->updateFormulasAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V

    .line 1709
    iget-object v2, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v2

    .line 1710
    .local v2, "nSheets":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v2, :cond_15

    .line 1711
    iget-object v4, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v4, v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v4

    .line 1712
    .local v4, "otherSheet":Lorg/apache/poi/hssf/model/InternalSheet;
    iget-object v5, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    if-ne v4, v5, :cond_14

    .line 1713
    goto :goto_b

    .line 1715
    :cond_14
    iget-object v5, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v5, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkExternSheet(I)S

    move-result v5

    .line 1716
    .local v5, "otherExtSheetIx":S
    invoke-virtual {v4, v1, v5}, Lorg/apache/poi/hssf/model/InternalSheet;->updateFormulasAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V

    .line 1710
    .end local v4    # "otherSheet":Lorg/apache/poi/hssf/model/InternalSheet;
    .end local v5    # "otherExtSheetIx":S
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1718
    .end local v3    # "i":I
    :cond_15
    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->updateNamesAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;)V

    .line 1719
    return-void

    .line 1570
    .end local v1    # "shifter":Lorg/apache/poi/ss/formula/FormulaShifter;
    .end local v2    # "nSheets":I
    .end local v7    # "externSheetIndex":S
    .end local v10    # "s":I
    .end local v11    # "inc":I
    .end local v12    # "rowShifter":Lorg/apache/poi/ss/usermodel/helpers/RowShifter;
    .end local v13    # "firstOverwrittenRow":I
    .end local v14    # "lastOverwrittenRow":I
    .end local v15    # "sheetIndex":I
    .end local v16    # "sheetName":Ljava/lang/String;
    :cond_16
    return-void

    .line 1560
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "startRow must be less than or equal to endRow. To shift rows up, use n<0."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public showInPane(II)V
    .locals 4
    .param p1, "toprow"    # I
    .param p2, "leftcol"    # I

    .line 1456
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v0

    .line 1457
    .local v0, "maxrow":I
    if-gt p1, v0, :cond_0

    .line 1459
    int-to-short v1, p1

    int-to-short v2, p2

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->showInPane(SS)V

    .line 1460
    return-void

    .line 1457
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum row number is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public ungroupColumn(II)V
    .locals 2
    .param p1, "fromColumn"    # I
    .param p2, "toColumn"    # I

    .line 2097
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->groupColumnRange(IIZ)V

    .line 2098
    return-void
.end method

.method public ungroupRow(II)V
    .locals 2
    .param p1, "fromRow"    # I
    .param p2, "toRow"    # I

    .line 2113
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->groupRowRange(IIZ)V

    .line 2114
    return-void
.end method

.method protected validateColumn(I)V
    .locals 4
    .param p1, "column"    # I

    .line 1967
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v0

    .line 1968
    .local v0, "maxcol":I
    if-gt p1, v0, :cond_1

    .line 1969
    if-ltz p1, :cond_0

    .line 1970
    return-void

    .line 1969
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Minimum column number is 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1968
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum column number is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public validateMergedRegions()V
    .locals 0

    .line 700
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->checkForMergedRegionsIntersectingArrayFormulas()V

    .line 701
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->checkForIntersectingMergedRegions()V

    .line 702
    return-void
.end method

.method protected validateRow(I)V
    .locals 4
    .param p1, "row"    # I

    .line 1956
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v0

    .line 1957
    .local v0, "maxrow":I
    if-gt p1, v0, :cond_1

    .line 1958
    if-ltz p1, :cond_0

    .line 1959
    return-void

    .line 1958
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Minumum row number is 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1957
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum row number is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
