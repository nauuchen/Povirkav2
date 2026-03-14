.class public Lorg/apache/poi/ss/formula/functions/Rate;
.super Ljava/lang/Object;
.source "Rate.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lorg/apache/poi/ss/formula/functions/Rate;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Rate;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateRate(DDDDDD)D
    .locals 27
    .param p1, "nper"    # D
    .param p3, "pmt"    # D
    .param p5, "pv"    # D
    .param p7, "fv"    # D
    .param p9, "type"    # D
    .param p11, "guess"    # D

    .line 77
    const/16 v0, 0x14

    .line 78
    .local v0, "FINANCIAL_MAX_ITERATIONS":I
    const-wide v1, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 80
    .local v1, "FINANCIAL_PRECISION":D
    const-wide/16 v3, 0x0

    .local v3, "x1":D
    const-wide/16 v5, 0x0

    .local v5, "f":D
    const-wide/16 v7, 0x0

    .line 81
    .local v7, "i":D
    move-wide/from16 v9, p11

    .line 82
    .local v9, "rate":D
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpg-double v15, v11, v1

    if-gez v15, :cond_0

    .line 83
    mul-double v11, p1, v9

    add-double/2addr v11, v13

    mul-double v11, v11, p5

    mul-double v15, v9, p9

    add-double/2addr v15, v13

    mul-double v15, v15, p3

    mul-double v15, v15, p1

    add-double/2addr v11, v15

    add-double v11, v11, p7

    .local v11, "y":D
    goto :goto_0

    .line 85
    .end local v11    # "y":D
    :cond_0
    add-double v11, v9, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    mul-double v11, v11, p1

    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    .line 86
    mul-double v11, p5, v5

    div-double v15, v13, v9

    add-double v15, v15, p9

    mul-double v15, v15, p3

    sub-double v17, v5, v13

    mul-double v15, v15, v17

    add-double/2addr v11, v15

    add-double v11, v11, p7

    .line 88
    .restart local v11    # "y":D
    :goto_0
    mul-double v15, p3, p1

    add-double v15, p5, v15

    add-double v15, v15, p7

    .line 89
    .local v15, "y0":D
    mul-double v17, p5, v5

    div-double v19, v13, v9

    add-double v19, v19, p9

    mul-double v19, v19, p3

    sub-double v21, v5, v13

    mul-double v19, v19, v21

    add-double v17, v17, v19

    add-double v17, v17, p7

    .line 92
    .local v17, "y1":D
    const-wide/16 v19, 0x0

    move-wide/from16 v21, v19

    .local v21, "x0":D
    move-wide/from16 v7, v19

    .line 93
    move-wide v3, v9

    .line 94
    :goto_1
    sub-double v19, v15, v17

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    cmpl-double v23, v19, v1

    if-lez v23, :cond_2

    int-to-double v13, v0

    cmpg-double v23, v7, v13

    if-gez v23, :cond_2

    .line 95
    mul-double v13, v17, v21

    mul-double v23, v15, v3

    sub-double v13, v13, v23

    sub-double v23, v17, v15

    div-double v9, v13, v23

    .line 96
    move-wide/from16 v21, v3

    .line 97
    move-wide v3, v9

    .line 99
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    cmpg-double v23, v13, v1

    if-gez v23, :cond_1

    .line 100
    mul-double v13, p1, v9

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    add-double v13, v13, v19

    mul-double v13, v13, p5

    mul-double v23, v9, p9

    add-double v23, v23, v19

    mul-double v23, v23, p3

    mul-double v23, v23, p1

    add-double v13, v13, v23

    add-double v13, v13, p7

    move-wide v11, v13

    .end local v11    # "y":D
    .local v13, "y":D
    goto :goto_2

    .line 102
    .end local v13    # "y":D
    .restart local v11    # "y":D
    :cond_1
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    add-double v13, v9, v19

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    mul-double v13, v13, p1

    invoke-static {v13, v14}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    .line 103
    mul-double v13, p5, v5

    div-double v23, v19, v9

    add-double v23, v23, p9

    mul-double v23, v23, p3

    sub-double v25, v5, v19

    mul-double v23, v23, v25

    add-double v13, v13, v23

    add-double v13, v13, p7

    move-wide v11, v13

    .line 106
    :goto_2
    move-wide/from16 v15, v17

    .line 107
    move-wide/from16 v17, v11

    .line 108
    add-double v7, v7, v19

    move-wide/from16 v13, v19

    goto :goto_1

    .line 110
    :cond_2
    return-wide v9
.end method

