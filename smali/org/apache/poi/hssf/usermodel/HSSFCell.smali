.class public Lorg/apache/poi/hssf/usermodel/HSSFCell;
.super Ljava/lang/Object;
.source "HSSFCell.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Cell;


# static fields
.field public static final ENCODING_COMPRESSED_UNICODE:S = 0x0s

.field public static final ENCODING_UNCHANGED:S = -0x1s

.field public static final ENCODING_UTF_16:S = 0x1s

.field private static final FILE_FORMAT_NAME:Ljava/lang/String; = "BIFF8"

.field private static final LAST_COLUMN_NAME:Ljava/lang/String;

.field public static final LAST_COLUMN_NUMBER:I


# instance fields
.field private final _book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

.field private _cellType:Lorg/apache/poi/ss/usermodel/CellType;

.field private _comment:Lorg/apache/poi/hssf/usermodel/HSSFComment;

.field private _record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

.field private final _sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

.field private _stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v0

    sput v0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->LAST_COLUMN_NUMBER:I

    .line 77
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->LAST_COLUMN_NAME:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;IS)V
    .locals 7
    .param p1, "book"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "row"    # I
    .param p4, "col"    # S

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {p4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkBounds(I)V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 110
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 111
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 116
    invoke-virtual {p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/apache/poi/hssf/model/InternalSheet;->getXFIndexForColAt(S)S

    move-result v0

    .line 117
    .local v0, "xfindex":S
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v3, 0x0

    move-object v1, p0

    move v4, p3

    move v5, p4

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;ZISS)V

    .line 118
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;ISLorg/apache/poi/ss/usermodel/CellType;)V
    .locals 7
    .param p1, "book"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "row"    # I
    .param p4, "col"    # S
    .param p5, "type"    # Lorg/apache/poi/ss/usermodel/CellType;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-static {p4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkBounds(I)V

    .line 154
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->_NONE:Lorg/apache/poi/ss/usermodel/CellType;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 156
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 157
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 159
    invoke-virtual {p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/apache/poi/hssf/model/InternalSheet;->getXFIndexForColAt(S)S

    move-result v0

    .line 160
    .local v0, "xfindex":S
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p5

    move v4, p3

    move v5, p4

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;ZISS)V

    .line 161
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V
    .locals 3
    .param p1, "book"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "cval"    # Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 173
    invoke-static {p3}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->determineType(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 175
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 176
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 177
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-object v1, p3

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 188
    goto :goto_0

    .line 180
    :cond_1
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    move-object v2, p3

    check-cast v2, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Lorg/apache/poi/hssf/model/InternalWorkbook;Lorg/apache/poi/hssf/record/LabelSSTRecord;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 181
    nop

    .line 193
    :goto_0
    return-void
.end method

.method private applyUserCellStyle(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)S
    .locals 7
    .param p1, "style"    # Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    .line 1259
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getUserStyleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1263
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    .line 1264
    .local v0, "iwb":Lorg/apache/poi/hssf/model/InternalWorkbook;
    const/4 v1, -0x1

    .line 1265
    .local v1, "userXf":S
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumExFormats()I

    move-result v2

    .line 1266
    .local v2, "numfmt":I
    const/4 v3, 0x0

    .local v3, "i":S
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1267
    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v4

    .line 1268
    .local v4, "xf":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getXFType()S

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getParentIndex()S

    move-result v5

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getIndex()S

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1269
    move v1, v3

    .line 1270
    goto :goto_1

    .line 1266
    .end local v4    # "xf":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    :cond_0
    add-int/lit8 v4, v3, 0x1

    int-to-short v3, v4

    goto :goto_0

    .line 1274
    .end local v3    # "i":S
    :cond_1
    :goto_1
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 1275
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createCellXF()Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v3

    .line 1276
    .local v3, "xfr":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getIndex()S

    move-result v4

    invoke-virtual {v0, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->cloneStyleFrom(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;)V

    .line 1277
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1278
    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setXFType(S)V

    .line 1279
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getIndex()S

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setParentIndex(S)V

    .line 1280
    int-to-short v3, v2

    .line 1281
    .local v3, "styleIndex":S
    goto :goto_2

    .line 1282
    .end local v3    # "styleIndex":S
    :cond_2
    move v3, v1

    .line 1285
    .restart local v3    # "styleIndex":S
    :goto_2
    return v3

    .line 1260
    .end local v0    # "iwb":Lorg/apache/poi/hssf/model/InternalWorkbook;
    .end local v1    # "userXf":S
    .end local v2    # "numfmt":I
    .end local v3    # "styleIndex":S
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected user-defined style"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkBounds(I)V
    .locals 3
    .param p0, "cellIndex"    # I

    .line 981
    if-ltz p0, :cond_0

    sget v0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->LAST_COLUMN_NUMBER:I

    if-gt p0, v0, :cond_0

    .line 986
    return-void

    .line 982
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid column index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").  Allowable column range for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BIFF8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is (0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/poi/hssf/usermodel/HSSFCell;->LAST_COLUMN_NUMBER:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") or (\'A\'..\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/hssf/usermodel/HSSFCell;->LAST_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkFormulaCachedValueType(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/hssf/record/FormulaRecord;)V
    .locals 2
    .param p0, "expectedTypeCode"    # Lorg/apache/poi/ss/usermodel/CellType;
    .param p1, "fr"    # Lorg/apache/poi/hssf/record/FormulaRecord;

    .line 657
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedResultType()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/CellType;->forInt(I)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 658
    .local v0, "cachedValueType":Lorg/apache/poi/ss/usermodel/CellType;
    if-ne v0, p0, :cond_0

    .line 661
    return-void

    .line 659
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private convertCellValueToBoolean()Z
    .locals 8

    .line 818
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 839
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected cell type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 820
    :pswitch_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getBooleanValue()Z

    move-result v0

    return v0

    .line 818
    :pswitch_1
    move-object v0, v1

    .local v0, "text":Ljava/lang/String;
    move v1, v2

    .line 826
    .local v1, "sstIndex":I
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v3, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/NumberRecord;->getValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-eqz v7, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 818
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "sstIndex":I
    :pswitch_2
    move-object v0, v1

    .restart local v0    # "text":Ljava/lang/String;
    move v1, v2

    .line 830
    .restart local v1    # "sstIndex":I
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v2, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v2

    .line 831
    .local v2, "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    sget-object v3, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v3, v2}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkFormulaCachedValueType(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/hssf/record/FormulaRecord;)V

    .line 832
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedBooleanValue()Z

    move-result v3

    return v3

    .line 818
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "sstIndex":I
    .end local v2    # "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    :pswitch_3
    move-object v0, v1

    .restart local v0    # "text":Ljava/lang/String;
    move v3, v2

    .line 837
    .local v1, "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    .local v3, "sstIndex":I
    return v2

    .line 822
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    .end local v3    # "sstIndex":I
    :pswitch_4
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->getSSTIndex()I

    move-result v0

    .line 823
    .local v0, "sstIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSSTString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v1

    .line 824
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private convertCellValueToString()Ljava/lang/String;
    .locals 7

    .line 843
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "TRUE"

    const-string v2, "FALSE"

    const-string v3, ")"

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    move v0, v4

    .line 860
    .local v0, "sstIndex":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected cell type ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 843
    .end local v0    # "sstIndex":I
    :pswitch_0
    move v0, v4

    .line 854
    .restart local v0    # "sstIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getErrorValue()B

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 847
    .end local v0    # "sstIndex":I
    :pswitch_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getBooleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    return-object v1

    .line 843
    :pswitch_2
    move v0, v4

    .line 852
    .restart local v0    # "sstIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NumberRecord;->getValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/NumberToTextConverter;->toText(D)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 843
    .end local v0    # "sstIndex":I
    :pswitch_3
    move v0, v4

    .line 858
    .restart local v0    # "sstIndex":I
    nop

    .line 862
    .end local v0    # "sstIndex":I
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 863
    .local v0, "fra":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v4

    .line 864
    .local v4, "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    sget-object v5, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedResultType()I

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/ss/usermodel/CellType;->forInt(I)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_4

    const/4 v6, 0x5

    if-eq v5, v6, :cond_2

    const/4 v1, 0x6

    if-ne v5, v1, :cond_1

    .line 872
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedErrorValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(I)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 874
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected formula result type ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 866
    :cond_2
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedBooleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    return-object v1

    .line 870
    :cond_4
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/FormulaRecord;->getValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/NumberToTextConverter;->toText(D)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 868
    :cond_5
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getStringValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 845
    .end local v0    # "fra":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    .end local v4    # "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    :pswitch_4
    const-string v0, ""

    return-object v0

    .line 849
    :pswitch_5
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->getSSTIndex()I

    move-result v0

    .line 850
    .local v0, "sstIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSSTString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1

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

.method private static determineType(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)Lorg/apache/poi/ss/usermodel/CellType;
    .locals 4
    .param p0, "cval"    # Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 200
    instance-of v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0

    .line 204
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/hssf/record/Record;

    .line 205
    .local v0, "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    const/16 v2, 0xfd

    if-eq v1, v2, :cond_5

    const/16 v2, 0x201

    if-eq v1, v2, :cond_4

    const/16 v2, 0x203

    if-eq v1, v2, :cond_3

    const/16 v2, 0x205

    if-ne v1, v2, :cond_2

    .line 211
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/hssf/record/BoolErrRecord;

    .line 213
    .local v1, "boolErrRecord":Lorg/apache/poi/hssf/record/BoolErrRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/BoolErrRecord;->isBoolean()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    :goto_0
    return-object v2

    .line 217
    .end local v1    # "boolErrRecord":Lorg/apache/poi/hssf/record/BoolErrRecord;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad cell value rec ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_3
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v1

    .line 208
    :cond_4
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v1

    .line 209
    :cond_5
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v1
.end method

.method private notifyFormulaChanging()V
    .locals 2

    .line 639
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    instance-of v1, v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    if-eqz v1, :cond_0

    .line 640
    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->notifyFormulaChanging()V

    .line 642
    :cond_0
    return-void
.end method

.method private setCellType(Lorg/apache/poi/ss/usermodel/CellType;ZISS)V
    .locals 10
    .param p1, "cellType"    # Lorg/apache/poi/ss/usermodel/CellType;
    .param p2, "setValue"    # Z
    .param p3, "row"    # I
    .param p4, "col"    # S
    .param p5, "styleIndex"    # S

    .line 302
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .local v0, "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    move-object v2, v1

    .local v2, "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    move-object v3, v1

    .local v3, "brec":Lorg/apache/poi/hssf/record/BlankRecord;
    move-object v4, v1

    .local v4, "errRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    move-object v5, v1

    .line 434
    .local v1, "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    .local v5, "boolRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid cell type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 302
    .end local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    .end local v1    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    .end local v2    # "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    .end local v3    # "brec":Lorg/apache/poi/hssf/record/BlankRecord;
    .end local v4    # "errRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    .end local v5    # "boolRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    :pswitch_0
    move-object v0, v1

    .restart local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    move-object v2, v1

    .restart local v2    # "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    move-object v3, v1

    .restart local v3    # "brec":Lorg/apache/poi/hssf/record/BlankRecord;
    move-object v4, v1

    .line 414
    .restart local v1    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    .local v4, "boolRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    const/4 v5, 0x0

    .line 416
    .local v5, "errRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq p1, v6, :cond_0

    .line 418
    new-instance v6, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-direct {v6}, Lorg/apache/poi/hssf/record/BoolErrRecord;-><init>()V

    move-object v5, v6

    goto :goto_0

    .line 422
    :cond_0
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-object v5, v6

    check-cast v5, Lorg/apache/poi/hssf/record/BoolErrRecord;

    .line 424
    :goto_0
    invoke-virtual {v5, p4}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setColumn(S)V

    .line 425
    if-eqz p2, :cond_1

    .line 427
    sget-object v6, Lorg/apache/poi/ss/usermodel/FormulaError;->VALUE:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v6}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setValue(B)V

    .line 429
    :cond_1
    invoke-virtual {v5, p5}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setXFIndex(S)V

    .line 430
    invoke-virtual {v5, p3}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setRow(I)V

    .line 431
    iput-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 432
    goto/16 :goto_6

    .line 302
    .end local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    .end local v1    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    .end local v2    # "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    .end local v3    # "brec":Lorg/apache/poi/hssf/record/BlankRecord;
    .end local v4    # "boolRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    .end local v5    # "errRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    :pswitch_1
    move-object v0, v1

    .restart local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    move-object v2, v1

    .restart local v2    # "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    move-object v3, v1

    .line 393
    .restart local v1    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    .restart local v3    # "brec":Lorg/apache/poi/hssf/record/BlankRecord;
    const/4 v4, 0x0

    .line 395
    .restart local v4    # "boolRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq p1, v5, :cond_2

    .line 397
    new-instance v5, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-direct {v5}, Lorg/apache/poi/hssf/record/BoolErrRecord;-><init>()V

    move-object v4, v5

    goto :goto_1

    .line 401
    :cond_2
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-object v4, v5

    check-cast v4, Lorg/apache/poi/hssf/record/BoolErrRecord;

    .line 403
    :goto_1
    invoke-virtual {v4, p4}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setColumn(S)V

    .line 404
    if-eqz p2, :cond_3

    .line 406
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->convertCellValueToBoolean()Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setValue(Z)V

    .line 408
    :cond_3
    invoke-virtual {v4, p5}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setXFIndex(S)V

    .line 409
    invoke-virtual {v4, p3}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setRow(I)V

    .line 410
    iput-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 411
    goto/16 :goto_6

    .line 302
    .end local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    .end local v1    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    .end local v2    # "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    .end local v3    # "brec":Lorg/apache/poi/hssf/record/BlankRecord;
    .end local v4    # "boolRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    :pswitch_2
    move-object v0, v1

    .line 324
    .restart local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    const/4 v1, 0x0

    .line 326
    .restart local v1    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq p1, v2, :cond_4

    .line 328
    new-instance v2, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/NumberRecord;-><init>()V

    move-object v1, v2

    goto :goto_2

    .line 332
    :cond_4
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-object v1, v2

    check-cast v1, Lorg/apache/poi/hssf/record/NumberRecord;

    .line 334
    :goto_2
    invoke-virtual {v1, p4}, Lorg/apache/poi/hssf/record/NumberRecord;->setColumn(S)V

    .line 335
    if-eqz p2, :cond_5

    .line 337
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/hssf/record/NumberRecord;->setValue(D)V

    .line 339
    :cond_5
    invoke-virtual {v1, p5}, Lorg/apache/poi/hssf/record/NumberRecord;->setXFIndex(S)V

    .line 340
    invoke-virtual {v1, p3}, Lorg/apache/poi/hssf/record/NumberRecord;->setRow(I)V

    .line 341
    iput-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 342
    goto/16 :goto_6

    .line 308
    .end local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    .end local v1    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    :pswitch_3
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq p1, v0, :cond_6

    .line 309
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRowsAggregate()Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->createFormula(II)Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    move-result-object v0

    .restart local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    goto :goto_3

    .line 311
    .end local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    :cond_6
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 312
    .restart local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    invoke-virtual {v0, p3}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setRow(I)V

    .line 313
    invoke-virtual {v0, p4}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setColumn(S)V

    .line 315
    :goto_3
    if-eqz p2, :cond_7

    .line 317
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/hssf/record/FormulaRecord;->setValue(D)V

    .line 319
    :cond_7
    invoke-virtual {v0, p5}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setXFIndex(S)V

    .line 320
    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 321
    goto/16 :goto_6

    .line 302
    .end local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    :pswitch_4
    move-object v0, v1

    .restart local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    move-object v2, v1

    .line 374
    .restart local v1    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    .restart local v2    # "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    const/4 v3, 0x0

    .line 376
    .restart local v3    # "brec":Lorg/apache/poi/hssf/record/BlankRecord;
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq p1, v4, :cond_8

    .line 378
    new-instance v4, Lorg/apache/poi/hssf/record/BlankRecord;

    invoke-direct {v4}, Lorg/apache/poi/hssf/record/BlankRecord;-><init>()V

    move-object v3, v4

    goto :goto_4

    .line 382
    :cond_8
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-object v3, v4

    check-cast v3, Lorg/apache/poi/hssf/record/BlankRecord;

    .line 384
    :goto_4
    invoke-virtual {v3, p4}, Lorg/apache/poi/hssf/record/BlankRecord;->setColumn(S)V

    .line 387
    invoke-virtual {v3, p5}, Lorg/apache/poi/hssf/record/BlankRecord;->setXFIndex(S)V

    .line 388
    invoke-virtual {v3, p3}, Lorg/apache/poi/hssf/record/BlankRecord;->setRow(I)V

    .line 389
    iput-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 390
    goto :goto_6

    .line 302
    .end local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    .end local v1    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    .end local v2    # "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    .end local v3    # "brec":Lorg/apache/poi/hssf/record/BlankRecord;
    :pswitch_5
    move-object v0, v1

    .line 347
    .restart local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    .restart local v1    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne p1, v2, :cond_9

    .line 348
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v2, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    .restart local v2    # "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    goto :goto_5

    .line 350
    .end local v2    # "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    :cond_9
    new-instance v2, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/LabelSSTRecord;-><init>()V

    .line 351
    .restart local v2    # "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    invoke-virtual {v2, p4}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setColumn(S)V

    .line 352
    invoke-virtual {v2, p3}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setRow(I)V

    .line 353
    invoke-virtual {v2, p5}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setXFIndex(S)V

    .line 355
    :goto_5
    if-eqz p2, :cond_b

    .line 356
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->convertCellValueToString()Ljava/lang/String;

    move-result-object v3

    .line 357
    .local v3, "str":Ljava/lang/String;
    if-nez v3, :cond_a

    .line 360
    sget-object v5, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v6, 0x0

    move-object v4, p0

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v4 .. v9}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;ZISS)V

    .line 361
    return-void

    .line 363
    :cond_a
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v4

    new-instance v5, Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-direct {v5, v3}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addSSTString(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v4

    .line 364
    .local v4, "sstIndex":I
    invoke-virtual {v2, v4}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setSSTIndex(I)V

    .line 365
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSSTString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v5

    .line 366
    .local v5, "us":Lorg/apache/poi/hssf/record/common/UnicodeString;
    new-instance v6, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-direct {v6}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>()V

    iput-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 367
    invoke-virtual {v6, v5}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->setUnicodeString(Lorg/apache/poi/hssf/record/common/UnicodeString;)V

    .line 370
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "sstIndex":I
    .end local v5    # "us":Lorg/apache/poi/hssf/record/common/UnicodeString;
    :cond_b
    iput-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 371
    nop

    .line 436
    .end local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    .end local v1    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    .end local v2    # "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    :goto_6
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq p1, v0, :cond_c

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->_NONE:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq v0, v1, :cond_c

    .line 439
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->replaceValueRecord(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    .line 441
    :cond_c
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    .line 442
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

.method private static typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "expectedTypeCode"    # Lorg/apache/poi/ss/usermodel/CellType;
    .param p1, "actualTypeCode"    # Lorg/apache/poi/ss/usermodel/CellType;
    .param p2, "isFormulaCell"    # Z

    .line 652
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

    .line 654
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getAddress()Lorg/apache/poi/ss/util/CellAddress;
    .locals 1

    .line 255
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    return-object v0
.end method

.method public getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 4

    .line 1192
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    .line 1197
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0

    .line 1193
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v0

    .line 1194
    .local v0, "ref":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cell "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .locals 3

    .line 886
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 890
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getBooleanValue()Z

    move-result v0

    return v0

    .line 894
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 892
    :cond_1
    nop

    .line 896
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v0

    .line 897
    .local v0, "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkFormulaCachedValueType(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/hssf/record/FormulaRecord;)V

    .line 898
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedBooleanValue()Z

    move-result v1

    return v1

    .line 888
    .end local v0    # "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    :cond_2
    return v2
.end method

.method protected getBoundWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    return-object v0
.end method

.method public getCachedFormulaResultType()I
    .locals 1

    .line 1159
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result v0

    return v0
.end method

.method public getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 2

    .line 1172
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    .line 1175
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedResultType()I

    move-result v0

    .line 1176
    .local v0, "code":I
    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/CellType;->forInt(I)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    return-object v1

    .line 1173
    .end local v0    # "code":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only formula cells have cached results"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCellComment()Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .locals 3

    .line 1061
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_comment:Lorg/apache/poi/hssf/usermodel/HSSFComment;

    if-nez v0, :cond_0

    .line 1062
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v2}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->findCellComment(II)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_comment:Lorg/apache/poi/hssf/usermodel/HSSFComment;

    .line 1064
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_comment:Lorg/apache/poi/hssf/usermodel/HSSFComment;

    return-object v0
.end method

.method public bridge synthetic getCellComment()Lorg/apache/poi/ss/usermodel/Comment;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellComment()Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v0

    return-object v0
.end method

.method public getCellFormula()Ljava/lang/String;
    .locals 3

    .line 645
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    instance-of v1, v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    if-eqz v1, :cond_0

    .line 648
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->toFormulaString(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 646
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getCellStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .locals 4

    .line 961
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v0

    .line 962
    .local v0, "styleIndex":S
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v1

    .line 963
    .local v1, "xf":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v2
.end method

.method public bridge synthetic getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public getCellType()I
    .locals 1

    .line 454
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result v0

    return v0
.end method

.method public getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    .line 465
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0
.end method

.method protected getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .locals 1

    .line 974
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    return-object v0
.end method

.method public getColumnIndex()I
    .locals 2

    .line 247
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getDateCellValue()Ljava/util/Date;
    .locals 3

    .line 697
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    .line 698
    const/4 v0, 0x0

    return-object v0

    .line 700
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v0

    .line 701
    .local v0, "value":D
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->isUsing1904DateWindowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 702
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFDateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object v2

    return-object v2

    .line 704
    :cond_1
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFDateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public getErrorCellValue()B
    .locals 4

    .line 907
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 909
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getErrorValue()B

    move-result v0

    return v0

    .line 907
    :cond_0
    const/4 v0, 0x0

    .line 915
    .local v0, "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 911
    .end local v0    # "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v0

    .line 912
    .restart local v0    # "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkFormulaCachedValueType(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/hssf/record/FormulaRecord;)V

    .line 913
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedErrorValue()I

    move-result v1

    int-to-byte v1, v1

    return v1
.end method

.method public getHyperlink()Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
    .locals 3

    .line 1087
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v2}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getHyperlink(II)Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHyperlink()Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getHyperlink()Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public getNumericCellValue()D
    .locals 3

    .line 673
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 677
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NumberRecord;->getValue()D

    move-result-wide v0

    return-wide v0

    .line 679
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 683
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v0

    .line 684
    .local v0, "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkFormulaCachedValueType(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/hssf/record/FormulaRecord;)V

    .line 685
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getValue()D

    move-result-wide v1

    return-wide v1

    .line 675
    .end local v0    # "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRichStringCellValue()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .locals 4

    .line 725
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const-string v2, ""

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 735
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 736
    .local v0, "fra":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkFormulaCachedValueType(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/hssf/record/FormulaRecord;)V

    .line 737
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getStringValue()Ljava/lang/String;

    move-result-object v1

    .line 738
    .local v1, "strVal":Ljava/lang/String;
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-direct {v3, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 731
    .end local v0    # "fra":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 727
    :cond_2
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-direct {v0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 729
    :cond_3
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    return-object v0
.end method

.method public bridge synthetic getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRichStringCellValue()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v0

    return-object v0
.end method

.method public getRow()Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .locals 2

    .line 135
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRowIndex()I

    move-result v0

    .line 136
    .local v0, "rowIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getRow()Lorg/apache/poi/ss/usermodel/Row;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRow()Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v0

    return-object v0
.end method

.method public getRowIndex()I
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v0

    return v0
.end method

.method public getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    return-object v0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getStringCellValue()Ljava/lang/String;
    .locals 2

    .line 714
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRichStringCellValue()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v0

    .line 715
    .local v0, "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isPartOfArrayFormulaGroup()Z
    .locals 2

    .line 1201
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq v0, v1, :cond_0

    .line 1202
    const/4 v0, 0x0

    return v0

    .line 1204
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->isPartOfArrayFormula()Z

    move-result v0

    return v0
.end method

.method notifyArrayFormulaChanging()V
    .locals 3

    .line 1236
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    .line 1237
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

    .line 1239
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyArrayFormulaChanging(Ljava/lang/String;)V

    .line 1240
    return-void
.end method

.method notifyArrayFormulaChanging(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1213
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    .line 1214
    .local v0, "cra":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getNumberOfCells()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 1218
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRow()Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->removeArrayFormula(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellRange;

    .line 1219
    return-void

    .line 1215
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeCellComment()V
    .locals 3

    .line 1074
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v2}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->findCellComment(II)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v0

    .line 1075
    .local v0, "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_comment:Lorg/apache/poi/hssf/usermodel/HSSFComment;

    .line 1076
    if-nez v0, :cond_0

    .line 1077
    return-void

    .line 1079
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->removeShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)Z

    .line 1080
    return-void
.end method

.method public removeHyperlink()V
    .locals 5

    .line 1134
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/RecordBase;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/RecordBase;

    .line 1136
    .local v1, "rec":Lorg/apache/poi/hssf/record/RecordBase;
    instance-of v2, v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    if-eqz v2, :cond_0

    .line 1137
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    .line 1138
    .local v2, "link":Lorg/apache/poi/hssf/record/HyperlinkRecord;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getFirstColumn()I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v4}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getFirstRow()I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v4}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1139
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1140
    return-void

    .line 1143
    .end local v1    # "rec":Lorg/apache/poi/hssf/record/RecordBase;
    .end local v2    # "link":Lorg/apache/poi/hssf/record/HyperlinkRecord;
    :cond_0
    goto :goto_0

    .line 1144
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/RecordBase;>;"
    :cond_1
    return-void
.end method

.method public setAsActiveCell()V
    .locals 3

    .line 994
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v0

    .line 995
    .local v0, "row":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v1

    .line 996
    .local v1, "col":S
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/model/InternalSheet;->setActiveCellRow(I)V

    .line 997
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->setActiveCellCol(S)V

    .line 998
    return-void
.end method

.method setCellArrayFormula(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 9
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 1180
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v0

    .line 1181
    .local v0, "row":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v7

    .line 1182
    .local v7, "col":S
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v8

    .line 1183
    .local v8, "styleIndex":S
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v3, 0x0

    move-object v1, p0

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;ZISS)V

    .line 1186
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    new-instance v2, Lorg/apache/poi/ss/formula/ptg/ExpPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ss/formula/ptg/ExpPtg;-><init>(II)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1187
    .local v1, "ptgsForCell":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v2, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 1188
    .local v2, "agg":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 1189
    return-void
.end method

.method public setCellComment(Lorg/apache/poi/ss/usermodel/Comment;)V
    .locals 1
    .param p1, "comment"    # Lorg/apache/poi/ss/usermodel/Comment;

    .line 1045
    if-nez p1, :cond_0

    .line 1046
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->removeCellComment()V

    .line 1047
    return-void

    .line 1050
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Comment;->setRow(I)V

    .line 1051
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Comment;->setColumn(I)V

    .line 1052
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_comment:Lorg/apache/poi/hssf/usermodel/HSSFComment;

    .line 1053
    return-void
.end method

.method public setCellErrorValue(B)V
    .locals 1
    .param p1, "errorCode"    # B

    .line 778
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v0

    .line 779
    .local v0, "error":Lorg/apache/poi/ss/usermodel/FormulaError;
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellErrorValue(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    .line 780
    return-void
.end method

.method public setCellErrorValue(Lorg/apache/poi/ss/usermodel/FormulaError;)V
    .locals 9
    .param p1, "error"    # Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 791
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v0

    .line 792
    .local v0, "row":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v7

    .line 793
    .local v7, "col":S
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v8

    .line 794
    .local v8, "styleIndex":S
    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v2}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 796
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v3, 0x0

    move-object v1, p0

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;ZISS)V

    .line 799
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setValue(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    .line 800
    goto :goto_0

    .line 802
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setCachedErrorResult(I)V

    .line 805
    :goto_0
    return-void
.end method

.method public setCellFormula(Ljava/lang/String;)V
    .locals 11
    .param p1, "formula"    # Ljava/lang/String;

    .line 607
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyArrayFormulaChanging()V

    .line 611
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v0

    .line 612
    .local v0, "row":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v7

    .line 613
    .local v7, "col":S
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v8

    .line 615
    .local v8, "styleIndex":S
    if-nez p1, :cond_1

    .line 616
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyFormulaChanging()V

    .line 617
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v3, 0x0

    move-object v1, p0

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;ZISS)V

    .line 618
    return-void

    .line 620
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v9

    .line 621
    .local v9, "sheetIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    sget-object v2, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-static {p1, v1, v2, v9}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/ss/formula/FormulaType;I)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v10

    .line 622
    .local v10, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v3, 0x0

    move-object v1, p0

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;ZISS)V

    .line 623
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 624
    .local v1, "agg":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v2

    .line 625
    .local v2, "frec":Lorg/apache/poi/hssf/record/FormulaRecord;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/FormulaRecord;->setOptions(S)V

    .line 626
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/hssf/record/FormulaRecord;->setValue(D)V

    .line 629
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getXFIndex()S

    move-result v3

    if-nez v3, :cond_2

    .line 630
    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setXFIndex(S)V

    .line 632
    :cond_2
    invoke-virtual {v1, v10}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 633
    return-void
