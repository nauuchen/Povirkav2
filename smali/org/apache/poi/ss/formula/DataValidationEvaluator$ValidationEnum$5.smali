.class final enum Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$5;
.super Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;
.source "DataValidationEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 341
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/formula/DataValidationEvaluator$1;)V

    return-void
.end method


# virtual methods
.method public isValidValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Z
    .locals 8
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p2, "context"    # Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;

    .line 349
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getEvaluator()Lorg/apache/poi/ss/formula/DataValidationEvaluator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->getWorkbookEvaluator()Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getFormula1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getTarget()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getRegion()Lorg/apache/poi/ss/util/CellRangeAddressBase;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 350
    .local v0, "comp":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v1, :cond_0

    .line 351
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/RefEval;

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {v2}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 354
    :cond_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/BlankEval;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 355
    :cond_1
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    return v3

    .line 356
    :cond_2
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v1, :cond_3

    .line 357
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v1

    return v1

    .line 361
    :cond_3
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v1, :cond_5

    .line 362
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 364
    :cond_5
    return v3
.end method
