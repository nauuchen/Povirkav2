.class public final Lorg/apache/poi/ss/formula/functions/Lookup;
.super Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;
.source "Lookup.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;-><init>()V

    return-void
.end method

.method private static createVector(Lorg/apache/poi/ss/formula/TwoDEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .locals 3
    .param p0, "ae"    # Lorg/apache/poi/ss/formula/TwoDEval;

    .line 100
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createVector(Lorg/apache/poi/ss/formula/TwoDEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v0

    .line 101
    .local v0, "result":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    if-eqz v0, :cond_0

    .line 102
    return-object v0

    .line 105
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "non-vector lookup or result areas not supported yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 53
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 54
    .local v0, "lookupValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {p4}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->resolveTableArrayArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/TwoDEval;

    move-result-object v1

    .line 58
    .local v1, "lookupArray":Lorg/apache/poi/ss/formula/TwoDEval;
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v2

    invoke-interface {v1}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_0

    .line 60
    invoke-interface {v1, v4}, Lorg/apache/poi/ss/formula/TwoDEval;->getRow(I)Lorg/apache/poi/ss/formula/TwoDEval;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/ss/formula/functions/Lookup;->createVector(Lorg/apache/poi/ss/formula/TwoDEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v2

    .line 61
    .local v2, "lookupVector":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-interface {v1, v3}, Lorg/apache/poi/ss/formula/TwoDEval;->getRow(I)Lorg/apache/poi/ss/formula/TwoDEval;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/ss/formula/functions/Lookup;->createVector(Lorg/apache/poi/ss/formula/TwoDEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v3

    .local v3, "resultVector":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    goto :goto_0

    .line 64
    .end local v2    # "lookupVector":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .end local v3    # "resultVector":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    :cond_0
    invoke-interface {v1, v4}, Lorg/apache/poi/ss/formula/TwoDEval;->getColumn(I)Lorg/apache/poi/ss/formula/TwoDEval;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/ss/formula/functions/Lookup;->createVector(Lorg/apache/poi/ss/formula/TwoDEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v2

    .line 65
    .restart local v2    # "lookupVector":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-interface {v1, v3}, Lorg/apache/poi/ss/formula/TwoDEval;->getColumn(I)Lorg/apache/poi/ss/formula/TwoDEval;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/ss/formula/functions/Lookup;->createVector(Lorg/apache/poi/ss/formula/TwoDEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v3

    .line 68
    .restart local v3    # "resultVector":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    :goto_0
    invoke-interface {v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v4

    invoke-interface {v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v6

    if-ne v4, v6, :cond_1

    .line 70
    invoke-static {v0, v2, v5}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->lookupIndexOfValue(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Z)I

    move-result v4

    .line 71
    .local v4, "index":I
    invoke-interface {v3, v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    return-object v5

    .line 68
    .end local v4    # "index":I
    :cond_1
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "srcRowIndex":I
    .end local p2    # "srcColumnIndex":I
    .end local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local p4    # "arg1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    throw v4
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0    # "lookupValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v1    # "lookupArray":Lorg/apache/poi/ss/formula/TwoDEval;
    .end local v2    # "lookupVector":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .end local v3    # "resultVector":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .restart local p1    # "srcRowIndex":I
    .restart local p2    # "srcColumnIndex":I
    .restart local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local p4    # "arg1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 81
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 82
    .local v0, "lookupValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {p4}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->resolveTableArrayArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/TwoDEval;

    move-result-object v1

    .line 83
    .local v1, "aeLookupVector":Lorg/apache/poi/ss/formula/TwoDEval;
    invoke-static {p5}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->resolveTableArrayArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/TwoDEval;

    move-result-object v2

    .line 85
    .local v2, "aeResultVector":Lorg/apache/poi/ss/formula/TwoDEval;
    invoke-static {v1}, Lorg/apache/poi/ss/formula/functions/Lookup;->createVector(Lorg/apache/poi/ss/formula/TwoDEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v3

    .line 86
    .local v3, "lookupVector":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    invoke-static {v2}, Lorg/apache/poi/ss/formula/functions/Lookup;->createVector(Lorg/apache/poi/ss/formula/TwoDEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v4

    .line 87
    .local v4, "resultVector":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    invoke-interface {v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v5

    invoke-interface {v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v6

    if-gt v5, v6, :cond_0

    .line 91
    const/4 v5, 0x1

    invoke-static {v0, v3, v5}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->lookupIndexOfValue(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Z)I

    move-result v5

    .line 93
    .local v5, "index":I
    invoke-interface {v4, v5}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    return-object v6

    .line 89
    .end local v5    # "index":I
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Lookup vector and result vector of differing sizes not supported yet"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "srcRowIndex":I
    .end local p2    # "srcColumnIndex":I
    .end local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local p4    # "arg1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local p5    # "arg2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    throw v5
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v0    # "lookupValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v1    # "aeLookupVector":Lorg/apache/poi/ss/formula/TwoDEval;
    .end local v2    # "aeResultVector":Lorg/apache/poi/ss/formula/TwoDEval;
    .end local v3    # "lookupVector":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .end local v4    # "resultVector":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .restart local p1    # "srcRowIndex":I
    .restart local p2    # "srcColumnIndex":I
    .restart local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local p4    # "arg1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local p5    # "arg2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1
.end method
