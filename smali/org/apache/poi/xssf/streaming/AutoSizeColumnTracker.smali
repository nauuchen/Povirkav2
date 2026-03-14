.class Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;
.super Ljava/lang/Object;
.source "AutoSizeColumnTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

.field private final defaultCharWidth:I

.field private final maxColumnWidths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;",
            ">;"
        }
    .end annotation
.end field

.field private trackAllColumns:Z

.field private final untrackedColumns:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 1
    .param p1, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackedColumns:Ljava/util/Set;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackAllColumns:Z

    .line 117
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/util/SheetUtil;->getDefaultCharWidth(Lorg/apache/poi/ss/usermodel/Workbook;)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->defaultCharWidth:I

    .line 118
    return-void
.end method

.method private implicitlyTrackColumn(I)Z
    .locals 2
    .param p1, "column"    # I

    .line 217
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackedColumns:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackColumn(I)Z

    .line 219
    const/4 v0, 0x1

    return v0

    .line 221
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private implicitlyTrackColumnsInRow(Lorg/apache/poi/ss/usermodel/Row;)V
    .locals 3
    .param p1, "row"    # Lorg/apache/poi/ss/usermodel/Row;

    .line 350
    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackAllColumns:Z

    if-eqz v0, :cond_0

    .line 352
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Cell;

    .line 353
    .local v1, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v2

    .line 354
    .local v2, "column":I
    invoke-direct {p0, v2}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->implicitlyTrackColumn(I)Z

    .line 355
    .end local v1    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v2    # "column":I
    goto :goto_0

    .line 357
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private updateColumnWidth(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;)V
    .locals 5
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p2, "pair"    # Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;

    .line 367
    iget v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->defaultCharWidth:I

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/apache/poi/ss/util/SheetUtil;->getCellWidth(Lorg/apache/poi/ss/usermodel/Cell;ILorg/apache/poi/ss/usermodel/DataFormatter;Z)D

    move-result-wide v0

    .line 368
    .local v0, "unmergedWidth":D
    iget v2, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->defaultCharWidth:I

    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    const/4 v4, 0x1

    invoke-static {p1, v2, v3, v4}, Lorg/apache/poi/ss/util/SheetUtil;->getCellWidth(Lorg/apache/poi/ss/usermodel/Cell;ILorg/apache/poi/ss/usermodel/DataFormatter;Z)D

    move-result-wide v2

    .line 369
    .local v2, "mergedWidth":D
    invoke-virtual {p2, v0, v1, v2, v3}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;->setMaxColumnWidths(DD)V

    .line 370
    return-void
.end method


# virtual methods
.method public getBestFitColumnWidth(IZ)I
    .locals 6
    .param p1, "column"    # I
    .param p2, "useMergedCells"    # Z

    .line 263
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackAllColumns:Z

    const-string v1, "Either explicitly track the column or track all columns."

    const-string v2, ". "

    if-eqz v0, :cond_1

    .line 266
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->implicitlyTrackColumn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Column was explicitly untracked after trackAllColumns() was called."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, "reason":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot get best fit column width on explicitly untracked column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 275
    .end local v0    # "reason":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Column was never explicitly tracked and isAllColumnsTracked() is false (trackAllColumns() was never called or untrackAllColumns() was called after trackAllColumns() was called)."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 278
    .restart local v0    # "reason":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot get best fit column width on untracked column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 283
    .end local v0    # "reason":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;

    invoke-virtual {v0, p2}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;->getMaxColumnWidth(Z)D

    move-result-wide v0

    .line 284
    .local v0, "width":D
    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    mul-double v2, v2, v0

    double-to-int v2, v2

    return v2
.end method

.method public getTrackedColumns()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 130
    .local v0, "sorted":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v1

    return-object v1
.end method

.method public isAllColumnsTracked()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackAllColumns:Z

    return v0
.end method

.method public isColumnTracked(I)Z
    .locals 2
    .param p1, "column"    # I

    .line 141
    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackAllColumns:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

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

.method public trackAllColumns()V
    .locals 1

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackAllColumns:Z

    .line 161
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackedColumns:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 162
    return-void
.end method

.method public trackColumn(I)Z
    .locals 3
    .param p1, "column"    # I

    .line 200
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackedColumns:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;

    invoke-direct {v2}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const/4 v0, 0x1

    return v0

    .line 205
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public trackColumns(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 185
    .local p1, "columns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 186
    .local v1, "column":I
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackColumn(I)Z

    goto :goto_0

    .line 188
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "column":I
    :cond_0
    return-void
.end method

.method public untrackAllColumns()V
    .locals 1

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackAllColumns:Z

    .line 171
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 172
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackedColumns:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 173
    return-void
.end method

.method public untrackColumn(I)Z
    .locals 2
    .param p1, "column"    # I

    .line 249
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackedColumns:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public untrackColumns(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 235
    .local p1, "columns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackedColumns:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 236
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public updateColumnWidths(Lorg/apache/poi/ss/usermodel/Row;)V
    .locals 5
    .param p1, "row"    # Lorg/apache/poi/ss/usermodel/Row;

    .line 297
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->implicitlyTrackColumnsInRow(Lorg/apache/poi/ss/usermodel/Row;)V

    .line 302
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getPhysicalNumberOfCells()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 304
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 305
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 306
    .local v2, "column":I
    invoke-interface {p1, v2}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v3

    .line 314
    .local v3, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    if-eqz v3, :cond_0

    .line 315
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;

    .line 316
    .local v4, "pair":Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;
    invoke-direct {p0, v3, v4}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->updateColumnWidth(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;)V

    .line 318
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;>;"
    .end local v2    # "column":I
    .end local v3    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v4    # "pair":Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;
    :cond_0
    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    goto :goto_2

    .line 322
    :cond_2
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Cell;

    .line 323
    .local v1, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v2

    .line 331
    .restart local v2    # "column":I
    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 332
    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;

    .line 333
    .local v3, "pair":Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;
    invoke-direct {p0, v1, v3}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->updateColumnWidth(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;)V

    .line 335
    .end local v1    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v2    # "column":I
    .end local v3    # "pair":Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;
    :cond_3
    goto :goto_1

    .line 337
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    return-void
.end method
