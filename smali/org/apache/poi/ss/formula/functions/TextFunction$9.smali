.class final Lorg/apache/poi/ss/formula/functions/TextFunction$9;
.super Ljava/lang/Object;
.source "TextFunction.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/TextFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v0, "sb":Ljava/lang/StringBuilder;
    move-object v1, p1

    .local v1, "arr$":[Lorg/apache/poi/ss/formula/eval/ValueEval;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 271
    .local v4, "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_start_0
    invoke-static {v4, p2, p3}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    nop

    .line 269
    .end local v4    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 272
    .restart local v4    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v5

    .line 273
    .local v5, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v6

    return-object v6

    .line 276
    .end local v1    # "arr$":[Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    .end local v4    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v5    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :cond_0
    new-instance v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
