.class public Lorg/apache/poi/ss/util/AreaReference;
.super Ljava/lang/Object;
.source "AreaReference.java"


# static fields
.field private static final CELL_DELIMITER:C = ':'

.field private static final DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

.field private static final SHEET_NAME_DELIMITER:C = '!'

.field private static final SPECIAL_NAME_DELIMITER:C = '\''


# instance fields
.field private final _firstCell:Lorg/apache/poi/ss/util/CellReference;

.field private final _isSingleCell:Z

.field private final _lastCell:Lorg/apache/poi/ss/util/CellReference;

.field private final _version:Lorg/apache/poi/ss/SpreadsheetVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    sput-object v0, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V
    .locals 11
    .param p1, "reference"    # Ljava/lang/String;
    .param p2, "version"    # Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 49
    invoke-static {p1}, Lorg/apache/poi/ss/util/AreaReference;->isContiguous(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 55
    invoke-static {p1}, Lorg/apache/poi/ss/util/AreaReference;->separateAreaRefs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 57
    .local v2, "part0":Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 60
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    .line 62
    iput-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    .line 63
    iput-boolean v4, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    .line 64
    return-void

    .line 66
    :cond_1
    array-length v3, v0

    const/4 v5, 0x2

    const-string v6, "\'"

    const-string v7, "Bad area ref \'"

    if-ne v3, v5, :cond_4

    .line 70
    aget-object v3, v0, v4

    .line 71
    .local v3, "part1":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/poi/ss/util/AreaReference;->isPlainColumn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 72
    invoke-static {v3}, Lorg/apache/poi/ss/util/AreaReference;->isPlainColumn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 79
    invoke-static {v2}, Lorg/apache/poi/ss/util/CellReference;->isPartAbsolute(Ljava/lang/String;)Z

    move-result v5

    .line 80
    .local v5, "firstIsAbs":Z
    invoke-static {v3}, Lorg/apache/poi/ss/util/CellReference;->isPartAbsolute(Ljava/lang/String;)Z

    move-result v6

    .line 82
    .local v6, "lastIsAbs":Z
    invoke-static {v2}, Lorg/apache/poi/ss/util/CellReference;->convertColStringToIndex(Ljava/lang/String;)I

    move-result v7

    .line 83
    .local v7, "col0":I
    invoke-static {v3}, Lorg/apache/poi/ss/util/CellReference;->convertColStringToIndex(Ljava/lang/String;)I

    move-result v8

    .line 85
    .local v8, "col1":I
    new-instance v9, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v9, v1, v7, v4, v5}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    iput-object v9, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    .line 86
    new-instance v9, Lorg/apache/poi/ss/util/CellReference;

    const v10, 0xffff

    invoke-direct {v9, v10, v8, v4, v6}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    iput-object v9, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    .line 87
    iput-boolean v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    .line 89
    .end local v5    # "firstIsAbs":Z
    .end local v6    # "lastIsAbs":Z
    .end local v7    # "col0":I
    .end local v8    # "col1":I
    goto :goto_1

    .line 73
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_3
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    .line 91
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, v3}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    .line 94
    :goto_1
    return-void

    .line 67
    .end local v3    # "part1":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v2    # "part0":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "References passed to the AreaReference must be contiguous, use generateContiguous(ref) if you have non-contiguous references"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)V
    .locals 1
    .param p1, "topLeft"    # Lorg/apache/poi/ss/util/CellReference;
    .param p2, "botRight"    # Lorg/apache/poi/ss/util/CellReference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.19"
    .end annotation

    .line 116
    sget-object v0, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V
    .locals 12
    .param p1, "topLeft"    # Lorg/apache/poi/ss/util/CellReference;
    .param p2, "botRight"    # Lorg/apache/poi/ss/util/CellReference;
    .param p3, "version"    # Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 124
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 125
    .local v0, "swapRows":Z
    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v4

    if-le v1, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    move v1, v2

    .line 126
    .local v1, "swapCols":Z
    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_3

    .line 160
    :cond_3
    iput-object p1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    .line 161
    iput-object p2, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    goto :goto_6

    .line 135
    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 136
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    .line 137
    .local v2, "firstRow":I
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v4

    .line 138
    .local v4, "firstRowAbs":Z
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v5

    .line 139
    .local v5, "lastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v6

    .local v6, "lastRowAbs":Z
    goto :goto_4

    .line 141
    .end local v2    # "firstRow":I
    .end local v4    # "firstRowAbs":Z
    .end local v5    # "lastRow":I
    .end local v6    # "lastRowAbs":Z
    :cond_5
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    .line 142
    .restart local v2    # "firstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v4

    .line 143
    .restart local v4    # "firstRowAbs":Z
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v5

    .line 144
    .restart local v5    # "lastRow":I
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v6

    .line 146
    .restart local v6    # "lastRowAbs":Z
    :goto_4
    if-eqz v1, :cond_6

    .line 147
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v7

    .line 148
    .local v7, "firstColumn":I
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v8

    .line 149
    .local v8, "firstColAbs":Z
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v9

    .line 150
    .local v9, "lastColumn":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v10

    .local v10, "lastColAbs":Z
    goto :goto_5

    .line 152
    .end local v7    # "firstColumn":I
    .end local v8    # "firstColAbs":Z
    .end local v9    # "lastColumn":I
    .end local v10    # "lastColAbs":Z
    :cond_6
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v7

    .line 153
    .restart local v7    # "firstColumn":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v8

    .line 154
    .restart local v8    # "firstColAbs":Z
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v9

    .line 155
    .restart local v9    # "lastColumn":I
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v10

    .line 157
    .restart local v10    # "lastColAbs":Z
    :goto_5
    new-instance v11, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v11, v2, v7, v4, v8}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    iput-object v11, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    .line 158
    new-instance v11, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v11, v5, v9, v6, v10}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    iput-object v11, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    .line 159
    .end local v2    # "firstRow":I
    .end local v4    # "firstRowAbs":Z
    .end local v5    # "lastRow":I
    .end local v6    # "lastRowAbs":Z
    .end local v7    # "firstColumn":I
    .end local v8    # "firstColAbs":Z
    .end local v9    # "lastColumn":I
    .end local v10    # "lastColAbs":Z
    nop

    .line 163
    :goto_6
    iput-boolean v3, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    .line 164
    return-void
