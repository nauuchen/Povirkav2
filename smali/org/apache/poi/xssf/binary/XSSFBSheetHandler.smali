.class public Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;
.super Lorg/apache/poi/xssf/binary/XSSFBParser;
.source "XSSFBSheetHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/binary/XSSFBSheetHandler$SheetContentsHandler;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final CHECK_ALL_ROWS:I = -0x1


# instance fields
.field private final cellBuffer:Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

.field private final comments:Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

.field private currentRow:I

.field private final dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

.field private final formulasNotResults:Z

.field private final handler:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

.field private hyperlinkCellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

.field private lastEndedRow:I

.field private lastStartedRow:I

.field private rkBuffer:[B

.field private final stringsTable:Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;

.field private final styles:Lorg/apache/poi/xssf/binary/XSSFBStylesTable;

.field private xlWideStringBuffer:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/xssf/binary/XSSFBStylesTable;Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/ss/usermodel/DataFormatter;Z)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "styles"    # Lorg/apache/poi/xssf/binary/XSSFBStylesTable;
    .param p3, "comments"    # Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;
    .param p4, "strings"    # Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;
    .param p5, "sheetContentsHandler"    # Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;
    .param p6, "dataFormatter"    # Lorg/apache/poi/ss/usermodel/DataFormatter;
    .param p7, "formulasNotResults"    # Z

    .line 63
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBParser;-><init>(Ljava/io/InputStream;)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->lastEndedRow:I

    .line 49
    iput v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->lastStartedRow:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->currentRow:I

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->rkBuffer:[B

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->hyperlinkCellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    .line 55
    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    invoke-direct {v0}, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->cellBuffer:Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    .line 64
    iput-object p2, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->styles:Lorg/apache/poi/xssf/binary/XSSFBStylesTable;

    .line 65
    iput-object p3, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->comments:Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

    .line 66
    iput-object p4, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->stringsTable:Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;

    .line 67
    iput-object p5, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handler:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    .line 68
    iput-object p6, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    .line 69
    iput-boolean p7, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->formulasNotResults:Z

    .line 70
    return-void
.end method

.method private beforeCellValue([B)V
    .locals 3
    .param p1, "data"    # [B

    .line 129
    iget v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->currentRow:I

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->cellBuffer:Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->parse([BIILorg/apache/poi/xssf/binary/XSSFBCellHeader;)V

    .line 130
    iget v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->currentRow:I

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->cellBuffer:Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->getColNum()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->checkMissedComments(II)V

    .line 131
    return-void
.end method

.method private checkMissedComments(I)V
    .locals 4
    .param p1, "currentRow"    # I

    .line 258
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->comments:Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

    if-nez v0, :cond_0

    .line 259
    return-void

    .line 261
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->getAddresses()Ljava/util/Queue;

    move-result-object v0

    .line 262
    .local v0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/poi/ss/util/CellAddress;>;"
    const/4 v1, -0x1

    .line 263
    .local v1, "lastInterpolatedRow":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 264
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/util/CellAddress;

    .line 265
    .local v2, "cellAddress":Lorg/apache/poi/ss/util/CellAddress;
    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v3

    if-ge v3, p1, :cond_3

    .line 266
    :cond_1
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lorg/apache/poi/ss/util/CellAddress;

    .line 267
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v3

    if-eq v3, v1, :cond_2

    .line 268
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->startRow(I)V

    .line 270
    :cond_2
    iget-object v3, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->comments:Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

    invoke-virtual {v3, v2}, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->get(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/binary/XSSFBComment;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->dumpEmptyCellComment(Lorg/apache/poi/ss/util/CellAddress;Lorg/apache/poi/xssf/binary/XSSFBComment;)V

    .line 271
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v1

    .line 275
    .end local v2    # "cellAddress":Lorg/apache/poi/ss/util/CellAddress;
    goto :goto_0

    .line 277
    :cond_3
    return-void
.end method

.method private checkMissedComments(II)V
    .locals 3
    .param p1, "currentRow"    # I
    .param p2, "colNum"    # I

    .line 236
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->comments:Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

    if-nez v0, :cond_0

    .line 237
    return-void

    .line 239
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->getAddresses()Ljava/util/Queue;

    move-result-object v0

    .line 240
    .local v0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/poi/ss/util/CellAddress;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 241
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellAddress;

    .line 242
    .local v1, "cellAddress":Lorg/apache/poi/ss/util/CellAddress;
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v2

    if-ge v2, p2, :cond_1

    .line 243
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lorg/apache/poi/ss/util/CellAddress;

    .line 244
    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->comments:Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

    invoke-virtual {v2, v1}, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->get(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/binary/XSSFBComment;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->dumpEmptyCellComment(Lorg/apache/poi/ss/util/CellAddress;Lorg/apache/poi/xssf/binary/XSSFBComment;)V

    goto :goto_1

    .line 245
    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v2

    if-ne v2, p1, :cond_2

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v2

    if-ne v2, p2, :cond_2

    .line 246
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 247
    return-void

    .line 248
    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v2

    if-ne v2, p1, :cond_3

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v2

    if-le v2, p2, :cond_3

    .line 249
    return-void

    .line 250
    :cond_3
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v2

    if-le v2, p1, :cond_4

    .line 251
    return-void

    .line 253
    .end local v1    # "cellAddress":Lorg/apache/poi/ss/util/CellAddress;
    :cond_4
    :goto_1
    goto :goto_0

    .line 254
    :cond_5
    return-void
.end method

.method private dumpEmptyCellComment(Lorg/apache/poi/ss/util/CellAddress;Lorg/apache/poi/xssf/binary/XSSFBComment;)V
    .locals 3
    .param p1, "cellAddress"    # Lorg/apache/poi/ss/util/CellAddress;
    .param p2, "comment"    # Lorg/apache/poi/xssf/binary/XSSFBComment;

    .line 300
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handler:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p2}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->cell(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFComment;)V

    .line 301
    return-void
.end method

.method private endRow(I)V
    .locals 1
    .param p1, "row"    # I

    .line 292
    iget v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->lastEndedRow:I

    if-ne v0, p1, :cond_0

    .line 293
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handler:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    invoke-interface {v0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->endRow(I)V

    .line 296
    iput p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->lastEndedRow:I

    .line 297
    return-void
.end method

.method private formatVal(DI)Ljava/lang/String;
    .locals 3
    .param p1, "val"    # D
    .param p3, "styleIdx"    # I

    .line 195
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->styles:Lorg/apache/poi/xssf/binary/XSSFBStylesTable;

    invoke-virtual {v0, p3}, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->getNumberFormatString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "formatString":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->styles:Lorg/apache/poi/xssf/binary/XSSFBStylesTable;

    invoke-virtual {v1, p3}, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->getNumberFormatIndex(I)S

    move-result v1

    .line 201
    .local v1, "styleIndex":S
    if-nez v0, :cond_0

    .line 202
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getBuiltinFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    const/4 v1, 0x0

    .line 205
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-virtual {v2, p1, p2, v1, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleBoolean([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 176
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    .line 177
    sget v0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->length:I

    aget-byte v0, p1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "TRUE"

    goto :goto_0

    :cond_0
    const-string v0, "FALSE"

    .line 178
    .local v0, "formattedVal":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method private handleBrtCellIsst([B)V
    .locals 3
    .param p1, "data"    # [B

    .line 209
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    .line 210
    sget v0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->length:I

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->castToInt(J)I

    move-result v0

    .line 211
    .local v0, "idx":I
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->stringsTable:Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;

    invoke-virtual {v2, v0}, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->getEntryAt(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    .line 212
    .local v1, "rtss":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method private handleCellError([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 164
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    .line 166
    const-string v0, "ERROR"

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private handleCellReal([B)V
    .locals 3
    .param p1, "data"    # [B

    .line 182
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    .line 184
    sget v0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->length:I

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getDouble([BI)D

    move-result-wide v0

    .line 185
    .local v0, "val":D
    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->cellBuffer:Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->getStyleIdx()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->formatVal(DI)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method private handleCellRk([B)V
    .locals 3
    .param p1, "data"    # [B

    .line 189
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    .line 190
    sget v0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->length:I

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->rkNumber([BI)D

    move-result-wide v0

    .line 191
    .local v0, "val":D
    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->cellBuffer:Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->getStyleIdx()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->formatVal(DI)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method private handleCellSt([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 150
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    .line 151
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 152
    sget v0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->length:I

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-static {p1, v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    .line 153
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method private handleCellValue(Ljava/lang/String;)V
    .locals 4
    .param p1, "formattedValue"    # Ljava/lang/String;

    .line 134
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    iget v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->currentRow:I

    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->cellBuffer:Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->getColNum()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    .line 135
    .local v0, "cellAddress":Lorg/apache/poi/ss/util/CellAddress;
    const/4 v1, 0x0

    .line 136
    .local v1, "comment":Lorg/apache/poi/xssf/binary/XSSFBComment;
    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->comments:Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {v2, v0}, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->get(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/binary/XSSFBComment;

    move-result-object v1

    .line 139
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handler:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1, v1}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->cell(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFComment;)V

    .line 140
    return-void
.end method

.method private handleFmlaError([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 170
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    .line 172
    const-string v0, "ERROR"

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method private handleFmlaNum([B)V
    .locals 3
    .param p1, "data"    # [B

    .line 143
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    .line 145
    sget v0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->length:I

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getDouble([BI)D

    move-result-wide v0

    .line 146
    .local v0, "val":D
    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->cellBuffer:Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->getStyleIdx()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->formatVal(DI)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private handleFmlaString([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 157
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    .line 158
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 159
    sget v0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->length:I

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-static {p1, v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    .line 160
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method private handleHeaderFooter([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 217
    invoke-static {p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->parse([B)Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;

    move-result-object v0

    .line 218
    .local v0, "headerFooter":Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->getHeader()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->outputHeaderFooter(Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)V

    .line 219
    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->getFooter()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->outputHeaderFooter(Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)V

    .line 220
    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->getHeaderEven()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->outputHeaderFooter(Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)V

    .line 221
    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->getFooterEven()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->outputHeaderFooter(Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)V

    .line 222
    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->getHeaderFirst()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->outputHeaderFooter(Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)V

    .line 223
    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->getFooterFirst()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->outputHeaderFooter(Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)V

    .line 224
    return-void
.end method

.method private outputHeaderFooter(Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)V
    .locals 4
    .param p1, "headerFooter"    # Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    .line 227
    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->getString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 229
    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handler:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->isHeader()Z

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->getHeaderFooterTypeLabel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->headerFooter(Ljava/lang/String;ZLjava/lang/String;)V

    .line 231
    :cond_0
    return-void
.end method

.method private rkNumber([BI)D
    .locals 9
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 305
    aget-byte v0, p1, p2

    .line 306
    .local v0, "b0":B
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "s":Ljava/lang/String;
    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 308
    .local v2, "numDivBy100":Z
    :goto_0
    shr-int/lit8 v5, v0, 0x1

    and-int/2addr v5, v4

    if-nez v5, :cond_1

    const/4 v3, 0x1

    .line 311
    .local v3, "floatingPoint":Z
    :cond_1
    and-int/lit8 v4, v0, -0x2

    int-to-byte v0, v4

    .line 312
    and-int/lit8 v4, v0, -0x3

    int-to-byte v0, v4

    .line 314
    iget-object v4, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->rkBuffer:[B

    const/4 v5, 0x4

    aput-byte v0, v4, v5

    .line 315
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_2

    .line 316
    iget-object v6, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->rkBuffer:[B

    add-int/lit8 v7, v4, 0x4

    add-int v8, p2, v4

    aget-byte v8, p1, v8

    aput-byte v8, v6, v7

    .line 315
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 318
    .end local v4    # "i":I
    :cond_2
    const-wide/16 v4, 0x0

    .line 319
    .local v4, "d":D
    if-eqz v3, :cond_3

    .line 320
    iget-object v6, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->rkBuffer:[B

    invoke-static {v6}, Lorg/apache/poi/util/LittleEndian;->getDouble([B)D

    move-result-wide v4

    goto :goto_2

    .line 322
    :cond_3
    iget-object v6, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->rkBuffer:[B

    invoke-static {v6}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result v6

    int-to-double v4, v6

    .line 324
    :goto_2
    if-eqz v2, :cond_4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double v6, v4, v6

    goto :goto_3

    :cond_4
    move-wide v6, v4

    :goto_3
    move-wide v4, v6

    .line 325
    return-wide v4
.end method

.method private startRow(I)V
    .locals 2
    .param p1, "row"    # I

    .line 280
    iget v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->lastStartedRow:I

    if-ne p1, v0, :cond_0

    .line 281
    return-void

    .line 284
    :cond_0
    iget v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->lastEndedRow:I

    if-eq v0, v1, :cond_1

    .line 285
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->endRow(I)V

    .line 287
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handler:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    invoke-interface {v0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->startRow(I)V

    .line 288
    iput p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->lastStartedRow:I

    .line 289
    return-void
.end method


# virtual methods
.method public handleRecord(I[B)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/xssf/binary/XSSFBParseException;
        }
    .end annotation

    .line 74
    invoke-static {p1}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->lookup(I)Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-result-object v0

    .line 76
    .local v0, "type":Lorg/apache/poi/xssf/binary/XSSFBRecordType;
    sget-object v1, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler$1;->$SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType:[I

    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    move v1, v2

    .line 122
    .local v1, "rw":I
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleHeaderFooter([B)V

    goto/16 :goto_0

    .line 76
    .end local v1    # "rw":I
    :pswitch_1
    move v1, v2

    .line 118
    .restart local v1    # "rw":I
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->checkMissedComments(I)V

    .line 119
    iget v2, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->lastStartedRow:I

    invoke-direct {p0, v2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->endRow(I)V

    .line 120
    goto/16 :goto_0

    .line 76
    .end local v1    # "rw":I
    :pswitch_2
    move v1, v2

    .line 114
    .restart local v1    # "rw":I
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleFmlaError([B)V

    .line 115
    goto/16 :goto_0

    .line 76
    .end local v1    # "rw":I
    :pswitch_3
    move v1, v2

    .line 111
    .restart local v1    # "rw":I
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleFmlaNum([B)V

    .line 112
    goto :goto_0

    .line 76
    .end local v1    # "rw":I
    :pswitch_4
    move v1, v2

    .line 108
    .restart local v1    # "rw":I
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleFmlaString([B)V

    .line 109
    goto :goto_0

    .line 76
    .end local v1    # "rw":I
    :pswitch_5
    move v1, v2

    .line 105
    .restart local v1    # "rw":I
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    .line 106
    goto :goto_0

    .line 76
    .end local v1    # "rw":I
    :pswitch_6
    move v1, v2

    .line 102
    .restart local v1    # "rw":I
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellError([B)V

    .line 103
    goto :goto_0

    .line 76
    .end local v1    # "rw":I
    :pswitch_7
    move v1, v2

    .line 99
    .restart local v1    # "rw":I
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleBoolean([B)V

    .line 100
    goto :goto_0

    .line 76
    .end local v1    # "rw":I
    :pswitch_8
    move v1, v2

    .line 96
    .restart local v1    # "rw":I
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellReal([B)V

    .line 97
    goto :goto_0

    .line 76
    .end local v1    # "rw":I
    :pswitch_9
    move v1, v2

    .line 93
    .restart local v1    # "rw":I
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellRk([B)V

    .line 94
    goto :goto_0

    .line 76
    .end local v1    # "rw":I
    :pswitch_a
    move v1, v2

    .line 90
    .restart local v1    # "rw":I
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellSt([B)V

    .line 91
    goto :goto_0

    .line 76
    .end local v1    # "rw":I
    :pswitch_b
    move v1, v2

    .line 87
    .restart local v1    # "rw":I
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleBrtCellIsst([B)V

    .line 88
    goto :goto_0

    .line 78
    .end local v1    # "rw":I
    :pswitch_c
    invoke-static {p2, v2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->castToInt(J)I

    move-result v1

    .line 79
    .restart local v1    # "rw":I
    const/high16 v2, 0x100000

    if-gt v1, v2, :cond_0

    .line 82
    iput v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->currentRow:I

    .line 83
    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->checkMissedComments(I)V

    .line 84
    iget v2, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->currentRow:I

    invoke-direct {p0, v2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->startRow(I)V

    .line 85
    goto :goto_0

    .line 80
    :cond_0
    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Row number beyond allowable range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    .end local v1    # "rw":I
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
