.class public Lorg/apache/poi/ss/formula/functions/Complex;
.super Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;
.source "Complex.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final DEFAULT_SUFFIX:Ljava/lang/String; = "i"

.field public static final SUPPORTED_SUFFIX:Ljava/lang/String; = "j"

.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Complex;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Complex;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Complex;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;-><init>()V

    return-void
.end method

.method private isDoubleAnInt(D)Z
    .locals 3
    .param p1, "number"    # D

    .line 137
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "real_num"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "i_num"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 65
    new-instance v5, Lorg/apache/poi/ss/formula/eval/StringEval;

    const-string v0, "i"

    invoke-direct {v5, v0}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/Complex;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 16
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "real_num"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "i_num"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "suffix"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    .line 71
    const/4 v4, 0x0

    move-object/from16 v5, p3

    :try_start_0
    invoke-static {v5, v2, v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v6, v0

    .line 74
    .local v6, "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    nop

    .line 75
    const-wide/16 v7, 0x0

    .line 77
    .local v7, "realNum":D
    :try_start_1
    invoke-static {v6}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v9
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_2

    move-wide v7, v9

    .line 80
    nop

    .line 84
    move-object/from16 v9, p4

    :try_start_2
    invoke-static {v9, v2, v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v4, v0

    .line 87
    .local v4, "veINum":Lorg/apache/poi/ss/formula/eval/ValueEval;
    nop

    .line 88
    const-wide/16 v10, 0x0

    .line 90
    .local v10, "realINum":D
    :try_start_3
    invoke-static {v4}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v12
    :try_end_3
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_3 .. :try_end_3} :catch_0

    move-wide v10, v12

    .line 93
    nop

    .line 95
    invoke-static/range {p5 .. p5}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "suffixValue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_0

    .line 97
    const-string v0, "i"

    .line 99
    :cond_0
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v13, "i"

    invoke-virtual {v13, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v14, "j"

    invoke-virtual {v14, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_2

    .line 103
    :cond_1
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 104
    sget-object v12, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v12

    .line 107
    :cond_2
    new-instance v12, Ljava/lang/StringBuffer;

    const-string v13, ""

    invoke-direct {v12, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 108
    .local v12, "strb":Ljava/lang/StringBuffer;
    const-wide/16 v13, 0x0

    cmpl-double v15, v7, v13

    if-eqz v15, :cond_4

    .line 109
    invoke-direct {v1, v7, v8}, Lorg/apache/poi/ss/formula/functions/Complex;->isDoubleAnInt(D)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 110
    double-to-int v15, v7

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 115
    :cond_4
    :goto_0
    cmpl-double v15, v10, v13

    if-eqz v15, :cond_8

    .line 116
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    if-eqz v15, :cond_5

    .line 117
    cmpl-double v15, v10, v13

    if-lez v15, :cond_5

    .line 118
    const-string v13, "+"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    :cond_5
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpl-double v15, v10, v13

    if-eqz v15, :cond_7

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    cmpl-double v15, v10, v13

    if-eqz v15, :cond_7

    .line 123
    invoke-direct {v1, v10, v11}, Lorg/apache/poi/ss/formula/functions/Complex;->isDoubleAnInt(D)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 124
    double-to-int v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 126
    :cond_6
    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 130
    :cond_7
    :goto_1
    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    :cond_8
    new-instance v13, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v13

    .line 101
    .end local v12    # "strb":Ljava/lang/StringBuffer;
    :cond_9
    :goto_2
    sget-object v12, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v12

    .line 91
    .end local v0    # "suffixValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 92
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v12, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v12

    .line 85
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .end local v4    # "veINum":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v10    # "realINum":D
    :catch_1
    move-exception v0

    move-object v10, v0

    move-object v0, v4

    .local v0, "veINum":Lorg/apache/poi/ss/formula/eval/ValueEval;
    move-object v4, v10

    .line 86
    .local v4, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v10

    return-object v10

    .line 78
    .end local v0    # "veINum":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v4    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :catch_2
    move-exception v0

    move-object/from16 v9, p4

    move-object v4, v0

    move-object v0, v4

    .line 79
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v4

    .line 72
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .end local v6    # "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v7    # "realNum":D
    :catch_3
    move-exception v0

    move-object/from16 v9, p4

    move-object v6, v0

    move-object v0, v4

    .local v0, "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    move-object v4, v6

    .line 73
    .restart local v4    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v6

    return-object v6
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 11
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 141
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 142
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v3

    aget-object v2, p1, v2

    aget-object v1, p1, v1

    invoke-virtual {p0, v0, v3, v2, v1}, Lorg/apache/poi/ss/formula/functions/Complex;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    array-length v0, p1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    .line 145
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v6

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v7

    aget-object v8, p1, v2

    aget-object v9, p1, v1

    aget-object v10, p1, v3

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lorg/apache/poi/ss/formula/functions/Complex;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 148
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0
.end method
