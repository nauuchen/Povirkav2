.class public abstract Lorg/apache/poi/ss/formula/functions/BooleanFunction;
.super Ljava/lang/Object;
.source "BooleanFunction.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# static fields
.field public static final AND:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final FALSE:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final NOT:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final OR:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final TRUE:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/BooleanFunction$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->AND:Lorg/apache/poi/ss/formula/functions/Function;

    .line 127
    new-instance v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction$2;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/BooleanFunction$2;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->OR:Lorg/apache/poi/ss/formula/functions/Function;

    .line 135
    new-instance v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction$3;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/BooleanFunction$3;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->FALSE:Lorg/apache/poi/ss/formula/functions/Function;

    .line 140
    new-instance v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction$4;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/BooleanFunction$4;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->TRUE:Lorg/apache/poi/ss/formula/functions/Function;

    .line 145
    new-instance v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction$5;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/BooleanFunction$5;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->NOT:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculate([Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 16
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 57
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->getInitialResultValue()Z

    move-result v1

    .line 58
    .local v1, "result":Z
    const/4 v2, 0x0

    .line 63
    .local v2, "atleastOneNonBlank":Z
    move-object/from16 v3, p1

    .local v3, "arr$":[Lorg/apache/poi/ss/formula/eval/ValueEval;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_9

    aget-object v6, v3, v5

    .line 65
    .local v6, "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v7, v6, Lorg/apache/poi/ss/formula/TwoDEval;

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    .line 66
    move-object v7, v6

    check-cast v7, Lorg/apache/poi/ss/formula/TwoDEval;

    .line 67
    .local v7, "ae":Lorg/apache/poi/ss/formula/TwoDEval;
    invoke-interface {v7}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v9

    .line 68
    .local v9, "height":I
    invoke-interface {v7}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v10

    .line 69
    .local v10, "width":I
    const/4 v11, 0x0

    .local v11, "rrIx":I
    :goto_1
    if-ge v11, v9, :cond_2

    .line 70
    const/4 v12, 0x0

    .local v12, "rcIx":I
    :goto_2
    if-ge v12, v10, :cond_1

    .line 71
    invoke-interface {v7, v11, v12}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v13

    .line 72
    .local v13, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v13, v8}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 73
    .local v14, "tempVe":Ljava/lang/Boolean;
    if-eqz v14, :cond_0

    .line 74
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-virtual {v0, v1, v15}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->partialEvaluate(ZZ)Z

    move-result v1

    .line 75
    const/4 v2, 0x1

    .line 70
    .end local v13    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 69
    .end local v12    # "rcIx":I
    .end local v14    # "tempVe":Ljava/lang/Boolean;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 79
    .end local v11    # "rrIx":I
    :cond_2
    goto :goto_5

    .line 81
    .end local v7    # "ae":Lorg/apache/poi/ss/formula/TwoDEval;
    .end local v9    # "height":I
    .end local v10    # "width":I
    :cond_3
    instance-of v7, v6, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v7, :cond_6

    .line 82
    move-object v7, v6

    check-cast v7, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 83
    .local v7, "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    invoke-interface {v7}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v9

    .line 84
    .local v9, "firstSheetIndex":I
    invoke-interface {v7}, Lorg/apache/poi/ss/formula/eval/RefEval;->getLastSheetIndex()I

    move-result v10

    .line 85
    .local v10, "lastSheetIndex":I
    move v11, v9

    .local v11, "sIx":I
    :goto_3
    if-gt v11, v10, :cond_5

    .line 86
    invoke-interface {v7, v11}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v12

    .line 87
    .local v12, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v12, v8}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 88
    .local v13, "tempVe":Ljava/lang/Boolean;
    if-eqz v13, :cond_4

    .line 89
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual {v0, v1, v14}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->partialEvaluate(ZZ)Z

    move-result v1

    .line 90
    const/4 v2, 0x1

    .line 85
    .end local v12    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 93
    .end local v11    # "sIx":I
    .end local v13    # "tempVe":Ljava/lang/Boolean;
    :cond_5
    goto :goto_5

    .line 96
    .end local v7    # "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    .end local v9    # "firstSheetIndex":I
    .end local v10    # "lastSheetIndex":I
    :cond_6
    sget-object v7, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-ne v6, v7, :cond_7

    .line 97
    const/4 v7, 0x0

    .local v7, "tempVe":Ljava/lang/Boolean;
    goto :goto_4

    .line 99
    .end local v7    # "tempVe":Ljava/lang/Boolean;
    :cond_7
    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 102
    .restart local v7    # "tempVe":Ljava/lang/Boolean;
    :goto_4
    if-eqz v7, :cond_8

    .line 103
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v0, v1, v8}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->partialEvaluate(ZZ)Z

    move-result v1

    .line 104
    const/4 v2, 0x1

    .line 63
    .end local v6    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v7    # "tempVe":Ljava/lang/Boolean;
    :cond_8
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 108
    .end local v3    # "arr$":[Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_9
    if-eqz v2, :cond_a

    .line 111
    return v1

    .line 109
    :cond_a
    new-instance v3, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v3
.end method


# virtual methods
.method public final evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRow"    # I
    .param p3, "srcCol"    # I

    .line 43
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 44
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 48
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->calculate([Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .local v0, "boolResult":Z
    nop

    .line 52
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object v1

    return-object v1

    .line 49
    .end local v0    # "boolResult":Z
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 50
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .local v1, "boolResult":Z
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    return-object v2
.end method

.method protected abstract getInitialResultValue()Z
.end method

.method protected abstract partialEvaluate(ZZ)Z
.end method
