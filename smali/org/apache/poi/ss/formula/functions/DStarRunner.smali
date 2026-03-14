.class public final Lorg/apache/poi/ss/formula/functions/DStarRunner;
.super Ljava/lang/Object;
.source "DStarRunner.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function3Arg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;,
        Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;
    }
.end annotation


# instance fields
.field private final algoType:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;)V
    .locals 0
    .param p1, "algorithm"    # Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/DStarRunner;->algoType:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    .line 51
    return-void
.end method

.method private static fullfillsConditions(Lorg/apache/poi/ss/formula/eval/AreaEval;ILorg/apache/poi/ss/formula/eval/AreaEval;)Z
    .locals 12
    .param p0, "db"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p1, "row"    # I
    .param p2, "cdb"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 188
    invoke-interface {p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v0

    .line 189
    .local v0, "height":I
    const/4 v1, 0x1

    .local v1, "conditionRow":I
    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_8

    .line 190
    const/4 v3, 0x1

    .line 191
    .local v3, "matches":Z
    invoke-interface {p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v4

    .line 192
    .local v4, "width":I
    const/4 v5, 0x0

    .local v5, "column":I
    :goto_1
    const/4 v6, 0x1

    if-ge v5, v4, :cond_6

    .line 195
    const/4 v7, 0x1

    .line 196
    .local v7, "columnCondition":Z
    const/4 v8, 0x0

    .line 199
    .local v8, "condition":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {p2, v1, v5}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->resolveReference(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v8

    .line 202
    instance-of v9, v8, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v9, :cond_0

    .line 203
    goto :goto_2

    .line 205
    :cond_0
    invoke-static {p2, v2, v5}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->resolveReference(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v9

    .line 207
    .local v9, "targetHeader":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v10, v9, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    if-eqz v10, :cond_5

    .line 211
    invoke-static {v9, p0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getColumnForName(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 213
    const/4 v7, 0x0

    .line 215
    :cond_1
    if-ne v7, v6, :cond_3

    .line 217
    invoke-static {v9, p0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getColumnForName(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)I

    move-result v10

    invoke-static {p0, p1, v10}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->resolveReference(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v10

    .line 218
    .local v10, "value":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v10, v8}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->testNormalCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 219
    const/4 v3, 0x0

    .line 220
    goto :goto_3

    .line 222
    .end local v10    # "value":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_2
    nop

    .line 192
    .end local v7    # "columnCondition":Z
    .end local v8    # "condition":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v9    # "targetHeader":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 224
    .restart local v7    # "columnCondition":Z
    .restart local v8    # "condition":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local v9    # "targetHeader":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_3
    invoke-static {v8}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 225
    new-instance v2, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v2, v6}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v2

    .line 227
    :cond_4
    new-instance v2, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string v6, "D* function with formula conditions"

    invoke-direct {v2, v6}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    :cond_5
    new-instance v2, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v2, v6}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v2

    .line 231
    .end local v5    # "column":I
    .end local v7    # "columnCondition":Z
    .end local v8    # "condition":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v9    # "targetHeader":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_6
    :goto_3
    if-ne v3, v6, :cond_7

    .line 232
    return v6

    .line 189
    .end local v3    # "matches":Z
    .end local v4    # "width":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "conditionRow":I
    :cond_8
    return v2
.end method

.method private static getColumnForName(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)I
    .locals 2
    .param p0, "nameValueEval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "db"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 140
    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1, v0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getColumnForString(Lorg/apache/poi/ss/formula/eval/AreaEval;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getColumnForString(Lorg/apache/poi/ss/formula/eval/AreaEval;Ljava/lang/String;)I
    .locals 6
    .param p0, "db"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 154
    const/4 v0, -0x1

    .line 155
    .local v0, "resultColumn":I
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v1

    .line 156
    .local v1, "width":I
    const/4 v2, 0x0

    .local v2, "column":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 157
    const/4 v3, 0x0

    invoke-static {p0, v3, v2}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->resolveReference(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    .line 158
    .local v3, "columnNameValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v4, v3, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v4, :cond_0

    .line 159
    goto :goto_1

    .line 161
    :cond_0
    instance-of v4, v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v4, :cond_1

    .line 162
    goto :goto_1

    .line 164
    :cond_1
    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "columnName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 166
    move v0, v2

    .line 167
    goto :goto_2

    .line 156
    .end local v3    # "columnNameValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v4    # "columnName":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v2    # "column":I
    :cond_3
    :goto_2
    return v0
.end method

.method private static getNumberFromValueEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/Double;
    .locals 4
    .param p0, "value"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 372
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v0, :cond_0

    .line 373
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 375
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 376
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/StringValueEval;->getStringValue()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "stringValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 379
    :catch_0
    move-exception v2

    .line 380
    .local v2, "e2":Ljava/lang/NumberFormatException;
    return-object v1

    .line 384
    .end local v0    # "stringValue":Ljava/lang/String;
    .end local v2    # "e2":Ljava/lang/NumberFormatException;
    :cond_1
    return-object v1
.end method

.method private static resolveReference(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p0, "db"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p1, "dbRow"    # I
    .param p2, "dbCol"    # I

    .line 398
    :try_start_0
    invoke-interface {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstRow()I

    move-result v1

    add-int/2addr v1, p1

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result v2

    add-int/2addr v2, p2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1
.end method

.method private static testNormalCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 8
    .param p0, "value"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "condition"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 248
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 249
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "conditionString":Ljava/lang/String;
    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "="

    if-eqz v2, :cond_1

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "number":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    .end local v2    # "number":Ljava/lang/String;
    .local v1, "number":Ljava/lang/String;
    sget-object v2, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->smallerEqualThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-static {p0, v2, v1}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->testNumericCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 257
    .end local v1    # "number":Ljava/lang/String;
    .restart local v2    # "number":Ljava/lang/String;
    :cond_0
    sget-object v1, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->smallerThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-static {p0, v1, v2}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->testNumericCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 260
    .end local v2    # "number":Ljava/lang/String;
    :cond_1
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 262
    .restart local v2    # "number":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 263
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 264
    .end local v2    # "number":Ljava/lang/String;
    .restart local v1    # "number":Ljava/lang/String;
    sget-object v2, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->largerEqualThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-static {p0, v2, v1}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->testNumericCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 266
    .end local v1    # "number":Ljava/lang/String;
    .restart local v2    # "number":Ljava/lang/String;
    :cond_2
    sget-object v1, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->largerThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-static {p0, v1, v2}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->testNumericCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 269
    .end local v2    # "number":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_7

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "stringOrNumber":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 273
    instance-of v2, p0, Lorg/apache/poi/ss/formula/eval/BlankEval;

    return v2

    .line 276
    :cond_4
    const/4 v2, 0x0

    .line 278
    .local v2, "itsANumber":Z
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    const/4 v2, 0x1

    .line 287
    goto :goto_0

    .line 280
    :catch_0
    move-exception v4

    .line 282
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 283
    const/4 v2, 0x1

    .line 286
    goto :goto_0

    .line 284
    :catch_1
    move-exception v5

    .line 285
    .local v5, "e2":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    .line 288
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "e2":Ljava/lang/NumberFormatException;
    :goto_0
    if-eqz v2, :cond_5

    .line 289
    sget-object v3, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->equal:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-static {p0, v3, v1}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->testNumericCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 291
    :cond_5
    instance-of v4, p0, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "valueString":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 295
    .end local v1    # "stringOrNumber":Ljava/lang/String;
    .end local v2    # "itsANumber":Z
    .end local v3    # "valueString":Ljava/lang/String;
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 296
    instance-of v1, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    return v1

    .line 299
    :cond_8
    instance-of v1, p0, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_9
    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v1, v3

    .line 300
    .local v1, "valueString":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 304
    .end local v0    # "conditionString":Ljava/lang/String;
    .end local v1    # "valueString":Ljava/lang/String;
    :cond_a
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 305
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v3

    .line 306
    .local v3, "conditionNumber":D
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getNumberFromValueEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/Double;

    move-result-object v0

    .line 307
    .local v0, "valueNumber":Ljava/lang/Double;
    if-nez v0, :cond_b

    .line 308
    return v2

    .line 311
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpl-double v7, v3, v5

    if-nez v7, :cond_c

    goto :goto_3

    :cond_c
    const/4 v1, 0x0

    :goto_3
    return v1

    .line 313
    .end local v0    # "valueNumber":Ljava/lang/Double;
    .end local v3    # "conditionNumber":D
    :cond_d
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v0, :cond_10

    .line 314
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v0, :cond_f

    .line 315
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result v0

    move-object v3, p0

    check-cast v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result v3

    if-ne v0, v3, :cond_e

    goto :goto_4

    :cond_e
    const/4 v1, 0x0

    :goto_4
    return v1

    .line 318
    :cond_f
    return v2

    .line 322
    :cond_10
    return v2
.end method

.method private static testNumericCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;Ljava/lang/String;)Z
    .locals 9
    .param p0, "valueEval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "op"    # Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;
    .param p2, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 338
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 339
    return v1

    .line 340
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v2

    .line 343
    .local v2, "value":D
    const-wide/16 v4, 0x0

    .line 345
    .local v4, "conditionValue":D
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .local v0, "intValue":I
    int-to-double v4, v0

    .line 353
    .end local v0    # "intValue":I
    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v4, v6

    .line 352
    nop

    .line 355
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    invoke-static {v2, v3, v4, v5}, Lorg/apache/poi/ss/util/NumberComparer;->compare(DD)I

    move-result v0

    .line 356
    .local v0, "result":I
    sget-object v6, Lorg/apache/poi/ss/formula/functions/DStarRunner$1;->$SwitchMap$org$apache$poi$ss$formula$functions$DStarRunner$operator:[I

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_9

    const/4 v8, 0x2

    if-eq v6, v8, :cond_7

    const/4 v8, 0x3

    if-eq v6, v8, :cond_5

    const/4 v8, 0x4

    if-eq v6, v8, :cond_3

    const/4 v8, 0x5

    if-eq v6, v8, :cond_1

    .line 368
    return v1

    .line 366
    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 364
    :cond_3
    if-gtz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 362
    :cond_5
    if-gez v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1

    .line 360
    :cond_7
    if-ltz v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1

    .line 358
    :cond_9
    if-lez v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1

    .line 350
    .local v0, "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 351
    .local v1, "e2":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v7, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v6, v7}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v6
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "database"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "filterColumn"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "conditionDatabase"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 65
    instance-of v0, p3, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v0, :cond_6

    instance-of v0, p5, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 68
    :cond_0
    move-object v0, p3

    check-cast v0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    .line 69
    .local v0, "db":Lorg/apache/poi/ss/formula/eval/AreaEval;
    move-object v1, p5

    check-cast v1, Lorg/apache/poi/ss/formula/eval/AreaEval;

    .line 72
    .local v1, "cdb":Lorg/apache/poi/ss/formula/eval/AreaEval;
    :try_start_0
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_2

    move-object p4, v2

    .line 75
    nop

    .line 79
    :try_start_1
    invoke-static {p4, v0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getColumnForName(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)I

    move-result v2
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    .local v2, "fc":I
    nop

    .line 84
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 85
    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v3

    .line 89
    :cond_1
    const/4 v3, 0x0

    .line 90
    .local v3, "algorithm":Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;
    sget-object v4, Lorg/apache/poi/ss/formula/functions/DStarRunner$1;->$SwitchMap$org$apache$poi$ss$formula$functions$DStarRunner$DStarAlgorithmEnum:[I

    iget-object v5, p0, Lorg/apache/poi/ss/formula/functions/DStarRunner;->algoType:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 92
    new-instance v4, Lorg/apache/poi/ss/formula/functions/DMin;

    invoke-direct {v4}, Lorg/apache/poi/ss/formula/functions/DMin;-><init>()V

    move-object v3, v4

    goto :goto_0

    .line 94
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected algorithm type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/ss/formula/functions/DStarRunner;->algoType:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " encountered."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 91
    :cond_3
    new-instance v4, Lorg/apache/poi/ss/formula/functions/DGet;

    invoke-direct {v4}, Lorg/apache/poi/ss/formula/functions/DGet;-><init>()V

    move-object v3, v4

    .line 98
    :goto_0
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v4

    .line 99
    .local v4, "height":I
    const/4 v5, 0x1

    .local v5, "row":I
    :goto_1
    if-ge v5, v4, :cond_5

    .line 100
    const/4 v6, 0x1

    .line 102
    .local v6, "matches":Z
    :try_start_2
    invoke-static {v0, v5, v1}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->fullfillsConditions(Lorg/apache/poi/ss/formula/eval/AreaEval;ILorg/apache/poi/ss/formula/eval/AreaEval;)Z

    move-result v7
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_0

    move v6, v7

    .line 106
    nop

    .line 108
    if-eqz v6, :cond_4

    .line 109
    invoke-static {v0, v5, v2}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->resolveReference(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v7

    .line 111
    .local v7, "currentValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-interface {v3, v7}, Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;->processMatch(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v8

    .line 112
    .local v8, "shouldContinue":Z
    if-nez v8, :cond_4

    .line 113
    goto :goto_2

    .line 99
    .end local v6    # "matches":Z
    .end local v7    # "currentValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v8    # "shouldContinue":Z
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 104
    .restart local v6    # "matches":Z
    :catch_0
    move-exception v7

    .line 105
    .local v7, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v8

    .line 119
    .end local v5    # "row":I
    .end local v6    # "matches":Z
    .end local v7    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :cond_5
    :goto_2
    invoke-interface {v3}, Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;->getResult()Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    return-object v5

    .line 81
    .end local v2    # "fc":I
    .end local v3    # "algorithm":Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;
    .end local v4    # "height":I
    :catch_1
    move-exception v2

    const/4 v3, 0x0

    .line 82
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .local v3, "fc":I
    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v4

    .line 73
    .end local v2    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .end local v3    # "fc":I
    :catch_2
    move-exception v2

    .line 74
    .restart local v2    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    return-object v3

    .line 66
    .end local v0    # "db":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .end local v1    # "cdb":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .end local v2    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :cond_6
    :goto_3
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0
.end method

.method public final evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .line 54
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 55
    const/4 v0, 0x0

    aget-object v4, p1, v0

    const/4 v0, 0x1

    aget-object v5, p1, v0

    const/4 v0, 0x2

    aget-object v6, p1, v0

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0
.end method
