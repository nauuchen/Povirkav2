.class public final Lorg/apache/poi/ss/formula/functions/DateFunc;
.super Lorg/apache/poi/ss/formula/functions/Fixed3ArgFunction;
.source "DateFunc.java"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lorg/apache/poi/ss/formula/functions/DateFunc;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/DateFunc;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/DateFunc;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed3ArgFunction;-><init>()V

    .line 38
    return-void
.end method

.method private static evaluate(III)D
    .locals 6
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "pDay"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 59
    if-ltz p0, :cond_6

    .line 63
    :goto_0
    if-gez p1, :cond_0

    .line 64
    add-int/lit8 p0, p0, -0x1

    .line 65
    add-int/lit8 p1, p1, 0xc

    goto :goto_0

    .line 71
    :cond_0
    const/16 v0, 0x76c

    const/4 v1, 0x1

    if-ne p0, v0, :cond_1

    if-ne p1, v1, :cond_1

    const/16 v2, 0x1d

    if-ne p2, v2, :cond_1

    .line 72
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    return-wide v0

    .line 77
    :cond_1
    move v2, p2

    .line 78
    .local v2, "day":I
    if-ne p0, v0, :cond_4

    .line 79
    if-nez p1, :cond_2

    const/16 v3, 0x3c

    if-ge v2, v3, :cond_3

    :cond_2
    if-ne p1, v1, :cond_4

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_4

    .line 81
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 86
    :cond_4
    invoke-static {p0, p1, v2}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar(III)Ljava/util/Calendar;

    move-result-object v3

    .line 90
    .local v3, "c":Ljava/util/Calendar;
    if-gez p2, :cond_5

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, v0, :cond_5

    if-le p1, v1, :cond_5

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ge v4, v0, :cond_5

    .line 93
    const/4 v0, 0x5

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 97
    :cond_5
    const/4 v0, 0x0

    .line 100
    .local v0, "use1904windowing":Z
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;Z)D

    move-result-wide v4

    return-wide v4

    .line 60
    .end local v0    # "use1904windowing":Z
    .end local v2    # "day":I
    .end local v3    # "c":Ljava/util/Calendar;
    :cond_6
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method private static getYear(D)I
    .locals 2
    .param p0, "d"    # D

    .line 104
    double-to-int v0, p0

    .line 106
    .local v0, "year":I
    if-gez v0, :cond_0

    .line 107
    const/4 v1, -0x1

    return v1

    .line 110
    :cond_0
    const/16 v1, 0x76c

    if-ge v0, v1, :cond_1

    add-int/lit16 v1, v0, 0x76c

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 16
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    move/from16 v1, p1

    move/from16 v2, p2

    .line 43
    const-wide/16 v3, 0x0

    move-object/from16 v5, p3

    :try_start_0
    invoke-static {v5, v1, v2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v6
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 44
    .local v6, "d0":D
    move-object/from16 v8, p4

    :try_start_1
    invoke-static {v8, v1, v2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v9
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 45
    .local v9, "d1":D
    move-object/from16 v11, p5

    :try_start_2
    invoke-static {v11, v1, v2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v12

    .line 46
    .local v12, "d2":D
    invoke-static {v6, v7}, Lorg/apache/poi/ss/formula/functions/DateFunc;->getYear(D)I

    move-result v0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double v14, v9, v14

    double-to-int v14, v14

    double-to-int v15, v12

    invoke-static {v0, v14, v15}, Lorg/apache/poi/ss/formula/functions/DateFunc;->evaluate(III)D

    move-result-wide v3
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 47
    .local v3, "result":D
    :try_start_3
    invoke-static {v3, v4}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V
    :try_end_3
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_3 .. :try_end_3} :catch_0

    .line 50
    .end local v6    # "d0":D
    .end local v9    # "d1":D
    .end local v12    # "d2":D
    nop

    .line 51
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v0, v3, v4}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0

    .line 48
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v3    # "result":D
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    move-object/from16 v8, p4

    :goto_0
    move-object/from16 v11, p5

    .line 49
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v3    # "result":D
    :goto_1
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v6

    return-object v6
.end method
