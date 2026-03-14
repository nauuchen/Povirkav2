.class public Lorg/apache/poi/hssf/extractor/ExcelExtractor;
.super Lorg/apache/poi/POIOLE2TextExtractor;
.source "ExcelExtractor.java"

# interfaces
.implements Lorg/apache/poi/ss/extractor/ExcelExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;,
        Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;
    }
.end annotation


# instance fields
.field private final _formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

.field private _includeBlankCells:Z

.field private _includeCellComments:Z

.field private _includeHeadersFooters:Z

.field private _includeSheetNames:Z

.field private _shouldEvaluateFormulas:Z

.field private final _wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 2
    .param p1, "wb"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 66
    invoke-direct {p0, p1}, Lorg/apache/poi/POIOLE2TextExtractor;-><init>(Lorg/apache/poi/POIDocument;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeSheetNames:Z

    .line 60
    iput-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_shouldEvaluateFormulas:Z

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeCellComments:Z

    .line 62
    iput-boolean v1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeBlankCells:Z

    .line 63
    iput-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeHeadersFooters:Z

    .line 67
    iput-object p1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 68
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

    invoke-direct {v0}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 2
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Z)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 72
    return-void
.end method

.method public static _extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;
    .locals 3
    .param p0, "hf"    # Lorg/apache/poi/ss/usermodel/HeaderFooter;

    .line 401
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 403
    .local v0, "text":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/HeaderFooter;->getLeft()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 404
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/HeaderFooter;->getLeft()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/HeaderFooter;->getCenter()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\t"

    if-eqz v1, :cond_2

    .line 407
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 408
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    :cond_1
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/HeaderFooter;->getCenter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    :cond_2
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/HeaderFooter;->getRight()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 412
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 413
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    :cond_3
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/HeaderFooter;->getRight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 417
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;

    invoke-direct {v2, p0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 219
    .local v1, "cmdArgs":Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;
    nop

    .line 221
    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->isRequestHelp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->printUsageMessage(Ljava/io/PrintStream;)V

    .line 223
    return-void

    .line 227
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->getInputFile()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    .line 228
    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    .local v2, "is":Ljava/io/InputStream;
    goto :goto_0

    .line 230
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->getInputFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 232
    .restart local v2    # "is":Ljava/io/InputStream;
    :goto_0
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v3, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Ljava/io/InputStream;)V

    .line 233
    .local v3, "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 235
    new-instance v4, Lorg/apache/poi/hssf/extractor/ExcelExtractor;

    invoke-direct {v4, v3}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    .line 236
    .local v4, "extractor":Lorg/apache/poi/hssf/extractor/ExcelExtractor;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->shouldShowSheetNames()Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->setIncludeSheetNames(Z)V

    .line 237
    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->shouldEvaluateFormulas()Z

    move-result v5

    xor-int/2addr v0, v5

    invoke-virtual {v4, v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->setFormulasNotResults(Z)V

    .line 238
    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->shouldShowCellComments()Z

    move-result v0

    invoke-virtual {v4, v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->setIncludeCellComments(Z)V

    .line 239
    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->shouldShowBlankCells()Z

    move-result v0

    invoke-virtual {v4, v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->setIncludeBlankCells(Z)V

    .line 240
    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->shouldIncludeHeadersFooters()Z

    move-result v0

    invoke-virtual {v4, v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->setIncludeHeadersFooters(Z)V

    .line 241
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v4}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->close()V

    .line 243
    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->close()V

    .line 244
    return-void

    .line 214
    .end local v1    # "cmdArgs":Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .end local v4    # "extractor":Lorg/apache/poi/hssf/extractor/ExcelExtractor;
    :catch_0
    move-exception v2

    .line 215
    .restart local v1    # "cmdArgs":Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;
    .local v2, "e":Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->printUsageMessage(Ljava/io/PrintStream;)V

    .line 217
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 218
    return-void
.end method

.method private static printUsageMessage(Ljava/io/PrintStream;)V
    .locals 2
    .param p0, "ps"    # Ljava/io/PrintStream;

    .line 190
    const-string v0, "Use:"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/apache/poi/hssf/extractor/ExcelExtractor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [<flag> <value> [<flag> <value> [...]]] [-i <filename.xls>]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    const-string v0, "       -i <filename.xls> specifies input file (default is to use stdin)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    const-string v0, "       Flags can be set on or off by using the values \'Y\' or \'N\'."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    const-string v0, "       Following are available flags and their default values:"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    const-string v0, "       --show-sheet-names  Y"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    const-string v0, "       --evaluate-formulas Y"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    const-string v0, "       --show-comments     N"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    const-string v0, "       --show-blanks       Y"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    const-string v0, "       --headers-footers   Y"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 24

    .line 279
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 283
    .local v1, "text":Ljava/lang/StringBuffer;
    iget-object v2, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    sget-object v3, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->RETURN_BLANK_AS_NULL:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setMissingCellPolicy(Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)V

    .line 286
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v6, v4

    const/4 v8, 0x0

    move-object v4, v3

    move-object v5, v4

    :goto_0
    iget-object v9, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v9}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v9

    if-ge v2, v9, :cond_16

    .line 287
    iget-object v9, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v9, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v9

    .line 288
    .local v9, "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    if-nez v9, :cond_0

    goto/16 :goto_7

    .line 290
    :cond_0
    iget-boolean v10, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeSheetNames:Z

    const-string v11, "\n"

    if-eqz v10, :cond_1

    .line 291
    iget-object v10, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v10, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v10

    .line 292
    .local v10, "name":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 293
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    .end local v10    # "name":Ljava/lang/String;
    :cond_1
    iget-boolean v10, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeHeadersFooters:Z

    if-eqz v10, :cond_2

    .line 300
    invoke-virtual {v9}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getHeader()Lorg/apache/poi/hssf/usermodel/HSSFHeader;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    :cond_2
    invoke-virtual {v9}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getFirstRowNum()I

    move-result v10

    .line 304
    .local v10, "firstRow":I
    invoke-virtual {v9}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getLastRowNum()I

    move-result v12

    .line 305
    .local v12, "lastRow":I
    move v13, v10

    .local v13, "j":I
    :goto_1
    if-gt v13, v12, :cond_14

    .line 306
    invoke-virtual {v9, v13}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v14

    .line 307
    .local v14, "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    if-nez v14, :cond_3

    move/from16 v18, v10

    move/from16 v20, v12

    goto/16 :goto_6

    .line 310
    :cond_3
    invoke-virtual {v14}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getFirstCellNum()S

    move-result v15

    .line 311
    .local v15, "firstCell":I
    move-object/from16 v16, v3

    invoke-virtual {v14}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getLastCellNum()S

    move-result v3

    .line 312
    .local v3, "lastCell":I
    move-object/from16 v17, v4

    iget-boolean v4, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeBlankCells:Z

    if-eqz v4, :cond_4

    .line 313
    const/4 v15, 0x0

    .line 316
    :cond_4
    move v4, v15

    .local v4, "k":I
    :goto_2
    if-ge v4, v3, :cond_13

    .line 317
    move/from16 v18, v10

    .end local v10    # "firstRow":I
    .local v18, "firstRow":I
    invoke-virtual {v14, v4}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v10

    .line 318
    .local v10, "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    const/16 v19, 0x1

    .line 320
    .local v19, "outputContents":Z
    if-nez v10, :cond_5

    .line 322
    move/from16 v20, v12

    .end local v12    # "lastRow":I
    .local v20, "lastRow":I
    iget-boolean v12, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeBlankCells:Z

    move/from16 v19, v12

    move-object/from16 v21, v14

    .end local v19    # "outputContents":Z
    .local v12, "outputContents":Z
    goto/16 :goto_5

    .line 324
    .end local v20    # "lastRow":I
    .local v12, "lastRow":I
    .restart local v19    # "outputContents":Z
    :cond_5
    move/from16 v20, v12

    .end local v12    # "lastRow":I
    .restart local v20    # "lastRow":I
    sget-object v12, Lorg/apache/poi/hssf/extractor/ExcelExtractor$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v21

    aget v12, v12, v21

    move-object/from16 v21, v14

    .end local v14    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .local v21, "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    const/4 v14, 0x1

    if-eq v12, v14, :cond_10

    const/4 v14, 0x2

    if-eq v12, v14, :cond_f

    const/4 v14, 0x3

    if-eq v12, v14, :cond_e

    const/4 v14, 0x4

    if-eq v12, v14, :cond_d

    const/4 v14, 0x5

    if-ne v12, v14, :cond_c

    .line 338
    iget-boolean v12, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_shouldEvaluateFormulas:Z

    if-nez v12, :cond_6

    .line 339
    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellFormula()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 341
    :cond_6
    sget-object v12, Lorg/apache/poi/hssf/extractor/ExcelExtractor$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v14

    aget v12, v12, v14

    const/4 v14, 0x1

    if-eq v12, v14, :cond_a

    const/4 v14, 0x2

    if-eq v12, v14, :cond_9

    const/4 v14, 0x3

    if-eq v12, v14, :cond_8

    const/4 v14, 0x4

    .local v6, "nVal":D
    if-ne v12, v14, :cond_7

    move-object/from16 v12, v17

    .local v12, "style":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    move-object/from16 v14, v16

    .line 359
    .local v5, "dfs":Ljava/lang/String;
    .local v8, "df":S
    .local v14, "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getErrorCellValue()B

    move-result v16

    move-object/from16 v17, v5

    .end local v5    # "dfs":Ljava/lang/String;
    .local v17, "dfs":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    move-object/from16 v5, v17

    move-object/from16 v17, v12

    goto :goto_3

    .line 341
    .end local v8    # "df":S
    .end local v12    # "style":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .end local v14    # "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .end local v17    # "dfs":Ljava/lang/String;
    :cond_7
    move-object/from16 v11, v17

    .local v11, "style":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    move-object/from16 v12, v16

    .line 362
    .restart local v5    # "dfs":Ljava/lang/String;
    .restart local v8    # "df":S
    .local v12, "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    new-instance v14, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v5

    .end local v5    # "dfs":Ljava/lang/String;
    .local v16, "dfs":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v22, v6

    .end local v6    # "nVal":D
    .local v22, "nVal":D
    const-string v6, "Unexpected cell cached formula result type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 341
    .end local v8    # "df":S
    .end local v11    # "style":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .end local v12    # "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .end local v16    # "dfs":Ljava/lang/String;
    .end local v22    # "nVal":D
    .restart local v6    # "nVal":D
    :cond_8
    move-object/from16 v12, v17

    .local v12, "style":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    move-object/from16 v14, v16

    .line 356
    .restart local v5    # "dfs":Ljava/lang/String;
    .restart local v8    # "df":S
    .restart local v14    # "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    move-object/from16 v16, v5

    .end local v5    # "dfs":Ljava/lang/String;
    .restart local v16    # "dfs":Ljava/lang/String;
    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getBooleanCellValue()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 357
    move-object/from16 v5, v16

    goto :goto_3

    .line 341
    .end local v6    # "nVal":D
    .end local v8    # "df":S
    .end local v12    # "style":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .end local v14    # "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .end local v16    # "dfs":Ljava/lang/String;
    :cond_9
    move-object/from16 v5, v16

    .line 349
    .local v5, "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object v6

    .line 350
    .local v6, "style":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v7

    .line 351
    .local v7, "nVal":D
    invoke-virtual {v6}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormat()S

    move-result v12

    .line 352
    .local v12, "df":S
    invoke-virtual {v6}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v14

    .line 353
    .local v14, "dfs":Ljava/lang/String;
    nop

    .end local v5    # "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .local v16, "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    iget-object v5, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

    invoke-virtual {v5, v7, v8, v12, v14}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;->formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    move-object/from16 v17, v6

    move-wide v6, v7

    move v8, v12

    move-object v5, v14

    goto :goto_3

    .line 343
    .end local v6    # "style":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .end local v7    # "nVal":D
    .end local v12    # "df":S
    .end local v14    # "dfs":Ljava/lang/String;
    .end local v16    # "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    :cond_a
    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRichStringCellValue()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v12

    .line 344
    .local v12, "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    if-eqz v12, :cond_b

    invoke-virtual {v12}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->length()I

    move-result v14

    if-lez v14, :cond_b

    .line 345
    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 366
    .end local v12    # "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    :cond_b
    :goto_3
    goto :goto_4

    .line 368
    :cond_c
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected cell type ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 335
    :cond_d
    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getErrorCellValue()B

    move-result v12

    invoke-static {v12}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    goto :goto_4

    .line 332
    :cond_e
    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getBooleanCellValue()Z

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 333
    goto :goto_4

    .line 329
    :cond_f
    iget-object v12, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

    invoke-virtual {v12, v10}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;->formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    goto :goto_4

    .line 326
    :cond_10
    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRichStringCellValue()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    nop

    .line 372
    :goto_4
    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellComment()Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v12

    .line 373
    .local v12, "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    iget-boolean v14, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeCellComments:Z

    if-eqz v14, :cond_11

    if-eqz v12, :cond_11

    .line 376
    invoke-virtual {v12}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getString()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v5

    const/16 v5, 0xa

    move-wide/from16 v22, v6

    const/16 v6, 0x20

    invoke-virtual {v14, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 377
    .local v5, "commentText":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Comment by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getAuthor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    move-wide/from16 v6, v22

    move-object/from16 v16, v12

    goto :goto_5

    .line 373
    .end local v5    # "commentText":Ljava/lang/String;
    :cond_11
    move-object/from16 v16, v5

    move-wide/from16 v22, v6

    .line 382
    .end local v12    # "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    move-object/from16 v5, v16

    move-wide/from16 v6, v22

    move-object/from16 v16, v12

    :goto_5
    if-eqz v19, :cond_12

    add-int/lit8 v12, v3, -0x1

    if-ge v4, v12, :cond_12

    .line 383
    const-string v12, "\t"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    .end local v10    # "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .end local v19    # "outputContents":Z
    :cond_12
    add-int/lit8 v4, v4, 0x1

    move/from16 v10, v18

    move/from16 v12, v20

    move-object/from16 v14, v21

    goto/16 :goto_2

    .end local v18    # "firstRow":I
    .end local v20    # "lastRow":I
    .end local v21    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .local v10, "firstRow":I
    .local v12, "lastRow":I
    .local v14, "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    :cond_13
    move/from16 v18, v10

    move/from16 v20, v12

    move-object/from16 v21, v14

    .line 388
    .end local v4    # "k":I
    .end local v10    # "firstRow":I
    .end local v12    # "lastRow":I
    .end local v14    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .restart local v18    # "firstRow":I
    .restart local v20    # "lastRow":I
    .restart local v21    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    .line 305
    .end local v3    # "lastCell":I
    .end local v15    # "firstCell":I
    .end local v21    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    :goto_6
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v18

    move/from16 v12, v20

    goto/16 :goto_1

    .end local v18    # "firstRow":I
    .end local v20    # "lastRow":I
    .restart local v10    # "firstRow":I
    .restart local v12    # "lastRow":I
    :cond_14
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v10

    move/from16 v20, v12

    .line 392
    .end local v10    # "firstRow":I
    .end local v12    # "lastRow":I
    .end local v13    # "j":I
    .restart local v18    # "firstRow":I
    .restart local v20    # "lastRow":I
    iget-boolean v3, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeHeadersFooters:Z

    if-eqz v3, :cond_15

    .line 393
    invoke-virtual {v9}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getFooter()Lorg/apache/poi/hssf/usermodel/HSSFFooter;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    .end local v9    # "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .end local v18    # "firstRow":I
    .end local v20    # "lastRow":I
    :cond_15
    move-object/from16 v3, v16

    move-object/from16 v4, v17

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 397
    .end local v2    # "i":I
    :cond_16
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public setFormulasNotResults(Z)V
    .locals 1
    .param p1, "formulasNotResults"    # Z

    .line 253
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_shouldEvaluateFormulas:Z

    .line 254
    return-void
.end method

.method public setIncludeBlankCells(Z)V
    .locals 0
    .param p1, "includeBlankCells"    # Z

    .line 269
    iput-boolean p1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeBlankCells:Z

    .line 270
    return-void
.end method

.method public setIncludeCellComments(Z)V
    .locals 0
    .param p1, "includeCellComments"    # Z

    .line 258
    iput-boolean p1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeCellComments:Z

    .line 259
    return-void
.end method

.method public setIncludeHeadersFooters(Z)V
    .locals 0
    .param p1, "includeHeadersFooters"    # Z

    .line 274
    iput-boolean p1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeHeadersFooters:Z

    .line 275
    return-void
.end method

.method public setIncludeSheetNames(Z)V
    .locals 0
    .param p1, "includeSheetNames"    # Z

    .line 248
    iput-boolean p1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeSheetNames:Z

    .line 249
    return-void
.end method
