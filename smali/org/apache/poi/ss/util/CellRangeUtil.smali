.class public final Lorg/apache/poi/ss/util/CellRangeUtil;
.super Ljava/lang/Object;
.source "CellRangeUtil.java"


# static fields
.field public static final ENCLOSES:I = 0x4

.field public static final INSIDE:I = 0x3

.field public static final NO_INTERSECTION:I = 0x1

.field public static final OVERLAP:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static contains(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Z
    .locals 2
    .param p0, "crA"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p1, "crB"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 192
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellRangeUtil;->le(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellRangeUtil;->ge(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellRangeUtil;->le(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellRangeUtil;->ge(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static createEnclosingCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 5
    .param p0, "crA"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p1, "crB"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 232
    if-nez p1, :cond_0

    .line 233
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0

    .line 236
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellRangeUtil;->lt(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 237
    .local v0, "minRow":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellRangeUtil;->gt(II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    .line 238
    .local v1, "maxRow":I
    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/poi/ss/util/CellRangeUtil;->lt(II)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    .line 239
    .local v2, "minCol":I
    :goto_2
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/poi/ss/util/CellRangeUtil;->gt(II)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v3

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v3

    .line 241
    .local v3, "maxCol":I
    :goto_3
    new-instance v4, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    return-object v4
.end method

.method private static ge(II)Z
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 273
    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellRangeUtil;->lt(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static gt(II)Z
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 265
    invoke-static {p1, p0}, Lorg/apache/poi/ss/util/CellRangeUtil;->lt(II)Z

    move-result v0

    return v0
.end method

.method public static hasExactSharedBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Z
    .locals 8
    .param p0, "crA"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p1, "crB"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 205
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 206
    .local v0, "oFirstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    .line 207
    .local v1, "oLastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    .line 208
    .local v2, "oFirstCol":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v3

    .line 210
    .local v3, "oLastCol":I
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v4

    sub-int/2addr v4, v6

    if-eq v4, v1, :cond_1

    :cond_0
    if-lez v0, :cond_3

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v7

    if-ne v4, v7, :cond_3

    .line 214
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v4

    if-ne v4, v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    if-ne v4, v3, :cond_2

    const/4 v5, 0x1

    :cond_2
    return v5

    .line 217
    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v4

    sub-int/2addr v4, v6

    if-eq v4, v3, :cond_5

    :cond_4
    if-lez v2, :cond_7

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    add-int/lit8 v7, v2, -0x1

    if-ne v4, v7, :cond_7

    .line 221
    :cond_5
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v4

    if-ne v4, v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v4

    if-ne v4, v1, :cond_6

    const/4 v5, 0x1

    :cond_6
    return v5

    .line 223
    :cond_7
    return v5
.end method

.method public static intersect(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)I
    .locals 5
    .param p0, "crA"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p1, "crB"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 57
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 58
    .local v0, "firstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    .line 59
    .local v1, "lastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    .line 60
    .local v2, "firstCol":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v3

    .line 62
    .local v3, "lastCol":I
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v4

    invoke-static {v4, v1}, Lorg/apache/poi/ss/util/CellRangeUtil;->gt(II)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v4

    invoke-static {v4, v0}, Lorg/apache/poi/ss/util/CellRangeUtil;->lt(II)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v4

    invoke-static {v4, v3}, Lorg/apache/poi/ss/util/CellRangeUtil;->gt(II)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    invoke-static {v4, v2}, Lorg/apache/poi/ss/util/CellRangeUtil;->lt(II)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellRangeUtil;->contains(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    const/4 v4, 0x3

    return v4

    .line 73
    :cond_1
    invoke-static {p1, p0}, Lorg/apache/poi/ss/util/CellRangeUtil;->contains(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 75
    const/4 v4, 0x4

    return v4

    .line 79
    :cond_2
    const/4 v4, 0x2

    return v4

    .line 67
    :cond_3
    :goto_0
    const/4 v4, 0x1

    return v4
.end method

.method private static le(II)Z
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 257
    if-eq p0, p1, :cond_1

    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellRangeUtil;->lt(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static lt(II)Z
    .locals 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 249
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    if-ne p1, v2, :cond_2

    :goto_0
    goto :goto_1

    :cond_2
    if-ge p0, p1, :cond_0

    goto :goto_0

    :goto_1
    return v0
.end method

.method private static mergeCellRanges(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation

    .line 104
    .local p0, "cellRangeList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 105
    const/4 v0, 0x0

    .line 108
    .local v0, "somethingGotMerged":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 109
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 112
    .local v3, "range1":Lorg/apache/poi/ss/util/CellRangeAddress;
    add-int/lit8 v4, v2, 0x1

    .local v4, "j":I
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 113
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 115
    .local v5, "range2":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-static {v3, v5}, Lorg/apache/poi/ss/util/CellRangeUtil;->mergeRanges(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v6

    .line 116
    .local v6, "mergeResult":[Lorg/apache/poi/ss/util/CellRangeAddress;
    if-nez v6, :cond_0

    .line 117
    goto :goto_4

    .line 119
    :cond_0
    const/4 v0, 0x1

    .line 121
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-interface {p0, v2, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 123
    add-int/lit8 v7, v4, -0x1

    .end local v4    # "j":I
    .local v7, "j":I
    invoke-interface {p0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 125
    const/4 v4, 0x1

    .local v4, "k":I
    :goto_3
    array-length v8, v6

    if-ge v4, v8, :cond_1

    .line 126
    add-int/lit8 v7, v7, 0x1

    .line 127
    aget-object v8, v6, v4

    invoke-interface {p0, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 125
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    move v4, v7

    .line 112
    .end local v5    # "range2":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v6    # "mergeResult":[Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v7    # "j":I
    .local v4, "j":I
    :goto_4
    add-int/2addr v4, v1

    goto :goto_2

    .line 108
    .end local v3    # "range1":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 131
    .end local v2    # "i":I
    :cond_3
    if-nez v0, :cond_4

    .line 132
    goto :goto_5

    .line 134
    .end local v0    # "somethingGotMerged":Z
    :cond_4
    goto :goto_0

    .line 136
    :cond_5
    :goto_5
    return-object p0
.end method

.method public static mergeCellRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 3
    .param p0, "cellRanges"    # [Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 93
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 94
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object v0

    .line 96
    :cond_0
    invoke-static {p0}, Lorg/apache/poi/ss/util/CellRangeUtil;->toList([Lorg/apache/poi/ss/util/CellRangeAddress;)Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    invoke-static {v0}, Lorg/apache/poi/ss/util/CellRangeUtil;->mergeCellRanges(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 98
    .local v1, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    invoke-static {v1}, Lorg/apache/poi/ss/util/CellRangeUtil;->toArray(Ljava/util/List;)[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    return-object v2
.end method

.method private static mergeRanges(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 5
    .param p0, "range1"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p1, "range2"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 143
    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellRangeUtil;->intersect(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)I

    move-result v0

    .line 144
    .local v0, "x":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 163
    new-array v1, v3, [Lorg/apache/poi/ss/util/CellRangeAddress;

    aput-object p1, v1, v2

    return-object v1

    .line 165
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected intersection result ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_1
    new-array v1, v3, [Lorg/apache/poi/ss/util/CellRangeAddress;

    aput-object p0, v1, v2

    return-object v1

    .line 157
    :cond_2
    return-object v1

    .line 148
    :cond_3
    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellRangeUtil;->hasExactSharedBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 149
    new-array v1, v3, [Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellRangeUtil;->createEnclosingCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v3

    aput-object v3, v1, v2

    return-object v1

    .line 152
    :cond_4
    return-object v1
.end method

.method private static toArray(Ljava/util/List;)[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;)[",
            "Lorg/apache/poi/ss/util/CellRangeAddress;"
        }
    .end annotation

    .line 169
    .local p0, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 170
    .local v0, "result":[Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 171
    return-object v0
.end method

.method private static toList([Lorg/apache/poi/ss/util/CellRangeAddress;)Ljava/util/List;
    .locals 5
    .param p0, "temp"    # [Lorg/apache/poi/ss/util/CellRangeAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    move-object v1, p0

    .local v1, "arr$":[Lorg/apache/poi/ss/util/CellRangeAddress;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 176
    .local v4, "range":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v4    # "range":Lorg/apache/poi/ss/util/CellRangeAddress;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "arr$":[Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    return-object v0
.end method
