.class final Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;
.super Ljava/lang/Object;
.source "ForkedEvaluationSheet.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationSheet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final _masterSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

.field private final _sharedCellsByRowCol:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;",
            "Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/EvaluationSheet;)V
    .locals 1
    .param p1, "masterSheet"    # Lorg/apache/poi/ss/formula/EvaluationSheet;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->_masterSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->_sharedCellsByRowCol:Ljava/util/Map;

    .line 53
    return-void
.end method


# virtual methods
.method public clearAllCachedResultValues()V
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->_masterSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationSheet;->clearAllCachedResultValues()V

    .line 116
    return-void
.end method

.method public copyUpdatedCells(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 6
    .param p1, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;

    .line 84
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->_sharedCellsByRowCol:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;

    .line 85
    .local v0, "keys":[Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;
    iget-object v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->_sharedCellsByRowCol:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 86
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 87
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 88
    aget-object v2, v0, v1

    .line 89
    .local v2, "key":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->getRowIndex()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v3

    .line 90
    .local v3, "row":Lorg/apache/poi/ss/usermodel/Row;
    if-nez v3, :cond_0

    .line 91
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->getRowIndex()I

    move-result v4

    invoke-interface {p1, v4}, Lorg/apache/poi/ss/usermodel/Sheet;->createRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v3

    .line 93
    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->getColumnIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v4

    .line 94
    .local v4, "destCell":Lorg/apache/poi/ss/usermodel/Cell;
    if-nez v4, :cond_1

    .line 95
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->getColumnIndex()I

    move-result v5

    invoke-interface {v3, v5}, Lorg/apache/poi/ss/usermodel/Row;->createCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v4

    .line 98
    :cond_1
    iget-object v5, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->_sharedCellsByRowCol:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;

    .line 99
    .local v5, "srcCell":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;
    invoke-virtual {v5, v4}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->copyValue(Lorg/apache/poi/ss/usermodel/Cell;)V

    .line 87
    .end local v2    # "key":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;
    .end local v3    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .end local v4    # "destCell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v5    # "srcCell":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;
    .locals 3
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I

    .line 57
    new-instance v0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;-><init>(II)V

    .line 59
    .local v0, "key":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;
    iget-object v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->_sharedCellsByRowCol:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;

    .line 60
    .local v1, "result":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;
    if-nez v1, :cond_0

    .line 61
    iget-object v2, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->_masterSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    invoke-interface {v2, p1, p2}, Lorg/apache/poi/ss/formula/EvaluationSheet;->getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;

    move-result-object v2

    return-object v2

    .line 63
    :cond_0
    return-object v1
.end method

.method public getOrCreateUpdatableCell(II)Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;
    .locals 7
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I

    .line 67
    new-instance v0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;-><init>(II)V

    .line 69
    .local v0, "key":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;
    iget-object v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->_sharedCellsByRowCol:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;

    .line 70
    .local v1, "result":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;
    if-nez v1, :cond_1

    .line 71
    iget-object v2, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->_masterSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    invoke-interface {v2, p1, p2}, Lorg/apache/poi/ss/formula/EvaluationSheet;->getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;

    move-result-object v2

    .line 72
    .local v2, "mcell":Lorg/apache/poi/ss/formula/EvaluationCell;
    if-eqz v2, :cond_0

    .line 77
    new-instance v3, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;

    invoke-direct {v3, p0, v2}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;-><init>(Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;Lorg/apache/poi/ss/formula/EvaluationCell;)V

    move-object v1, v3

    .line 78
    iget-object v3, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->_sharedCellsByRowCol:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    :cond_0
    new-instance v3, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v3, p1, p2}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 74
    .local v3, "cr":Lorg/apache/poi/ss/util/CellReference;
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Underlying cell \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' is missing in master sheet."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 80
    .end local v2    # "mcell":Lorg/apache/poi/ss/formula/EvaluationCell;
    .end local v3    # "cr":Lorg/apache/poi/ss/util/CellReference;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationWorkbook;)I
    .locals 1
    .param p1, "mewb"    # Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 104
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->_masterSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I

    move-result v0

    return v0
.end method
