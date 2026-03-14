.class public Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;
.super Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;
.source "XSSFBEventBasedExcelExtractor.java"

# interfaces
.implements Lorg/apache/poi/ss/extractor/ExcelExtractor;


# static fields
.field private static final LOGGER:Lorg/apache/poi/util/POILogger;

.field public static final SUPPORTED_TYPES:[Lorg/apache/poi/xssf/usermodel/XSSFRelation;


# instance fields
.field private handleHyperlinksInCells:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    const-class v0, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->LOGGER:Lorg/apache/poi/util/POILogger;

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->XLSB_BINARY_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->SUPPORTED_TYPES:[Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;-><init>(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->handleHyperlinksInCells:Z

    .line 58
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

    .line 61
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->handleHyperlinksInCells:Z

    .line 62
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 66
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Use:"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "  XSSFBEventBasedExcelExtractor <filename.xlsb>"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 70
    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "extractor":Lorg/apache/poi/POIXMLTextExtractor;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLTextExtractor;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Lorg/apache/poi/POIXMLTextExtractor;->close()V

    .line 74
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 15

    .line 120
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    :try_start_0
    new-instance v8, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v4

    invoke-direct {v8, v4}, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 121
    .local v8, "strings":Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;
    new-instance v4, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    move-object v10, v4

    .line 122
    .local v10, "xssfbReader":Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;
    invoke-virtual {v10}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->getXSSFBStylesTable()Lorg/apache/poi/xssf/binary/XSSFBStylesTable;

    move-result-object v6

    .line 123
    .local v6, "styles":Lorg/apache/poi/xssf/binary/XSSFBStylesTable;
    invoke-virtual {v10}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->getSheetsData()Ljava/util/Iterator;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;

    move-object v11, v4

    .line 125
    .local v11, "iter":Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v12, v4

    .line 126
    .local v12, "text":Ljava/lang/StringBuffer;
    new-instance v4, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;

    invoke-direct {v4, p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;-><init>(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;)V

    move-object v13, v4

    .line 127
    .local v13, "sheetExtractor":Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;
    const/4 v4, 0x0

    .line 128
    .local v4, "hyperlinksTable":Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;
    :goto_0
    invoke-virtual {v11}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 129
    invoke-virtual {v11}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;->next()Ljava/io/InputStream;

    move-result-object v9

    .line 130
    .local v9, "stream":Ljava/io/InputStream;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->getIncludeSheetNames()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 131
    invoke-virtual {v11}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;->getSheetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const/16 v5, 0xa

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 134
    :cond_0
    iget-boolean v5, p0, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->handleHyperlinksInCells:Z

    if-eqz v5, :cond_1

    .line 135
    new-instance v5, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;

    invoke-virtual {v11}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;->getSheetPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    move-object v4, v5

    move-object v14, v4

    goto :goto_1

    .line 134
    :cond_1
    move-object v14, v4

    .line 137
    .end local v4    # "hyperlinksTable":Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;
    .local v14, "hyperlinksTable":Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->getIncludeCellComments()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v11}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;->getXSSFBSheetComments()Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

    move-result-object v4

    move-object v7, v4

    goto :goto_2

    :cond_2
    move-object v7, v3

    .line 138
    .local v7, "comments":Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;
    :goto_2
    move-object v4, p0

    move-object v5, v13

    invoke-virtual/range {v4 .. v9}, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->processSheet(Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/xssf/binary/XSSFBStylesTable;Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;Ljava/io/InputStream;)V

    .line 139
    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->getIncludeHeadersFooters()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 140
    invoke-virtual {v13, v12}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendHeaderText(Ljava/lang/StringBuffer;)V

    .line 142
    :cond_3
    invoke-virtual {v13, v12}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendCellText(Ljava/lang/StringBuffer;)V

    .line 143
    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->getIncludeTextBoxes()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 144
    invoke-virtual {v11}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;->getShapes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4, v12}, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->processShapes(Ljava/util/List;Ljava/lang/StringBuffer;)V

    .line 146
    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->getIncludeHeadersFooters()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 147
    invoke-virtual {v13, v12}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendFooterText(Ljava/lang/StringBuffer;)V

    .line 149
    :cond_5
    invoke-virtual {v13}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->reset()V

    .line 150
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 151
    .end local v7    # "comments":Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;
    .end local v9    # "stream":Ljava/io/InputStream;
    move-object v4, v14

    goto :goto_0

    .line 153
    .end local v14    # "hyperlinksTable":Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;
    .restart local v4    # "hyperlinksTable":Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;
    :cond_6
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 160
    .end local v4    # "hyperlinksTable":Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;
    .end local v6    # "styles":Lorg/apache/poi/xssf/binary/XSSFBStylesTable;
    .end local v8    # "strings":Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;
    .end local v10    # "xssfbReader":Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;
    .end local v11    # "iter":Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;
    .end local v12    # "text":Ljava/lang/StringBuffer;
    .end local v13    # "sheetExtractor":Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;
    :catch_0
    move-exception v4

    .line 161
    .local v4, "o4je":Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;
    sget-object v5, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->LOGGER:Lorg/apache/poi/util/POILogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    invoke-virtual {v5, v2, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 162
    return-object v3

    .line 157
    .end local v4    # "o4je":Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;
    :catch_1
    move-exception v4

    .line 158
    .local v4, "se":Lorg/xml/sax/SAXException;
    sget-object v5, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->LOGGER:Lorg/apache/poi/util/POILogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    invoke-virtual {v5, v2, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 159
    return-object v3

    .line 154
    .end local v4    # "se":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v4

    .line 155
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->LOGGER:Lorg/apache/poi/util/POILogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    invoke-virtual {v5, v2, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 156
    return-object v3
.end method

.method public processSheet(Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/xssf/binary/XSSFBStylesTable;Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;Ljava/io/InputStream;)V
    .locals 10
    .param p1, "sheetContentsExtractor"    # Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;
    .param p2, "styles"    # Lorg/apache/poi/xssf/binary/XSSFBStylesTable;
    .param p3, "comments"    # Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;
    .param p4, "strings"    # Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;
    .param p5, "sheetInputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->getLocale()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    .local v0, "formatter":Lorg/apache/poi/ss/usermodel/DataFormatter;
    goto :goto_0

    .line 105
    .end local v0    # "formatter":Lorg/apache/poi/ss/usermodel/DataFormatter;
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Ljava/util/Locale;)V

    .line 108
    .restart local v0    # "formatter":Lorg/apache/poi/ss/usermodel/DataFormatter;
    :goto_0
    new-instance v9, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->getFormulasNotResults()Z

    move-result v8

    move-object v1, v9

    move-object v2, p5

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    move-object v7, v0

    invoke-direct/range {v1 .. v8}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;-><init>(Ljava/io/InputStream;Lorg/apache/poi/xssf/binary/XSSFBStylesTable;Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/ss/usermodel/DataFormatter;Z)V

    .line 112
    .local v1, "xssfbSheetHandler":Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->parse()V

    .line 113
    return-void
.end method

.method public setFormulasNotResults(Z)V
    .locals 2
    .param p1, "formulasNotResults"    # Z

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not currently supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHandleHyperlinksInCells(Z)V
    .locals 0
    .param p1, "handleHyperlinksInCells"    # Z

    .line 77
    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->handleHyperlinksInCells:Z

    .line 78
    return-void
.end method
