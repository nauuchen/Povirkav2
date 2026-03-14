.class public abstract Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;
.super Ljava/lang/Object;
.source "MultiOperandNumericFunction.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_NUM_OPERANDS:I

.field static final EMPTY_DOUBLE_ARRAY:[D


# instance fields
.field private final _isBlankCounted:Z

.field private final _isReferenceBoolCounted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [D

    sput-object v0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->EMPTY_DOUBLE_ARRAY:[D

    .line 85
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxFunctionArgs()I

    move-result v0

    sput v0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->DEFAULT_MAX_NUM_OPERANDS:I

    return-void
.end method

.method protected constructor <init>(ZZ)V
    .locals 0
    .param p1, "isReferenceBoolCounted"    # Z
    .param p2, "isBlankCounted"    # Z

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->_isReferenceBoolCounted:Z

    .line 46
    iput-boolean p2, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->_isBlankCounted:Z

    .line 47
    return-void
.end method

.method private collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;ZLorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;)V
    .locals 4
    .param p1, "ve"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "isViaReference"    # Z
    .param p3, "temp"    # Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 183
    if-eqz p1, :cond_a

    .line 186
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v0, :cond_2

    .line 187
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->_isReferenceBoolCounted:Z

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 189
    .local v0, "boolEval":Lorg/apache/poi/ss/formula/eval/BoolEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getNumberValue()D

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->add(D)V

    .line 191
    .end local v0    # "boolEval":Lorg/apache/poi/ss/formula/eval/BoolEval;
    :cond_1
    return-void

    .line 193
    :cond_2
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v0, :cond_3

    .line 194
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    .line 195
    .local v0, "ne":Lorg/apache/poi/ss/formula/eval/NumericValueEval;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->add(D)V

    .line 196
    return-void

    .line 198
    .end local v0    # "ne":Lorg/apache/poi/ss/formula/eval/NumericValueEval;
    :cond_3
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    if-eqz v0, :cond_6

    .line 199
    if-eqz p2, :cond_4

    .line 201
    return-void

    .line 203
    :cond_4
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/StringValueEval;->getStringValue()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 205
    .local v1, "d":Ljava/lang/Double;
    if-eqz v1, :cond_5

    .line 208
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->add(D)V

    .line 209
    return-void

    .line 206
    :cond_5
    new-instance v2, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v2

    .line 211
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "d":Ljava/lang/Double;
    :cond_6
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-nez v0, :cond_9

    .line 214
    sget-object v0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p1, v0, :cond_8

    .line 215
    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->_isBlankCounted:Z

    if-eqz v0, :cond_7

    .line 216
    const-wide/16 v0, 0x0

    invoke-virtual {p3, v0, v1}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->add(D)V

    .line 218
    :cond_7
    return-void

    .line 220
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ValueEval type passed for conversion: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_9
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    .line 184
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ve must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private collectValues(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;)V
    .locals 9
    .param p1, "operand"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "temp"    # Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 145
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ThreeDEval;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 146
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ThreeDEval;

    .line 147
    .local v0, "ae":Lorg/apache/poi/ss/formula/ThreeDEval;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/ThreeDEval;->getFirstSheetIndex()I

    move-result v2

    .local v2, "sIx":I
    :goto_0
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/ThreeDEval;->getLastSheetIndex()I

    move-result v3

    if-gt v2, v3, :cond_3

    .line 148
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/ThreeDEval;->getWidth()I

    move-result v3

    .line 149
    .local v3, "width":I
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/ThreeDEval;->getHeight()I

    move-result v4

    .line 150
    .local v4, "height":I
    const/4 v5, 0x0

    .local v5, "rrIx":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 151
    const/4 v6, 0x0

    .local v6, "rcIx":I
    :goto_2
    if-ge v6, v3, :cond_1

    .line 152
    invoke-interface {v0, v2, v5, v6}, Lorg/apache/poi/ss/formula/ThreeDEval;->getValue(III)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v7

    .line 153
    .local v7, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->isSubtotalCounted()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {v0, v5, v6}, Lorg/apache/poi/ss/formula/ThreeDEval;->isSubTotal(II)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_3

    .line 154
    :cond_0
    invoke-direct {p0, v7, v1, p2}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;ZLorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;)V

    .line 151
    .end local v7    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 150
    .end local v6    # "rcIx":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 147
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "rrIx":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v2    # "sIx":I
    :cond_3
    return-void

    .line 160
    .end local v0    # "ae":Lorg/apache/poi/ss/formula/ThreeDEval;
    :cond_4
    instance-of v0, p1, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v0, :cond_8

    .line 161
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/TwoDEval;

    .line 162
    .local v0, "ae":Lorg/apache/poi/ss/formula/TwoDEval;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v2

    .line 163
    .local v2, "width":I
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v3

    .line 164
    .local v3, "height":I
    const/4 v4, 0x0

    .local v4, "rrIx":I
    :goto_4
    if-ge v4, v3, :cond_7

    .line 165
    const/4 v5, 0x0

    .local v5, "rcIx":I
    :goto_5
    if-ge v5, v2, :cond_6

    .line 166
    invoke-interface {v0, v4, v5}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    .line 167
    .local v6, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->isSubtotalCounted()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {v0, v4, v5}, Lorg/apache/poi/ss/formula/TwoDEval;->isSubTotal(II)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_6

    .line 168
    :cond_5
    invoke-direct {p0, v6, v1, p2}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;ZLorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;)V

    .line 165
    .end local v6    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 164
    .end local v5    # "rcIx":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 171
    .end local v4    # "rrIx":I
    :cond_7
    return-void

    .line 173
    .end local v0    # "ae":Lorg/apache/poi/ss/formula/TwoDEval;
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_8
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_a

    .line 174
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 175
    .local v0, "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v2

    .local v2, "sIx":I
    :goto_7
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getLastSheetIndex()I

    move-result v3

    if-gt v2, v3, :cond_9

    .line 176
    invoke-interface {v0, v2}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    invoke-direct {p0, v3, v1, p2}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;ZLorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;)V

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 178
    .end local v2    # "sIx":I
    :cond_9
    return-void

    .line 180
    .end local v0    # "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;ZLorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;)V

    .line 181
    return-void
