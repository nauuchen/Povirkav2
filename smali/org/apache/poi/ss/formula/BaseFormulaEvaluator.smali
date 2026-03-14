.class public abstract Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;
.super Ljava/lang/Object;
.source "BaseFormulaEvaluator.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/FormulaEvaluator;
.implements Lorg/apache/poi/ss/formula/WorkbookEvaluatorProvider;


# instance fields
.field protected final _bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V
    .locals 0
    .param p1, "bookEvaluator"    # Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 39
    return-void
.end method

.method public static evaluateAllFormulaCells(Lorg/apache/poi/ss/usermodel/Workbook;)V
    .locals 1
    .param p0, "wb"    # Lorg/apache/poi/ss/usermodel/Workbook;

    .line 257
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Workbook;->getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/CreationHelper;->createFormulaEvaluator()Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    move-result-object v0

    .line 258
    .local v0, "evaluator":Lorg/apache/poi/ss/usermodel/FormulaEvaluator;
    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->evaluateAllFormulaCells(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)V

    .line 259
    return-void
.end method

.method protected static evaluateAllFormulaCells(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)V
    .locals 8
    .param p0, "wb"    # Lorg/apache/poi/ss/usermodel/Workbook;
    .param p1, "evaluator"    # Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    .line 261
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Workbook;->getNumberOfSheets()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 262
    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetAt(I)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    .line 264
    .local v1, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Sheet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/usermodel/Row;

    .line 265
    .local v3, "r":Lorg/apache/poi/ss/usermodel/Row;
    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/usermodel/Cell;

    .line 266
    .local v5, "c":Lorg/apache/poi/ss/usermodel/Cell;
    invoke-interface {v5}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v6

    sget-object v7, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v6, v7, :cond_0

    .line 267
    invoke-interface {p1, v5}, Lorg/apache/poi/ss/usermodel/FormulaEvaluator;->evaluateFormulaCellEnum(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;

    .end local v5    # "c":Lorg/apache/poi/ss/usermodel/Cell;
    :cond_0
    goto :goto_2

    .end local v3    # "r":Lorg/apache/poi/ss/usermodel/Row;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    goto :goto_1

    .line 261
    .end local v1    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method protected static setCellType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellValue;)V
    .locals 4
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p1, "cv"    # Lorg/apache/poi/ss/usermodel/CellValue;

    .line 199
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellValue;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 200
    .local v0, "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    sget-object v1, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 214
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected cell value type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This should never happen. Blanks eventually get translated to zero."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :pswitch_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This should never happen. Formulas should have already been evaluated."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :pswitch_2
    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 206
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static setupEnvironment([Ljava/lang/String;[Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;)V
    .locals 3
    .param p0, "workbookNames"    # [Ljava/lang/String;
    .param p1, "evaluators"    # [Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;

    .line 49
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 50
    .local v0, "wbEvals":[Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 51
    aget-object v2, p1, v1

    iget-object v2, v2, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    aput-object v2, v0, v1

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "i":I
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->setup([Ljava/lang/String;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    .line 54
    return-void
.end method


# virtual methods
.method public _getWorkbookEvaluator()Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    return-object v0
.end method

.method public clearAllCachedResultValues()V
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->clearAllCachedResultValues()V

    .line 77
    return-void
.end method

.method protected abstract createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;
.end method

.method public evaluate(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 91
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 92
    return-object v0

    .line 95
    :cond_0
    sget-object v1, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad cell type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :pswitch_0
    return-object v0

    .line 105
    :pswitch_1
    new-instance v0, Lorg/apache/poi/ss/usermodel/CellValue;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 103
    :pswitch_2
    new-instance v0, Lorg/apache/poi/ss/usermodel/CellValue;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(D)V

    return-object v0

    .line 101
    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->evaluateFormulaCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object v0

    return-object v0

    .line 99
    :pswitch_4
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getErrorCellValue()B

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/CellValue;->getError(I)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object v0

    return-object v0

    .line 97
    :pswitch_5
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/CellValue;->valueOf(Z)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public evaluateFormulaCell(Lorg/apache/poi/ss/usermodel/Cell;)I
    .locals 1
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 164
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->evaluateFormulaCellEnum(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result v0

    return v0
.end method

.method public evaluateFormulaCellEnum(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;
    .locals 2
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 189
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->evaluateFormulaCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object v0

    .line 194
    .local v0, "cv":Lorg/apache/poi/ss/usermodel/CellValue;
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->setCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellValue;)V

    .line 195
    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellValue;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    return-object v1

    .line 190
    .end local v0    # "cv":Lorg/apache/poi/ss/usermodel/CellValue;
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->_NONE:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0
.end method

.method protected abstract evaluateFormulaCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;
.end method

.method public evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 132
    if-nez p1, :cond_0

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_0
    move-object v0, p1

    .line 136
    .local v0, "result":Lorg/apache/poi/ss/usermodel/Cell;
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v1, v2, :cond_1

    .line 137
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->evaluateFormulaCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object v1

    .line 138
    .local v1, "cv":Lorg/apache/poi/ss/usermodel/CellValue;
    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->setCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellValue;)V

    .line 139
    invoke-static {p1, v1}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->setCellType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellValue;)V

    .line 141
    .end local v1    # "cv":Lorg/apache/poi/ss/usermodel/CellValue;
    :cond_1
    return-object v0
.end method

.method protected setCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellValue;)V
    .locals 4
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p2, "cv"    # Lorg/apache/poi/ss/usermodel/CellValue;

    .line 221
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellValue;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 222
    .local v0, "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    sget-object v1, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 233
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellValue;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    .line 234
    goto :goto_0

    .line 240
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected cell value type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellValue;->getNumberValue()D

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(D)V

    .line 231
    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellValue;->getErrorValue()B

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellErrorValue(B)V

    .line 228
    goto :goto_0

    .line 224
    :cond_3
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellValue;->getBooleanValue()Z

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Z)V

    .line 225
    nop

    .line 242
    :goto_0
    return-void
.end method

.method public setDebugEvaluationOutputForNextEval(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 283
    iget-object v0, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->setDebugEvaluationOutputForNextEval(Z)V

    .line 284
    return-void
.end method

.method public setIgnoreMissingWorkbooks(Z)V
    .locals 1
    .param p1, "ignore"    # Z

    .line 277
    iget-object v0, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->setIgnoreMissingWorkbooks(Z)V

    .line 278
    return-void
.end method

.method public setupReferencedWorkbooks(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/usermodel/FormulaEvaluator;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "evaluators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;>;"
    invoke-static {p1}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->setupFormulaEvaluator(Ljava/util/Map;)V

    .line 59
    return-void
.end method
