.class public Lorg/apache/poi/xssf/streaming/SXSSFRow;
.super Ljava/lang/Object;
.source "SXSSFRow.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Row;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/streaming/SXSSFRow$CellIterator;,
        Lorg/apache/poi/xssf/streaming/SXSSFRow$FilledCellIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/ss/usermodel/Row;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/xssf/streaming/SXSSFRow;",
        ">;"
    }
.end annotation


# static fields
.field private static final UNDEFINED:Ljava/lang/Boolean;


# instance fields
.field private final _cells:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xssf/streaming/SXSSFCell;",
            ">;"
        }
    .end annotation
.end field

.field private _collapsed:Ljava/lang/Boolean;

.field private _height:S

.field private _hidden:Ljava/lang/Boolean;

.field private _outlineLevel:I

.field private final _sheet:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

.field private _style:S

.field private _zHeight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->UNDEFINED:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFSheet;)V
    .locals 1
    .param p1, "sheet"    # Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    .line 43
    const/4 v0, -0x1

    iput-short v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_style:S

    .line 44
    iput-short v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_height:S

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_zHeight:Z

    .line 46
    iput v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_outlineLevel:I

    .line 48
    sget-object v0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->UNDEFINED:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_hidden:Ljava/lang/Boolean;

    .line 49
    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_collapsed:Ljava/lang/Boolean;

    .line 53
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_sheet:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/xssf/streaming/SXSSFRow;)Ljava/util/SortedMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/xssf/streaming/SXSSFRow;

    .line 37
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    return-object v0
.end method