.end method

.method public setCellStyle(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)V
    .locals 2
    .param p1, "style"    # Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    .line 935
    if-nez p1, :cond_0

    .line 936
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->setXFIndex(S)V

    .line 937
    return-void

    .line 941
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->verifyBelongsToWorkbook(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    .line 944
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getUserStyleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 945
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->applyUserCellStyle(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)S

    move-result v0

    .local v0, "styleIndex":S
    goto :goto_0

    .line 947
    .end local v0    # "styleIndex":S
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getIndex()S

    move-result v0

    .line 951
    .restart local v0    # "styleIndex":S
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1, v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->setXFIndex(S)V

    .line 952
    return-void
.end method

.method public setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 1
    .param p1, "style"    # Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 931
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellStyle(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)V

    .line 932
    return-void
.end method

.method public setCellType(I)V
    .locals 1
    .param p1, "cellType"    # I

    .line 272
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellType;->forInt(I)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 273
    return-void
.end method

.method public setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 9
    .param p1, "cellType"    # Lorg/apache/poi/ss/usermodel/CellType;

    .line 281
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyFormulaChanging()V

    .line 282
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyArrayFormulaChanging()V

    .line 285
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v0

    .line 286
    .local v0, "row":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v7

    .line 287
    .local v7, "col":S
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v8

    .line 288
    .local v8, "styleIndex":S
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;ZISS)V

    .line 289
    return-void
