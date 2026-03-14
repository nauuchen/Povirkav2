.class public final Lorg/apache/poi/ss/util/NumberComparer;
.super Ljava/lang/Object;
.source "NumberComparer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(DD)I
    .locals 15
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 62
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 63
    .local v0, "rawBitsA":J
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 65
    .local v2, "rawBitsB":J
    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/IEEEDouble;->getBiasedExponent(J)I

    move-result v4

    .line 66
    .local v4, "biasedExponentA":I
    invoke-static {v2, v3}, Lorg/apache/poi/ss/util/IEEEDouble;->getBiasedExponent(J)I

    move-result v5

    .line 68
    .local v5, "biasedExponentB":I
    const-string v6, "Special double values are not allowed: "

    const/16 v7, 0x7ff

    if-eq v4, v7, :cond_d

    .line 71
    if-eq v5, v7, :cond_c

    .line 78
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    cmp-long v10, v0, v6

    if-gez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 79
    .local v10, "aIsNegative":Z
    :goto_0
    cmp-long v11, v2, v6

    if-gez v11, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 82
    .local v6, "bIsNegative":Z
    :goto_1
    if-eq v10, v6, :cond_3

    .line 85
    if-eqz v10, :cond_2

    const/4 v9, -0x1

    :cond_2
    return v9

    .line 89
    :cond_3
    sub-int v7, v4, v5

    .line 90
    .local v7, "cmp":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 91
    .local v11, "absExpDiff":I
    if-le v11, v9, :cond_5

    .line 92
    if-eqz v10, :cond_4

    neg-int v8, v7

    goto :goto_2

    :cond_4
    move v8, v7

    :goto_2
    return v8

    .line 95
    :cond_5
    if-ne v11, v9, :cond_6

    goto :goto_3

    .line 100
    :cond_6
    cmp-long v9, v0, v2

    if-nez v9, :cond_7

    .line 102
    return v8

    .line 105
    :cond_7
    :goto_3
    if-nez v4, :cond_9

    .line 106
    if-nez v5, :cond_8

    .line 107
    const-wide v8, 0xfffffffffffffL

    and-long v12, v0, v8

    and-long/2addr v8, v2

    invoke-static {v12, v13, v8, v9, v10}, Lorg/apache/poi/ss/util/NumberComparer;->compareSubnormalNumbers(JJZ)I

    move-result v8

    return v8

    .line 110
    :cond_8
    invoke-static {v2, v3, v0, v1, v10}, Lorg/apache/poi/ss/util/NumberComparer;->compareAcrossSubnormalThreshold(JJZ)I

    move-result v8

    neg-int v8, v8

    return v8

    .line 112
    :cond_9
    if-nez v5, :cond_a

    .line 114
    invoke-static {v0, v1, v2, v3, v10}, Lorg/apache/poi/ss/util/NumberComparer;->compareAcrossSubnormalThreshold(JJZ)I

    move-result v8

    return v8

    .line 119
    :cond_a
    add-int/lit16 v8, v4, -0x3ff

    invoke-static {v0, v1, v8}, Lorg/apache/poi/ss/util/ExpandedDouble;->fromRawBitsAndExponent(JI)Lorg/apache/poi/ss/util/ExpandedDouble;

    move-result-object v8

    .line 120
    .local v8, "edA":Lorg/apache/poi/ss/util/ExpandedDouble;
    add-int/lit16 v9, v5, -0x3ff

    invoke-static {v2, v3, v9}, Lorg/apache/poi/ss/util/ExpandedDouble;->fromRawBitsAndExponent(JI)Lorg/apache/poi/ss/util/ExpandedDouble;

    move-result-object v9

    .line 121
    .local v9, "edB":Lorg/apache/poi/ss/util/ExpandedDouble;
    invoke-virtual {v8}, Lorg/apache/poi/ss/util/ExpandedDouble;->normaliseBaseTen()Lorg/apache/poi/ss/util/NormalisedDecimal;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/poi/ss/util/NormalisedDecimal;->roundUnits()Lorg/apache/poi/ss/util/NormalisedDecimal;

    move-result-object v12

    .line 122
    .local v12, "ndA":Lorg/apache/poi/ss/util/NormalisedDecimal;
    invoke-virtual {v9}, Lorg/apache/poi/ss/util/ExpandedDouble;->normaliseBaseTen()Lorg/apache/poi/ss/util/NormalisedDecimal;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/poi/ss/util/NormalisedDecimal;->roundUnits()Lorg/apache/poi/ss/util/NormalisedDecimal;

    move-result-object v13

    .line 123
    .local v13, "ndB":Lorg/apache/poi/ss/util/NormalisedDecimal;
    invoke-virtual {v12, v13}, Lorg/apache/poi/ss/util/NormalisedDecimal;->compareNormalised(Lorg/apache/poi/ss/util/NormalisedDecimal;)I

    move-result v7

    .line 124
    if-eqz v10, :cond_b

    .line 125
    neg-int v14, v7

    return v14

    .line 127
    :cond_b
    return v7

    .line 72
    .end local v6    # "bIsNegative":Z
    .end local v7    # "cmp":I
    .end local v8    # "edA":Lorg/apache/poi/ss/util/ExpandedDouble;
    .end local v9    # "edB":Lorg/apache/poi/ss/util/ExpandedDouble;
    .end local v10    # "aIsNegative":Z
    .end local v11    # "absExpDiff":I
    .end local v12    # "ndA":Lorg/apache/poi/ss/util/NormalisedDecimal;
    .end local v13    # "ndB":Lorg/apache/poi/ss/util/NormalisedDecimal;
    :cond_c
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p0 .. p1}, Lorg/apache/poi/ss/util/NumberComparer;->toHex(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 69
    :cond_d
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p0 .. p1}, Lorg/apache/poi/ss/util/NumberComparer;->toHex(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static compareAcrossSubnormalThreshold(JJZ)I
    .locals 11
    .param p0, "normalRawBitsA"    # J
    .param p2, "subnormalRawBitsB"    # J
    .param p4, "isNegative"    # Z

    .line 148
    const-wide v0, 0xfffffffffffffL

    and-long v2, p2, v0

    .line 149
    .local v2, "fracB":J
    const/4 v4, -0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-nez v8, :cond_1

    .line 151
    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    .line 153
    :cond_1
    and-long/2addr v0, p0

    .line 154
    .local v0, "fracA":J
    const-wide/16 v6, 0x7

    cmp-long v8, v0, v6

    if-gtz v8, :cond_4

    const-wide v8, 0xffffffffffffaL

    cmp-long v10, v2, v8

    if-ltz v10, :cond_4

    .line 156
    cmp-long v10, v0, v6

    if-nez v10, :cond_2

    cmp-long v6, v2, v8

    if-nez v6, :cond_2

    .line 158
    const/4 v4, 0x0

    return v4

    .line 161
    :cond_2
    if-eqz p4, :cond_3

    const/4 v4, 0x1

    :cond_3
    return v4

    .line 164
    :cond_4
    if-eqz p4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x1

    :goto_1
    return v4
.end method

.method private static compareSubnormalNumbers(JJZ)I
    .locals 2
    .param p0, "fracA"    # J
    .param p2, "fracB"    # J
    .param p4, "isNegative"    # Z

    .line 134
    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    cmp-long v0, p0, p2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 136
    .local v0, "cmp":I
    :goto_0
    if-eqz p4, :cond_2

    neg-int v1, v0

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    return v1
.end method

.method private static toHex(D)Ljava/lang/String;
    .locals 3
    .param p0, "a"    # D

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
