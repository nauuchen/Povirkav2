.class public Lorg/apache/poi/ss/formula/functions/Rank;
.super Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;
.source "Rank.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;-><init>()V

    return-void
.end method

.method private static convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;
    .locals 2
    .param p0, "eval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 140
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v0, :cond_0

    .line 141
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    return-object v0

    .line 143
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    .line 144
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1, v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v0

    return-object v0

    .line 146
    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method private static eval(DLorg/apache/poi/ss/formula/eval/AreaEval;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9
    .param p0, "arg0"    # D
    .param p2, "aeRange"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p3, "descending_order"    # Z

    .line 92
    const/4 v0, 0x1

    .line 93
    .local v0, "rank":I
    invoke-interface {p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v1

    .line 94
    .local v1, "height":I
    invoke-interface {p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v2

    .line 95
    .local v2, "width":I
    const/4 v3, 0x0

    .local v3, "r":I
    :goto_0
    if-ge v3, v1, :cond_5

    .line 96
    const/4 v4, 0x0

    .local v4, "c":I
    :goto_1
    if-ge v4, v2, :cond_4

    .line 98
    invoke-static {p2, v3, v4}, Lorg/apache/poi/ss/formula/functions/Rank;->getValue(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Ljava/lang/Double;

    move-result-object v5

    .line 99
    .local v5, "value":Ljava/lang/Double;
    if-nez v5, :cond_0

    goto :goto_2

    .line 100
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v8, v6, p0

    if-gtz v8, :cond_2

    :cond_1
    if-nez p3, :cond_3

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v8, v6, p0

    if-gez v8, :cond_3

    .line 101
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 96
    .end local v5    # "value":Ljava/lang/Double;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 95
    .end local v4    # "c":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    .end local v3    # "r":I
    :cond_5
    new-instance v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    int-to-double v4, v0

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v3
.end method

.method private static eval(DLorg/apache/poi/ss/formula/eval/RefListEval;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p0, "arg0"    # D
    .param p2, "aeRange"    # Lorg/apache/poi/ss/formula/eval/RefListEval;
    .param p3, "descending_order"    # Z

    .line 109
    const/4 v0, 0x1

    .line 110
    .local v0, "rank":I
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/eval/RefListEval;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 111
    .local v2, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v3, v2, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v3, :cond_1

    .line 112
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/ss/formula/eval/RefEval;

    move-object v4, v2

    check-cast v4, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {v4}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    .line 116
    :cond_1
    instance-of v3, v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v3, :cond_0

    .line 117
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 122
    .local v3, "value":Ljava/lang/Double;
    if-eqz p3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v6, v4, p0

    if-gtz v6, :cond_3

    :cond_2
    if-nez p3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v6, v4, p0

    if-gez v6, :cond_4

    .line 123
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 125
    .end local v2    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v3    # "value":Ljava/lang/Double;
    :cond_4
    goto :goto_0

    .line 127
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    new-instance v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    int-to-double v2, v0

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v1
.end method

.method private static getValue(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Ljava/lang/Double;
    .locals 3
    .param p0, "aeRange"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p1, "relRowIndex"    # I
    .param p2, "relColIndex"    # I

    .line 131
    invoke-interface {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 132
    .local v0, "addend":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v1, :cond_0

    .line 133
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 136
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 43
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 44
    .local v0, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v1

    .line 45
    .local v1, "result":D
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_1

    .line 49
    instance-of v3, p4, Lorg/apache/poi/ss/formula/eval/RefListEval;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 50
    move-object v3, p4

    check-cast v3, Lorg/apache/poi/ss/formula/eval/RefListEval;

    invoke-static {v1, v2, v3, v4}, Lorg/apache/poi/ss/formula/functions/Rank;->eval(DLorg/apache/poi/ss/formula/eval/RefListEval;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    return-object v3

    .line 53
    :cond_0
    invoke-static {p4}, Lorg/apache/poi/ss/formula/functions/Rank;->convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v3

    .line 55
    .local v3, "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    invoke-static {v1, v2, v3, v4}, Lorg/apache/poi/ss/formula/functions/Rank;->eval(DLorg/apache/poi/ss/formula/eval/AreaEval;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    return-object v4

    .line 46
    .end local v3    # "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    :cond_1
    new-instance v3, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    .end local p1    # "srcRowIndex":I
    .end local p2    # "srcColumnIndex":I
    .end local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local p4    # "arg1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    throw v3
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v1    # "result":D
    .restart local p1    # "srcRowIndex":I
    .restart local p2    # "srcColumnIndex":I
    .restart local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local p4    # "arg1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 63
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 64
    .local v0, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v1

    .line 65
    .local v1, "result":D
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_3

    .line 69
    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    move-object v0, v3

    .line 70
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v3

    .line 72
    .local v3, "order_value":I
    if-nez v3, :cond_0

    .line 73
    const/4 v4, 0x1

    .local v4, "order":Z
    goto :goto_0

    .line 74
    .end local v4    # "order":Z
    :cond_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 75
    const/4 v4, 0x0

    .line 80
    .restart local v4    # "order":Z
    :goto_0
    instance-of v5, p4, Lorg/apache/poi/ss/formula/eval/RefListEval;

    if-eqz v5, :cond_1

    .line 81
    move-object v5, p4

    check-cast v5, Lorg/apache/poi/ss/formula/eval/RefListEval;

    invoke-static {v1, v2, v5, v4}, Lorg/apache/poi/ss/formula/functions/Rank;->eval(DLorg/apache/poi/ss/formula/eval/RefListEval;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    return-object v5

    .line 84
    :cond_1
    invoke-static {p4}, Lorg/apache/poi/ss/formula/functions/Rank;->convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v5

    .line 85
    .local v5, "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    invoke-static {v1, v2, v5, v4}, Lorg/apache/poi/ss/formula/functions/Rank;->eval(DLorg/apache/poi/ss/formula/eval/AreaEval;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    return-object v6

    .line 77
    .end local v4    # "order":Z
    .end local v5    # "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    :cond_2
    new-instance v4, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v4, v5}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    .end local p1    # "srcRowIndex":I
    .end local p2    # "srcColumnIndex":I
    .end local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local p4    # "arg1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local p5    # "arg2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    throw v4

    .line 66
    .end local v3    # "order_value":I
    .restart local p1    # "srcRowIndex":I
    .restart local p2    # "srcColumnIndex":I
    .restart local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local p4    # "arg1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local p5    # "arg2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_3
    new-instance v3, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    .end local p1    # "srcRowIndex":I
    .end local p2    # "srcColumnIndex":I
    .end local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local p4    # "arg1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local p5    # "arg2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    throw v3
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v1    # "result":D
    .restart local p1    # "srcRowIndex":I
    .restart local p2    # "srcColumnIndex":I
    .restart local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local p4    # "arg1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local p5    # "arg2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1
.end method