.end method

.method public setCellValue(D)V
    .locals 9
    .param p1, "value"    # D

    .line 478
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->DIV0:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellErrorValue(B)V

    goto :goto_0

    .line 482
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->NUM:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellErrorValue(B)V

    goto :goto_0

    .line 487
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v0

    .line 488
    .local v0, "row":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v7

    .line 489
    .local v7, "col":S
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v8

    .line 491
    .local v8, "styleIndex":S
    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v2}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 493
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v3, 0x0

    move-object v1, p0

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;ZISS)V

    .line 496
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/hssf/record/NumberRecord;->setValue(D)V

    .line 497
    goto :goto_0

    .line 499
    :cond_3
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setCachedDoubleResult(D)V

    .line 504
    .end local v0    # "row":I
    .end local v7    # "col":S
    .end local v8    # "styleIndex":S
    :goto_0
    return-void
.end method

.method public setCellValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 548
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    .line 549
    .local v0, "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    .line 550
    return-void
.end method

.method public setCellValue(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "value"    # Ljava/util/Calendar;

    .line 536
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->isUsing1904DateWindowing()Z

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFDateUtil;->getExcelDate(Ljava/util/Calendar;Z)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellValue(D)V

    .line 537
    return-void
.end method

.method public setCellValue(Ljava/util/Date;)V
    .locals 2
    .param p1, "value"    # Ljava/util/Date;

    .line 516
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->isUsing1904DateWindowing()Z

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFDateUtil;->getExcelDate(Ljava/util/Date;Z)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellValue(D)V

    .line 517
    return-void
.end method

.method public setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V
    .locals 9
    .param p1, "value"    # Lorg/apache/poi/ss/usermodel/RichTextString;

    .line 563
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v0

    .line 564
    .local v0, "row":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v7

    .line 565
    .local v7, "col":S
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v8

    .line 566
    .local v8, "styleIndex":S
    if-nez p1, :cond_0

    .line 568
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyFormulaChanging()V

    .line 569
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v3, 0x0

    move-object v1, p0

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;ZISS)V

    .line 570
    return-void

    .line 573
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->length()I

    move-result v1

    sget-object v2, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxTextLength()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 577
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v1, v2, :cond_1

    .line 580
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 581
    .local v1, "fr":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setCachedStringResult(Ljava/lang/String;)V

    .line 583
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 586
    return-void

    .line 592
    .end local v1    # "fr":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq v1, v2, :cond_2

    .line 593
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v3, 0x0

    move-object v1, p0

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;ZISS)V

    .line 595
    :cond_2
    const/4 v1, 0x0

    .line 597
    .local v1, "index":I
    move-object v2, p1

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 598
    .local v2, "hvalue":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getUnicodeString()Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v3

    .line 599
    .local v3, "str":Lorg/apache/poi/hssf/record/common/UnicodeString;
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addSSTString(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v1

    .line 600
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v4, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-virtual {v4, v1}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setSSTIndex(I)V

    .line 601
    iput-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 602
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v5, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-virtual {v2, v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->setWorkbookReferences(Lorg/apache/poi/hssf/model/InternalWorkbook;Lorg/apache/poi/hssf/record/LabelSSTRecord;)V

    .line 603
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSSTString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->setUnicodeString(Lorg/apache/poi/hssf/record/common/UnicodeString;)V

    .line 604
    return-void

    .line 574
    .end local v1    # "index":I
    .end local v2    # "hvalue":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .end local v3    # "str":Lorg/apache/poi/hssf/record/common/UnicodeString;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The maximum length of cell contents (text) is 32,767 characters"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCellValue(Z)V
    .locals 9
    .param p1, "value"    # Z

    .line 750
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v0

    .line 751
    .local v0, "row":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v7

    .line 752
    .local v7, "col":S
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v8

    .line 754
    .local v8, "styleIndex":S
    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v2}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 756
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v3, 0x0

    move-object v1, p0

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;ZISS)V

    .line 759
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setValue(Z)V

    .line 760
    goto :goto_0

    .line 762
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setCachedBooleanResult(Z)V

    .line 765
    :goto_0
    return-void
