.class public Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;
.super Ljava/lang/Object;
.source "ColumnHelper.java"


# instance fields
.field private worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;)V
    .locals 0
    .param p1, "worksheet"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 46
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cleanColumns()V

    .line 47
    return-void
.end method

.method private addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Ljava/util/TreeSet;)V
    .locals 21
    .param p1, "cols"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    .param p2, "newCol"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;",
            "Ljava/util/TreeSet<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p3, "trackedCols":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v2, v3}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getOverlappingCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Ljava/util/TreeSet;)Ljava/util/List;

    move-result-object v4

    .line 85
    .local v4, "overlapping":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 86
    invoke-virtual/range {p0 .. p2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 87
    return-void

    .line 90
    :cond_0
    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z

    .line 91
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    .line 94
    .local v6, "existing":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-direct {v0, v2, v6}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getOverlap(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J

    move-result-object v7

    .line 96
    .local v7, "overlap":[J
    invoke-direct {v0, v1, v6, v7}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;[J)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v8

    .line 97
    .local v8, "overlapCol":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-virtual {v0, v2, v8}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColumnAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    .line 98
    invoke-virtual {v3, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v9

    invoke-interface/range {p2 .. p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-gez v13, :cond_1

    move-object v9, v6

    goto :goto_1

    :cond_1
    move-object v9, v2

    .line 102
    .local v9, "beforeCol":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    :goto_1
    const/4 v10, 0x2

    new-array v11, v10, [J

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v12

    invoke-interface/range {p2 .. p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    const/4 v14, 0x0

    aput-wide v12, v11, v14

    aget-wide v12, v7, v14

    const-wide/16 v15, 0x1

    sub-long/2addr v12, v15

    const/16 v17, 0x1

    aput-wide v12, v11, v17

    .line 105
    .local v11, "before":[J
    aget-wide v12, v11, v14

    aget-wide v18, v11, v17

    cmp-long v20, v12, v18

    if-gtz v20, :cond_2

    .line 106
    invoke-direct {v0, v1, v9, v11}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;[J)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_2
    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v12

    invoke-interface/range {p2 .. p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v18

    cmp-long v20, v12, v18

    if-lez v20, :cond_3

    move-object v12, v6

    goto :goto_2

    :cond_3
    move-object v12, v2

    .line 111
    .local v12, "afterCol":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    :goto_2
    new-array v10, v10, [J

    aget-wide v18, v7, v17

    add-long v18, v18, v15

    aput-wide v18, v10, v14

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v14

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    .end local v4    # "overlapping":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .local v16, "overlapping":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;>;"
    .local v18, "i$":Ljava/util/Iterator;
    invoke-interface/range {p2 .. p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v4

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    aput-wide v4, v10, v17

    move-object v4, v10

    .line 113
    .local v4, "after":[J
    const/4 v5, 0x0

    aget-wide v13, v4, v5

    aget-wide v19, v4, v17

    cmp-long v5, v13, v19

    if-gtz v5, :cond_4

    .line 114
    invoke-direct {v0, v1, v12, v4}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;[J)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v4    # "after":[J
    .end local v6    # "existing":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .end local v7    # "overlap":[J
    .end local v8    # "overlapCol":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .end local v9    # "beforeCol":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .end local v11    # "before":[J
    .end local v12    # "afterCol":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    :cond_4
    move-object/from16 v4, v16

    move-object/from16 v5, v18

    goto/16 :goto_0

    .line 117
    .end local v16    # "overlapping":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;>;"
    .end local v18    # "i$":Ljava/util/Iterator;
    .local v4, "overlapping":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;>;"
    :cond_5
    return-void
.end method

.method private cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;[J)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .locals 3
    .param p1, "cols"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    .param p2, "col"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .param p3, "newRange"    # [J

    .line 120
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    .line 121
    .local v0, "cloneCol":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    const/4 v1, 0x0

    aget-wide v1, p3, v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    .line 122
    const/4 v1, 0x1

    aget-wide v1, p3, v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    .line 123
    return-object v0
.end method

.method private columnExists(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;JJ)Z
    .locals 7
    .param p1, "cols"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    .param p2, "min"    # J
    .param p4, "max"    # J

    .line 313
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 314
    .local v3, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v4

    cmp-long v6, v4, p2

    if-nez v6, :cond_0

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v4

    cmp-long v6, v4, p4

    if-nez v6, :cond_0

    .line 315
    const/4 v4, 0x1

    return v4

    .line 313
    .end local v3    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private columnExists1Based(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;J)Z
    .locals 7
    .param p1, "cols"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    .param p2, "index1"    # J

    .line 242
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 243
    .local v3, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v4

    cmp-long v6, v4, p2

    if-nez v6, :cond_0

    .line 244
    const/4 v4, 0x1

    return v4

    .line 242
    .end local v3    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getOverlap(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J
    .locals 1
    .param p1, "col1"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .param p2, "col2"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    .line 127
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getOverlappingRange(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J

    move-result-object v0

    return-object v0
.end method

.method private getOverlappingCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Ljava/util/TreeSet;)Ljava/util/List;
    .locals 6
    .param p1, "newCol"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;",
            "Ljava/util/TreeSet<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;",
            ">;"
        }
    .end annotation

    .line 131
    .local p2, "trackedCols":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;>;"
    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    .line 132
    .local v0, "lower":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    if-nez v0, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->overlaps(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v1

    .line 133
    .local v1, "potentiallyOverlapping":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;>;"
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v2, "overlapping":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;>;"
    invoke-interface {v1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    .line 135
    .local v4, "existing":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-direct {p0, p1, v4}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->overlaps(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 136
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 141
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "existing":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    :cond_1
    return-object v2
.end method

.method private getOverlappingRange(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J
    .locals 2
    .param p1, "col1"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .param p2, "col2"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    .line 149
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->toRange(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J

    move-result-object v0

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->toRange(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/xssf/util/NumericRanges;->getOverlappingRange([J[J)[J

    move-result-object v0

    return-object v0
.end method

.method private insertCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;JJ[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .locals 9
    .param p1, "cols"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    .param p2, "min"    # J
    .param p4, "max"    # J
    .param p6, "colsWithAttributes"    # [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    .line 215
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->insertCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;JJ[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;ZLorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    return-object v0
.end method

.method private insertCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;JJ[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;ZLorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .locals 5
    .param p1, "cols"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    .param p2, "min"    # J
    .param p4, "max"    # J
    .param p6, "colsWithAttributes"    # [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .param p7, "ignoreExistsCheck"    # Z
    .param p8, "overrideColumn"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    .line 220
    if-nez p7, :cond_1

    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->columnExists(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;JJ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 221
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->insertNewCol(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    .line 222
    .local v0, "newCol":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-interface {v0, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    .line 223
    invoke-interface {v0, p4, p5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    .line 224
    move-object v1, p6

    .local v1, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 225
    .local v4, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-virtual {p0, v4, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColumnAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    .line 224
    .end local v4    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 227
    .end local v1    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_2
    if-eqz p8, :cond_3

    invoke-virtual {p0, p8, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColumnAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    .line 228
    :cond_3
    return-object v0
.end method

.method private overlaps(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z
    .locals 2
    .param p1, "col1"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .param p2, "col2"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    .line 145
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->toRange(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J

    move-result-object v0

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->toRange(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/xssf/util/NumericRanges;->getOverlappingType([J[J)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static sortColumns(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;)V
    .locals 2
    .param p0, "newCols"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    .line 157
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    .line 158
    .local v0, "colArray":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    sget-object v1, Lorg/apache/poi/xssf/util/CTColComparator;->BY_MIN_MAX:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 159
    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->setColArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    .line 160
    return-void
.end method

.method private toRange(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J
    .locals 4
    .param p1, "col"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    .line 153
    const/4 v0, 0x2

    new-array v0, v0, [J

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v1

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    return-object v0
.end method


# virtual methods
.method public addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    .locals 2
    .param p1, "cols"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    .param p2, "newCol"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    .line 75
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lorg/apache/poi/xssf/util/CTColComparator;->BY_MIN_MAX:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 77
    .local v0, "trackedCols":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;>;"
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Ljava/util/TreeSet;)V

    .line 79
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->setColArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    .line 80
    return-object p1
.end method

.method public cleanColumns()V
    .locals 10

    .line 50
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lorg/apache/poi/xssf/util/CTColComparator;->BY_MIN_MAX:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 51
    .local v0, "trackedCols":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;>;"
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v1

    .line 52
    .local v1, "newCols":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v2

    .line 53
    .local v2, "colsArray":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    const/4 v3, 0x0

    .line 54
    .local v3, "i":I
    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 55
    aget-object v4, v2, v3

    .line 56
    .local v4, "cols":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v5

    .line 57
    .local v5, "colArray":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    move-object v6, v5

    .local v6, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    array-length v7, v6

    .local v7, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    .line 58
    .local v9, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-direct {p0, v1, v9, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Ljava/util/TreeSet;)V

    .line 57
    .end local v9    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 54
    .end local v4    # "cols":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    .end local v5    # "colArray":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .end local v6    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .end local v7    # "len$":I
    .end local v8    # "i$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_1
    add-int/lit8 v4, v3, -0x1

    .local v4, "y":I
    :goto_2
    if-ltz v4, :cond_2

    .line 62
    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v5, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->removeCols(I)V

    .line 61
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 65
    .end local v4    # "y":I
    :cond_2
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v4

    new-array v4, v4, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    invoke-interface {v1, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->setColArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    .line 66
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewCols()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    .line 67
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->setColsArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;)V

    .line 68
    return-void
.end method

.method public cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .locals 3
    .param p1, "cols"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    .param p2, "col"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    .line 163
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->addNewCol()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    .line 164
    .local v0, "newCol":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    .line 165
    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    .line 166
    invoke-virtual {p0, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColumnAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    .line 167
    return-object v0
.end method

.method public columnExists(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;J)Z
    .locals 2
    .param p1, "cols"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    .param p2, "index"    # J

    .line 238
    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->columnExists1Based(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;J)Z

    move-result v0

    return v0
.end method

.method public getColDefaultStyle(J)I
    .locals 2
    .param p1, "index"    # J

    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getStyle()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    .line 309
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .locals 2
    .param p1, "index"    # J
    .param p3, "splitColumns"    # Z

    .line 174
    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    return-object v0
.end method

.method public getColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .locals 26
    .param p1, "index1"    # J
    .param p3, "splitColumns"    # Z

    .line 183
    move-wide/from16 v0, p1

    move-object/from16 v9, p0

    iget-object v2, v9, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v11

    .line 188
    .local v11, "cols":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    invoke-interface {v11}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v12

    .line 190
    .local v12, "colArray":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    move-object v13, v12

    .local v13, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    array-length v14, v13

    .local v14, "len$":I
    const/4 v2, 0x0

    move v15, v2

    .local v15, "i$":I
    :goto_0
    if-ge v15, v14, :cond_4

    aget-object v8, v13, v15

    .line 191
    .local v8, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v16

    .line 192
    .local v16, "colMin":J
    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v18

    .line 193
    .local v18, "colMax":J
    cmp-long v2, v16, v0

    if-gtz v2, :cond_3

    cmp-long v2, v18, v0

    if-ltz v2, :cond_3

    .line 194
    if-eqz p3, :cond_2

    .line 195
    const-wide/16 v20, 0x1

    const/4 v6, 0x1

    cmp-long v2, v16, v0

    if-gez v2, :cond_0

    .line 196
    sub-long v22, v0, v20

    new-array v7, v6, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    aput-object v8, v7, v10

    move-object/from16 v2, p0

    move-object v3, v11

    move-wide/from16 v4, v16

    move-object/from16 v24, v7

    const/4 v10, 0x1

    move-wide/from16 v6, v22

    move-object/from16 v25, v8

    .end local v8    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .local v25, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    move-object/from16 v8, v24

    invoke-direct/range {v2 .. v8}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->insertCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;JJ[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    goto :goto_1

    .line 195
    .end local v25    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .restart local v8    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    :cond_0
    move-object/from16 v25, v8

    const/4 v10, 0x1

    .line 198
    .end local v8    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .restart local v25    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    :goto_1
    cmp-long v2, v18, v0

    if-lez v2, :cond_1

    .line 199
    add-long v4, v0, v20

    new-array v8, v10, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-object/from16 v10, v25

    const/4 v2, 0x0

    .end local v25    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .local v10, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    aput-object v10, v8, v2

    move-object/from16 v2, p0

    move-object v3, v11

    move-wide/from16 v6, v18

    invoke-direct/range {v2 .. v8}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->insertCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;JJ[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    goto :goto_2

    .line 198
    .end local v10    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .restart local v25    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    :cond_1
    move-object/from16 v10, v25

    .line 201
    .end local v25    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .restart local v10    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    :goto_2
    invoke-interface {v10, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    .line 202
    invoke-interface {v10, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    goto :goto_3

    .line 194
    .end local v10    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .restart local v8    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    :cond_2
    move-object v10, v8

    .line 204
    .end local v8    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .restart local v10    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    :goto_3
    return-object v10

    .line 193
    .end local v10    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .restart local v8    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    :cond_3
    move-object v10, v8

    const/4 v2, 0x0

    .line 190
    .end local v8    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .end local v16    # "colMin":J
    .end local v18    # "colMax":J
    add-int/lit8 v15, v15, 0x1

    const/4 v10, 0x0

    goto :goto_0

    .line 207
    .end local v13    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .end local v14    # "len$":I
    .end local v15    # "i$":I
    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method public getIndexOfColumn(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)I
    .locals 11
    .param p1, "cols"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    .param p2, "searchCol"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    .line 322
    const/4 v0, -0x1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 323
    :cond_0
    const/4 v1, 0x0

    .line 324
    .local v1, "i":I
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v2

    .local v2, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 325
    .local v5, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v6

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-nez v10, :cond_1

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v6

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-nez v10, :cond_1

    .line 326
    return v1

    .line 328
    :cond_1
    nop

    .end local v5    # "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    add-int/lit8 v1, v1, 0x1

    .line 324
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 330
    .end local v2    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_2
    return v0

    .line 322
    .end local v1    # "i":I
    :cond_3
    :goto_1
    return v0
.end method

.method protected getOrCreateColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .locals 3
    .param p1, "index1"    # J
    .param p3, "splitColumns"    # Z

    .line 286
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    .line 287
    .local v0, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    if-nez v0, :cond_0

    .line 288
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->addNewCol()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    .line 289
    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    .line 290
    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    .line 292
    :cond_0
    return-object v0
.end method

.method public setColBestFit(JZ)V
    .locals 3
    .param p1, "index"    # J
    .param p3, "bestFit"    # Z

    .line 263
    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getOrCreateColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    .line 264
    .local v0, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-interface {v0, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setBestFit(Z)V

    .line 265
    return-void
.end method

.method public setColDefaultStyle(JI)V
    .locals 3
    .param p1, "index"    # J
    .param p3, "styleId"    # I

    .line 300
    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getOrCreateColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    .line 301
    .local v0, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    int-to-long v1, p3

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setStyle(J)V

    .line 302
    return-void
.end method

.method public setColDefaultStyle(JLorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 1
    .param p1, "index"    # J
    .param p3, "style"    # Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 296
    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndex()S

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColDefaultStyle(JI)V

    .line 297
    return-void
.end method

.method public setColHidden(JZ)V
    .locals 3
    .param p1, "index"    # J
    .param p3, "hidden"    # Z

    .line 277
    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getOrCreateColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    .line 278
    .local v0, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-interface {v0, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setHidden(Z)V

    .line 279
    return-void
.end method

.method public setColWidth(JD)V
    .locals 3
    .param p1, "index"    # J
    .param p3, "width"    # D

    .line 272
    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getOrCreateColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    .line 273
    .local v0, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-interface {v0, p3, p4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setWidth(D)V

    .line 274
    return-void
.end method

.method public setColumnAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V
    .locals 2
    .param p1, "fromCol"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .param p2, "toCol"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    .line 251
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetBestFit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getBestFit()Z

    move-result v0

    invoke-interface {p2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setBestFit(Z)V

    .line 252
    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetCustomWidth()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getCustomWidth()Z

    move-result v0

    invoke-interface {p2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setCustomWidth(Z)V

    .line 253
    :cond_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetHidden()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getHidden()Z

    move-result v0

    invoke-interface {p2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setHidden(Z)V

    .line 254
    :cond_2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getStyle()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setStyle(J)V

    .line 255
    :cond_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetWidth()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getWidth()D

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setWidth(D)V

    .line 256
    :cond_4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetCollapsed()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getCollapsed()Z

    move-result v0

    invoke-interface {p2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setCollapsed(Z)V

    .line 257
    :cond_5
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetPhonetic()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getPhonetic()Z

    move-result v0

    invoke-interface {p2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setPhonetic(Z)V

    .line 258
    :cond_6
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetOutlineLevel()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v0

    invoke-interface {p2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setOutlineLevel(S)V

    .line 259
    :cond_7
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetCollapsed()Z

    move-result v0

    invoke-interface {p2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setCollapsed(Z)V

    .line 260
    return-void
.end method

.method public setCustomWidth(JZ)V
    .locals 3
    .param p1, "index"    # J
    .param p3, "bestFit"    # Z

    .line 267
    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getOrCreateColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    .line 268
    .local v0, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    invoke-interface {v0, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setCustomWidth(Z)V

    .line 269
    return-void
.end method