.method static final checkValue(D)V
    .locals 2
    .param p0, "result"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 119
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    return-void

    .line 120
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 36
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .line 35
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    array-length v0, v1

    const/4 v4, 0x3

    if-ge v0, v4, :cond_0

    .line 36
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 39
    :cond_0
    const-wide/16 v5, 0x0

    .local v5, "future_val":D
    const-wide/16 v7, 0x0

    .local v7, "type":D
    const-wide v9, 0x3fb999999999999aL    # 0.1

    .line 42
    .local v9, "estimate":D
    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    :try_start_0
    aget-object v0, v1, v13

    invoke-static {v0, v2, v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 43
    .local v0, "v1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    aget-object v13, v1, v11

    invoke-static {v13, v2, v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v13

    .line 44
    .local v13, "v2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    aget-object v11, v1, v12

    invoke-static {v11, v2, v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v11

    .line 45
    .local v11, "v3":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/16 v17, 0x0

    .line 46
    .local v17, "v4":Lorg/apache/poi/ss/formula/eval/ValueEval;
    array-length v12, v1

    const/4 v14, 0x4

    if-lt v12, v14, :cond_1

    .line 47
    aget-object v4, v1, v4

    invoke-static {v4, v2, v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    move-object/from16 v17, v4

    .line 48
    :cond_1
    const/4 v4, 0x0

    .line 49
    .local v4, "v5":Lorg/apache/poi/ss/formula/eval/ValueEval;
    array-length v12, v1

    const/4 v15, 0x5

    if-lt v12, v15, :cond_2

    .line 50
    aget-object v12, v1, v14

    invoke-static {v12, v2, v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v12

    move-object v4, v12

    .line 51
    :cond_2
    const/4 v12, 0x0

    .line 52
    .local v12, "v6":Lorg/apache/poi/ss/formula/eval/ValueEval;
    array-length v14, v1

    const/4 v15, 0x6

    if-lt v14, v15, :cond_3

    .line 53
    const/4 v14, 0x5

    aget-object v15, v1, v14

    invoke-static {v15, v2, v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v14

    move-object v12, v14

    .line 55
    :cond_3
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v24
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_4

    .line 56
    .local v24, "periods":D
    :try_start_1
    invoke-static {v13}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v26
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_3

    .line 57
    .local v26, "payment":D
    :try_start_2
    invoke-static {v11}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v28
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 58
    .local v28, "present_val":D
    :try_start_3
    array-length v14, v1

    const/4 v15, 0x4

    if-lt v14, v15, :cond_4

    .line 59
    invoke-static/range {v17 .. v17}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v14

    move-wide v5, v14

    .line 60
    :cond_4
    array-length v14, v1

    const/4 v15, 0x5

    if-lt v14, v15, :cond_5

    .line 61
    invoke-static {v4}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v14

    move-wide v7, v14

    .line 62
    :cond_5
    array-length v14, v1

    const/4 v15, 0x6

    if-lt v14, v15, :cond_6

    .line 63
    invoke-static {v12}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v14

    move-wide v9, v14

    .line 64
    :cond_6
    move-object/from16 v23, p0

    move-wide/from16 v30, v5

    move-wide/from16 v32, v7

    move-wide/from16 v34, v9

    invoke-direct/range {v23 .. v35}, Lorg/apache/poi/ss/formula/functions/Rate;->calculateRate(DDDDDD)D

    move-result-wide v14
    :try_end_3
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_3 .. :try_end_3} :catch_1

    .line 66
    .local v14, "rate":D
    :try_start_4
    invoke-static {v14, v15}, Lorg/apache/poi/ss/formula/functions/Rate;->checkValue(D)V
    :try_end_4
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_4 .. :try_end_4} :catch_0

    .line 70
    .end local v0    # "v1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v4    # "v5":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v11    # "v3":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v12    # "v6":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v13    # "v2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v17    # "v4":Lorg/apache/poi/ss/formula/eval/ValueEval;
    nop

    .line 72
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v0, v14, v15}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0

    .line 67
    :catch_0
    move-exception v0

    move-wide v11, v14

    move-wide/from16 v19, v24

    move-wide/from16 v13, v26

    move-wide/from16 v21, v28

    goto :goto_0

    .end local v14    # "rate":D
    :catch_1
    move-exception v0

    const-wide/16 v11, 0x0

    move-wide/from16 v19, v24

    move-wide/from16 v13, v26

    move-wide/from16 v21, v28

    .local v11, "rate":D
    goto :goto_0

    .end local v11    # "rate":D
    .end local v28    # "present_val":D
    :catch_2
    move-exception v0

    const-wide/16 v11, 0x0

    move-wide/from16 v21, v11

    .local v21, "present_val":D
    move-wide/from16 v19, v24

    move-wide/from16 v13, v26

    .restart local v11    # "rate":D
    goto :goto_0

    .end local v11    # "rate":D
    .end local v21    # "present_val":D
    .end local v26    # "payment":D
    :catch_3
    move-exception v0

    const-wide/16 v11, 0x0

    move-wide v13, v11

    .local v13, "payment":D
    move-wide/from16 v21, v11

    .restart local v21    # "present_val":D
    move-wide/from16 v19, v24

    .restart local v11    # "rate":D
    goto :goto_0

    .end local v11    # "rate":D
    .end local v13    # "payment":D
    .end local v21    # "present_val":D
    .end local v24    # "periods":D
    :catch_4
    move-exception v0

    const-wide/16 v11, 0x0

    move-wide v13, v11

    .restart local v13    # "payment":D
    move-wide/from16 v19, v11

    .local v19, "periods":D
    move-wide/from16 v21, v11

    .line 68
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v11    # "rate":D
    .restart local v21    # "present_val":D
    :goto_0
    sget-object v4, Lorg/apache/poi/ss/formula/functions/Rate;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const-string v18, "Can\'t evaluate rate function"

    const/16 v16, 0x0

    aput-object v18, v15, v16

    const/16 v16, 0x1

    aput-object v0, v15, v16

    const/4 v1, 0x7

    invoke-virtual {v4, v1, v15}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1
.end method