.end method

.method public setHyperlink(Lorg/apache/poi/ss/usermodel/Hyperlink;)V
    .locals 4
    .param p1, "hyperlink"    # Lorg/apache/poi/ss/usermodel/Hyperlink;

    .line 1098
    if-nez p1, :cond_0

    .line 1099
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->removeHyperlink()V

    .line 1100
    return-void

    .line 1103
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    .line 1105
    .local v0, "link":Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setFirstRow(I)V

    .line 1106
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLastRow(I)V

    .line 1107
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setFirstColumn(I)V

    .line 1108
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLastColumn(I)V

    .line 1110
    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$common$usermodel$HyperlinkType:[I

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->getTypeEnum()Lorg/apache/poi/common/usermodel/HyperlinkType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/common/usermodel/HyperlinkType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 1119
    :cond_1
    const-string v1, "place"

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLabel(Ljava/lang/String;)V

    .line 1120
    goto :goto_0

    .line 1116
    :cond_2
    const-string v1, "file"

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLabel(Ljava/lang/String;)V

    .line 1117
    goto :goto_0

    .line 1113
    :cond_3
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLabel(Ljava/lang/String;)V

    .line 1114
    nop

    .line 1125
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v1

    .line 1126
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .line 1127
    .local v3, "eofLoc":I
    iget-object v2, v0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1013
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Cell Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1019
    :pswitch_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getErrorValue()B

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1017
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getBooleanCellValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    goto :goto_0

    :cond_0
    const-string v0, "FALSE"

    :goto_0
    return-object v0

    .line 1024
    :pswitch_2
    invoke-static {p0}, Lorg/apache/poi/hssf/usermodel/HSSFDateUtil;->isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1025
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd-MMM-yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1026
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1027
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getDateCellValue()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1029
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1021
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellFormula()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1015
    :pswitch_4
    const-string v0, ""

    return-object v0

    .line 1031
    :pswitch_5
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getStringCellValue()Ljava/lang/String;

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

.method protected updateCellNum(S)V
    .locals 1
    .param p1, "num"    # S

    .line 242
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0, p1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->setColumn(S)V

    .line 243
    return-void
.end method
