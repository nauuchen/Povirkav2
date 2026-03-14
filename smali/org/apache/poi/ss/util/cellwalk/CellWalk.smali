.class public Lorg/apache/poi/ss/util/cellwalk/CellWalk;
.super Ljava/lang/Object;
.source "CellWalk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;
    }
.end annotation


# instance fields
.field private range:Lorg/apache/poi/ss/util/CellRangeAddress;

.field private sheet:Lorg/apache/poi/ss/usermodel/Sheet;

.field private traverseEmptyCells:Z


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1
    .param p1, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p2, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    .line 40
    iput-object p2, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->range:Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->traverseEmptyCells:Z

    .line 42
    return-void
.end method

.method private isEmpty(Lorg/apache/poi/ss/usermodel/Cell;)Z
    .locals 2
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 104
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public isTraverseEmptyCells()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->traverseEmptyCells:Z

    return v0
.end method

.method public setTraverseEmptyCells(Z)V
    .locals 0
    .param p1, "traverseEmptyCells"    # Z

    .line 61
    iput-boolean p1, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->traverseEmptyCells:Z

    .line 62
    return-void
.end method

.method public traverse(Lorg/apache/poi/ss/util/cellwalk/CellHandler;)V
    .locals 10
    .param p1, "handler"    # Lorg/apache/poi/ss/util/cellwalk/CellHandler;

    .line 70
    iget-object v0, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 71
    .local v0, "firstRow":I
    iget-object v1, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    .line 72
    .local v1, "lastRow":I
    iget-object v2, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    .line 73
    .local v2, "firstColumn":I
    iget-object v3, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v3

    .line 74
    .local v3, "lastColumn":I
    sub-int v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    .line 75
    .local v4, "width":I
    new-instance v5, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;-><init>(Lorg/apache/poi/ss/util/cellwalk/CellWalk$1;)V

    .line 76
    .local v5, "ctx":Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;
    const/4 v6, 0x0

    .line 77
    .local v6, "currentRow":Lorg/apache/poi/ss/usermodel/Row;
    const/4 v7, 0x0

    .line 79
    .local v7, "currentCell":Lorg/apache/poi/ss/usermodel/Cell;
    iput v0, v5, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->rowNumber:I

    :goto_0
    iget v8, v5, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->rowNumber:I

    if-gt v8, v1, :cond_4

    .line 80
    iget-object v8, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    iget v9, v5, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->rowNumber:I

    invoke-interface {v8, v9}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v6

    .line 81
    if-nez v6, :cond_0

    .line 82
    goto :goto_3

    .line 84
    :cond_0
    iput v2, v5, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->colNumber:I

    :goto_1
    iget v8, v5, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->colNumber:I

    if-gt v8, v3, :cond_3

    .line 85
    iget v8, v5, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->colNumber:I

    invoke-interface {v6, v8}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v7

    .line 87
    if-nez v7, :cond_1

    .line 88
    goto :goto_2

    .line 90
    :cond_1
    invoke-direct {p0, v7}, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->isEmpty(Lorg/apache/poi/ss/usermodel/Cell;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->traverseEmptyCells:Z

    if-nez v8, :cond_2

    .line 91
    goto :goto_2

    .line 94
    :cond_2
    iget v8, v5, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->rowNumber:I

    sub-int/2addr v8, v0

    mul-int v8, v8, v4

    iget v9, v5, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->colNumber:I

    sub-int/2addr v9, v2

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v8, v9

    int-to-long v8, v8

    iput-wide v8, v5, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->ordinalNumber:J

    .line 98
    invoke-interface {p1, v7, v5}, Lorg/apache/poi/ss/util/cellwalk/CellHandler;->onCell(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/util/cellwalk/CellWalkContext;)V

    .line 84
    :goto_2
    iget v8, v5, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->colNumber:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->colNumber:I

    goto :goto_1

    .line 79
    :cond_3
    :goto_3
    iget v8, v5, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->rowNumber:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->rowNumber:I

    goto :goto_0

    .line 101
    :cond_4
    return-void
.end method
