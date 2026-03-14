.class Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;
.super Ljava/lang/Object;
.source "MultiOperandNumericFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleList"
.end annotation


# instance fields
.field private _array:[D

.field private _count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v0, 0x8

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_array:[D

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_count:I

    .line 58
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 5
    .param p1, "reqSize"    # I

    .line 70
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_array:[D

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 71
    mul-int/lit8 v1, p1, 0x3

    div-int/lit8 v1, v1, 0x2

    .line 72
    .local v1, "newSize":I
    new-array v2, v1, [D

    .line 73
    .local v2, "newArr":[D
    iget v3, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_count:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iput-object v2, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_array:[D

    .line 76
    .end local v1    # "newSize":I
    .end local v2    # "newArr":[D
    :cond_0
    return-void
.end method


# virtual methods
.method public add(D)V
    .locals 2
    .param p1, "value"    # D

    .line 79
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_count:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->ensureCapacity(I)V

    .line 80
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_array:[D

    iget v1, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_count:I

    aput-wide p1, v0, v1

    .line 81
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_count:I

    .line 82
    return-void
.end method

.method public toArray()[D
    .locals 4

    .line 61
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_count:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 62
    sget-object v0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->EMPTY_DOUBLE_ARRAY:[D

    return-object v0

    .line 64
    :cond_0
    new-array v1, v0, [D

    .line 65
    .local v1, "result":[D
    iget-object v2, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_array:[D

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    return-object v1
.end method
