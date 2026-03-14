.class abstract Lorg/apache/poi/ss/formula/functions/Baseifs;
.super Ljava/lang/Object;
.source "Baseifs.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumulate(Lorg/apache/poi/ss/formula/eval/AreaEval;II)D
    .locals 3
    .param p0, "sumRange"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p1, "relRowIndex"    # I
    .param p2, "relColIndex"    # I

    .line 163
    if-nez p0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    .line 165
    :cond_0
    invoke-interface {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 166
    .local v0, "addend":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v1, :cond_1

    .line 167
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v1

    return-wide v1

    .line 170
    :cond_1
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private static aggregateMatchingCells(Lorg/apache/poi/ss/formula/eval/AreaEval;[Lorg/apache/poi/ss/formula/eval/AreaEval;[Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)D
    .locals 11
    .param p0, "sumRange"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p1, "ranges"    # [Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p2, "predicates"    # [Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    .line 126
    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v1

    .line 127
    .local v1, "height":I
    aget-object v0, p1, v0

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v0

    .line 129
    .local v0, "width":I
    const-wide/16 v2, 0x0

    .line 130
    .local v2, "result":D
    const/4 v4, 0x0

    .local v4, "r":I
    :goto_0
    if-ge v4, v1, :cond_5

    .line 131
    const/4 v5, 0x0

    .local v5, "c":I
    :goto_1
    if-ge v5, v0, :cond_4

    .line 133
    const/4 v6, 0x1

    .line 134
    .local v6, "matches":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v8, p1

    if-ge v7, v8, :cond_2

    .line 135
    aget-object v8, p1, v7

    .line 136
    .local v8, "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    aget-object v9, p2, v7

    .line 139
    .local v9, "mp":Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    if-eqz v9, :cond_1

    invoke-interface {v8, v4, v5}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;->matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_3

    .line 134
    .end local v8    # "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .end local v9    # "mp":Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 140
    .restart local v8    # "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .restart local v9    # "mp":Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    :cond_1
    :goto_3
    const/4 v6, 0x0

    .line 146
    .end local v7    # "i":I
    .end local v8    # "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .end local v9    # "mp":Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    :cond_2
    if-eqz v6, :cond_3

    .line 147
    invoke-static {p0, v4, v5}, Lorg/apache/poi/ss/formula/functions/Baseifs;->accumulate(Lorg/apache/poi/ss/formula/eval/AreaEval;II)D

    move-result-wide v7

    add-double/2addr v2, v7

    .line 131
    .end local v6    # "matches":Z
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 130
    .end local v5    # "c":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    .end local v4    # "r":I
    :cond_5
    return-wide v2
.end method

.method protected static convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;
    .locals 2
    .param p0, "eval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 175
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v0, :cond_0

    .line 176
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    return-object v0

    .line 178
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    .line 179
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1, v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v0

    return-object v0

    .line 181
    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method private static validateCriteria([Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)V
    .locals 6
    .param p0, "criteria"    # [Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 109
    move-object v0, p0

    .local v0, "arr$":[Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 112
    .local v3, "predicate":Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    instance-of v4, v3, Lorg/apache/poi/ss/formula/functions/Countif$ErrorMatcher;

    if-nez v4, :cond_0

    .line 109
    .end local v3    # "predicate":Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    .restart local v3    # "predicate":Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    :cond_0
    new-instance v4, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-object v5, v3

    check-cast v5, Lorg/apache/poi/ss/formula/functions/Countif$ErrorMatcher;

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/functions/Countif$ErrorMatcher;->getValue()I

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v4

    .line 116
    .end local v0    # "arr$":[Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    .end local v3    # "predicate":Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    :cond_1
    return-void
.end method

.method private static validateCriteriaRanges(Lorg/apache/poi/ss/formula/eval/AreaEval;[Lorg/apache/poi/ss/formula/eval/AreaEval;)V
    .locals 7
    .param p0, "sumRange"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p1, "criteriaRanges"    # [Lorg/apache/poi/ss/formula/eval/AreaEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v1

    .line 86
    .local v1, "h":I
    aget-object v0, p1, v0

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v0

    .line 88
    .local v0, "w":I
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v2

    throw v2

    .line 94
    :cond_1
    :goto_0
    move-object v2, p1

    .local v2, "arr$":[Lorg/apache/poi/ss/formula/eval/AreaEval;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 95
    .local v5, "r":Lorg/apache/poi/ss/formula/eval/AreaEval;
    invoke-interface {v5}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v6

    if-ne v6, v1, :cond_2

    invoke-interface {v5}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v6

    if-ne v6, v0, :cond_2

    .line 94
    .end local v5    # "r":Lorg/apache/poi/ss/formula/eval/AreaEval;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 97
    .restart local v5    # "r":Lorg/apache/poi/ss/formula/eval/AreaEval;
    :cond_2
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v6

    throw v6

    .line 100
    .end local v2    # "arr$":[Lorg/apache/poi/ss/formula/eval/AreaEval;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    .end local v5    # "r":Lorg/apache/poi/ss/formula/eval/AreaEval;
    :cond_3
    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 45
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Baseifs;->hasInitialRange()Z

    move-result v0

    .line 46
    .local v0, "hasInitialRange":Z
    move v1, v0

    .line 48
    .local v1, "firstCriteria":I
    array-length v2, p1

    add-int/lit8 v3, v1, 0x2

    if-lt v2, v3, :cond_3

    array-length v2, p1

    rem-int/lit8 v2, v2, 0x2

    if-eq v2, v1, :cond_0

    goto :goto_1

    .line 53
    :cond_0
    const/4 v2, 0x0

    .line 54
    .local v2, "sumRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    if-eqz v0, :cond_1

    .line 55
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p1, v3

    invoke-static {v3}, Lorg/apache/poi/ss/formula/functions/Baseifs;->convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v3

    move-object v2, v3

    .line 59
    :cond_1
    array-length v3, p1

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Lorg/apache/poi/ss/formula/eval/AreaEval;

    .line 60
    .local v3, "ae":[Lorg/apache/poi/ss/formula/eval/AreaEval;
    array-length v4, v3

    new-array v4, v4, [Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    .line 61
    .local v4, "mp":[Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    move v5, v1

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_0
    array-length v7, p1

    if-ge v5, v7, :cond_2

    .line 62
    aget-object v7, p1, v5

    invoke-static {v7}, Lorg/apache/poi/ss/formula/functions/Baseifs;->convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v7

    aput-object v7, v3, v6

    .line 64
    add-int/lit8 v7, v5, 0x1

    aget-object v7, p1, v7

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v8

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v9

    invoke-static {v7, v8, v9}, Lorg/apache/poi/ss/formula/functions/Countif;->createCriteriaPredicate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    move-result-object v7

    aput-object v7, v4, v6

    .line 61
    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 67
    .end local v5    # "i":I
    .end local v6    # "k":I
    :cond_2
    invoke-static {v2, v3}, Lorg/apache/poi/ss/formula/functions/Baseifs;->validateCriteriaRanges(Lorg/apache/poi/ss/formula/eval/AreaEval;[Lorg/apache/poi/ss/formula/eval/AreaEval;)V

    .line 68
    invoke-static {v4}, Lorg/apache/poi/ss/formula/functions/Baseifs;->validateCriteria([Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)V

    .line 70
    invoke-static {v2, v3, v4}, Lorg/apache/poi/ss/formula/functions/Baseifs;->aggregateMatchingCells(Lorg/apache/poi/ss/formula/eval/AreaEval;[Lorg/apache/poi/ss/formula/eval/AreaEval;[Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)D

    move-result-wide v5

    .line 71
    .local v5, "result":D
    new-instance v7, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v7, v5, v6}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 72
    .end local v2    # "sumRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .end local v3    # "ae":[Lorg/apache/poi/ss/formula/eval/AreaEval;
    .end local v4    # "mp":[Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    .end local v5    # "result":D
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    return-object v3

    .line 49
    .end local v2    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :cond_3
    :goto_1
    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v2
.end method

.method protected abstract hasInitialRange()Z
.end method
