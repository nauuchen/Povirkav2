.class public Lorg/apache/poi/ss/usermodel/FractionFormat;
.super Ljava/text/Format;
.source "FractionFormat.java"


# static fields
.field private static final DENOM_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final LOGGER:Lorg/apache/poi/util/POILogger;

.field private static final MAX_DENOM_POW:I = 0x4


# instance fields
.field private final exactDenom:I

.field private final maxDenom:I

.field private final wholePartFormatString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lorg/apache/poi/ss/usermodel/FractionFormat;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/FractionFormat;->LOGGER:Lorg/apache/poi/util/POILogger;

    .line 45
    const-string v0, "(?:(#+)|(\\d+))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/FractionFormat;->DENOM_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "wholePartFormatString"    # Ljava/lang/String;
    .param p2, "denomFormatString"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/FractionFormat;->wholePartFormatString:Ljava/lang/String;

    .line 69
    sget-object v0, Lorg/apache/poi/ss/usermodel/FractionFormat;->DENOM_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 70
    .local v0, "m":Ljava/util/regex/Matcher;
    const/4 v1, -0x1

    .line 71
    .local v1, "tmpExact":I
    const/4 v2, -0x1

    .line 72
    .local v2, "tmpMax":I
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 73
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 75
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 78
    if-nez v1, :cond_0

    .line 79
    const/4 v1, -0x1

    .line 83
    :cond_0
    :goto_0
    goto :goto_2

    .line 81
    :catch_0
    move-exception v3

    goto :goto_0

    .line 84
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 85
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 86
    .local v3, "len":I
    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    move v3, v4

    .line 87
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v2, v4

    .line 88
    .end local v3    # "len":I
    goto :goto_2

    .line 89
    :cond_3
    const/16 v1, 0x64

    .line 92
    :cond_4
    :goto_2
    if-gtz v1, :cond_5

    if-gtz v2, :cond_5

    .line 94
    const/16 v1, 0x64

    .line 96
    :cond_5
    iput v1, p0, Lorg/apache/poi/ss/usermodel/FractionFormat;->exactDenom:I

    .line 97
    iput v2, p0, Lorg/apache/poi/ss/usermodel/FractionFormat;->maxDenom:I

    .line 98
    return-void
.end method


# virtual methods
.method public format(Ljava/lang/Number;)Ljava/lang/String;
    .locals 18
    .param p1, "num"    # Ljava/lang/Number;

    .line 102
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 104
    .local v2, "doubleValue":D
    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    cmpg-double v0, v2, v6

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    .line 105
    .local v8, "isNeg":Z
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    .line 107
    .local v9, "absDoubleValue":D
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    .line 108
    .local v11, "wholePart":D
    sub-double v13, v9, v11

    .line 109
    .local v13, "decPart":D
    add-double v15, v11, v13

    cmpl-double v0, v15, v6

    if-nez v0, :cond_1

    .line 110
    const-string v0, "0"

    return-object v0

    .line 122
    :cond_1
    invoke-static {v13, v14, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    const-string v15, "-"

    if-nez v0, :cond_3

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz v8, :cond_2

    .line 126
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_2
    double-to-int v4, v11

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 132
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    const/16 v16, 0x0

    .line 135
    .local v16, "fract":Lorg/apache/poi/ss/format/SimpleFraction;
    :try_start_0
    iget v0, v1, Lorg/apache/poi/ss/usermodel/FractionFormat;->exactDenom:I

    if-lez v0, :cond_4

    .line 136
    invoke-static {v13, v14, v0}, Lorg/apache/poi/ss/format/SimpleFraction;->buildFractionExactDenominator(DI)Lorg/apache/poi/ss/format/SimpleFraction;

    move-result-object v0

    .end local v16    # "fract":Lorg/apache/poi/ss/format/SimpleFraction;
    .local v0, "fract":Lorg/apache/poi/ss/format/SimpleFraction;
    goto :goto_1

    .line 138
    .end local v0    # "fract":Lorg/apache/poi/ss/format/SimpleFraction;
    .restart local v16    # "fract":Lorg/apache/poi/ss/format/SimpleFraction;
    :cond_4
    iget v0, v1, Lorg/apache/poi/ss/usermodel/FractionFormat;->maxDenom:I

    invoke-static {v13, v14, v0}, Lorg/apache/poi/ss/format/SimpleFraction;->buildFractionMaxDenominator(DI)Lorg/apache/poi/ss/format/SimpleFraction;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v16    # "fract":Lorg/apache/poi/ss/format/SimpleFraction;
    .restart local v0    # "fract":Lorg/apache/poi/ss/format/SimpleFraction;
    :goto_1
    nop

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v4, "sb":Ljava/lang/StringBuilder;
    if-eqz v8, :cond_5

    .line 149
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_5
    iget-object v15, v1, Lorg/apache/poi/ss/usermodel/FractionFormat;->wholePartFormatString:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "/"

    if-eqz v6, :cond_6

    .line 154
    invoke-virtual {v0}, Lorg/apache/poi/ss/format/SimpleFraction;->getDenominator()I

    move-result v5

    double-to-int v6, v11

    mul-int v5, v5, v6

    invoke-virtual {v0}, Lorg/apache/poi/ss/format/SimpleFraction;->getNumerator()I

    move-result v6

    add-int/2addr v5, v6

    .line 155
    .local v5, "trueNum":I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/apache/poi/ss/format/SimpleFraction;->getDenominator()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 161
    .end local v5    # "trueNum":I
    :cond_6
    invoke-virtual {v0}, Lorg/apache/poi/ss/format/SimpleFraction;->getNumerator()I

    move-result v6

    if-nez v6, :cond_7

    .line 162
    double-to-int v5, v11

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 164
    :cond_7
    invoke-virtual {v0}, Lorg/apache/poi/ss/format/SimpleFraction;->getNumerator()I

    move-result v6

    invoke-virtual {v0}, Lorg/apache/poi/ss/format/SimpleFraction;->getDenominator()I

    move-result v15

    if-ne v6, v15, :cond_8

    .line 165
    double-to-int v6, v11

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 169
    :cond_8
    const-wide/16 v5, 0x0

    cmpl-double v15, v11, v5

    if-lez v15, :cond_9

    .line 170
    double-to-int v5, v11

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_9
    invoke-virtual {v0}, Lorg/apache/poi/ss/format/SimpleFraction;->getNumerator()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/poi/ss/format/SimpleFraction;->getDenominator()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 140
    .end local v0    # "fract":Lorg/apache/poi/ss/format/SimpleFraction;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "fract":Lorg/apache/poi/ss/format/SimpleFraction;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v6, Lorg/apache/poi/ss/usermodel/FractionFormat;->LOGGER:Lorg/apache/poi/util/POILogger;

    const/4 v7, 0x5

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const-string v17, "Can\'t format fraction"

    aput-object v17, v15, v4

    aput-object v0, v15, v5

    invoke-virtual {v6, v7, v15}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 142
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 177
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/usermodel/FractionFormat;->format(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 181
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string v1, "Reverse parsing not supported"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
