.class public final Lorg/apache/poi/xssf/usermodel/XSSFCell;
.super Ljava/lang/Object;
.source "XSSFCell.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Cell;


# static fields
.field private static final FALSE:Ljava/lang/String; = "FALSE"

.field private static final FALSE_AS_STRING:Ljava/lang/String; = "0"

.field private static final TRUE:Ljava/lang/String; = "TRUE"

.field private static final TRUE_AS_STRING:Ljava/lang/String; = "1"


# instance fields
.field private _cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

.field private _cellNum:I

.field private final _row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

.field private _sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

.field private _stylesSource:Lorg/apache/poi/xssf/model/StylesTable;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFRow;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V
    .locals 3
    .param p1, "row"    # Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .param p2, "cell"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    .line 113
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

    .line 114
    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getR()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getR()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cellNum:I

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getLastCellNum()S

    move-result v0

    .line 118
    .local v0, "prevNum":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 119
    add-int/lit8 v1, v0, -0x1

    sget-object v2, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->RETURN_NULL_AND_BLANK:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cellNum:I

    .line 122
    .end local v0    # "prevNum":I
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSharedStringSource()Lorg/apache/poi/xssf/model/SharedStringsTable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    .line 123
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    .line 124
    return-void
.end method

.method private static checkBounds(I)V
    .locals 5
    .param p0, "cellIndex"    # I

    .line 1084
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 1085
    .local v0, "v":Lorg/apache/poi/ss/SpreadsheetVersion;
    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v1

    .line 1086
    .local v1, "maxcol":I
    if-ltz p0, :cond_0

    if-gt p0, v1, :cond_0

    .line 1091
    return-void

    .line 1087
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

