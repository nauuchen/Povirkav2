.class final enum Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$3;
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

    .line 287
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/formula/DataValidationEvaluator$1;)V

    return-void
.end method


# virtual methods
.method public isValidValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Z
    .locals 10
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p2, "context"    # Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;

    .line 289
    invoke-static {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->getValidationValuesForConstraint(Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Ljava/util/List;

    move-result-object v0

    .line 290
    .local v0, "valueList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/eval/ValueEval;>;"
    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 293
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 294
    .local v3, "listVal":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v4, v3, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getSheetIndex()I

    move-result v5

    invoke-interface {v4, v5}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v3

    .line 297
    .local v4, "comp":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_1
    instance-of v5, v4, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v5, :cond_3

    return v1

    .line 298
    :cond_3
    instance-of v5, v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v5, :cond_4

    goto :goto_0

    .line 299
    :cond_4
    instance-of v5, v4, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v5, :cond_5

    .line 300
    sget-object v5, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, v5}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v5

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result v6

    if-ne v5, v6, :cond_1

    .line 301
    return v1

    .line 306
    :cond_5
    instance-of v5, v4, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v5, :cond_6

    .line 312
    sget-object v5, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, v5}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v5

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v7

    cmpl-double v9, v5, v7

    if-nez v9, :cond_1

    .line 313
    return v1

    .line 318
    :cond_6
    instance-of v5, v4, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v5, :cond_7

    .line 322
    sget-object v5, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, v5}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 323
    return v1

    .line 328
    .end local v3    # "listVal":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v4    # "comp":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_7
    goto :goto_0

    .line 329
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_8
    const/4 v1, 0x0

    return v1
.end method
