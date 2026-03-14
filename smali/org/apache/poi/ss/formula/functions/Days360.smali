.class public Lorg/apache/poi/ss/formula/functions/Days360;
.super Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;
.source "Days360.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;-><init>()V

    return-void
.end method

.method private static evaluate(DDZ)D
    .locals 9
    .param p0, "d0"    # D
    .param p2, "d1"    # D
    .param p4, "method"    # Z

    .line 93
    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/Days360;->getDate(D)Ljava/util/Calendar;

    move-result-object v0

    .line 94
    .local v0, "realStart":Ljava/util/Calendar;
    invoke-static {p2, p3}, Lorg/apache/poi/ss/formula/functions/Days360;->getDate(D)Ljava/util/Calendar;

    move-result-object v1

    .line 95
    .local v1, "realEnd":Ljava/util/Calendar;
    invoke-static {v0, p4}, Lorg/apache/poi/ss/formula/functions/Days360;->getStartingDate(Ljava/util/Calendar;Z)[I

    move-result-object v2

    .line 96
    .local v2, "startingDate":[I
    invoke-static {v1, v2, p4}, Lorg/apache/poi/ss/formula/functions/Days360;->getEndingDate(Ljava/util/Calendar;[IZ)[I

    move-result-object v3

    .line 97
    .local v3, "endingDate":[I
    const/4 v4, 0x0

    aget v5, v3, v4

    mul-int/lit16 v5, v5, 0x168

    const/4 v6, 0x1

    aget v7, v3, v6

    mul-int/lit8 v7, v7, 0x1e

    add-int/2addr v5, v7

    const/4 v7, 0x2

    aget v8, v3, v7

    add-int/2addr v5, v8

    aget v4, v2, v4

    mul-int/lit16 v4, v4, 0x168

    aget v6, v2, v6

    mul-int/lit8 v6, v6, 0x1e

    add-int/2addr v4, v6

    aget v6, v2, v7

    add-int/2addr v4, v6

    sub-int/2addr v5, v4

    int-to-double v4, v5

    return-wide v4
.end method

.method private static getDate(D)Ljava/util/Calendar;
    .locals 2
    .param p0, "date"    # D

    .line 103
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 104
    .local v0, "processedDate":Ljava/util/Calendar;
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 105
    return-object v0
.end method

.method private static getEndingDate(Ljava/util/Calendar;[IZ)[I
    .locals 9
    .param p0, "realEnd"    # Ljava/util/Calendar;
    .param p1, "startingDate"    # [I
    .param p2, "method"    # Z

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 120
    .local v1, "yyyy":I
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 121
    .local v3, "mm":I
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0x1e

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 123
    .local v5, "dd":I
    if-nez p2, :cond_1

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0x1f

    if-ne v7, v8, :cond_1

    .line 124
    aget v7, p1, v2

    if-ge v7, v6, :cond_0

    .line 125
    invoke-virtual {p0, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 126
    invoke-virtual {p0, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 127
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 128
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 129
    const/4 v5, 0x1

    goto :goto_0

    .line 131
    :cond_0
    const/16 v5, 0x1e

    .line 135
    :cond_1
    :goto_0
    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v6, 0x0

    aput v1, v4, v6

    aput v3, v4, v0

    aput v5, v4, v2

    return-object v4
.end method

.method private static getStartingDate(Ljava/util/Calendar;Z)[I
    .locals 7
    .param p0, "realStart"    # Ljava/util/Calendar;
    .param p1, "method"    # Z

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 110
    .local v1, "yyyy":I
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 111
    .local v3, "mm":I
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0x1e

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 113
    .local v4, "dd":I
    if-nez p1, :cond_0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/Days360;->isLastDayOfMonth(Ljava/util/Calendar;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v4, 0x1e

    .line 115
    :cond_0
    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v1, v5, v6

    aput v3, v5, v0

    aput v4, v5, v2

    return-object v5
.end method

.method private static isLastDayOfMonth(Ljava/util/Calendar;)Z
    .locals 3
    .param p0, "date"    # Ljava/util/Calendar;

    .line 139
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 140
    .local v1, "dayOfMonth":I
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 141
    .local v0, "lastDayOfMonth":I
    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 71
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v0

    .line 72
    .local v0, "d0":D
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    .line 73
    .local v2, "d1":D
    new-instance v4, Lorg/apache/poi/ss/formula/eval/NumberEval;

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v3, v5}, Lorg/apache/poi/ss/formula/functions/Days360;->evaluate(DDZ)D

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 74
    .end local v0    # "d0":D
    .end local v2    # "d1":D
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 82
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v0

    .line 83
    .local v0, "d0":D
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    .line 84
    .local v2, "d1":D
    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    .line 85
    .local v4, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 86
    .local v6, "method":Ljava/lang/Boolean;
    new-instance v7, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v5, 0x1

    :cond_0
    invoke-static {v0, v1, v2, v3, v5}, Lorg/apache/poi/ss/formula/functions/Days360;->evaluate(DDZ)D

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 87
    .end local v0    # "d0":D
    .end local v2    # "d1":D
    .end local v4    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v6    # "method":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1
.end method
