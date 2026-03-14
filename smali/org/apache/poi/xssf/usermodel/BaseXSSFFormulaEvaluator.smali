.class public abstract Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;
.super Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;
.source "BaseXSSFFormulaEvaluator.java"


# direct methods
.method protected constructor <init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V
    .locals 0
    .param p1, "bookEvaluator"    # Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 37
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 41
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected evaluateFormulaCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;
    .locals 6
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 63
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;->toEvaluationCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/formula/EvaluationCell;

    move-result-object v0

    .line 64
    .local v0, "evalCell":Lorg/apache/poi/ss/formula/EvaluationCell;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v1, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    .line 65
    .local v1, "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v2, v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v2, :cond_0

    .line 66
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 67
    .local v2, "ne":Lorg/apache/poi/ss/formula/eval/NumberEval;
    new-instance v3, Lorg/apache/poi/ss/usermodel/CellValue;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(D)V

    return-object v3

    .line 69
    .end local v2    # "ne":Lorg/apache/poi/ss/formula/eval/NumberEval;
    :cond_0
    instance-of v2, v1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v2, :cond_1

    .line 70
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 71
    .local v2, "be":Lorg/apache/poi/ss/formula/eval/BoolEval;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/ss/usermodel/CellValue;->valueOf(Z)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object v3

    return-object v3

    .line 73
    .end local v2    # "be":Lorg/apache/poi/ss/formula/eval/BoolEval;
    :cond_1
    instance-of v2, v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v2, :cond_2

    .line 74
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 75
    .local v2, "ne":Lorg/apache/poi/ss/formula/eval/StringEval;
    new-instance v3, Lorg/apache/poi/ss/usermodel/CellValue;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 77
    .end local v2    # "ne":Lorg/apache/poi/ss/formula/eval/StringEval;
    :cond_2
    instance-of v2, v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v2, :cond_3

    .line 78
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/ss/usermodel/CellValue;->getError(I)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object v2

    return-object v2

    .line 80
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected eval class ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public notifyDeleteCell(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 48
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;

    move-object v2, p1

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-direct {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->notifyDeleteCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V

    .line 49
    return-void
.end method

.method public notifySetFormula(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 45
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;

    move-object v2, p1

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-direct {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->notifyUpdateCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V

    .line 46
    return-void
.end method

.method public notifyUpdateCell(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 51
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;

    move-object v2, p1

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-direct {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->notifyUpdateCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V

    .line 52
    return-void
.end method

.method protected abstract toEvaluationCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/formula/EvaluationCell;
.end method