.method private static checkBounds(I)V
    .locals 5
    .param p0, "cellIndex"    # I

    .line 166
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 167
    .local v0, "v":Lorg/apache/poi/ss/SpreadsheetVersion;
    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v1

    .line 168
    .local v1, "maxcol":I
    if-ltz p0, :cond_0

    if-gt p0, v1, :cond_0

    .line 173
    return-void

    .line 169
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid column index ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ").  Allowable column range for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is (0.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") or (\'A\'..\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public allCellsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFRow$CellIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow$CellIterator;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFRow;)V

    return-object v0
.end method

.method public cellIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation

    .line 439
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 37
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFRow;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->compareTo(Lorg/apache/poi/xssf/streaming/SXSSFRow;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/poi/xssf/streaming/SXSSFRow;)I
    .locals 3
    .param p1, "other"    # Lorg/apache/poi/xssf/streaming/SXSSFRow;

    .line 538
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 542
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getRowNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 543
    .local v0, "thisRow":Ljava/lang/Integer;
    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getRowNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 544
    .local v1, "otherRow":Ljava/lang/Integer;
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v2

    return v2

    .line 539
    .end local v0    # "thisRow":Ljava/lang/Integer;
    .end local v1    # "otherRow":Ljava/lang/Integer;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The compared rows must belong to the same sheet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic createCell(I)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p1, "x0"    # I

    .line 37
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->createCell(I)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createCell(II)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .line 37
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->createCell(II)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/apache/poi/ss/usermodel/CellType;

    .line 37
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public createCell(I)Lorg/apache/poi/xssf/streaming/SXSSFCell;
    .locals 1
    .param p1, "column"    # I

    .line 122
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public createCell(II)Lorg/apache/poi/xssf/streaming/SXSSFCell;
    .locals 1
    .param p1, "column"    # I
    .param p2, "type"    # I

    .line 140
    invoke-static {p2}, Lorg/apache/poi/ss/usermodel/CellType;->forInt(I)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/streaming/SXSSFCell;
    .locals 3
    .param p1, "column"    # I
    .param p2, "type"    # Lorg/apache/poi/ss/usermodel/CellType;

    .line 156
    invoke-static {p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->checkBounds(I)V

    .line 157
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-direct {v0, p0, p2}, Lorg/apache/poi/xssf/streaming/SXSSFCell;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFRow;Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 158
    .local v0, "cell":Lorg/apache/poi/xssf/streaming/SXSSFCell;
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 550
    instance-of v0, p1, Lorg/apache/poi/xssf/streaming/SXSSFRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 552
    return v1

    .line 554
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFRow;

    .line 556
    .local v0, "other":Lorg/apache/poi/xssf/streaming/SXSSFRow;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getRowNum()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getRowNum()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public bridge synthetic getCell(I)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p1, "x0"    # I

    .line 37
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getCell(I)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    .line 37
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public getCell(I)Lorg/apache/poi/xssf/streaming/SXSSFCell;
    .locals 2
    .param p1, "cellnum"    # I

    .line 239
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_sheet:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getMissingCellPolicy()Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    move-result-object v0

    .line 240
    .local v0, "policy":Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object v1

    return-object v1
.end method

.method public getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/xssf/streaming/SXSSFCell;
    .locals 5
    .param p1, "cellnum"    # I
    .param p2, "policy"    # Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    .line 252
    invoke-static {p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->checkBounds(I)V

    .line 254
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell;

    .line 255
    .local v0, "cell":Lorg/apache/poi/xssf/streaming/SXSSFCell;
    sget-object v1, Lorg/apache/poi/xssf/streaming/SXSSFRow$1;->$SwitchMap$org$apache$poi$ss$usermodel$Row$MissingCellPolicy:[I

    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    move v1, v4

    .line 262
    .local v1, "isBlank":Z
    if-nez v0, :cond_0

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, p1, v2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2

    .line 255
    .end local v1    # "isBlank":Z
    :cond_1
    move v1, v4

    .line 264
    .restart local v1    # "isBlank":Z
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal policy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    .end local v1    # "isBlank":Z
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    sget-object v3, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v1, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    move v1, v2

    .line 260
    .restart local v1    # "isBlank":Z
    if-eqz v1, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    move-object v2, v0

    :goto_2
    return-object v2

    .line 257
    .end local v1    # "isBlank":Z
    :cond_5
    return-object v0
.end method

.method getCellIndex(Lorg/apache/poi/xssf/streaming/SXSSFCell;)I
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/xssf/streaming/SXSSFCell;

    .line 196
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

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

    .line 197
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/poi/xssf/streaming/SXSSFCell;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 198
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/poi/xssf/streaming/SXSSFCell;>;"
    :cond_0
    goto :goto_0

    .line 201
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getCollapsed()Ljava/lang/Boolean;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_collapsed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFirstCellNum()S
    .locals 2

    .line 278
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/util/NoSuchElementException;
    const/4 v1, -0x1

    return v1
.end method

.method public getHeight()S
    .locals 2

    .line 378
    iget-short v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_height:S

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getDefaultRowHeightInPoints()F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v0, v0, v1

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    :goto_0
    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getHeightInPoints()F
    .locals 4

    .line 391
    iget-short v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_height:S

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getDefaultRowHeightInPoints()F

    move-result v0

    float-to-double v0, v0

    goto :goto_0

    :cond_0
    int-to-double v0, v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double/2addr v0, v2

    :goto_0
    double-to-float v0, v0

    return v0
.end method

.method public getHidden()Ljava/lang/Boolean;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_hidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLastCellNum()S
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    :goto_0
    return v0
.end method

.method public getOutlineLevel()I
    .locals 1

    .line 67
    iget v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_outlineLevel:I

    return v0
.end method

.method public getPhysicalNumberOfCells()I
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    return v0
.end method

.method public getRowNum()I
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_sheet:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getRowNum(Lorg/apache/poi/xssf/streaming/SXSSFRow;)I

    move-result v0

    return v0
.end method

.method public getRowStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 2

    .line 410
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->isFormatted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 412
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object v0

    iget-short v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_style:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getCellStyleAt(I)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    return-object v0
.end method

.method getRowStyleIndex()I
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 417
    iget-short v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_style:S

    return v0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 1

    .line 450
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_sheet:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    return-object v0
.end method

.method public getZeroHeight()Z
    .locals 1

    .line 352
    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_zHeight:Z

    return v0
.end method

.method public hasCustomHeight()Z
    .locals 2

    .line 62
    iget-short v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_height:S

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 562
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFormatted()Z
    .locals 2

    .line 401
    iget-short v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_style:S

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFRow$FilledCellIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow$FilledCellIterator;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFRow;)V

    return-object v0
.end method

.method public removeCell(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 183
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getCellIndex(Lorg/apache/poi/xssf/streaming/SXSSFCell;)I

    move-result v0

    .line 184
    .local v0, "index":I
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-void
.end method

.method public setCollapsed(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "collapsed"    # Ljava/lang/Boolean;

    .line 96
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_collapsed:Ljava/lang/Boolean;

    .line 97
    return-void
.end method

.method public setHeight(S)V
    .locals 0
    .param p1, "height"    # S

    .line 330
    iput-short p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_height:S

    .line 331
    return-void
.end method

.method public setHeightInPoints(F)V
    .locals 1
    .param p1, "height"    # F

    .line 363
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 364
    const/4 v0, -0x1

    iput-short v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_height:S

    goto :goto_0

    .line 366
    :cond_0
    const/high16 v0, 0x41a00000    # 20.0f

    mul-float v0, v0, p1

    float-to-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_height:S

    .line 367
    :goto_0
    return-void
.end method

.method public setHidden(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "hidden"    # Ljava/lang/Boolean;

    .line 88
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_hidden:Ljava/lang/Boolean;

    .line 89
    return-void
.end method

.method setOutlineLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .line 70
    iput p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_outlineLevel:I

    .line 71
    return-void
.end method

.method public setRowNum(I)V
    .locals 1
    .param p1, "rowNum"    # I

    .line 213
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_sheet:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    invoke-virtual {v0, p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->changeRowNum(Lorg/apache/poi/xssf/streaming/SXSSFRow;I)V

    .line 214
    return-void
.end method

.method public setRowStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 1
    .param p1, "style"    # Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 426
    if-nez p1, :cond_0

    .line 427
    const/4 v0, -0x1

    iput-short v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_style:S

    goto :goto_0

    .line 429
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndex()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_style:S

    .line 431
    :goto_0
    return-void
.end method

.method public setZeroHeight(Z)V
    .locals 0
    .param p1, "zHeight"    # Z

    .line 341
    iput-boolean p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_zHeight:Z

    .line 342
    return-void
.end method
