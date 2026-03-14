.class public Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;
.super Lorg/apache/poi/POIXMLTextExtractor;
.source "XSSFExcelExtractor.java"

# interfaces
.implements Lorg/apache/poi/ss/extractor/ExcelExtractor;


# static fields
.field public static final SUPPORTED_TYPES:[Lorg/apache/poi/xssf/usermodel/XSSFRelation;


# instance fields
.field private formulasNotResults:Z

.field private includeCellComments:Z

.field private includeHeadersFooters:Z

.field private includeSheetNames:Z

.field private includeTextBoxes:Z

.field private locale:Ljava/util/Locale;

.field private workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACRO_TEMPLATE_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACRO_ADDIN_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->TEMPLATE_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACROS_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->SUPPORTED_TYPES:[Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1
    .param p1, "container"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 1
    .param p1, "workbook"    # Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 67
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLTextExtractor;-><init>(Lorg/apache/poi/POIXMLDocument;)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeSheetNames:Z

    .line 60
    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeHeadersFooters:Z

    .line 61
    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeTextBoxes:Z

    .line 68
    iput-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 69
    return-void
.end method

.method private extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;
    .locals 1
    .param p1, "hf"    # Lorg/apache/poi/ss/usermodel/HeaderFooter;

    .line 265
    invoke-static {p1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleNonStringCell(Ljava/lang/StringBuffer;Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/DataFormatter;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/StringBuffer;
    .param p2, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p3, "formatter"    # Lorg/apache/poi/ss/usermodel/DataFormatter;

    .line 239
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 240
    .local v0, "type":Lorg/apache/poi/ss/usermodel/CellType;
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    .line 241
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 244
    :cond_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_1

    .line 245
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v1

    .line 247
    .local v1, "cs":Lorg/apache/poi/ss/usermodel/CellStyle;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 248
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v2

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormat()S

    move-result v4

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v2, v3, v4, v5}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "contents":Ljava/lang/String;
    invoke-virtual {p0, p1, v2}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->checkMaxTextSize(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    return-void

    .line 257
    .end local v1    # "cs":Lorg/apache/poi/ss/usermodel/CellStyle;
    .end local v2    # "contents":Ljava/lang/String;
    :cond_1
    move-object v1, p2

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRawValue()Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "contents":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 259
    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->checkMaxTextSize(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    :cond_2
    return-void
.end method

.method private handleStringCell(Ljava/lang/StringBuffer;Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/StringBuffer;
    .param p2, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 233
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "contents":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->checkMaxTextSize(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 73
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Use:"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "  XSSFExcelExtractor <filename.xlsx>"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 77
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->create(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    .line 78
    .local v0, "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    new-instance v1, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;

    invoke-direct {v1, v0}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 80
    .local v1, "extractor":Lorg/apache/poi/POIXMLTextExtractor;
    :try_start_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLTextExtractor;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {v1}, Lorg/apache/poi/POIXMLTextExtractor;->close()V

    .line 83
    nop

    .line 84
    return-void

    .line 82
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLTextExtractor;->close()V

    throw v2
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 16

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->locale:Ljava/util/Locale;

    if-nez v1, :cond_0

    .line 133
    new-instance v1, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    .local v1, "formatter":Lorg/apache/poi/ss/usermodel/DataFormatter;
    goto :goto_0

    .line 135
    .end local v1    # "formatter":Lorg/apache/poi/ss/usermodel/DataFormatter;
    :cond_0
    new-instance v1, Lorg/apache/poi/ss/usermodel/DataFormatter;

    iget-object v2, v0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->locale:Ljava/util/Locale;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Ljava/util/Locale;)V

    .line 138
    .restart local v1    # "formatter":Lorg/apache/poi/ss/usermodel/DataFormatter;
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 139
    .local v2, "text":Ljava/lang/StringBuffer;
    iget-object v3, v0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/usermodel/Sheet;

    .line 140
    .local v4, "sh":Lorg/apache/poi/ss/usermodel/Sheet;
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 141
    .local v5, "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    iget-boolean v6, v0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeSheetNames:Z

    const-string v7, "\n"

    if-eqz v6, :cond_1

    .line 142
    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    :cond_1
    iget-boolean v6, v0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeHeadersFooters:Z

    if-eqz v6, :cond_2

    .line 147
    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getFirstHeader()Lorg/apache/poi/ss/usermodel/Header;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getOddHeader()Lorg/apache/poi/ss/usermodel/Header;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getEvenHeader()Lorg/apache/poi/ss/usermodel/Header;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    :cond_2
    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/16 v9, 0xa

    if-eqz v8, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/ss/usermodel/Row;

    .line 160
    .local v8, "rawR":Ljava/lang/Object;
    move-object v10, v8

    check-cast v10, Lorg/apache/poi/ss/usermodel/Row;

    .line 161
    .local v10, "row":Lorg/apache/poi/ss/usermodel/Row;
    invoke-interface {v10}, Lorg/apache/poi/ss/usermodel/Row;->cellIterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "ri":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Cell;>;"
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 162
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/poi/ss/usermodel/Cell;

    .line 165
    .local v12, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    invoke-interface {v12}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v13

    sget-object v14, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v13, v14, :cond_5

    .line 166
    iget-boolean v13, v0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->formulasNotResults:Z

    if-eqz v13, :cond_3

    .line 167
    invoke-interface {v12}, Lorg/apache/poi/ss/usermodel/Cell;->getCellFormula()Ljava/lang/String;

    move-result-object v13

    .line 168
    .local v13, "contents":Ljava/lang/String;
    invoke-virtual {v0, v2, v13}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->checkMaxTextSize(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    .end local v13    # "contents":Ljava/lang/String;
    goto :goto_4

    .line 171
    :cond_3
    invoke-interface {v12}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v13

    sget-object v14, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v13, v14, :cond_4

    .line 172
    invoke-direct {v0, v2, v12}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->handleStringCell(Ljava/lang/StringBuffer;Lorg/apache/poi/ss/usermodel/Cell;)V

    goto :goto_4

    .line 174
    :cond_4
    invoke-direct {v0, v2, v12, v1}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->handleNonStringCell(Ljava/lang/StringBuffer;Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/DataFormatter;)V

    goto :goto_4

    .line 177
    :cond_5
    invoke-interface {v12}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v13

    sget-object v14, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v13, v14, :cond_6

    .line 178
    invoke-direct {v0, v2, v12}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->handleStringCell(Ljava/lang/StringBuffer;Lorg/apache/poi/ss/usermodel/Cell;)V

    goto :goto_4

    .line 180
    :cond_6
    invoke-direct {v0, v2, v12, v1}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->handleNonStringCell(Ljava/lang/StringBuffer;Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/DataFormatter;)V

    .line 184
    :goto_4
    invoke-interface {v12}, Lorg/apache/poi/ss/usermodel/Cell;->getCellComment()Lorg/apache/poi/ss/usermodel/Comment;

    move-result-object v13

    .line 185
    .local v13, "comment":Lorg/apache/poi/ss/usermodel/Comment;
    iget-boolean v14, v0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeCellComments:Z

    if-eqz v14, :cond_7

    if-eqz v13, :cond_7

    .line 188
    invoke-interface {v13}, Lorg/apache/poi/ss/usermodel/Comment;->getString()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x20

    invoke-virtual {v14, v9, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    .line 189
    .local v14, "commentText":Ljava/lang/String;
    invoke-virtual {v0, v2, v14}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->checkMaxTextSize(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 190
    const-string v15, " Comment by "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-interface {v13}, Lorg/apache/poi/ss/usermodel/Comment;->getAuthor()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v15, ": "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    .end local v14    # "commentText":Ljava/lang/String;
    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 194
    const-string v9, "\t"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    .end local v12    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v13    # "comment":Lorg/apache/poi/ss/usermodel/Comment;
    :cond_8
    const/16 v9, 0xa

    goto/16 :goto_3

    .line 197
    .end local v11    # "ri":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Cell;>;"
    :cond_9
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    .end local v8    # "rawR":Ljava/lang/Object;
    .end local v10    # "row":Lorg/apache/poi/ss/usermodel/Row;
    goto/16 :goto_2

    .line 201
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_a
    iget-boolean v6, v0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeTextBoxes:Z

    if-eqz v6, :cond_d

    .line 202
    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v6

    .line 203
    .local v6, "drawing":Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    if-eqz v6, :cond_d

    .line 204
    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getShapes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/xssf/usermodel/XSSFShape;

    .line 205
    .local v8, "shape":Lorg/apache/poi/xssf/usermodel/XSSFShape;
    instance-of v9, v8, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;

    if-eqz v9, :cond_c

    .line 206
    move-object v9, v8

    check-cast v9, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;

    invoke-virtual {v9}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->getText()Ljava/lang/String;

    move-result-object v9

    .line 207
    .local v9, "boxText":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_b

    .line 208
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    const/16 v10, 0xa

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 207
    :cond_b
    const/16 v10, 0xa

    goto :goto_6

    .line 205
    .end local v9    # "boxText":Ljava/lang/String;
    :cond_c
    const/16 v10, 0xa

    .line 211
    .end local v8    # "shape":Lorg/apache/poi/xssf/usermodel/XSSFShape;
    :goto_6
    goto :goto_5

    .line 216
    .end local v6    # "drawing":Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_d
    iget-boolean v6, v0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeHeadersFooters:Z

    if-eqz v6, :cond_e

    .line 217
    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getFirstFooter()Lorg/apache/poi/ss/usermodel/Footer;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getOddFooter()Lorg/apache/poi/ss/usermodel/Footer;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getEvenFooter()Lorg/apache/poi/ss/usermodel/Footer;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    .end local v4    # "sh":Lorg/apache/poi/ss/usermodel/Sheet;
    .end local v5    # "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    :cond_e
    goto/16 :goto_1

    .line 229
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_f
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public setFormulasNotResults(Z)V
    .locals 0
    .param p1, "formulasNotResults"    # Z

    .line 97
    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->formulasNotResults:Z

    .line 98
    return-void
.end method

.method public setIncludeCellComments(Z)V
    .locals 0
    .param p1, "includeCellComments"    # Z

    .line 103
    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeCellComments:Z

    .line 104
    return-void
.end method

.method public setIncludeHeadersFooters(Z)V
    .locals 0
    .param p1, "includeHeadersFooters"    # Z

    .line 109
    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeHeadersFooters:Z

    .line 110
    return-void
.end method

.method public setIncludeSheetNames(Z)V
    .locals 0
    .param p1, "includeSheetNames"    # Z

    .line 90
    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeSheetNames:Z

    .line 91
    return-void
.end method

.method public setIncludeTextBoxes(Z)V
    .locals 0
    .param p1, "includeTextBoxes"    # Z

    .line 116
    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeTextBoxes:Z

    .line 117
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .line 123
    iput-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->locale:Ljava/util/Locale;

    .line 124
    return-void
.end method
