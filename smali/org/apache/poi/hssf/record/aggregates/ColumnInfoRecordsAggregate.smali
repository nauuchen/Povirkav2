.class public final Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "ColumnInfoRecordsAggregate.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate$CIRComparator;
    }
.end annotation


# instance fields
.field private final records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/ColumnInfoRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 4
    .param p1, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .line 58
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;-><init>()V

    .line 60
    const/4 v0, 0x1

    .line 61
    .local v0, "isInOrder":Z
    const/4 v1, 0x0

    .line 62
    .local v1, "cirPrev":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    if-ne v2, v3, :cond_1

    .line 63
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 64
    .local v2, "cir":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    if-eqz v1, :cond_0

    invoke-static {v1, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate$CIRComparator;->compareColInfos(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)I

    move-result v3

    if-lez v3, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :cond_0
    move-object v1, v2

    .line 69
    .end local v2    # "cir":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    goto :goto_0

    .line 70
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    .line 73
    if-nez v0, :cond_2

    .line 74
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    sget-object v3, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate$CIRComparator;->instance:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 76
    :cond_2
    return-void

    .line 71
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "No column info records found"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private attemptMergeColInfoRecords(I)V
    .locals 4
    .param p1, "colInfoIx"    # I

    .line 433
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 434
    .local v0, "nRecords":I
    if-ltz p1, :cond_2

    if-ge p1, v0, :cond_2

    .line 438
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v1

    .line 439
    .local v1, "currentCol":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    add-int/lit8 v2, p1, 0x1

    .line 440
    .local v2, "nextIx":I
    if-ge v2, v0, :cond_0

    .line 441
    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->mergeColInfoRecords(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 442
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 445
    :cond_0
    if-lez p1, :cond_1

    .line 446
    add-int/lit8 v3, p1, -0x1

    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->mergeColInfoRecords(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 447
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 450
    :cond_1
    return-void

    .line 435
    .end local v1    # "currentCol":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .end local v2    # "nextIx":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "colInfoIx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is out of range (0.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static copyColInfo(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .locals 1
    .param p0, "ci"    # Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 295
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->clone()Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method private findColInfoIdx(II)I
    .locals 3
    .param p1, "columnIx"    # I
    .param p2, "fromColInfoIdx"    # I

    .line 409
    if-ltz p1, :cond_4

    .line 412
    if-ltz p2, :cond_3

    .line 416
    move v0, p2

    .local v0, "k":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 417
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v1

    .line 418
    .local v1, "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->containsColumn(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    return v0

    .line 421
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v2

    if-le v2, p1, :cond_1

    .line 422
    goto :goto_1

    .line 416
    .end local v1    # "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    .end local v0    # "k":I
    :cond_2
    :goto_1
    const/4 v0, -0x1

    return v0

    .line 413
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIdx parameter out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "column parameter out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findEndOfColumnOutlineGroup(I)I
    .locals 5
    .param p1, "colInfoIndex"    # I

    .line 147
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 148
    .local v0, "columnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v1

    .line 149
    .local v1, "level":I
    move v2, p1

    .line 150
    .local v2, "idx":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 151
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 152
    .local v3, "nextColumnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 153
    goto :goto_1

    .line 155
    :cond_0
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v4

    if-ge v4, v1, :cond_1

    .line 156
    goto :goto_1

    .line 158
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 159
    move-object v0, v3

    .line 160
    .end local v3    # "nextColumnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    goto :goto_0

    .line 161
    :cond_2
    :goto_1
    return v2
.end method

.method private findStartOfColumnOutlineGroup(I)I
    .locals 5
    .param p1, "pIdx"    # I

    .line 127
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 128
    .local v0, "columnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v1

    .line 129
    .local v1, "level":I
    move v2, p1

    .line 130
    .local v2, "idx":I
    :goto_0
    if-eqz v2, :cond_2

    .line 131
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 132
    .local v3, "prevColumnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v3, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    goto :goto_1

    .line 135
    :cond_0
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v4

    if-ge v4, v1, :cond_1

    .line 136
    goto :goto_1

    .line 138
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 139
    move-object v0, v3

    .line 140
    .end local v3    # "prevColumnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    goto :goto_0

    .line 142
    :cond_2
    :goto_1
    return v2
.end method

.method private getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .locals 1
    .param p1, "idx"    # I

    .line 165
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    return-object v0
.end method

.method private insertColumn(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "col"    # Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 100
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 101
    return-void
.end method

.method private isColumnGroupCollapsed(I)Z
    .locals 5
    .param p1, "idx"    # I

    .line 174
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findEndOfColumnOutlineGroup(I)I

    move-result v0

    .line 175
    .local v0, "endOfOutlineGroupIdx":I
    add-int/lit8 v1, v0, 0x1

    .line 176
    .local v1, "nextColInfoIx":I
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 177
    return v3

    .line 179
    :cond_0
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v2

    .line 180
    .local v2, "nextColInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 181
    return v3

    .line 183
    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getCollapsed()Z

    move-result v3

    return v3
.end method

.method private isColumnGroupHiddenByParent(I)Z
    .locals 8
    .param p1, "idx"    # I

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "endLevel":I
    const/4 v1, 0x0

    .line 191
    .local v1, "endHidden":Z
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findEndOfColumnOutlineGroup(I)I

    move-result v2

    .line 192
    .local v2, "endOfOutlineGroupIdx":I
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 193
    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v3

    .line 194
    .local v3, "nextInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v0

    .line 196
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getHidden()Z

    move-result v1

    .line 200
    .end local v3    # "nextInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_0
    const/4 v3, 0x0

    .line 201
    .local v3, "startLevel":I
    const/4 v4, 0x0

    .line 202
    .local v4, "startHidden":Z
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findStartOfColumnOutlineGroup(I)I

    move-result v5

    .line 203
    .local v5, "startOfOutlineGroupIdx":I
    if-lez v5, :cond_1

    .line 204
    add-int/lit8 v6, v5, -0x1

    invoke-direct {p0, v6}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v6

    .line 205
    .local v6, "prevInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-direct {p0, v5}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 206
    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v3

    .line 207
    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getHidden()Z

    move-result v4

    .line 210
    .end local v6    # "prevInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_1
    if-le v0, v3, :cond_2

    .line 211
    return v1

    .line 213
    :cond_2
    return v4
.end method

.method private static mergeColInfoRecords(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z
    .locals 1
    .param p0, "ciA"    # Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .param p1, "ciB"    # Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 456
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->formatMatches(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    .line 458
    const/4 v0, 0x1

    return v0

    .line 460
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1
    .param p0, "ci"    # Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .param p1, "xfStyle"    # Ljava/lang/Short;
    .param p2, "width"    # Ljava/lang/Integer;
    .param p3, "level"    # Ljava/lang/Integer;
    .param p4, "hidden"    # Ljava/lang/Boolean;
    .param p5, "collapsed"    # Ljava/lang/Boolean;

    .line 391
    if-eqz p1, :cond_0

    .line 392
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setXFIndex(I)V

    .line 394
    :cond_0
    if-eqz p2, :cond_1

    .line 395
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setColumnWidth(I)V

    .line 397
    :cond_1
    if-eqz p3, :cond_2

    .line 398
    invoke-virtual {p3}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setOutlineLevel(I)V

    .line 400
    :cond_2
    if-eqz p4, :cond_3

    .line 401
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setHidden(Z)V

    .line 403
    :cond_3
    if-eqz p5, :cond_4

    .line 404
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setCollapsed(Z)V

    .line 406
    :cond_4
    return-void
.end method

.method private setGroupHidden(IIZ)I
    .locals 4
    .param p1, "pIdx"    # I
    .param p2, "level"    # I
    .param p3, "hidden"    # Z

    .line 238
    move v0, p1

    .line 239
    .local v0, "idx":I
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v1

    .line 240
    .local v1, "columnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 241
    invoke-virtual {v1, p3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setHidden(Z)V

    .line 242
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 243
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v2

    .line 244
    .local v2, "nextColumnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 245
    goto :goto_1

    .line 247
    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v3

    if-ge v3, p2, :cond_1

    .line 248
    goto :goto_1

    .line 250
    :cond_1
    move-object v1, v2

    .line 252
    .end local v2    # "nextColumnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v2

    return v2
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->clone()Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;
    .locals 5

    .line 80
    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;-><init>()V

    .line 81
    .local v0, "rec":Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 82
    .local v2, "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    iget-object v3, v0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->clone()Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_0
    return-object v0
.end method

.method public collapseColumn(I)V
    .locals 11
    .param p1, "columnIndex"    # I

    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColInfoIdx(II)I

    move-result v0

    .line 218
    .local v0, "colInfoIx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 219
    return-void

    .line 223
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findStartOfColumnOutlineGroup(I)I

    move-result v1

    .line 224
    .local v1, "groupStartColInfoIx":I
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v2

    .line 227
    .local v2, "columnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setGroupHidden(IIZ)I

    move-result v3

    .line 230
    .local v3, "lastColIx":I
    add-int/lit8 v5, v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 231
    return-void
.end method

.method public expandColumn(I)V
    .locals 12
    .param p1, "columnIndex"    # I

    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColInfoIdx(II)I

    move-result v1

    .line 260
    .local v1, "idx":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 261
    return-void

    .line 265
    :cond_0
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->isColumnGroupCollapsed(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 266
    return-void

    .line 270
    :cond_1
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findStartOfColumnOutlineGroup(I)I

    move-result v2

    .line 271
    .local v2, "startIdx":I
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findEndOfColumnOutlineGroup(I)I

    move-result v3

    .line 280
    .local v3, "endIdx":I
    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v4

    .line 281
    .local v4, "columnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->isColumnGroupHiddenByParent(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 282
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v5

    .line 283
    .local v5, "outlineLevel":I
    move v6, v2

    .local v6, "i":I
    :goto_0
    if-gt v6, v3, :cond_3

    .line 284
    invoke-direct {p0, v6}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v7

    .line 285
    .local v7, "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v8

    if-ne v5, v8, :cond_2

    .line 286
    invoke-virtual {v7, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setHidden(Z)V

    .line 283
    .end local v7    # "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 291
    .end local v5    # "outlineLevel":I
    .end local v6    # "i":I
    :cond_3
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 292
    return-void
.end method

.method public findColumnInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .locals 4
    .param p1, "columnIndex"    # I

    .line 502
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 503
    .local v0, "nInfos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 504
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v2

    .line 505
    .local v2, "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->containsColumn(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    return-object v2

    .line 503
    .end local v2    # "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 509
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMaxOutlineLevel()I
    .locals 5

    .line 512
    const/4 v0, 0x0

    .line 513
    .local v0, "result":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 514
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 515
    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v3

    .line 516
    .local v3, "columnInfoRecord":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 514
    .end local v3    # "columnInfoRecord":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 518
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method getNumColumns()I
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOutlineLevel(I)I
    .locals 2
    .param p1, "columnIndex"    # I

    .line 521
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColumnInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v0

    .line 522
    .local v0, "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v1

    return v1

    .line 525
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public groupColumnRange(IIZ)V
    .locals 11
    .param p1, "fromColumnIx"    # I
    .param p2, "toColumnIx"    # I
    .param p3, "indent"    # Z

    .line 478
    const/4 v0, 0x0

    .line 479
    .local v0, "colInfoSearchStartIdx":I
    move v1, p1

    move v8, v1

    .local v8, "i":I
    :goto_0
    if-gt v8, p2, :cond_2

    .line 480
    const/4 v1, 0x1

    .line 481
    .local v1, "level":I
    invoke-direct {p0, v8, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColInfoIdx(II)I

    move-result v9

    .line 482
    .local v9, "colInfoIdx":I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_1

    .line 483
    invoke-direct {p0, v9}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v1

    .line 484
    if-eqz p3, :cond_0

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 487
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 489
    :goto_1
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 490
    const/4 v3, 0x7

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 491
    add-int/lit8 v3, v9, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v1

    goto :goto_2

    .line 482
    :cond_1
    move v10, v1

    .line 493
    .end local v1    # "level":I
    .local v10, "level":I
    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, v8

    invoke-virtual/range {v1 .. v7}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 479
    .end local v9    # "colInfoIdx":I
    .end local v10    # "level":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 495
    .end local v8    # "i":I
    :cond_2
    return-void
.end method

.method public insertColumn(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)V
    .locals 2
    .param p1, "col"    # Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 91
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    sget-object v1, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate$CIRComparator;->instance:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 93
    return-void
.end method

.method public setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 21
    .param p1, "targetColumnIx"    # I
    .param p2, "xfIndex"    # Ljava/lang/Short;
    .param p3, "width"    # Ljava/lang/Integer;
    .param p4, "level"    # Ljava/lang/Integer;
    .param p5, "hidden"    # Ljava/lang/Boolean;
    .param p6, "collapsed"    # Ljava/lang/Boolean;

    .line 301
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    .line 302
    .local v2, "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    const/4 v3, 0x0

    .line 304
    .local v3, "k":I
    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 305
    iget-object v4, v0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 306
    .local v4, "tci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v4, v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->containsColumn(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 307
    move-object v2, v4

    .line 308
    goto :goto_1

    .line 310
    :cond_0
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v5

    if-le v5, v1, :cond_1

    .line 312
    goto :goto_1

    .line 304
    .end local v4    # "tci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 316
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 318
    new-instance v4, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-direct {v4}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;-><init>()V

    .line 320
    .local v4, "nci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v4, v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    .line 321
    invoke-virtual {v4, v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    .line 322
    move-object v5, v4

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-static/range {v5 .. v10}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 323
    invoke-direct {v0, v3, v4}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->insertColumn(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    .line 324
    invoke-direct {v0, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->attemptMergeColInfoRecords(I)V

    .line 325
    return-void

    .line 328
    .end local v4    # "nci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_4

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getXFIndex()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Short;->shortValue()S

    move-result v7

    if-eq v6, v7, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    move v12, v6

    .line 329
    .local v12, "styleChanged":Z
    if-eqz p3, :cond_5

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getColumnWidth()I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->shortValue()S

    move-result v7

    if-eq v6, v7, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    move v13, v6

    .line 330
    .local v13, "widthChanged":Z
    if-eqz p4, :cond_6

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v6

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_6

    const/4 v6, 0x1

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_4
    move v14, v6

    .line 331
    .local v14, "levelChanged":Z
    if-eqz p5, :cond_7

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getHidden()Z

    move-result v6

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eq v6, v7, :cond_7

    const/4 v6, 0x1

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    move v15, v6

    .line 332
    .local v15, "hiddenChanged":Z
    if-eqz p6, :cond_8

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getCollapsed()Z

    move-result v6

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eq v6, v7, :cond_8

    const/4 v6, 0x1

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    :goto_6
    move/from16 v16, v6

    .line 334
    .local v16, "collapsedChanged":Z
    if-nez v12, :cond_9

    if-nez v13, :cond_9

    if-nez v14, :cond_9

    if-nez v15, :cond_9

    if-eqz v16, :cond_a

    :cond_9
    const/4 v4, 0x1

    :cond_a
    move/from16 v17, v4

    .line 335
    .local v17, "columnChanged":Z
    if-nez v17, :cond_b

    .line 337
    return-void

    .line 340
    :cond_b
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v4

    if-ne v4, v1, :cond_c

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v4

    if-ne v4, v1, :cond_c

    .line 342
    move-object v4, v2

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v4 .. v9}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 343
    invoke-direct {v0, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->attemptMergeColInfoRecords(I)V

    .line 344
    return-void

    .line 347
    :cond_c
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v4

    if-eq v4, v1, :cond_e

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v4

    if-ne v4, v1, :cond_d

    goto :goto_7

    .line 366
    :cond_d
    move-object v4, v2

    .line 367
    .local v4, "ciStart":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-static {v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->copyColInfo(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v11

    .line 368
    .local v11, "ciMid":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-static {v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->copyColInfo(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v10

    .line 369
    .local v10, "ciEnd":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v9

    .line 371
    .local v9, "lastcolumn":I
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v4, v6}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    .line 373
    invoke-virtual {v11, v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    .line 374
    invoke-virtual {v11, v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    .line 375
    move-object v6, v11

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v18, v9

    .end local v9    # "lastcolumn":I
    .local v18, "lastcolumn":I
    move-object/from16 v9, p4

    move-object/from16 v19, v10

    .end local v10    # "ciEnd":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .local v19, "ciEnd":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    move-object/from16 v10, p5

    move-object/from16 v20, v11

    .end local v11    # "ciMid":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .local v20, "ciMid":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    move-object/from16 v11, p6

    invoke-static/range {v6 .. v11}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 376
    add-int/2addr v3, v5

    move-object/from16 v6, v20

    .end local v20    # "ciMid":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .local v6, "ciMid":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-direct {v0, v3, v6}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->insertColumn(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    .line 378
    add-int/lit8 v7, v1, 0x1

    move-object/from16 v8, v19

    .end local v19    # "ciEnd":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .local v8, "ciEnd":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v8, v7}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    .line 379
    move/from16 v7, v18

    .end local v18    # "lastcolumn":I
    .local v7, "lastcolumn":I
    invoke-virtual {v8, v7}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    .line 380
    add-int/2addr v3, v5

    invoke-direct {v0, v3, v8}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->insertColumn(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    goto :goto_9

    .line 350
    .end local v4    # "ciStart":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .end local v6    # "ciMid":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .end local v7    # "lastcolumn":I
    .end local v8    # "ciEnd":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_e
    :goto_7
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v4

    if-ne v4, v1, :cond_f

    .line 351
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    goto :goto_8

    .line 353
    :cond_f
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v4}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    .line 354
    add-int/lit8 v3, v3, 0x1

    .line 356
    :goto_8
    invoke-static {v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->copyColInfo(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v4

    .line 358
    .local v4, "nci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v4, v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    .line 359
    invoke-virtual {v4, v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    .line 360
    move-object v6, v4

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v6 .. v11}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 362
    invoke-direct {v0, v3, v4}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->insertColumn(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    .line 363
    invoke-direct {v0, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->attemptMergeColInfoRecords(I)V

    .line 364
    .end local v4    # "nci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    nop

    .line 384
    :goto_9
    return-void
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 6
    .param p1, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    .line 108
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 109
    .local v0, "nItems":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    const/4 v1, 0x0

    .line 113
    .local v1, "cirPrev":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 114
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 115
    .local v3, "cir":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-interface {p1, v3}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 116
    if-eqz v1, :cond_2

    invoke-static {v1, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate$CIRComparator;->compareColInfos(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)I

    move-result v4

    if-gtz v4, :cond_1

    goto :goto_1

    .line 119
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Column info records are out of order"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 121
    :cond_2
    :goto_1
    move-object v1, v3

    .line 113
    .end local v3    # "cir":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v2    # "i":I
    :cond_3
    return-void
.end method