.end method

.method public static generateContiguous(Ljava/lang/String;)[Lorg/apache/poi/ss/util/AreaReference;
    .locals 1
    .param p0, "reference"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.19"
    .end annotation

    .line 228
    sget-object v0, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-static {v0, p0}, Lorg/apache/poi/ss/util/AreaReference;->generateContiguous(Lorg/apache/poi/ss/SpreadsheetVersion;Ljava/lang/String;)[Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    return-object v0
.end method

.method public static generateContiguous(Lorg/apache/poi/ss/SpreadsheetVersion;Ljava/lang/String;)[Lorg/apache/poi/ss/util/AreaReference;
    .locals 4
    .param p0, "version"    # Lorg/apache/poi/ss/SpreadsheetVersion;
    .param p1, "reference"    # Ljava/lang/String;

    .line 236
    if-nez p0, :cond_0

    .line 237
    sget-object p0, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 239
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v0, "refs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/AreaReference;>;"
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .local v1, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    new-instance v2, Lorg/apache/poi/ss/util/AreaReference;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/poi/ss/util/AreaReference;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/poi/ss/util/AreaReference;

    return-object v2
.end method

.method public static getWholeColumn(Lorg/apache/poi/ss/SpreadsheetVersion;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 3
    .param p0, "version"    # Lorg/apache/poi/ss/SpreadsheetVersion;
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;

    .line 192
    if-nez p0, :cond_0

    .line 193
    sget-object p0, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 195
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxRows()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v0
.end method

.method public static getWholeRow(Lorg/apache/poi/ss/SpreadsheetVersion;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 3
    .param p0, "version"    # Lorg/apache/poi/ss/SpreadsheetVersion;
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;

    .line 185
    if-nez p0, :cond_0

    .line 186
    sget-object p0, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 188
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v0
.end method

.method public static isContiguous(Ljava/lang/String;)Z
    .locals 2
    .param p0, "reference"    # Ljava/lang/String;

    .line 175
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 176
    .local v0, "sheetRefEnd":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 177
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 181
    :cond_0
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static isPlainColumn(Ljava/lang/String;)Z
    .locals 4
    .param p0, "refPart"    # Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 98
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 99
    .local v2, "ch":I
    const/16 v3, 0x24

    if-ne v2, v3, :cond_0

    if-nez v0, :cond_0

    .line 100
    goto :goto_1

    .line 102
    :cond_0
    const/16 v3, 0x41

    if-lt v2, v3, :cond_2

    const/16 v3, 0x5a

    if-le v2, v3, :cond_1

    goto :goto_2

    .line 97
    .end local v2    # "ch":I
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 103
    .restart local v2    # "ch":I
    :cond_2
    :goto_2
    const/4 v1, 0x0

    return v1

    .line 106
    .end local v0    # "i":I
    .end local v2    # "ch":I
    :cond_3
    return v1
.end method

.method public static isWholeColumnReference(Lorg/apache/poi/ss/SpreadsheetVersion;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)Z
    .locals 2
    .param p0, "version"    # Lorg/apache/poi/ss/SpreadsheetVersion;
    .param p1, "topLeft"    # Lorg/apache/poi/ss/util/CellReference;
    .param p2, "botRight"    # Lorg/apache/poi/ss/util/CellReference;

    .line 203
    if-nez p0, :cond_0

    .line 204
    sget-object p0, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 210
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    const/4 v0, 0x1

    return v0

    .line 214
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static separateAreaRefs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p0, "reference"    # Ljava/lang/String;

    .line 359
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 360
    .local v0, "len":I
    const/4 v1, -0x1

    .line 361
    .local v1, "delimiterPos":I
    const/4 v2, 0x0

    .line 362
    .local v2, "insideDelimitedName":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const-string v4, "\'"

    const/4 v5, 0x1

    if-ge v3, v0, :cond_7

    .line 363
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x27

    if-eq v6, v7, :cond_2

    const/16 v7, 0x3a

    if-eq v6, v7, :cond_0

    .line 376
    goto :goto_1

    .line 365
    :cond_0
    if-nez v2, :cond_5

    .line 366
    if-gez v1, :cond_1

    .line 370
    move v1, v3

    goto :goto_1

    .line 367
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "More than one cell delimiter \':\' appears in area reference \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 374
    :cond_2
    nop

    .line 378
    if-nez v2, :cond_3

    .line 379
    const/4 v2, 0x1

    .line 380
    goto :goto_1

    .line 383
    :cond_3
    add-int/lit8 v6, v0, -0x1

    if-ge v3, v6, :cond_6

    .line 389
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_4

    .line 391
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 394
    :cond_4
    const/4 v2, 0x0

    .line 362
    :cond_5
    :goto_1
    add-int/2addr v3, v5

    goto :goto_0

    .line 386
    :cond_6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Area reference \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\' ends with special name delimiter \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 397
    .end local v3    # "i":I
    :cond_7
    const/4 v3, 0x0

    if-gez v1, :cond_8

    .line 398
    new-array v4, v5, [Ljava/lang/String;

    aput-object p0, v4, v3

    return-object v4

    .line 401
    :cond_8
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 402
    .local v6, "partA":Ljava/lang/String;
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 403
    .local v7, "partB":Ljava/lang/String;
    const/16 v8, 0x21

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gez v9, :cond_a

    .line 412
    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 413
    .local v4, "plingPos":I
    const/4 v8, 0x2

    if-gez v4, :cond_9

    .line 414
    new-array v8, v8, [Ljava/lang/String;

    aput-object v6, v8, v3

    aput-object v7, v8, v5

    return-object v8

    .line 417
    :cond_9
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v6, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 419
    .local v9, "sheetName":Ljava/lang/String;
    new-array v8, v8, [Ljava/lang/String;

    aput-object v6, v8, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v5

    return-object v8

    .line 408
    .end local v4    # "plingPos":I
    .end local v9    # "sheetName":Ljava/lang/String;
    :cond_a
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected ! in second cell reference of \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public formatAsString()Ljava/lang/String;
    .locals 2

    .line 315
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/AreaReference;->isWholeColumnReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 322
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 323
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    iget-boolean v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    if-nez v1, :cond_2

    .line 325
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 326
    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 327
    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 330
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1, v0}, Lorg/apache/poi/ss/util/CellReference;->appendCellReference(Ljava/lang/StringBuffer;)V

    .line 333
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAllReferencedCells()[Lorg/apache/poi/ss/util/CellReference;
    .locals 15

    .line 279
    iget-boolean v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    if-eqz v0, :cond_0

    .line 280
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/ss/util/CellReference;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    aput-object v2, v0, v1

    return-object v0

    .line 284
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 285
    .local v0, "minRow":I
    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 286
    .local v1, "maxRow":I
    iget-object v2, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 287
    .local v2, "minCol":I
    iget-object v3, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 288
    .local v3, "maxCol":I
    iget-object v4, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "sheetName":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v5

    .line 291
    .local v11, "refs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellReference;>;"
    move v5, v0

    move v12, v5

    .local v12, "row":I
    :goto_0
    if-gt v12, v1, :cond_2

    .line 292
    move v5, v2

    move v13, v5

    .local v13, "col":I
    :goto_1
    if-gt v13, v3, :cond_1

    .line 293
    new-instance v14, Lorg/apache/poi/ss/util/CellReference;

    iget-object v5, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v9

    iget-object v5, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v10

    move-object v5, v14

    move-object v6, v4

    move v7, v12

    move v8, v13

    invoke-direct/range {v5 .. v10}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    .line 294
    .local v5, "ref":Lorg/apache/poi/ss/util/CellReference;
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v5    # "ref":Lorg/apache/poi/ss/util/CellReference;
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 291
    .end local v13    # "col":I
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 297
    .end local v12    # "row":I
    :cond_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/apache/poi/ss/util/CellReference;

    invoke-interface {v11, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/poi/ss/util/CellReference;

    return-object v5
.end method

.method public getFirstCell()Lorg/apache/poi/ss/util/CellReference;
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    return-object v0
.end method

.method public getLastCell()Lorg/apache/poi/ss/util/CellReference;
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    return-object v0
.end method

.method public isSingleCell()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    return v0
.end method

.method public isWholeColumnReference()Z
    .locals 3

    .line 217
    iget-object v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    iget-object v2, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/util/AreaReference;->isWholeColumnReference(Lorg/apache/poi/ss/SpreadsheetVersion;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 337
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 338
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/AreaReference;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
