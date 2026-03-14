.class public final Lorg/apache/poi/hssf/usermodel/HSSFRow;
.super Ljava/lang/Object;
.source "HSSFRow.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Row;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/ss/usermodel/Row;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/hssf/usermodel/HSSFRow;",
        ">;"
    }
.end annotation


# static fields
.field public static final INITIAL_CAPACITY:I


# instance fields
.field private final book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

.field private cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

.field private final row:Lorg/apache/poi/hssf/record/RowRecord;

.field private rowNum:I

.field private final sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-string v0, "HSSFRow.ColInitialCapacity"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/apache/poi/util/Configurator;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->INITIAL_CAPACITY:I

    return-void
.end method

.method constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;I)V
    .locals 1
    .param p1, "book"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "rowNum"    # I

    .line 70
    new-instance v0, Lorg/apache/poi/hssf/record/RowRecord;

    invoke-direct {v0, p3}, Lorg/apache/poi/hssf/record/RowRecord;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/RowRecord;)V

    .line 71
    return-void
.end method

.method constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/RowRecord;)V
    .locals 2
    .param p1, "book"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "record"    # Lorg/apache/poi/hssf/record/RowRecord;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 84
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 85
    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    .line 86
    invoke-virtual {p3}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->setRowNum(I)V

    .line 91
    invoke-virtual {p3}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result v0

    sget v1, Lorg/apache/poi/hssf/usermodel/HSSFRow;->INITIAL_CAPACITY:I

    add-int/2addr v0, v1

    new-array v0, v0, [Lorg/apache/poi/hssf/usermodel/HSSFCell;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 95
    invoke-virtual {p3}, Lorg/apache/poi/hssf/record/RowRecord;->setEmpty()V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/hssf/usermodel/HSSFRow;)[Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/hssf/usermodel/HSSFRow;

    .line 38
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    return-object v0
.end method

.method private addCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V
    .locals 6
    .param p1, "cell"    # Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 321
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getColumnIndex()I

    move-result v0

    .line 323
    .local v0, "column":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 324
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 326
    .local v1, "oldCells":[Lorg/apache/poi/hssf/usermodel/HSSFCell;
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 327
    .local v2, "newSize":I
    add-int/lit8 v3, v0, 0x1

    if-ge v2, v3, :cond_0

    .line 328
    sget v3, Lorg/apache/poi/hssf/usermodel/HSSFRow;->INITIAL_CAPACITY:I

    add-int v2, v0, v3

    .line 330
    :cond_0
    new-array v3, v2, [Lorg/apache/poi/hssf/usermodel/HSSFCell;

    iput-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 331
    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    .end local v1    # "oldCells":[Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .end local v2    # "newSize":I
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    aput-object p1, v1, v0

    .line 336
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->getFirstCol()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 337
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    int-to-short v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/RowRecord;->setFirstCol(I)V

    .line 340
    :cond_3
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 341
    :cond_4
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    add-int/lit8 v2, v0, 0x1

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/RowRecord;->setLastCol(I)V

    .line 343
    :cond_5
    return-void
.end method

.method private calculateNewFirstCell(I)I
    .locals 3
    .param p1, "firstcell"    # I

    .line 572
    add-int/lit8 v0, p1, 0x1

    .line 573
    .local v0, "cellIx":I
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->retrieveCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v1

    .line 575
    .local v1, "r":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    :goto_0
    if-nez v1, :cond_1

    .line 576
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    array-length v2, v2

    if-gt v0, v2, :cond_0

    .line 577
    const/4 v2, 0x0

    return v2

    .line 579
    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->retrieveCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v1

    goto :goto_0

    .line 581
    :cond_1
    return v0
.end method

.method private calculateNewLastCellPlusOne(I)I
    .locals 3
    .param p1, "lastcell"    # I

    .line 555
    add-int/lit8 v0, p1, -0x1

    .line 556
    .local v0, "cellIx":I
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->retrieveCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v1

    .line 558
    .local v1, "r":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    :goto_0
    if-nez v1, :cond_1

    .line 559
    if-gez v0, :cond_0

    .line 560
    const/4 v2, 0x0

    return v2

    .line 562
    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->retrieveCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v1

    goto :goto_0

    .line 564
    :cond_1
    add-int/lit8 v2, v0, 0x1

    return v2
.end method

.method private removeCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;Z)V
    .locals 4
    .param p1, "cell"    # Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .param p2, "alsoRemoveRecords"    # Z

    .line 178
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getColumnIndex()I

    move-result v0

    .line 179
    .local v0, "column":I
    if-ltz v0, :cond_5

    .line 182
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_4

    .line 185
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyArrayFormulaChanging()V

    .line 189
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 191
    if-eqz p2, :cond_1

    .line 192
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v1

    .line 193
    .local v1, "cval":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->removeValueRecord(ILorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    .line 195
    .end local v1    # "cval":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getColumnIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 196
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->calculateNewLastCellPlusOne(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/RowRecord;->setLastCol(I)V

    .line 198
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getColumnIndex()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RowRecord;->getFirstCol()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 199
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->getFirstCol()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->calculateNewFirstCell(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/RowRecord;->setFirstCol(I)V

    .line 201
    :cond_3
    return-void

    .line 183
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Specified cell is not from this row"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Negative cell indexes not allowed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private retrieveCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 2
    .param p1, "cellIndex"    # I

    .line 355
    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    aget-object v0, v0, p1

    return-object v0

    .line 356
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
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

    .line 631
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFRow;)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 38
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->compareTo(Lorg/apache/poi/hssf/usermodel/HSSFRow;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/poi/hssf/usermodel/HSSFRow;)I
    .locals 3
    .param p1, "other"    # Lorg/apache/poi/hssf/usermodel/HSSFRow;

    .line 712
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 716
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 717
    .local v0, "thisRow":Ljava/lang/Integer;
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 718
    .local v1, "otherRow":Ljava/lang/Integer;
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v2

    return v2

    .line 713
    .end local v0    # "thisRow":Ljava/lang/Integer;
    .end local v1    # "otherRow":Ljava/lang/Integer;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The compared rows must belong to the same sheet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 1
    .param p1, "column"    # I

    .line 114
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public createCell(II)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "type"    # I

    .line 135
    invoke-static {p2}, Lorg/apache/poi/ss/usermodel/CellType;->forInt(I)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 8
    .param p1, "columnIndex"    # I
    .param p2, "type"    # Lorg/apache/poi/ss/usermodel/CellType;

    .line 154
    int-to-short v0, p1

    .line 155
    .local v0, "shortCellNum":S
    const/16 v1, 0x7fff

    if-le p1, v1, :cond_0

    .line 156
    const v1, 0xffff

    sub-int/2addr v1, p1

    int-to-short v0, v1

    .line 159
    :cond_0
    new-instance v7, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v4

    move-object v1, v7

    move v5, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;ISLorg/apache/poi/ss/usermodel/CellType;)V

    .line 160
    .local v1, "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->addCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V

    .line 161
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/hssf/model/InternalSheet;->addValueRecord(ILorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    .line 162
    return-object v1
.end method

.method public bridge synthetic createCell(I)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p1, "x0"    # I

    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createCell(II)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .line 38
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCell(II)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/apache/poi/ss/usermodel/CellType;

    .line 38
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    return-object v0
.end method

.method createCellFromRecord(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 4
    .param p1, "cell"    # Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 223
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    .line 225
    .local v0, "hcell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->addCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V

    .line 226
    invoke-interface {p1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v1

    .line 227
    .local v1, "colIx":I
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RowRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setFirstCol(I)V

    .line 229
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/RowRecord;->setLastCol(I)V

    goto :goto_0

    .line 231
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RowRecord;->getFirstCol()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 232
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setFirstCol(I)V

    goto :goto_0

    .line 233
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 234
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/RowRecord;->setLastCol(I)V

    .line 240
    :cond_2
    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 724
    instance-of v0, p1, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 726
    return v1

    .line 728
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    .line 730
    .local v0, "other":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 1
    .param p1, "cellnum"    # I

    .line 372
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getMissingCellPolicy()Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 5
    .param p1, "cellnum"    # I
    .param p2, "policy"    # Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    .line 386
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->retrieveCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    .line 387
    .local v0, "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFRow$1;->$SwitchMap$org$apache$poi$ss$usermodel$Row$MissingCellPolicy:[I

    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    move v1, v4

    .line 394
    .local v1, "isBlank":Z
    if-nez v0, :cond_0

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, p1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2

    .line 387
    .end local v1    # "isBlank":Z
    :cond_1
    move v1, v4

    .line 396
    .restart local v1    # "isBlank":Z
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal policy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 391
    .end local v1    # "isBlank":Z
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    sget-object v3, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v1, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    move v1, v2

    .line 392
    .restart local v1    # "isBlank":Z
    if-eqz v1, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    move-object v2, v0

    :goto_2
    return-object v2

    .line 389
    .end local v1    # "isBlank":Z
    :cond_5
    return-object v0
.end method

.method public bridge synthetic getCell(I)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p1, "x0"    # I

    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    .line 38
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public getFirstCellNum()S
    .locals 1

    .line 406
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    const/4 v0, -0x1

    return v0

    .line 409
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getFirstCol()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getHeight()S
    .locals 2

    .line 517
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getHeight()S

    move-result v0

    .line 521
    .local v0, "height":S
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getDefaultRowHeight()S

    move-result v0

    goto :goto_0

    .line 522
    :cond_0
    and-int/lit16 v1, v0, 0x7fff

    int-to-short v0, v1

    .line 524
    :goto_0
    return v0
.end method

.method public getHeightInPoints()F
    .locals 2

    .line 535
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getHeight()S

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getLastCellNum()S
    .locals 1

    .line 433
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    const/4 v0, -0x1

    return v0

    .line 436
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getOutlineLevel()I
    .locals 1

    .line 289
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v0

    return v0
.end method

.method public getPhysicalNumberOfCells()I
    .locals 5

    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, "count":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .local v1, "arr$":[Lorg/apache/poi/hssf/usermodel/HSSFCell;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 451
    .local v4, "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 450
    .end local v4    # "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 453
    .end local v1    # "arr$":[Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    return v0
.end method

.method public getRowNum()I
    .locals 1

    .line 268
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->rowNum:I

    return v0
.end method

.method protected getRowRecord()Lorg/apache/poi/hssf/record/RowRecord;
    .locals 1

    .line 547
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    return-object v0
.end method

.method public getRowStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .locals 4

    .line 600
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->isFormatted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 601
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getXFIndex()S

    move-result v0

    .line 602
    .local v0, "styleIndex":S
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v1

    .line 603
    .local v1, "xf":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v2
.end method

.method public bridge synthetic getRowStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 1

    .line 279
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    return-object v0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getZeroHeight()Z
    .locals 1

    .line 489
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getZeroHeight()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 736
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFormatted()Z
    .locals 1

    .line 591
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getFormatted()Z

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

    .line 639
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cellIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public moveCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;S)V
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .param p2, "newColumn"    # S

    .line 300
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    array-length v1, v0

    if-le v1, p2, :cond_1

    aget-object v1, v0, p2

    if-nez v1, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asked to move cell to column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but there\'s already a cell there"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getColumnIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->removeCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;Z)V

    .line 312
    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->updateCellNum(S)V

    .line 313
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->addCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V

    .line 314
    return-void

    .line 306
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Asked to move a cell, but it didn\'t belong to our row"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected removeAllCells()V
    .locals 5

    .line 208
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .local v0, "arr$":[Lorg/apache/poi/hssf/usermodel/HSSFCell;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 209
    .local v3, "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    if-eqz v3, :cond_0

    .line 210
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->removeCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;Z)V

    .line 208
    .end local v3    # "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "arr$":[Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    sget v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->INITIAL_CAPACITY:I

    new-array v0, v0, [Lorg/apache/poi/hssf/usermodel/HSSFCell;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 214
    return-void
.end method

.method public removeCell(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 2
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 171
    if-eqz p1, :cond_0

    .line 174
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->removeCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;Z)V

    .line 175
    return-void

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cell must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHeight(S)V
    .locals 2
    .param p1, "height"    # S

    .line 465
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 466
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    const/16 v1, -0x7f01

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setHeight(S)V

    .line 467
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setBadFontHeight(Z)V

    goto :goto_0

    .line 469
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setBadFontHeight(Z)V

    .line 470
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/RowRecord;->setHeight(S)V

    .line 472
    :goto_0
    return-void
.end method

.method public setHeightInPoints(F)V
    .locals 2
    .param p1, "height"    # F

    .line 500
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    const/16 v1, -0x7f01

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setHeight(S)V

    .line 502
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setBadFontHeight(Z)V

    goto :goto_0

    .line 504
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setBadFontHeight(Z)V

    .line 505
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v1, v1, p1

    float-to-int v1, v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setHeight(S)V

    .line 507
    :goto_0
    return-void
.end method

.method public setRowNum(I)V
    .locals 4
    .param p1, "rowIndex"    # I

    .line 250
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v0

    .line 251
    .local v0, "maxrow":I
    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    .line 255
    iput p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->rowNum:I

    .line 256
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/RowRecord;->setRowNumber(I)V

    .line 259
    :cond_0
    return-void

    .line 252
    :cond_1
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

.method public setRowStyle(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)V
    .locals 2
    .param p1, "style"    # Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    .line 609
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setFormatted(Z)V

    .line 610
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getIndex()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setXFIndex(S)V

    .line 611
    return-void
.end method

.method public setRowStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 1
    .param p1, "style"    # Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 617
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->setRowStyle(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)V

    .line 618
    return-void
.end method

.method public setZeroHeight(Z)V
    .locals 1
    .param p1, "zHeight"    # Z

    .line 480
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/RowRecord;->setZeroHeight(Z)V

    .line 481
    return-void
.end method
