.class public final Lorg/apache/poi/ss/formula/functions/Irr;
.super Ljava/lang/Object;
.source "Irr.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static irr([D)D
    .locals 2
    .param p0, "income"    # [D

    .line 62
    const-wide v0, 0x3fb999999999999aL    # 0.1

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/functions/Irr;->irr([DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static irr([DD)D
    .locals 21
    .param p0, "values"    # [D
    .param p1, "guess"    # D

    .line 89
    move-object/from16 v0, p0

    const/16 v1, 0x14

    .line 90
    .local v1, "maxIterationCount":I
    const-wide v2, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 92
    .local v2, "absoluteAccuracy":D
    move-wide/from16 v4, p1

    .line 95
    .local v4, "x0":D
    const/4 v6, 0x0

    .line 96
    .local v6, "i":I
    :goto_0
    const/16 v7, 0x14

    if-ge v6, v7, :cond_2

    .line 99
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v4

    .line 100
    .local v7, "factor":D
    const/4 v9, 0x0

    .line 101
    .local v9, "k":I
    aget-wide v10, v0, v9

    .line 102
    .local v10, "fValue":D
    const-wide/16 v12, 0x0

    .line 103
    .local v12, "fDerivative":D
    move-wide v14, v7

    .local v14, "denominator":D
    :goto_1
    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v1

    .end local v1    # "maxIterationCount":I
    .local v16, "maxIterationCount":I
    array-length v1, v0

    if-ge v9, v1, :cond_0

    .line 104
    aget-wide v17, v0, v9

    .line 105
    .local v17, "value":D
    div-double v19, v17, v14

    add-double v10, v10, v19

    .line 106
    mul-double v14, v14, v7

    .line 107
    int-to-double v0, v9

    mul-double v0, v0, v17

    div-double/2addr v0, v14

    sub-double/2addr v12, v0

    .line 108
    .end local v17    # "value":D
    move-object/from16 v0, p0

    move/from16 v1, v16

    goto :goto_1

    .line 111
    .end local v14    # "denominator":D
    :cond_0
    div-double v0, v10, v12

    sub-double v0, v4, v0

    .line 113
    .local v0, "x1":D
    sub-double v14, v0, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v17, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v19, v14, v17

    if-gtz v19, :cond_1

    .line 114
    return-wide v0

    .line 117
    :cond_1
    move-wide v4, v0

    .line 118
    nop

    .end local v7    # "factor":D
    .end local v9    # "k":I
    .end local v10    # "fValue":D
    .end local v12    # "fDerivative":D
    add-int/lit8 v6, v6, 0x1

    .line 119
    move-object/from16 v0, p0

    move/from16 v1, v16

    goto :goto_0

    .line 121
    .end local v0    # "x1":D
    .end local v16    # "maxIterationCount":I
    .restart local v1    # "maxIterationCount":I
    :cond_2
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .line 34
    array-length v0, p1

    if-eqz v0, :cond_2

    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    const/4 v3, 0x0

    aget-object v4, p1, v3

    aput-object v4, v2, v3

    invoke-static {v2}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$ValueCollector;->collectValues([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object v2

    .line 42
    .local v2, "values":[D
    array-length v3, p1

    if-ne v3, v1, :cond_1

    .line 43
    aget-object v0, p1, v0

    invoke-static {v0, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v0

    .local v0, "guess":D
    goto :goto_0

    .line 45
    .end local v0    # "guess":D
    :cond_1
    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 47
    .restart local v0    # "guess":D
    :goto_0
    invoke-static {v2, v0, v1}, Lorg/apache/poi/ss/formula/functions/Irr;->irr([DD)D

    move-result-wide v3

    .line 48
    .local v3, "result":D
    invoke-static {v3, v4}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V

    .line 49
    new-instance v5, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v5, v3, v4}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 50
    .end local v0    # "guess":D
    .end local v2    # "values":[D
    .end local v3    # "result":D
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1

    .line 36
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :cond_2
    :goto_1
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0
.end method
