.class public Lorg/apache/poi/ss/formula/functions/Subtotal;
.super Ljava/lang/Object;
.source "Subtotal.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findFunction(I)Lorg/apache/poi/ss/formula/functions/Function;
    .locals 2
    .param p0, "functionCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 70
    packed-switch p0, :pswitch_data_0

    .line 83
    const/16 v0, 0x64

    if-le p0, v0, :cond_0

    const/16 v0, 0x70

    if-ge p0, v0, :cond_0

    .line 84
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string v1, "SUBTOTAL - with \'exclude hidden values\' option"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :pswitch_0
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;

    const-string v1, "VARP"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :pswitch_1
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;

    const-string v1, "VAR"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :pswitch_2
    sget-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->SUM:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    return-object v0

    .line 78
    :pswitch_3
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;

    const-string v1, "STDEVP"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :pswitch_4
    sget-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->STDEV:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    return-object v0

    .line 76
    :pswitch_5
    sget-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->PRODUCT:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    return-object v0

    .line 75
    :pswitch_6
    sget-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->MIN:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    return-object v0

    .line 74
    :pswitch_7
    sget-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->MAX:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    return-object v0

    .line 73
    :pswitch_8
    invoke-static {}, Lorg/apache/poi/ss/formula/functions/Counta;->subtotalInstance()Lorg/apache/poi/ss/formula/functions/Counta;

    move-result-object v0

    return-object v0

    .line 72
    :pswitch_9
    invoke-static {}, Lorg/apache/poi/ss/formula/functions/Count;->subtotalInstance()Lorg/apache/poi/ss/formula/functions/Count;

    move-result-object v0

    return-object v0

    .line 71
    :pswitch_a
    sget-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->AVERAGE:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .line 90
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 91
    .local v0, "nInnerArgs":I
    if-ge v0, v1, :cond_0

    .line 92
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v1

    .line 97
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    aget-object v2, p1, v2

    invoke-static {v2, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    .line 98
    .local v2, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v4

    .line 99
    .local v4, "functionCode":I
    invoke-static {v4}, Lorg/apache/poi/ss/formula/functions/Subtotal;->findFunction(I)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v3
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 102
    .end local v4    # "functionCode":I
    .local v2, "innerFunc":Lorg/apache/poi/ss/formula/functions/Function;
    nop

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    array-length v5, p1

    invoke-interface {v4, v1, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v3

    .line 107
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/eval/ValueEval;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 112
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/formula/eval/ValueEval;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 113
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 114
    .local v4, "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v5, v4, Lorg/apache/poi/ss/formula/LazyRefEval;

    if-eqz v5, :cond_1

    .line 115
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/ss/formula/LazyRefEval;

    .line 116
    .local v5, "lazyRefEval":Lorg/apache/poi/ss/formula/LazyRefEval;
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/LazyRefEval;->isSubTotal()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 117
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 120
    .end local v4    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v5    # "lazyRefEval":Lorg/apache/poi/ss/formula/LazyRefEval;
    :cond_1
    goto :goto_0

    .line 122
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-interface {v2, v4, p2, p3}, Lorg/apache/poi/ss/formula/functions/Function;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    return-object v4

    .line 100
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/eval/ValueEval;>;"
    .end local v2    # "innerFunc":Lorg/apache/poi/ss/formula/functions/Function;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/formula/eval/ValueEval;>;"
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 101
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v2    # "innerFunc":Lorg/apache/poi/ss/formula/functions/Function;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    return-object v3
.end method
