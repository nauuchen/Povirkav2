.class final Lorg/apache/poi/ss/formula/functions/CountUtils;
.super Ljava/lang/Object;
.source "CountUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchAreaPredicate;,
        Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static countArg(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I
    .locals 2
    .param p0, "eval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "criteriaPredicate"    # Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    .line 91
    if-eqz p0, :cond_3

    .line 94
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ThreeDEval;

    if-eqz v0, :cond_0

    .line 95
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/ThreeDEval;

    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/functions/CountUtils;->countMatchingCellsInArea(Lorg/apache/poi/ss/formula/ThreeDEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I

    move-result v0

    return v0

    .line 97
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/TwoDEval;

    if-nez v0, :cond_2

    .line 100
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    .line 101
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/functions/CountUtils;->countMatchingCellsInRef(Lorg/apache/poi/ss/formula/eval/RefEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I

    move-result v0

    return v0

    .line 103
    :cond_1
    invoke-interface {p1, p0}, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;->matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v0

    return v0

    .line 98
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Count requires 3D Evals, 2D ones aren\'t supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eval must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static countMatchingCellsInArea(Lorg/apache/poi/ss/formula/ThreeDEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I
    .locals 11
    .param p0, "areaEval"    # Lorg/apache/poi/ss/formula/ThreeDEval;
    .param p1, "criteriaPredicate"    # Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "result":I
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/ThreeDEval;->getFirstSheetIndex()I

    move-result v1

    .line 53
    .local v1, "firstSheetIndex":I
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/ThreeDEval;->getLastSheetIndex()I

    move-result v2

    .line 54
    .local v2, "lastSheetIndex":I
    move v3, v1

    .local v3, "sIx":I
    :goto_0
    if-gt v3, v2, :cond_4

    .line 55
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/ThreeDEval;->getHeight()I

    move-result v4

    .line 56
    .local v4, "height":I
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/ThreeDEval;->getWidth()I

    move-result v5

    .line 57
    .local v5, "width":I
    const/4 v6, 0x0

    .local v6, "rrIx":I
    :goto_1
    if-ge v6, v4, :cond_3

    .line 58
    const/4 v7, 0x0

    .local v7, "rcIx":I
    :goto_2
    if-ge v7, v5, :cond_2

    .line 59
    invoke-interface {p0, v3, v6, v7}, Lorg/apache/poi/ss/formula/ThreeDEval;->getValue(III)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v8

    .line 61
    .local v8, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v9, p1, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchAreaPredicate;

    if-eqz v9, :cond_0

    .line 62
    move-object v9, p1

    check-cast v9, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchAreaPredicate;

    .line 63
    .local v9, "areaPredicate":Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchAreaPredicate;
    invoke-interface {v9, p0, v6, v7}, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchAreaPredicate;->matches(Lorg/apache/poi/ss/formula/TwoDEval;II)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_3

    .line 66
    .end local v9    # "areaPredicate":Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchAreaPredicate;
    :cond_0
    invoke-interface {p1, v8}, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;->matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 58
    .end local v8    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 57
    .end local v7    # "rcIx":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 54
    .end local v4    # "height":I
    .end local v5    # "width":I
    .end local v6    # "rrIx":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    .end local v3    # "sIx":I
    :cond_4
    return v0
.end method

.method public static countMatchingCellsInRef(Lorg/apache/poi/ss/formula/eval/RefEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I
    .locals 6
    .param p0, "refEval"    # Lorg/apache/poi/ss/formula/eval/RefEval;
    .param p1, "criteriaPredicate"    # Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "result":I
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v1

    .line 81
    .local v1, "firstSheetIndex":I
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getLastSheetIndex()I

    move-result v2

    .line 82
    .local v2, "lastSheetIndex":I
    move v3, v1

    .local v3, "sIx":I
    :goto_0
    if-gt v3, v2, :cond_1

    .line 83
    invoke-interface {p0, v3}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    .line 84
    .local v4, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-interface {p1, v4}, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;->matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    add-int/lit8 v0, v0, 0x1

    .line 82
    .end local v4    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    .end local v3    # "sIx":I
    :cond_1
    return v0
.end method
