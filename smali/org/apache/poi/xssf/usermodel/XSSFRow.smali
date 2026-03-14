.class public Lorg/apache/poi/xssf/usermodel/XSSFRow;
.super Ljava/lang/Object;
.source "XSSFRow.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Row;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/ss/usermodel/Row;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/xssf/usermodel/XSSFRow;",
        ">;"
    }
.end annotation


# instance fields
.field private final _cells:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xssf/usermodel/XSSFCell;",
            ">;"
        }
    .end annotation
.end field

.field private final _row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

.field private final _sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;


# direct methods
.method protected constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 7
    .param p1, "row"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;
    .param p2, "sheet"    # Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    .line 72
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 73
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    .line 74
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getCArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 75
    .local v3, "c":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
    new-instance v4, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-direct {v4, p0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFCell;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFRow;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V

    .line 77
    .local v4, "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 78
    .local v5, "colI":Ljava/lang/Integer;
    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p2, v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->onReadCell(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V

    .line 74
    .end local v3    # "c":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
    .end local v4    # "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .end local v5    # "colI":Ljava/lang/Integer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->isSetR()Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getLastRowNum()I

    move-result v0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    .line 86
    .local v0, "nextRowNum":I
    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPhysicalNumberOfRows()I

    move-result v1

    if-nez v1, :cond_1

    .line 87
    const/4 v0, 0x1

    .line 89
    :cond_1
    int-to-long v1, v0

    invoke-interface {p1, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setR(J)V

    .line 91
    .end local v0    # "nextRowNum":I
    :cond_2
    return-void
.end method


# virtual methods
.method public cellIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 45
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->compareTo(Lorg/apache/poi/xssf/usermodel/XSSFRow;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/poi/xssf/usermodel/XSSFRow;)I
    .locals 3
    .param p1, "other"    # Lorg/apache/poi/xssf/usermodel/XSSFRow;

    .line 158
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 162
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 163
    .local v0, "thisRow":Ljava/lang/Integer;
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 164
    .local v1, "otherRow":Ljava/lang/Integer;
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v2

    return v2

    .line 159
    .end local v0    # "thisRow":Ljava/lang/Integer;
    .end local v1    # "otherRow":Ljava/lang/Integer;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The compared rows must belong to the same sheet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyRowFrom(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/usermodel/CellCopyPolicy;)V
    .locals 12
    .param p1, "srcRow"    # Lorg/apache/poi/ss/usermodel/Row;
    .param p2, "policy"    # Lorg/apache/poi/ss/usermodel/CellCopyPolicy;

    .line 608
    if-nez p1, :cond_4

    .line 610
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Cell;

    .line 611
    .local v1, "destCell":Lorg/apache/poi/ss/usermodel/Cell;
    const/4 v2, 0x0

    .line 613
    .local v2, "srcCell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    move-object v3, v1

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v3, v2, p2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->copyCellFrom(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellCopyPolicy;)V

    .line 614
    .end local v1    # "destCell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v2    # "srcCell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    goto :goto_0

    .line 616
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyMergedRegions()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 618
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v0

    .line 619
    .local v0, "destRowNum":I
    const/4 v1, 0x0

    .line 620
    .local v1, "index":I
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 621
    .local v2, "indices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMergedRegions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 622
    .local v4, "destRegion":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v5

    if-ne v0, v5, :cond_1

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v5

    if-ne v0, v5, :cond_1

    .line 623
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 625
    :cond_1
    nop

    .end local v4    # "destRegion":Lorg/apache/poi/ss/util/CellRangeAddress;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 627
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeMergedRegions(Ljava/util/Collection;)V

    .line 630
    .end local v0    # "destRowNum":I
    .end local v1    # "index":I
    .end local v2    # "indices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_3
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyRowHeight()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 632
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->setHeight(S)V

    goto/16 :goto_4

    .line 637
    :cond_4
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Cell;

    .line 638
    .local v1, "c":Lorg/apache/poi/ss/usermodel/Cell;
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    .line 639
    .local v2, "srcCell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v3

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v3

    .line 640
    .local v3, "destCell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    invoke-virtual {v3, v2, p2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->copyCellFrom(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellCopyPolicy;)V

    .line 641
    .end local v1    # "c":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v2    # "srcCell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .end local v3    # "destCell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    goto :goto_2

    .line 643
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_5
    new-instance v0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    .line 644
    .local v0, "rowShifter":Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v1

    .line 645
    .local v1, "sheetIndex":I
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v2

    .line 646
    .local v2, "sheetName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v9

    .line 647
    .local v9, "srcRowNum":I
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v10

    .line 648
    .local v10, "destRowNum":I
    sub-int v11, v10, v9

    .line 649
    .local v11, "rowDifference":I
    sget-object v8, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    move v3, v1

    move-object v4, v2

    move v5, v9

    move v6, v9

    move v7, v11

    invoke-static/range {v3 .. v8}, Lorg/apache/poi/ss/formula/FormulaShifter;->createForRowCopy(ILjava/lang/String;IIILorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/formula/FormulaShifter;

    move-result-object v3

    .line 650
    .local v3, "shifter":Lorg/apache/poi/ss/formula/FormulaShifter;
    invoke-virtual {v0, p0, v3}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateRowFormulas(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    .line 654
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyMergedRegions()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 655
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 656
    .local v5, "srcRegion":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v6

    if-ne v9, v6, :cond_6

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v6

    if-ne v9, v6, :cond_6

    .line 657
    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v6

    .line 658
    .local v6, "destRegion":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v6, v10}, Lorg/apache/poi/ss/util/CellRangeAddress;->setFirstRow(I)V

    .line 659
    invoke-virtual {v6, v10}, Lorg/apache/poi/ss/util/CellRangeAddress;->setLastRow(I)V

    .line 660
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I

    .line 661
    .end local v5    # "srcRegion":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v6    # "destRegion":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_6
    goto :goto_3

    .line 665
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyRowHeight()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 666
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getHeight()S

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->setHeight(S)V

    .line 669
    .end local v0    # "rowShifter":Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;
    .end local v1    # "sheetIndex":I
    .end local v2    # "sheetName":Ljava/lang/String;
    .end local v3    # "shifter":Lorg/apache/poi/ss/formula/FormulaShifter;
    .end local v9    # "srcRowNum":I
    .end local v10    # "destRowNum":I
    .end local v11    # "rowDifference":I
    :cond_8
    :goto_4
    return-void
.end method

.method public bridge synthetic createCell(I)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p1, "x0"    # I

    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createCell(II)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .line 45
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(II)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/apache/poi/ss/usermodel/CellType;

    .line 45
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public createCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .locals 1
    .param p1, "columnIndex"    # I

    .line 198
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public createCell(II)Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "type"    # I

    .line 219
    invoke-static {p2}, Lorg/apache/poi/ss/usermodel/CellType;->forInt(I)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "type"    # Lorg/apache/poi/ss/usermodel/CellType;

    .line 233
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 235
    .local v0, "colI":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    .line 236
    .local v1, "prev":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v2

    .line 238
    .local v2, "ctCell":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto :goto_0

    .line 240
    .end local v2    # "ctCell":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->addNewC()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v2

    .line 242
    .restart local v2    # "ctCell":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
    :goto_0
    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-direct {v3, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFRow;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V

    .line 243
    .local v3, "xcell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    invoke-virtual {v3, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellNum(I)V

    .line 244
    sget-object v4, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq p2, v4, :cond_1

    .line 245
    invoke-virtual {v3, p2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 247
    :cond_1
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    return-object v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 170
    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 172
    return v1

    .line 174
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    .line 176
    .local v0, "other":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 514
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    return-object v0
.end method

.method public bridge synthetic getCell(I)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p1, "x0"    # I

    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    .line 45
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .locals 1
    .param p1, "cellnum"    # I

    .line 259
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getMissingCellPolicy()Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .locals 6
    .param p1, "cellnum"    # I
    .param p2, "policy"    # Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    .line 270
    if-ltz p1, :cond_6

    .line 273
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 274
    .local v0, "colI":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    .line 275
    .local v1, "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRow$1;->$SwitchMap$org$apache$poi$ss$usermodel$Row$MissingCellPolicy:[I

    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v2, v4, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    move v2, v5

    .line 282
    .local v2, "isBlank":Z
    if-nez v1, :cond_0

    sget-object v3, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, p1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    return-object v3

    .line 275
    .end local v2    # "isBlank":Z
    :cond_1
    move v2, v5

    .line 284
    .restart local v2    # "isBlank":Z
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal policy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 279
    .end local v2    # "isBlank":Z
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v2

    sget-object v4, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    move v2, v3

    .line 280
    .restart local v2    # "isBlank":Z
    if-eqz v2, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    move-object v3, v1

    :goto_2
    return-object v3

    .line 277
    .end local v2    # "isBlank":Z
    :cond_5
    return-object v1

    .line 270
    .end local v0    # "colI":Ljava/lang/Integer;
    .end local v1    # "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cell index must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFirstCellNum()S
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    int-to-short v0, v0

    return v0
.end method

.method public getHeight()S
    .locals 2

    .line 331
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getHeightInPoints()F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getHeightInPoints()F
    .locals 2

    .line 343
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->isSetHt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getHt()D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 346
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultRowHeightInPoints()F

    move-result v0

    return v0
.end method

.method public getLastCellNum()S
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    int-to-short v0, v0

    return v0
.end method

.method public getOutlineLevel()I
    .locals 1

    .line 673
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v0

    return v0
.end method

.method public getPhysicalNumberOfCells()I
    .locals 1

    .line 384
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method

.method public getRowNum()I
    .locals 4

    .line 394
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getR()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public bridge synthetic getRowStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public getRowStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .locals 3

    .line 450
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->isFormatted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 452
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v0

    .line 453
    .local v0, "stylesSource":Lorg/apache/poi/xssf/model/StylesTable;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/StylesTable;->getNumCellStyles()I

    move-result v2

    if-lez v2, :cond_1

    .line 454
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getS()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lorg/apache/poi/xssf/model/StylesTable;->getStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object v1

    return-object v1

    .line 456
    :cond_1
    return-object v1
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object v0
.end method

.method public getZeroHeight()Z
    .locals 1

    .line 420
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getHidden()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFormatted()Z
    .locals 1

    .line 441
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->isSetS()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->cellIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected onDocumentWrite()V
    .locals 10

    .line 524
    const/4 v0, 0x1

    .line 525
    .local v0, "isOrdered":Z
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getCArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v1

    .line 526
    .local v1, "cArray":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
    array-length v2, v1

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 527
    const/4 v0, 0x0

    goto :goto_2

    .line 529
    :cond_0
    const/4 v2, 0x0

    .line 530
    .local v2, "i":I
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    .line 531
    .local v4, "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v5

    .line 532
    .local v5, "c1":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    aget-object v2, v1, v2

    .line 534
    .local v2, "c2":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getR()Ljava/lang/String;

    move-result-object v7

    .line 535
    .local v7, "r1":Ljava/lang/String;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getR()Ljava/lang/String;

    move-result-object v8

    .line 536
    .local v8, "r2":Ljava/lang/String;
    if-nez v7, :cond_1

    if-nez v8, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 537
    :cond_2
    const/4 v0, 0x0

    .line 538
    goto :goto_2

    .line 540
    .end local v2    # "c2":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
    .end local v4    # "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .end local v5    # "c1":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
    .end local v7    # "r1":Ljava/lang/String;
    .end local v8    # "r2":Ljava/lang/String;
    :cond_3
    :goto_1
    move v2, v6

    goto :goto_0

    .line 543
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "i":I
    :cond_4
    :goto_2
    if-nez v0, :cond_6

    .line 544
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    new-array v1, v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    .line 545
    const/4 v2, 0x0

    .line 546
    .local v2, "i":I
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    .line 547
    .local v4, "xssfCell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v5

    check-cast v5, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    aput-object v5, v1, v2

    .line 554
    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCTCell(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V

    .line 555
    nop

    .end local v4    # "xssfCell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 558
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v3, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setCArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V

    .line 560
    .end local v2    # "i":I
    :cond_6
    return-void
.end method

.method public removeCell(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 491
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRow()Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 495
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    .line 496
    .local v0, "xcell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->notifyArrayFormulaChanging()V

    .line 499
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v1, v2, :cond_1

    .line 500
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->onDeleteFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V

    .line 503
    :cond_1
    new-instance v1, Ljava/lang/Integer;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 504
    .local v1, "colI":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    return-void

    .line 492
    .end local v0    # "xcell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .end local v1    # "colI":Ljava/lang/Integer;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified cell does not belong to this row"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHeight(S)V
    .locals 5
    .param p1, "height"    # S

    .line 356
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 357
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->isSetHt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->unsetHt()V

    .line 358
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->isSetCustomHeight()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->unsetCustomHeight()V

    goto :goto_0

    .line 360
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    int-to-double v1, p1

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    div-double/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setHt(D)V

    .line 361
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setCustomHeight(Z)V

    .line 364
    :cond_2
    :goto_0
    return-void
.end method

.method public setHeightInPoints(F)V
    .locals 2
    .param p1, "height"    # F

    .line 373
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41a00000    # 20.0f

    mul-float v0, v0, p1

    :goto_0
    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->setHeight(S)V

    .line 374
    return-void
.end method

.method public setRowNum(I)V
    .locals 4
    .param p1, "rowIndex"    # I

    .line 405
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v0

    .line 406
    .local v0, "maxrow":I
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 410
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    add-int/lit8 v2, p1, 0x1

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setR(J)V

    .line 411
    return-void

    .line 407
    :cond_0
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

.method public setRowStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 6
    .param p1, "style"    # Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 467
    if-nez p1, :cond_0

    .line 468
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->isSetS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->unsetS()V

    .line 470
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->unsetCustomFormat()V

    goto :goto_0

    .line 473
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v0

    .line 475
    .local v0, "styleSource":Lorg/apache/poi/xssf/model/StylesTable;
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    .line 476
    .local v1, "xStyle":Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->verifyBelongsToStylesSource(Lorg/apache/poi/xssf/model/StylesTable;)V

    .line 478
    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/model/StylesTable;->putStyle(Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;)I

    move-result v2

    int-to-long v2, v2

    .line 479
    .local v2, "idx":J
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v4, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setS(J)V

    .line 480
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setCustomFormat(Z)V

    .line 482
    .end local v0    # "styleSource":Lorg/apache/poi/xssf/model/StylesTable;
    .end local v1    # "xStyle":Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .end local v2    # "idx":J
    :cond_1
    :goto_0
    return-void
.end method

.method public setZeroHeight(Z)V
    .locals 1
    .param p1, "height"    # Z

    .line 430
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setHidden(Z)V

    .line 432
    return-void
.end method

.method protected shift(I)V
    .locals 10
    .param p1, "n"    # I

    .line 576
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v0

    add-int/2addr v0, p1

    .line 577
    .local v0, "rownum":I
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCalculationChain()Lorg/apache/poi/xssf/model/CalculationChain;

    move-result-object v1

    .line 578
    .local v1, "calcChain":Lorg/apache/poi/xssf/model/CalculationChain;
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iget-object v2, v2, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getSheetId()J

    move-result-wide v2

    long-to-int v3, v2

    .line 579
    .local v3, "sheetId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Row[rownum="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] contains cell(s) included in a multi-cell array formula. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "You cannot change part of an array."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 581
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/usermodel/Cell;

    .line 582
    .local v5, "c":Lorg/apache/poi/ss/usermodel/Cell;
    move-object v6, v5

    check-cast v6, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    .line 583
    .local v6, "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 584
    invoke-virtual {v6, v2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->notifyArrayFormulaChanging(Ljava/lang/String;)V

    .line 588
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getReference()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lorg/apache/poi/xssf/model/CalculationChain;->removeItem(ILjava/lang/String;)V

    .line 590
    :cond_1
    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v7

    .line 591
    .local v7, "ctCell":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
    new-instance v8, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v9

    invoke-direct {v8, v0, v9}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {v8}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v8

    .line 592
    .local v8, "r":Ljava/lang/String;
    invoke-interface {v7, v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setR(Ljava/lang/String;)V

    .line 593
    .end local v5    # "c":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v6    # "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .end local v7    # "ctCell":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
    .end local v8    # "r":Ljava/lang/String;
    goto :goto_0

    .line 594
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->setRowNum(I)V

    .line 595
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 567
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
