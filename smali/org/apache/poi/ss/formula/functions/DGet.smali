.class public final Lorg/apache/poi/ss/formula/functions/DGet;
.super Ljava/lang/Object;
.source "DGet.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;


# instance fields
.field private result:Lorg/apache/poi/ss/formula/eval/ValueEval;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    .line 58
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/DGet;->result:Lorg/apache/poi/ss/formula/eval/ValueEval;

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 60
    :cond_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v1, :cond_1

    .line 61
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 64
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 68
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/DGet;->result:Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1
.end method

.method public processMatch(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 1
    .param p1, "eval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 35
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/DGet;->result:Lorg/apache/poi/ss/formula/eval/ValueEval;

    if-nez v0, :cond_0

    .line 37
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/DGet;->result:Lorg/apache/poi/ss/formula/eval/ValueEval;

    goto :goto_0

    .line 41
    :cond_0
    instance-of v0, v0, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v0, :cond_1

    .line 42
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/DGet;->result:Lorg/apache/poi/ss/formula/eval/ValueEval;

    goto :goto_0

    .line 46
    :cond_1
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-nez v0, :cond_2

    .line 47
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/DGet;->result:Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 48
    const/4 v0, 0x0

    return v0

    .line 53
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
