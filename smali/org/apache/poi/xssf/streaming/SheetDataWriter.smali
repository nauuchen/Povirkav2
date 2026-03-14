.class public Lorg/apache/poi/xssf/streaming/SheetDataWriter;
.super Ljava/lang/Object;
.source "SheetDataWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final _fd:Ljava/io/File;

.field private _lowestIndexOfFlushedRows:I

.field private _numberLastFlushedRow:I

.field private _numberOfCellsOfLastFlushedRow:I

.field private _numberOfFlushedRows:I

.field private final _out:Ljava/io/Writer;

.field private _rownum:I

.field private _sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_numberLastFlushedRow:I

    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->createTempFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_fd:Ljava/io/File;

    .line 71
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->createWriter(Ljava/io/File;)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/model/SharedStringsTable;)V
    .locals 0
    .param p1, "sharedStringsTable"    # Lorg/apache/poi/xssf/model/SharedStringsTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    .line 77
    return-void
.end method

.method static replaceWithQuestionMark(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 441
    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const v0, 0xfffe

    if-gt v0, p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

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

.method private writeAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 332
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 336
    return-void
.end method

.method private static writeLastChars(Ljava/io/Writer;[CII)V
    .locals 1
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "chars"    # [C
    .param p2, "last"    # I
    .param p3, "counter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    if-le p3, p2, :cond_0

    .line 436
    sub-int v0, p3, p2

    invoke-virtual {p0, p1, p2, v0}, Ljava/io/Writer;->write([CII)V

    .line 438
    :cond_0
    return-void
.end method


# virtual methods
.method beginRow(ILorg/apache/poi/xssf/streaming/SXSSFRow;)V
    .locals 4
    .param p1, "rownum"    # I
    .param p2, "row"    # Lorg/apache/poi/xssf/streaming/SXSSFRow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v1, "<row"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 211
    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "r"

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->hasCustomHeight()Z

    move-result v0

    const-string/jumbo v1, "true"

    if-eqz v0, :cond_0

    .line 213
    const-string v0, "customHeight"

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getHeightInPoints()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ht"

    invoke-direct {p0, v2, v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getZeroHeight()Z

    move-result v0

    const-string v2, "hidden"

    if-eqz v0, :cond_1

    .line 217
    invoke-direct {p0, v2, v1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->isFormatted()Z

    move-result v0

    const-string v1, "1"

    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getRowStyleIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "s"

    invoke-direct {p0, v3, v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v0, "customFormat"

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getOutlineLevel()I

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getOutlineLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "outlineLevel"

    invoke-direct {p0, v3, v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_3
    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getHidden()Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "0"

    if-eqz v0, :cond_5

    .line 227
    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getHidden()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v3

    :goto_0
    invoke-direct {p0, v2, v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_5
    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getCollapsed()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 230
    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getCollapsed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    move-object v1, v3

    :goto_1
    const-string v0, "collapsed"

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_7
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 234
    iput p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_rownum:I

    .line 235
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 128
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 129
    return-void
.end method

.method public createTempFile()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    const-string v0, "poi-sxssf-sheet"

    const-string v1, ".xml"

    invoke-static {v0, v1}, Lorg/apache/poi/util/TempFile;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public createWriter(Ljava/io/File;)Ljava/io/Writer;
    .locals 5
    .param p1, "fd"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 99
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->decorateOutputStream(Ljava/io/FileOutputStream;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .local v1, "decorated":Ljava/io/OutputStream;
    nop

    .line 104
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    return-object v2

    .line 100
    .end local v1    # "decorated":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 101
    .local v1, "e":Ljava/io/IOException;
    .local v2, "decorated":Ljava/io/OutputStream;
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 102
    throw v1
.end method

.method protected decorateInputStream(Ljava/io/FileInputStream;)Ljava/io/InputStream;
    .locals 0
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    return-object p1
.end method

.method protected decorateOutputStream(Ljava/io/FileOutputStream;)Ljava/io/OutputStream;
    .locals 0
    .param p1, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    return-object p1
.end method

.method dispose()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_fd:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 454
    .local v0, "ret":Z
    nop

    .line 455
    return v0

    .line 453
    .end local v0    # "ret":Z
    :catchall_0
    move-exception v1

    .restart local v0    # "ret":Z
    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_fd:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    throw v1
.end method

.method endRow()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v1, "</row>\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method protected finalize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_fd:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    sget-object v0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t delete temporary encryption file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_fd:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 185
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 186
    return-void
.end method

.method public getLastFlushedRow()I
    .locals 1

    .line 176
    iget v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_numberLastFlushedRow:I

    return v0
.end method

.method public getLowestIndexOfFlushedRows()I
    .locals 1

    .line 172
    iget v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_lowestIndexOfFlushedRows:I

    return v0
.end method

.method public getNumberOfCellsOfLastFlushedRow()I
    .locals 1

    .line 168
    iget v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_numberOfCellsOfLastFlushedRow:I

    return v0
.end method

.method public getNumberOfFlushedRows()I
    .locals 1

    .line 164
    iget v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_numberOfFlushedRows:I

    return v0
.end method

.method protected getTempFile()Ljava/io/File;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_fd:Ljava/io/File;

    return-object v0
.end method

.method public getWorksheetXMLInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->getTempFile()Ljava/io/File;

    move-result-object v0

    .line 140
    .local v0, "fd":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 142
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->decorateInputStream(Ljava/io/FileInputStream;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 143
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 145
    throw v2
.end method

.method hasLeadingTrailingSpaces(Ljava/lang/String;)Z
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .line 343
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 344
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 345
    .local v1, "firstChar":C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 346
    .local v2, "lastChar":C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 348
    .end local v1    # "firstChar":C
    .end local v2    # "lastChar":C
    :cond_2
    return v0
.end method

.method protected outputQuotedString(Ljava/lang/String;)V
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 357
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 358
    .local v0, "chars":[C
    const/4 v1, 0x0

    .line 359
    .local v1, "last":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 360
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "counter":I
    :goto_0
    if-ge v3, v2, :cond_d

    .line 361
    aget-char v4, v0, v3

    .line 362
    .local v4, "c":C
    const/16 v5, 0x9

    if-eq v4, v5, :cond_b

    const/16 v5, 0xa

    if-eq v4, v5, :cond_a

    const/16 v5, 0xd

    if-eq v4, v5, :cond_9

    const/16 v5, 0x22

    if-eq v4, v5, :cond_8

    const/16 v5, 0x26

    if-eq v4, v5, :cond_7

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_6

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_5

    const/16 v5, 0xa0

    if-eq v4, v5, :cond_4

    .line 407
    invoke-static {v4}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->replaceWithQuestionMark(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 408
    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-static {v5, v0, v1, v3}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeLastChars(Ljava/io/Writer;[CII)V

    .line 409
    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const/16 v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(I)V

    .line 410
    add-int/lit8 v1, v3, 0x1

    goto/16 :goto_2

    .line 412
    :cond_1
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 417
    :cond_2
    const/16 v5, 0x7f

    if-le v4, v5, :cond_c

    .line 418
    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-static {v5, v0, v1, v3}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeLastChars(Ljava/io/Writer;[CII)V

    .line 419
    add-int/lit8 v1, v3, 0x1

    .line 422
    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v6, "&#"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 423
    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 424
    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 413
    :cond_3
    :goto_1
    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-static {v5, v0, v1, v3}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeLastChars(Ljava/io/Writer;[CII)V

    .line 414
    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v5, v4}, Ljava/io/Writer;->write(I)V

    .line 415
    add-int/lit8 v1, v3, 0x1

    goto/16 :goto_2

    .line 400
    :cond_4
    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-static {v5, v0, v1, v3}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeLastChars(Ljava/io/Writer;[CII)V

    .line 401
    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v6, "&#xa0;"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 402
    add-int/lit8 v1, v3, 0x1

    .line 403
    goto :goto_2

    .line 369
    :cond_5
    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-static {v5, v0, v1, v3}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeLastChars(Ljava/io/Writer;[CII)V

    .line 370
    add-int/lit8 v1, v3, 0x1

    .line 371
    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v6, "&gt;"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 372
    goto :goto_2

    .line 364
    :cond_6
    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-static {v5, v0, v1, v3}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeLastChars(Ljava/io/Writer;[CII)V

    .line 365
    add-int/lit8 v1, v3, 0x1

    .line 366
    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v6, "&lt;"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 367
    goto :goto_2

    .line 374
    :cond_7
    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-static {v5, v0, v1, v3}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeLastChars(Ljava/io/Writer;[CII)V

    .line 375
    add-int/lit8 v1, v3, 0x1

    .line 376
    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v6, "&amp;"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 377
    goto :goto_2

    .line 379
    :cond_8
    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-static {v5, v0, v1, v3}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeLastChars(Ljava/io/Writer;[CII)V

    .line 380
    add-int/lit8 v1, v3, 0x1

    .line 381
    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v6, "&quot;"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 382
    goto :goto_2

    .line 390
    :cond_9
    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-static {v5, v0, v1, v3}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeLastChars(Ljava/io/Writer;[CII)V

    .line 391
    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v6, "&#xd;"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 392
    add-int/lit8 v1, v3, 0x1

    .line 393
    goto :goto_2

    .line 385
    :cond_a
    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-static {v5, v0, v1, v3}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeLastChars(Ljava/io/Writer;[CII)V

    .line 386
    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v6, "&#xa;"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 387
    add-int/lit8 v1, v3, 0x1

    .line 388
    goto :goto_2

    .line 395
    :cond_b
    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-static {v5, v0, v1, v3}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeLastChars(Ljava/io/Writer;[CII)V

    .line 396
    iget-object v5, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v6, "&#x9;"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 397
    add-int/lit8 v1, v3, 0x1

    .line 398
    nop

    .line 360
    .end local v4    # "c":C
    :cond_c
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 429
    .end local v3    # "counter":I
    :cond_d
    if-ge v1, v2, :cond_e

    .line 430
    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    sub-int v4, v2, v1

    invoke-virtual {v3, v0, v1, v4}, Ljava/io/Writer;->write([CII)V

    .line 432
    :cond_e
    return-void

    .line 354
    .end local v0    # "chars":[C
    .end local v1    # "last":I
    .end local v2    # "length":I
    :cond_f
    :goto_3
    return-void
.end method

.method public writeCell(ILorg/apache/poi/ss/usermodel/Cell;)V
    .locals 9
    .param p1, "columnIndex"    # I
    .param p2, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    if-nez p2, :cond_0

    .line 243
    return-void

    .line 245
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    iget v1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_rownum:I

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "ref":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v2, "<c"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 247
    const-string v1, "r"

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v1

    .line 249
    .local v1, "cellStyle":Lorg/apache/poi/ss/usermodel/CellStyle;
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndex()S

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndex()S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "s"

    invoke-direct {p0, v3, v2}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_1
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v2

    .line 256
    .local v2, "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    sget-object v3, Lorg/apache/poi/xssf/streaming/SheetDataWriter$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v2}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, "><v>"

    const-string v5, "</v>"

    const-string v6, "t"

    packed-switch v3, :pswitch_data_0

    .line 324
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid cell type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 315
    :pswitch_0
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getErrorCellValue()B

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v3

    .line 317
    .local v3, "error":Lorg/apache/poi/ss/usermodel/FormulaError;
    const-string v7, "e"

    invoke-direct {p0, v6, v7}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v6, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v6, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 319
    iget-object v4, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v3}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 320
    iget-object v4, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 321
    goto/16 :goto_2

    .line 308
    .end local v3    # "error":Lorg/apache/poi/ss/usermodel/FormulaError;
    :pswitch_1
    const-string v3, "b"

    invoke-direct {p0, v6, v3}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 310
    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "1"

    goto :goto_0

    :cond_2
    const-string v4, "0"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 311
    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 312
    goto/16 :goto_2

    .line 280
    :pswitch_2
    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    if-eqz v3, :cond_3

    .line 281
    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    .line 282
    .local v3, "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    iget-object v7, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getCTRst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/poi/xssf/model/SharedStringsTable;->addEntry(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)I

    move-result v7

    .line 284
    .local v7, "sRef":I
    sget-object v8, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->S:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-virtual {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v8}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v6, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v6, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 286
    iget-object v4, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 287
    iget-object v4, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 288
    .end local v3    # "rt":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .end local v7    # "sRef":I
    goto/16 :goto_2

    .line 289
    :cond_3
    const-string v3, "inlineStr"

    invoke-direct {p0, v6, v3}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v4, "><is><t"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 291
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->hasLeadingTrailingSpaces(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 292
    const-string/jumbo v3, "xml:space"

    const-string v4, "preserve"

    invoke-direct {p0, v3, v4}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_4
    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 295
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->outputQuotedString(Ljava/lang/String;)V

    .line 296
    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v4, "</t></is>"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 298
    goto :goto_2

    .line 262
    :pswitch_3
    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v4, "><f>"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 263
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getCellFormula()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->outputQuotedString(Ljava/lang/String;)V

    .line 264
    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v4, "</f>"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 265
    sget-object v3, Lorg/apache/poi/xssf/streaming/SheetDataWriter$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    goto :goto_1

    .line 267
    :cond_5
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v3

    .line 268
    .local v3, "nval":D
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_6

    .line 269
    iget-object v6, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v7, "<v>"

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 270
    iget-object v6, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 271
    iget-object v6, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v6, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 277
    .end local v3    # "nval":D
    :cond_6
    :goto_1
    goto :goto_2

    .line 258
    :pswitch_4
    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 259
    goto :goto_2

    .line 301
    :pswitch_5
    const-string v3, "n"

    invoke-direct {p0, v6, v3}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 303
    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 304
    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 305
    nop

    .line 327
    :goto_2
    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v4, "</c>"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 328
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

.method public writeRow(ILorg/apache/poi/xssf/streaming/SXSSFRow;)V
    .locals 4
    .param p1, "rownum"    # I
    .param p2, "row"    # Lorg/apache/poi/xssf/streaming/SXSSFRow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_numberOfFlushedRows:I

    if-nez v0, :cond_0

    .line 196
    iput p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_lowestIndexOfFlushedRows:I

    .line 197
    :cond_0
    iget v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_numberLastFlushedRow:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_numberLastFlushedRow:I

    .line 198
    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getLastCellNum()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_numberOfCellsOfLastFlushedRow:I

    .line 199
    iget v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_numberOfFlushedRows:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_numberOfFlushedRows:I

    .line 200
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->beginRow(ILorg/apache/poi/xssf/streaming/SXSSFRow;)V

    .line 201
    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->allCellsIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 202
    .local v0, "cells":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Cell;>;"
    const/4 v1, 0x0

    .line 203
    .local v1, "columnIndex":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "columnIndex":I
    .local v2, "columnIndex":I
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/usermodel/Cell;

    invoke-virtual {p0, v1, v3}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeCell(ILorg/apache/poi/ss/usermodel/Cell;)V

    move v1, v2

    goto :goto_0

    .line 206
    .end local v2    # "columnIndex":I
    .restart local v1    # "columnIndex":I
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->endRow()V

    .line 207
    return-void
.end method