.end method


# virtual methods
.method protected abstract evaluate([D)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation
.end method

.method public final evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcCellRow"    # I
    .param p3, "srcCellCol"    # I

    .line 91
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->getNumberArray([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object v2

    .line 92
    .local v2, "values":[D
    invoke-virtual {p0, v2}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->evaluate([D)D

    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v2    # "values":[D
    .local v0, "d":D
    nop

    .line 97
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v2

    .line 98
    :cond_1
    :goto_0
    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v2

    .line 93
    .end local v0    # "d":D
    :catch_0
    move-exception v2

    .line 94
    .restart local v0    # "d":D
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    return-object v3
.end method

.method protected getMaxNumOperands()I
    .locals 1

    .line 110
    sget v0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->DEFAULT_MAX_NUM_OPERANDS:I

    return v0
.end method

.method protected final getNumberArray([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D
    .locals 4
    .param p1, "operands"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 123
    array-length v0, p1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->getMaxNumOperands()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 126
    new-instance v0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;-><init>()V

    .line 128
    .local v0, "retval":Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    .local v2, "iSize":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 129
    aget-object v3, p1, v1

    invoke-direct {p0, v3, v0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->collectValues(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->toArray()[D

    move-result-object v1

    return-object v1

    .line 124
    .end local v0    # "retval":Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;
    :cond_1
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v0

    throw v0
.end method

.method public isSubtotalCounted()Z
    .locals 1

    .line 138
    const/4 v0, 0x1

    return v0
.end method