.method private static checkFormulaCachedValueType(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 1
    .param p0, "expectedTypeCode"    # Lorg/apache/poi/ss/usermodel/CellType;
    .param p1, "cachedValueType"    # Lorg/apache/poi/ss/usermodel/CellType;

    .line 402
    if-ne p1, p0, :cond_0

    .line 405
    return-void

    .line 403
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private convertCellValueToBoolean()Z
    .locals 11

    .line 1203
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 1205
    .local v0, "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1206
    invoke-direct {p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getBaseCellType(Z)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 1209
    :cond_0
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .local v1, "sstIndex":I
    move-object v2, v4

    .local v2, "text":Ljava/lang/String;
    move-object v3, v4

    .line 1226
    .local v3, "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected cell type ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1211
    .end local v1    # "sstIndex":I
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1209
    :cond_3
    :goto_0
    move v1, v2

    .restart local v1    # "sstIndex":I
    move-object v3, v4

    .line 1223
    .local v3, "text":Ljava/lang/String;
    .local v4, "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    return v2

    .line 1213
    .end local v1    # "sstIndex":I
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    :cond_4
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1214
    .restart local v1    # "sstIndex":I
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-virtual {v3, v1}, Lorg/apache/poi/xssf/model/SharedStringsTable;->getEntryAt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V

    .line 1215
    .local v2, "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v3

    .line 1216
    .restart local v3    # "text":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    return v4

    .line 1209
    .end local v1    # "sstIndex":I
    .end local v2    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .end local v3    # "text":Ljava/lang/String;
    :cond_5
    move v1, v2

    .restart local v1    # "sstIndex":I
    move-object v5, v4

    .line 1218
    .restart local v4    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .local v5, "text":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2
.end method

.method private convertCellValueToString()Ljava/lang/String;
    .locals 8

    .line 1231
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 1233
    .local v0, "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "TRUE"

    const-string v3, "FALSE"

    const-string v4, ")"

    const-string v5, "1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    move v1, v6

    .local v1, "sstIndex":I
    move-object v2, v7

    .line 1250
    .local v2, "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected cell type ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1237
    .end local v1    # "sstIndex":I
    .end local v2    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    :pswitch_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    return-object v2

    .line 1235
    :pswitch_1
    const-string v1, ""

    return-object v1

    .line 1233
    :pswitch_2
    move v1, v6

    .line 1248
    .restart local v1    # "sstIndex":I
    .local v7, "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    nop

    .line 1252
    .end local v1    # "sstIndex":I
    .end local v7    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    invoke-direct {p0, v6}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getBaseCellType(Z)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 1253
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v1

    .line 1254
    .local v1, "textValue":Ljava/lang/String;
    sget-object v6, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    const/4 v7, 0x5

    if-eq v6, v7, :cond_2

    const/4 v2, 0x6

    if-ne v6, v2, :cond_1

    goto :goto_1

    .line 1273
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected formula result type ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1256
    :cond_2
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1257
    return-object v2

    .line 1259
    :cond_3
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1260
    return-object v3

    .line 1262
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected boolean cached formula value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1270
    :cond_5
    :goto_1
    return-object v1

    .line 1239
    .end local v1    # "textValue":Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1240
    .local v1, "sstIndex":I
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-virtual {v3, v1}, Lorg/apache/poi/xssf/model/SharedStringsTable;->getEntryAt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V

    .line 1241
    .restart local v2    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1233
    .end local v1    # "sstIndex":I
    .end local v2    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    :pswitch_4
    move v1, v6

    .restart local v1    # "sstIndex":I
    move-object v2, v7

    .line 1244
    .restart local v2    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private convertSharedFormula(ILorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;)Ljava/lang/String;
    .locals 11
    .param p1, "si"    # I
    .param p2, "fpb"    # Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    .line 503
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    .line 505
    .local v0, "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSharedFormula(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v1

    .line 506
    .local v1, "f":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;
    if-eqz v1, :cond_0

    .line 511
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getStringValue()Ljava/lang/String;

    move-result-object v2

    .line 513
    .local v2, "sharedFormula":Ljava/lang/String;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getRef()Ljava/lang/String;

    move-result-object v3

    .line 515
    .local v3, "sharedFormulaRange":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v4

    .line 517
    .local v4, "ref":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v5

    .line 518
    .local v5, "sheetIndex":I
    new-instance v6, Lorg/apache/poi/ss/formula/SharedFormula;

    sget-object v7, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v6, v7}, Lorg/apache/poi/ss/formula/SharedFormula;-><init>(Lorg/apache/poi/ss/SpreadsheetVersion;)V

    .line 520
    .local v6, "sf":Lorg/apache/poi/ss/formula/SharedFormula;
    sget-object v7, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v8

    invoke-static {v2, p2, v7, v5, v8}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v7

    .line 521
    .local v7, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v8

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v9

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/poi/ss/formula/SharedFormula;->convertSharedFormulas([Lorg/apache/poi/ss/formula/ptg/Ptg;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v8

    .line 523
    .local v8, "fmla":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-static {p2, v8}, Lorg/apache/poi/ss/formula/FormulaRenderer;->toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 507
    .end local v2    # "sharedFormula":Ljava/lang/String;
    .end local v3    # "sharedFormulaRange":Ljava/lang/String;
    .end local v4    # "ref":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v5    # "sheetIndex":I
    .end local v6    # "sf":Lorg/apache/poi/ss/formula/SharedFormula;
    .end local v7    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v8    # "fmla":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Master cell of a shared formula with sid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getBaseCellType(Z)Lorg/apache/poi/ss/usermodel/CellType;
    .locals 3
    .param p1, "blankCells"    # Z

    .line 751
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 771
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal cell type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 769
    :pswitch_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0

    .line 765
    :pswitch_1
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0

    .line 755
    :pswitch_2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 761
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0

    .line 763
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0

    .line 753
    :pswitch_3
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isFormulaCell()Z
    .locals 2

    .line 669
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType;->DATA_TABLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isCellInArrayFormulaContext(Lorg/apache/poi/xssf/usermodel/XSSFCell;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 670
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 672
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private setBlank()V
    .locals 3

    .line 922
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v0

    .line 923
    .local v0, "blank":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getR()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setR(Ljava/lang/String;)V

    .line 924
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 925
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getS()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setS(J)V

    .line 927
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 928
    return-void
.end method

.method private setFormula(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaType;)V
    .locals 4
    .param p1, "formula"    # Ljava/lang/String;
    .param p2, "formulaType"    # Lorg/apache/poi/ss/formula/FormulaType;

    .line 555
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    .line 556
    .local v0, "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    if-nez p1, :cond_1

    .line 557
    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->onDeleteFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V

    .line 558
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetF()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->unsetF()V

    .line 561
    :cond_0
    return-void

    .line 564
    :cond_1
    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object v1

    .line 566
    .local v1, "fpb":Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v3

    invoke-static {p1, v1, p2, v2, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 568
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v2

    .line 569
    .local v2, "f":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;
    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->setStringValue(Ljava/lang/String;)V

    .line 570
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v3, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setF(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;)V

    .line 571
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 572
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->unsetV()V

    .line 574
    :cond_2
    return-void
.end method

.method private static typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "expectedType"    # Lorg/apache/poi/ss/usermodel/CellType;
    .param p1, "actualType"    # Lorg/apache/poi/ss/usermodel/CellType;
    .param p2, "isFormulaCell"    # Z

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value from a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string v1, "formula "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cell"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1077
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public copyCellFrom(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellCopyPolicy;)V
    .locals 4
    .param p1, "srcCell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p2, "policy"    # Lorg/apache/poi/ss/usermodel/CellCopyPolicy;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 140
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyCellValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    if-eqz p1, :cond_2

    .line 142
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 143
    .local v0, "copyCellType":Lorg/apache/poi/ss/usermodel/CellType;
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyCellFormula()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 148
    :cond_0
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 175
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid cell type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :pswitch_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getErrorCellValue()B

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellErrorValue(B)V

    .line 172
    goto :goto_0

    .line 168
    :pswitch_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(Z)V

    .line 169
    goto :goto_0

    .line 165
    :pswitch_2
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setBlank()V

    .line 166
    goto :goto_0

    .line 162
    :pswitch_3
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellFormula()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellFormula(Ljava/lang/String;)V

    .line 163
    goto :goto_0

    .line 159
    :pswitch_4
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(Ljava/lang/String;)V

    .line 160
    goto :goto_0

    .line 151
    :pswitch_5
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getDateCellValue()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(Ljava/util/Date;)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(D)V

    .line 157
    nop

    .line 177
    .end local v0    # "copyCellType":Lorg/apache/poi/ss/usermodel/CellType;
    :goto_0
    goto :goto_1

    .line 178
    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setBlank()V

    .line 183
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyCellStyle()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 184
    if-nez p1, :cond_4

    move-object v0, v1

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    .line 187
    :cond_5
    if-nez p1, :cond_6

    move-object v0, v1

    goto :goto_3

    :cond_6
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getHyperlink()Lorg/apache/poi/ss/usermodel/Hyperlink;

    move-result-object v0

    .line 189
    .local v0, "srcHyperlink":Lorg/apache/poi/ss/usermodel/Hyperlink;
    :goto_3
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isMergeHyperlink()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 191
    if-eqz v0, :cond_9

    .line 192
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    invoke-direct {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;-><init>(Lorg/apache/poi/ss/usermodel/Hyperlink;)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setHyperlink(Lorg/apache/poi/ss/usermodel/Hyperlink;)V

    goto :goto_5

    .line 194
    :cond_7
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyHyperlink()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 197
    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    invoke-direct {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;-><init>(Lorg/apache/poi/ss/usermodel/Hyperlink;)V

    :goto_4
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setHyperlink(Lorg/apache/poi/ss/usermodel/Hyperlink;)V

    .line 199
    :cond_9
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAddress()Lorg/apache/poi/ss/util/CellAddress;
    .locals 1

    .line 614
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    return-object v0
.end method

.method public getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 4

    .line 1280
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getFirstCellInArrayFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v0

    .line 1281
    .local v0, "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    if-eqz v0, :cond_0

    .line 1285
    iget-object v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getRef()Ljava/lang/String;

    move-result-object v1

    .line 1286
    .local v1, "formulaRef":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    return-object v2

    .line 1282
    .end local v1    # "formulaRef":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cell "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getReference()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not part of an array formula."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBooleanCellValue()Z
    .locals 6

    .line 246
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 247
    .local v0, "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const-string v4, "1"

    const/4 v5, 0x0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 251
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 256
    :cond_1
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, v0, v5}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 249
    :cond_2
    return v5

    .line 254
    :cond_3
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 1181
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    return-object v0
.end method

.method public getCachedFormulaResultType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.17"
    .end annotation

    .line 727
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result v0

    return v0
.end method

.method public getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 2

    .line 740
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isFormulaCell()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getBaseCellType(Z)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    return-object v0

    .line 741
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only formula cells have cached results"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getCellComment()Lorg/apache/poi/ss/usermodel/Comment;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellComment()Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object v0

    return-object v0
.end method

.method public getCellComment()Lorg/apache/poi/xssf/usermodel/XSSFComment;
    .locals 2

    .line 1100
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v1, p0}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object v0

    return-object v0
.end method

.method public getCellFormula()Ljava/lang/String;
    .locals 1

    .line 469
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellFormula(Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCellFormula(Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;)Ljava/lang/String;
    .locals 4
    .param p1, "fpb"    # Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    .line 480
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 481
    .local v0, "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_3

    .line 485
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v1

    .line 486
    .local v1, "f":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 487
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getFirstCellInArrayFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v2

    .line 488
    .local v2, "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    invoke-virtual {v2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellFormula(Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 490
    .end local v2    # "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    move-result-object v2

    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType;->SHARED:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    if-ne v2, v3, :cond_2

    .line 491
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getSi()J

    move-result-wide v2

    long-to-int v3, v2

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    invoke-direct {p0, v3, v2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->convertSharedFormula(ILorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 493
    :cond_2
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getStringValue()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 482
    .end local v1    # "f":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;
    :cond_3
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public getCellStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .locals 5

    .line 624
    const/4 v0, 0x0

    .line 625
    .local v0, "style":Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/model/StylesTable;->getNumCellStyles()I

    move-result v1

    if-lez v1, :cond_1

    .line 626
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetS()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getS()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 627
    .local v1, "idx":J
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    long-to-int v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/poi/xssf/model/StylesTable;->getStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object v0

    .line 629
    .end local v1    # "idx":J
    :cond_1
    return-object v0
.end method

.method public getCellType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.17"
    .end annotation

    .line 688
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result v0

    return v0
.end method

.method public getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    .line 705
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isFormulaCell()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0

    .line 709
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getBaseCellType(Z)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    return-object v0
.end method

.method public getColumnIndex()I
    .locals 1

    .line 583
    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cellNum:I

    return v0
.end method

.method public getDateCellValue()Ljava/util/Date;
    .locals 4

    .line 787
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    .line 788
    const/4 v0, 0x0

    return-object v0

    .line 791
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getNumericCellValue()D

    move-result-wide v0

    .line 792
    .local v0, "value":D
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isDate1904()Z

    move-result v2

    .line 793
    .local v2, "date1904":Z
    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object v3

    return-object v3
.end method

.method public getErrorCellString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 850
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getBaseCellType(Z)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 851
    .local v0, "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    .line 855
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 852
    :cond_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getErrorCellValue()B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 870
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getErrorCellString()Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, "code":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 872
    const/4 v1, 0x0

    return v1

    .line 875
    :cond_0
    :try_start_0
    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->forString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 876
    :catch_0
    move-exception v1

    .line 877
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected error code"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic getHyperlink()Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getHyperlink()Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public getHyperlink()Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    .locals 3

    .line 1140
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v1

    iget v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cellNum:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getHyperlink(II)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public getNumericCellValue()D
    .locals 6

    .line 286
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 287
    .local v0, "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 289
    return-wide v4

    .line 307
    :cond_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, v0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 293
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 294
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "v":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 296
    return-wide v4

    .line 299
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    .line 300
    :catch_0
    move-exception v2

    .line 301
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    sget-object v5, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v4, v5, v3}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 304
    .end local v1    # "v":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    return-wide v4
.end method

.method public getRawValue()Ljava/lang/String;
    .locals 1

    .line 1068
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 2

    .line 602
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getR()Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "ref":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 604
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getAddress()Lorg/apache/poi/ss/util/CellAddress;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 606
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRichStringCellValue()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    move-result-object v0

    return-object v0
.end method

.method public getRichStringCellValue()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .locals 6

    .line 360
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 362
    .local v0, "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const-string v3, ""

    const/4 v4, 0x0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    const/4 v5, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 364
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    .line 365
    .local v1, "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    goto/16 :goto_0

    .line 362
    .end local v1    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    :cond_0
    move-object v1, v4

    .line 395
    .restart local v1    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v2, v0, v5}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 362
    .end local v1    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    :cond_1
    move-object v1, v4

    .line 391
    .restart local v1    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-direct {p0, v5}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getBaseCellType(Z)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->checkFormulaCachedValueType(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 392
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-direct {v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 393
    goto/16 :goto_0

    .line 362
    .end local v1    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    :cond_3
    move-object v1, v4

    .line 367
    .restart local v1    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    move-result-object v2

    sget-object v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->INLINE_STR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    if-ne v2, v4, :cond_6

    .line 368
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetIs()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 370
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getIs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V

    move-object v1, v2

    goto :goto_0

    .line 371
    .end local v1    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    :cond_4
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 373
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    .restart local v1    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    goto :goto_0

    .line 375
    .end local v1    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    :cond_5
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    .restart local v1    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    goto :goto_0

    .line 377
    .end local v1    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    :cond_6
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->STR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    if-ne v1, v2, :cond_8

    .line 379
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v3

    :cond_7
    invoke-direct {v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    .restart local v1    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    goto :goto_0

    .line 381
    .end local v1    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    :cond_8
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 382
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 383
    .local v1, "idx":I
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-virtual {v3, v1}, Lorg/apache/poi/xssf/model/SharedStringsTable;->getEntryAt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V

    move-object v1, v2

    .line 384
    .local v1, "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    goto :goto_0

    .line 386
    .end local v1    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    :cond_9
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    .line 389
    .restart local v1    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    nop

    .line 397
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->setStylesTableReference(Lorg/apache/poi/xssf/model/StylesTable;)V

    .line 398
    return-object v1
.end method

.method public bridge synthetic getRow()Lorg/apache/poi/ss/usermodel/Row;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRow()Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    return-object v0
.end method

.method public getRow()Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

    return-object v0
.end method

.method public getRowIndex()I
    .locals 1

    .line 593
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v0

    return v0
.end method

.method protected getSharedStringSource()Lorg/apache/poi/xssf/model/SharedStringsTable;
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    return-object v0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1

    .line 222
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRow()Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getStringCellValue()Ljava/lang/String;
    .locals 1

    .line 347
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRichStringCellValue()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    return-object v0
.end method

.method public isPartOfArrayFormulaGroup()Z
    .locals 1

    .line 1291
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isCellInArrayFormulaContext(Lorg/apache/poi/xssf/usermodel/XSSFCell;)Z

    move-result v0

    return v0
.end method

.method notifyArrayFormulaChanging()V
    .locals 3

    .line 1325
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    .line 1326
    .local v0, "ref":Lorg/apache/poi/ss/util/CellReference;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cell "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is part of a multi-cell array formula. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "You cannot change part of an array."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1328
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->notifyArrayFormulaChanging(Ljava/lang/String;)V

    .line 1329
    return-void
.end method

.method notifyArrayFormulaChanging(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1300
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1301
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    .line 1302
    .local v0, "cra":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getNumberOfCells()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 1306
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRow()Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeArrayFormula(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellRange;

    goto :goto_0

    .line 1303
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1308
    .end local v0    # "cra":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_1
    :goto_0
    return-void
.end method

.method public removeCellComment()V
    .locals 6

    .line 1124
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellComment()Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object v0

    .line 1125
    .local v0, "comment":Lorg/apache/poi/xssf/usermodel/XSSFComment;
    if-eqz v0, :cond_0

    .line 1126
    new-instance v1, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getReference()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    .line 1127
    .local v1, "ref":Lorg/apache/poi/ss/util/CellAddress;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v2

    .line 1128
    .local v2, "sh":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCommentsTable(Z)Lorg/apache/poi/xssf/model/CommentsTable;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/apache/poi/xssf/model/CommentsTable;->removeComment(Lorg/apache/poi/ss/util/CellAddress;)Z

    .line 1129
    invoke-virtual {v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getVMLDrawing(Z)Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->removeCommentShape(II)Z

    .line 1131
    .end local v1    # "ref":Lorg/apache/poi/ss/util/CellAddress;
    .end local v2    # "sh":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    :cond_0
    return-void
.end method

.method public removeHyperlink()V
    .locals 3

    .line 1170
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v1

    iget v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cellNum:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeHyperlink(II)V

    .line 1171
    return-void
.end method

.method public setAsActiveCell()V
    .locals 2

    .line 914
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getAddress()Lorg/apache/poi/ss/util/CellAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setActiveCell(Lorg/apache/poi/ss/util/CellAddress;)V

    .line 915
    return-void
.end method

.method public setCTCell(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V
    .locals 0
    .param p1, "cell"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 1191
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    .line 1192
    return-void
.end method

.method setCellArrayFormula(Ljava/lang/String;Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 2
    .param p1, "formula"    # Ljava/lang/String;
    .param p2, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 548
    sget-object v0, Lorg/apache/poi/ss/formula/FormulaType;->ARRAY:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setFormula(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaType;)V

    .line 549
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v0

    .line 550
    .local v0, "cellFormula":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;
    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType;->ARRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;)V

    .line 551
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->setRef(Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method public setCellComment(Lorg/apache/poi/ss/usermodel/Comment;)V
    .locals 2
    .param p1, "comment"    # Lorg/apache/poi/ss/usermodel/Comment;

    .line 1111
    if-nez p1, :cond_0

    .line 1112
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->removeCellComment()V

    .line 1113
    return-void

    .line 1116
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/ss/usermodel/Comment;->setAddress(II)V

    .line 1117
    return-void
.end method

.method public setCellErrorValue(B)V
    .locals 1
    .param p1, "errorCode"    # B

    .line 892
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v0

    .line 893
    .local v0, "error":Lorg/apache/poi/ss/usermodel/FormulaError;
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellErrorValue(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    .line 894
    return-void
.end method

.method public setCellErrorValue(Lorg/apache/poi/ss/usermodel/FormulaError;)V
    .locals 2
    .param p1, "error"    # Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 905
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->E:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    .line 906
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    .line 907
    return-void
.end method

.method public setCellFormula(Ljava/lang/String;)V
    .locals 1
    .param p1, "formula"    # Ljava/lang/String;

    .line 541
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->notifyArrayFormulaChanging()V

    .line 544
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setFormula(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaType;)V

    .line 545
    return-void
.end method

.method protected setCellNum(I)V
    .locals 3
    .param p1, "num"    # I

    .line 936
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->checkBounds(I)V

    .line 937
    iput p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cellNum:I

    .line 938
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, "ref":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setR(Ljava/lang/String;)V

    .line 940
    return-void
.end method

.method public setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 4
    .param p1, "style"    # Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 645
    if-nez p1, :cond_0

    .line 646
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->unsetS()V

    goto :goto_0

    .line 650
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    .line 651
    .local v0, "xStyle":Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->verifyBelongsToStylesSource(Lorg/apache/poi/xssf/model/StylesTable;)V

    .line 653
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/model/StylesTable;->putStyle(Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;)I

    move-result v1

    int-to-long v1, v1

    .line 654
    .local v1, "idx":J
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v3, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setS(J)V

    .line 656
    .end local v0    # "xStyle":Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .end local v1    # "idx":J
    :cond_1
    :goto_0
    return-void
.end method

.method public setCellType(I)V
    .locals 1
    .param p1, "cellType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.17"
    .end annotation

    .line 958
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellType;->forInt(I)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 959
    return-void
.end method

.method public setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 6
    .param p1, "cellType"    # Lorg/apache/poi/ss/usermodel/CellType;

    .line 967
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 969
    .local v0, "prevType":Lorg/apache/poi/ss/usermodel/CellType;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 970
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->notifyArrayFormulaChanging()V

    .line 972
    :cond_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_1

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq p1, v1, :cond_1

    .line 973
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->onDeleteFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V

    .line 976
    :cond_1
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "0"

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    move-object v1, v3

    .line 1015
    .local v1, "newVal":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal cell type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 976
    .end local v1    # "newVal":Ljava/lang/String;
    :pswitch_0
    move-object v1, v3

    .line 1010
    .restart local v1    # "newVal":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->E:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    .line 1011
    goto/16 :goto_0

    .line 1004
    .end local v1    # "newVal":Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->convertCellValueToBoolean()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v2, "1"

    :cond_2
    move-object v1, v2

    .line 1005
    .restart local v1    # "newVal":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->B:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    .line 1006
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    .line 1007
    goto :goto_0

    .line 1001
    .end local v1    # "newVal":Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setBlank()V

    .line 1002
    goto :goto_0

    .line 991
    :pswitch_3
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetF()Z

    move-result v1

    if-nez v1, :cond_5

    .line 992
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v1

    .line 993
    .local v1, "f":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->setStringValue(Ljava/lang/String;)V

    .line 994
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setF(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;)V

    .line 995
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetT()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 996
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->unsetT()V

    .line 998
    .end local v1    # "f":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;
    :cond_3
    goto :goto_0

    .line 981
    :pswitch_4
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq v0, v1, :cond_4

    .line 982
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->convertCellValueToString()Ljava/lang/String;

    move-result-object v1

    .line 983
    .local v1, "str":Ljava/lang/String;
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    .line 984
    .local v2, "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->setStylesTableReference(Lorg/apache/poi/xssf/model/StylesTable;)V

    .line 985
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getCTRst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/xssf/model/SharedStringsTable;->addEntry(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)I

    move-result v3

    .line 986
    .local v3, "sRef":I
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    .line 988
    .end local v1    # "str":Ljava/lang/String;
    .end local v2    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .end local v3    # "sRef":I
    :cond_4
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->S:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    .line 989
    goto :goto_0

    .line 978
    :pswitch_5
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->N:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    .line 979
    nop

    .line 1017
    :cond_5
    :goto_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetF()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1018
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->unsetF()V

    .line 1020
    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCellValue(D)V
    .locals 2
    .param p1, "value"    # D

    .line 321
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->E:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    .line 325
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->DIV0:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->E:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    .line 330
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NUM:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->N:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    .line 333
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    .line 335
    :goto_0
    return-void
.end method

.method public setCellValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 417
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    .line 418
    return-void
.end method

.method public setCellValue(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "value"    # Ljava/util/Calendar;

    .line 833
    if-nez p1, :cond_0

    .line 834
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 835
    return-void

    .line 838
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isDate1904()Z

    move-result v0

    .line 839
    .local v0, "date1904":Z
    invoke-static {p1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Calendar;Z)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(D)V

    .line 840
    return-void
.end method

.method public setCellValue(Ljava/util/Date;)V
    .locals 3
    .param p1, "value"    # Ljava/util/Date;

    .line 806
    if-nez p1, :cond_0

    .line 807
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 808
    return-void

    .line 811
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isDate1904()Z

    move-result v0

    .line 812
    .local v0, "date1904":Z
    invoke-static {p1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;Z)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(D)V

    .line 813
    return-void
.end method

.method public setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V
    .locals 5
    .param p1, "str"    # Lorg/apache/poi/ss/usermodel/RichTextString;

    .line 430
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 435
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->length()I

    move-result v0

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxTextLength()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 439
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 440
    .local v0, "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 446
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->INLINE_STR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    if-ne v1, v2, :cond_1

    .line 448
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->S:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    .line 451
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    .line 452
    .local v1, "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->setStylesTableReference(Lorg/apache/poi/xssf/model/StylesTable;)V

    .line 453
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getCTRst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/xssf/model/SharedStringsTable;->addEntry(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)I

    move-result v2

    .line 454
    .local v2, "sRef":I
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    goto :goto_0

    .line 442
    .end local v1    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .end local v2    # "sRef":I
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->STR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    .line 444
    nop

    .line 458
    :goto_0
    return-void

    .line 436
    .end local v0    # "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The maximum length of cell contents (text) is 32,767 characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_4
    :goto_1
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 432
    return-void
.end method

.method public setCellValue(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 269
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->B:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    .line 270
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    if-eqz p1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public setHyperlink(Lorg/apache/poi/ss/usermodel/Hyperlink;)V
    .locals 4
    .param p1, "hyperlink"    # Lorg/apache/poi/ss/usermodel/Hyperlink;

    .line 1151
    if-nez p1, :cond_0

    .line 1152
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->removeHyperlink()V

    .line 1153
    return-void

    .line 1156
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    .line 1159
    .local v0, "link":Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v2

    iget v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cellNum:I

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setCellReference(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addHyperlink(Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;)V

    .line 1163
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1032
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Cell Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1049
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getErrorCellValue()B

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1047
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getBooleanCellValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    goto :goto_0

    :cond_0
    const-string v0, "FALSE"

    :goto_0
    return-object v0

    .line 1045
    :pswitch_2
    const-string v0, ""

    return-object v0

    .line 1043
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellFormula()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1041
    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRichStringCellValue()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1034
    :pswitch_5
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1035
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd-MMM-yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1036
    .local v0, "sdf":Ljava/text/DateFormat;
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1037
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getDateCellValue()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1039
    .end local v0    # "sdf":Ljava/text/DateFormat;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getNumericCellValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
