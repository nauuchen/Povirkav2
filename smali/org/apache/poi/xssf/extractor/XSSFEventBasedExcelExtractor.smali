.class public Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;
.super Lorg/apache/poi/POIXMLTextExtractor;
.source "XSSFEventBasedExcelExtractor.java"

# interfaces
.implements Lorg/apache/poi/ss/extractor/ExcelExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/poi/util/POILogger;


# instance fields
.field private concatenatePhoneticRuns:Z

.field private container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

.field private formulasNotResults:Z

.field private includeCellComments:Z

.field private includeHeadersFooters:Z

.field private includeSheetNames:Z

.field private includeTextBoxes:Z

.field private locale:Ljava/util/Locale;

.field private properties:Lorg/apache/poi/POIXMLProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->LOGGER:Lorg/apache/poi/util/POILogger;

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

    .line 74
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 2
    .param p1, "container"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/POIXMLTextExtractor;-><init>(Lorg/apache/poi/POIXMLDocument;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeTextBoxes:Z

    .line 67
    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeSheetNames:Z

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeCellComments:Z

    .line 69
    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeHeadersFooters:Z

    .line 70
    iput-boolean v1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->formulasNotResults:Z

    .line 71
    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->concatenatePhoneticRuns:Z

    .line 78
    iput-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 80
    new-instance v0, Lorg/apache/poi/POIXMLProperties;

    invoke-direct {v0, p1}, Lorg/apache/poi/POIXMLProperties;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->properties:Lorg/apache/poi/POIXMLProperties;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;

    .line 57
    iget-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeHeadersFooters:Z

    return v0
.end method

.method static synthetic access$100(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;
    .param p1, "x1"    # Ljava/lang/StringBuffer;
    .param p2, "x2"    # Ljava/lang/String;

    .line 57
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->checkMaxTextSize(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;

    .line 57
    iget-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeCellComments:Z

    return v0
.end method

.method static synthetic access$300(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;
    .param p1, "x1"    # Ljava/lang/StringBuffer;
    .param p2, "x2"    # Ljava/lang/String;

    .line 57
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->checkMaxTextSize(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;
    .param p1, "x1"    # Ljava/lang/StringBuffer;
    .param p2, "x2"    # Ljava/lang/String;

    .line 57
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->checkMaxTextSize(Ljava/lang/StringBuffer;Ljava/lang/String;)V

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

    .line 84
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 85
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Use:"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "  XSSFEventBasedExcelExtractor <filename.xlsx>"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 89
    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "extractor":Lorg/apache/poi/POIXMLTextExtractor;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLTextExtractor;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Lorg/apache/poi/POIXMLTextExtractor;->close()V

    .line 93
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->close()V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 327
    :cond_0
    invoke-super {p0}, Lorg/apache/poi/POIXMLTextExtractor;->close()V

    .line 328
    return-void
.end method

.method public getCoreProperties()Lorg/apache/poi/POIXMLProperties$CoreProperties;
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->properties:Lorg/apache/poi/POIXMLProperties;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLProperties;->getCoreProperties()Lorg/apache/poi/POIXMLProperties$CoreProperties;

    move-result-object v0

    return-object v0
.end method

.method public getCustomProperties()Lorg/apache/poi/POIXMLProperties$CustomProperties;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->properties:Lorg/apache/poi/POIXMLProperties;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLProperties;->getCustomProperties()Lorg/apache/poi/POIXMLProperties$CustomProperties;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedProperties()Lorg/apache/poi/POIXMLProperties$ExtendedProperties;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->properties:Lorg/apache/poi/POIXMLProperties;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLProperties;->getExtendedProperties()Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

    move-result-object v0

    return-object v0
.end method

.method public getFormulasNotResults()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->formulasNotResults:Z

    return v0
.end method

.method public getIncludeCellComments()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeCellComments:Z

    return v0
.end method

.method public getIncludeHeadersFooters()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeHeadersFooters:Z

    return v0
.end method

.method public getIncludeSheetNames()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeSheetNames:Z

    return v0
.end method

.method public getIncludeTextBoxes()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeTextBoxes:Z

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 14

    .line 265
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    :try_start_0
    new-instance v8, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;

    iget-object v4, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    iget-boolean v5, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->concatenatePhoneticRuns:Z

    invoke-direct {v8, v4, v5}, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Z)V

    .line 266
    .local v8, "strings":Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;
    new-instance v4, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;

    iget-object v5, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-direct {v4, v5}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    move-object v10, v4

    .line 267
    .local v10, "xssfReader":Lorg/apache/poi/xssf/eventusermodel/XSSFReader;
    invoke-virtual {v10}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->getStylesTable()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v6

    .line 268
    .local v6, "styles":Lorg/apache/poi/xssf/model/StylesTable;
    invoke-virtual {v10}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->getSheetsData()Ljava/util/Iterator;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;

    move-object v11, v4

    .line 270
    .local v11, "iter":Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v12, v4

    .line 271
    .local v12, "text":Ljava/lang/StringBuffer;
    new-instance v4, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;

    invoke-direct {v4, p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;-><init>(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;)V

    move-object v13, v4

    .line 273
    .local v13, "sheetExtractor":Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;
    :goto_0
    invoke-virtual {v11}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 274
    invoke-virtual {v11}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->next()Ljava/io/InputStream;

    move-result-object v9

    .line 275
    .local v9, "stream":Ljava/io/InputStream;
    iget-boolean v4, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeSheetNames:Z

    if-eqz v4, :cond_0

    .line 276
    invoke-virtual {v11}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->getSheetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    const/16 v4, 0xa

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 279
    :cond_0
    iget-boolean v4, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeCellComments:Z

    if-eqz v4, :cond_1

    invoke-virtual {v11}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->getSheetComments()Lorg/apache/poi/xssf/model/CommentsTable;

    move-result-object v4

    move-object v7, v4

    goto :goto_1

    :cond_1
    move-object v7, v3

    .line 280
    .local v7, "comments":Lorg/apache/poi/xssf/model/CommentsTable;
    :goto_1
    move-object v4, p0

    move-object v5, v13

    invoke-virtual/range {v4 .. v9}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->processSheet(Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/xssf/model/StylesTable;Lorg/apache/poi/xssf/model/CommentsTable;Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;Ljava/io/InputStream;)V

    .line 281
    iget-boolean v4, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeHeadersFooters:Z

    if-eqz v4, :cond_2

    .line 282
    invoke-virtual {v13, v12}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendHeaderText(Ljava/lang/StringBuffer;)V

    .line 284
    :cond_2
    invoke-virtual {v13, v12}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendCellText(Ljava/lang/StringBuffer;)V

    .line 285
    iget-boolean v4, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeTextBoxes:Z

    if-eqz v4, :cond_3

    .line 286
    invoke-virtual {v11}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->getShapes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4, v12}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->processShapes(Ljava/util/List;Ljava/lang/StringBuffer;)V

    .line 288
    :cond_3
    iget-boolean v4, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeHeadersFooters:Z

    if-eqz v4, :cond_4

    .line 289
    invoke-virtual {v13, v12}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendFooterText(Ljava/lang/StringBuffer;)V

    .line 291
    :cond_4
    invoke-virtual {v13}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->reset()V

    .line 292
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 293
    .end local v7    # "comments":Lorg/apache/poi/xssf/model/CommentsTable;
    .end local v9    # "stream":Ljava/io/InputStream;
    goto :goto_0

    .line 295
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 302
    .end local v6    # "styles":Lorg/apache/poi/xssf/model/StylesTable;
    .end local v8    # "strings":Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;
    .end local v10    # "xssfReader":Lorg/apache/poi/xssf/eventusermodel/XSSFReader;
    .end local v11    # "iter":Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;
    .end local v12    # "text":Ljava/lang/StringBuffer;
    .end local v13    # "sheetExtractor":Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;
    :catch_0
    move-exception v4

    .line 303
    .local v4, "o4je":Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;
    sget-object v5, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->LOGGER:Lorg/apache/poi/util/POILogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    invoke-virtual {v5, v2, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 304
    return-object v3

    .line 299
    .end local v4    # "o4je":Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;
    :catch_1
    move-exception v4

    .line 300
    .local v4, "se":Lorg/xml/sax/SAXException;
    sget-object v5, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->LOGGER:Lorg/apache/poi/util/POILogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    invoke-virtual {v5, v2, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 301
    return-object v3

    .line 296
    .end local v4    # "se":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v4

    .line 297
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->LOGGER:Lorg/apache/poi/util/POILogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    invoke-virtual {v5, v2, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 298
    return-object v3
.end method

.method processShapes(Ljava/util/List;Ljava/lang/StringBuffer;)V
    .locals 5
    .param p2, "text"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")V"
        }
    .end annotation

    .line 309
    .local p1, "shapes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFShape;>;"
    if-nez p1, :cond_0

    .line 310
    return-void

    .line 312
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFShape;

    .line 313
    .local v1, "shape":Lorg/apache/poi/xssf/usermodel/XSSFShape;
    instance-of v2, v1, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;

    if-eqz v2, :cond_1

    .line 314
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->getText()Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "sText":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 316
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 318
    .end local v1    # "shape":Lorg/apache/poi/xssf/usermodel/XSSFShape;
    .end local v2    # "sText":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 320
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public processSheet(Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/xssf/model/StylesTable;Lorg/apache/poi/xssf/model/CommentsTable;Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;Ljava/io/InputStream;)V
    .locals 13
    .param p1, "sheetContentsExtractor"    # Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;
    .param p2, "styles"    # Lorg/apache/poi/xssf/model/StylesTable;
    .param p3, "comments"    # Lorg/apache/poi/xssf/model/CommentsTable;
    .param p4, "strings"    # Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;
    .param p5, "sheetInputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 242
    move-object v1, p0

    iget-object v0, v1, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    move-object v9, v0

    .local v0, "formatter":Lorg/apache/poi/ss/usermodel/DataFormatter;
    goto :goto_0

    .line 245
    .end local v0    # "formatter":Lorg/apache/poi/ss/usermodel/DataFormatter;
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    iget-object v2, v1, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->locale:Ljava/util/Locale;

    invoke-direct {v0, v2}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Ljava/util/Locale;)V

    move-object v9, v0

    .line 248
    .local v9, "formatter":Lorg/apache/poi/ss/usermodel/DataFormatter;
    :goto_0
    new-instance v0, Lorg/xml/sax/InputSource;

    move-object/from16 v10, p5

    invoke-direct {v0, v10}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    move-object v11, v0

    .line 250
    .local v11, "sheetSource":Lorg/xml/sax/InputSource;
    :try_start_0
    invoke-static {}, Lorg/apache/poi/util/SAXHelper;->newXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 251
    .local v0, "sheetParser":Lorg/xml/sax/XMLReader;
    new-instance v12, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;

    iget-boolean v8, v1, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->formulasNotResults:Z

    move-object v2, v12

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, p1

    move-object v7, v9

    invoke-direct/range {v2 .. v8}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;-><init>(Lorg/apache/poi/xssf/model/StylesTable;Lorg/apache/poi/xssf/model/CommentsTable;Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/ss/usermodel/DataFormatter;Z)V

    move-object v2, v12

    .line 253
    .local v2, "handler":Lorg/xml/sax/ContentHandler;
    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 254
    invoke-interface {v0, v11}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v0    # "sheetParser":Lorg/xml/sax/XMLReader;
    .end local v2    # "handler":Lorg/xml/sax/ContentHandler;
    nop

    .line 258
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SAX parser appears to be broken - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setConcatenatePhoneticRuns(Z)V
    .locals 0
    .param p1, "concatenatePhoneticRuns"    # Z

    .line 184
    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->concatenatePhoneticRuns:Z

    .line 185
    return-void
.end method

.method public setFormulasNotResults(Z)V
    .locals 0
    .param p1, "formulasNotResults"    # Z

    .line 118
    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->formulasNotResults:Z

    .line 119
    return-void
.end method

.method public setIncludeCellComments(Z)V
    .locals 0
    .param p1, "includeCellComments"    # Z

    .line 167
    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeCellComments:Z

    .line 168
    return-void
.end method

.method public setIncludeHeadersFooters(Z)V
    .locals 0
    .param p1, "includeHeadersFooters"    # Z

    .line 135
    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeHeadersFooters:Z

    .line 136
    return-void
.end method

.method public setIncludeSheetNames(Z)V
    .locals 0
    .param p1, "includeSheetNames"    # Z

    .line 99
    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeSheetNames:Z

    .line 100
    return-void
.end method

.method public setIncludeTextBoxes(Z)V
    .locals 0
    .param p1, "includeTextBoxes"    # Z

    .line 151
    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeTextBoxes:Z

    .line 152
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .line 187
    iput-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->locale:Ljava/util/Locale;

    .line 188
    return-void
.end method
