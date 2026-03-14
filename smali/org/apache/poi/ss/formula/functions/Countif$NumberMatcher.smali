.class final Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;
.super Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;
.source "Countif.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/Countif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NumberMatcher"
.end annotation


# instance fields
.field private final _value:D


# direct methods
.method public constructor <init>(DLorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V
    .locals 0
    .param p1, "value"    # D
    .param p3, "operator"    # Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    .line 183
    invoke-direct {p0, p3}, Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;-><init>(Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V

    .line 184
    iput-wide p1, p0, Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;->_value:D

    .line 185
    return-void
.end method


# virtual methods
.method protected getValueText()Ljava/lang/String;
    .locals 2

    .line 188
    iget-wide v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;->_value:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 9
    .param p1, "x"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 194
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 197
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;->getCode()I

    move-result v0

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    .line 208
    return v3

    .line 204
    :cond_0
    return v2

    .line 200
    :cond_1
    nop

    .line 210
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 211
    .local v0, "se":Lorg/apache/poi/ss/formula/eval/StringEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 212
    .local v1, "val":Ljava/lang/Double;
    if-nez v1, :cond_2

    .line 214
    return v3

    .line 216
    :cond_2
    iget-wide v4, p0, Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;->_value:D

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v8, v4, v6

    if-nez v8, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 217
    .end local v0    # "se":Lorg/apache/poi/ss/formula/eval/StringEval;
    .end local v1    # "val":Ljava/lang/Double;
    :cond_4
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v0, :cond_5

    .line 218
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 219
    .local v0, "ne":Lorg/apache/poi/ss/formula/eval/NumberEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v0

    .line 220
    .local v0, "testValue":D
    nop

    .line 231
    iget-wide v2, p0, Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;->_value:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;->evaluate(I)Z

    move-result v2

    return v2

    .line 220
    .end local v0    # "testValue":D
    :cond_5
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v0, :cond_7

    .line 221
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;->getCode()I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 226
    return v3

    .line 224
    :cond_6
    return v2

    .line 229
    :cond_7
    return v3
.end method
