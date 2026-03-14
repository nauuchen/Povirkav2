.class public Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;
.super Ljava/lang/Object;
.source "XSSFImportFromXML.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DefaultNamespaceContext;,
        Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;
    }
.end annotation


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final _map:Lorg/apache/poi/xssf/usermodel/XSSFMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-class v0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFMap;)V
    .locals 0
    .param p1, "map"    # Lorg/apache/poi/xssf/usermodel/XSSFMap;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;->_map:Lorg/apache/poi/xssf/usermodel/XSSFMap;

    .line 78
    return-void
.end method

.method private setCellValue(Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFCell;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;)V
    .locals 10
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "cell"    # Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .param p3, "xmlDataType"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;

    const-string v0, "Unable to format value \'%s\' as %s for cell %s"

    .line 188
    invoke-static {p3}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->getDataType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;)Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    move-result-object v1

    .line 190
    .local v1, "type":Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_5

    if-nez v1, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    sget-object v6, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$1;->$SwitchMap$org$apache$poi$xssf$extractor$XSSFImportFromXML$DataType:[I

    invoke-virtual {v1}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->ordinal()I

    move-result v8

    aget v6, v6, v8

    if-eq v6, v4, :cond_4

    if-eq v6, v3, :cond_3

    if-eq v6, v5, :cond_2

    const/4 v8, 0x4

    if-eq v6, v8, :cond_1

    move-object v6, v7

    .line 213
    .local v6, "date":Ljava/util/Date;
    .local v7, "sdf":Ljava/text/DateFormat;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(Ljava/lang/String;)V

    goto :goto_1

    .line 204
    .end local v6    # "date":Ljava/util/Date;
    .end local v7    # "sdf":Ljava/text/DateFormat;
    :cond_1
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd"

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 205
    .local v6, "sdf":Ljava/text/DateFormat;
    invoke-virtual {v6, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 206
    .local v7, "date":Ljava/util/Date;
    invoke-virtual {p2, v7}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(Ljava/util/Date;)V

    .line 207
    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getNumericCellValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v8

    if-nez v8, :cond_6

    .line 208
    invoke-virtual {p2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(Ljava/lang/String;)V

    goto :goto_1

    .line 201
    .end local v6    # "sdf":Ljava/text/DateFormat;
    .end local v7    # "date":Ljava/util/Date;
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {p2, v6, v7}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(D)V

    .line 202
    goto :goto_1

    .line 198
    :cond_3
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(D)V

    .line 199
    goto :goto_1

    .line 195
    :cond_4
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {p2, v6}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(Z)V

    .line 196
    goto :goto_1

    .line 191
    :cond_5
    :goto_0
    check-cast v7, Ljava/lang/String;

    invoke-virtual {p2, v7}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_6
    :goto_1
    nop

    .line 224
    return-void

    .line 220
    :catch_0
    move-exception v6

    .line 221
    .local v6, "e":Ljava/text/ParseException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v8

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object v1, v5, v4

    new-instance v2, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v2, p2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {v8, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 217
    .end local v6    # "e":Ljava/text/ParseException;
    :catch_1
    move-exception v6

    .line 218
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v8

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object v1, v5, v4

    new-instance v2, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v2, p2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {v8, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public importFromXML(Ljava/lang/String;)V
    .locals 37
    .param p1, "xmlInputString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/xpath/XPathExpressionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    move-object/from16 v0, p0

    invoke-static {}, Lorg/apache/poi/util/DocumentHelper;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 93
    .local v1, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 95
    .local v2, "doc":Lorg/w3c/dom/Document;
    iget-object v3, v0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;->_map:Lorg/apache/poi/xssf/usermodel/XSSFMap;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFMap;->getRelatedSingleXMLCell()Ljava/util/List;

    move-result-object v3

    .line 97
    .local v3, "singleXmlCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    iget-object v4, v0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;->_map:Lorg/apache/poi/xssf/usermodel/XSSFMap;

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFMap;->getRelatedTables()Ljava/util/List;

    move-result-object v4

    .line 99
    .local v4, "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v5

    .line 100
    .local v5, "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    invoke-virtual {v5}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v6

    .line 105
    .local v6, "xpath":Ljavax/xml/xpath/XPath;
    new-instance v7, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DefaultNamespaceContext;

    invoke-direct {v7, v2}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DefaultNamespaceContext;-><init>(Lorg/w3c/dom/Document;)V

    invoke-interface {v6, v7}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 107
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, " in sheet "

    const-string v10, "-"

    const-string v11, "\' to cell "

    const-string v12, "Setting \'"

    const-string v13, "\'"

    const-string v14, " : value is \'"

    const-string v15, "Extracting with xpath "

    const/16 v16, 0x0

    move-object/from16 v17, v1

    .end local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v17, "builder":Ljavax/xml/parsers/DocumentBuilder;
    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;

    .line 109
    .local v8, "singleXmlCell":Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;
    invoke-virtual {v8}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;->getXmlDataType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;

    move-result-object v1

    .line 110
    .local v1, "xmlDataType":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;
    move-object/from16 v19, v3

    .end local v3    # "singleXmlCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .local v19, "singleXmlCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    invoke-virtual {v8}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;->getXpath()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "xpathString":Ljava/lang/String;
    move-object/from16 v20, v5

    .end local v5    # "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    .local v20, "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    sget-object v5, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v6, v3, v2, v5}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Node;

    .line 113
    .local v5, "result":Lorg/w3c/dom/Node;
    if-eqz v5, :cond_0

    .line 114
    move-object/from16 v21, v7

    .end local v7    # "i$":Ljava/util/Iterator;
    .local v21, "i$":Ljava/util/Iterator;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 115
    .local v7, "textContent":Ljava/lang/String;
    move-object/from16 v22, v5

    .end local v5    # "result":Lorg/w3c/dom/Node;
    .local v22, "result":Lorg/w3c/dom/Node;
    sget-object v5, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;->logger:Lorg/apache/poi/util/POILogger;

    move-object/from16 v23, v2

    move-object/from16 v24, v6

    const/4 v2, 0x1

    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "xpath":Ljavax/xml/xpath/XPath;
    .local v23, "doc":Lorg/w3c/dom/Document;
    .local v24, "xpath":Ljavax/xml/xpath/XPath;
    new-array v6, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v16

    const/4 v2, 0x1

    invoke-virtual {v5, v2, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v8}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;->getReferencedCell()Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v6

    .line 117
    .local v6, "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    new-array v13, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v16

    const/4 v2, 0x1

    invoke-virtual {v5, v2, v13}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 119
    invoke-direct {v0, v7, v6, v1}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;->setCellValue(Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFCell;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;)V

    goto :goto_1

    .line 113
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v22    # "result":Lorg/w3c/dom/Node;
    .end local v23    # "doc":Lorg/w3c/dom/Document;
    .end local v24    # "xpath":Ljavax/xml/xpath/XPath;
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "result":Lorg/w3c/dom/Node;
    .local v6, "xpath":Ljavax/xml/xpath/XPath;
    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    move-object/from16 v23, v2

    move-object/from16 v22, v5

    move-object/from16 v24, v6

    move-object/from16 v21, v7

    .line 121
    .end local v1    # "xmlDataType":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "xpathString":Ljava/lang/String;
    .end local v5    # "result":Lorg/w3c/dom/Node;
    .end local v6    # "xpath":Ljavax/xml/xpath/XPath;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "singleXmlCell":Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v23    # "doc":Lorg/w3c/dom/Document;
    .restart local v24    # "xpath":Ljavax/xml/xpath/XPath;
    :goto_1
    move-object/from16 v1, v17

    move-object/from16 v3, v19

    move-object/from16 v5, v20

    move-object/from16 v7, v21

    move-object/from16 v2, v23

    move-object/from16 v6, v24

    goto/16 :goto_0

    .line 107
    .end local v19    # "singleXmlCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .end local v20    # "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v23    # "doc":Lorg/w3c/dom/Document;
    .end local v24    # "xpath":Ljavax/xml/xpath/XPath;
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    .local v3, "singleXmlCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .local v5, "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    .restart local v6    # "xpath":Ljavax/xml/xpath/XPath;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object/from16 v23, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v24, v6

    move-object/from16 v21, v7

    .line 123
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "singleXmlCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .end local v5    # "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    .end local v6    # "xpath":Ljavax/xml/xpath/XPath;
    .end local v7    # "i$":Ljava/util/Iterator;
    .restart local v19    # "singleXmlCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .restart local v20    # "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    .restart local v23    # "doc":Lorg/w3c/dom/Document;
    .restart local v24    # "xpath":Ljavax/xml/xpath/XPath;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    .line 125
    .local v2, "table":Lorg/apache/poi/xssf/usermodel/XSSFTable;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCommonXpath()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "commonXPath":Ljava/lang/String;
    sget-object v5, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v6, v23

    move-object/from16 v7, v24

    .end local v23    # "doc":Lorg/w3c/dom/Document;
    .end local v24    # "xpath":Ljavax/xml/xpath/XPath;
    .local v6, "doc":Lorg/w3c/dom/Document;
    .local v7, "xpath":Ljavax/xml/xpath/XPath;
    invoke-interface {v7, v3, v6, v5}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/NodeList;

    .line 127
    .local v5, "result":Lorg/w3c/dom/NodeList;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v8

    move-object/from16 v21, v1

    const/4 v1, 0x1

    .end local v1    # "i$":Ljava/util/Iterator;
    .restart local v21    # "i$":Ljava/util/Iterator;
    add-int/2addr v8, v1

    .line 128
    .local v8, "rowOffset":I
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v18

    add-int/lit8 v22, v18, -0x1

    .line 130
    .local v22, "columnOffset":I
    const/16 v18, 0x0

    move/from16 v1, v18

    .local v1, "i":I
    :goto_3
    move-object/from16 v24, v3

    .end local v3    # "commonXPath":Ljava/lang/String;
    .local v24, "commonXPath":Ljava/lang/String;
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 135
    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object/from16 v25, v4

    const/4 v4, 0x1

    .end local v4    # "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    .local v25, "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 136
    .local v3, "singleNode":Lorg/w3c/dom/Node;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getXmlColumnPrs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;

    .line 138
    .local v23, "xmlColumnPr":Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;
    move-object/from16 v27, v4

    move-object/from16 v26, v5

    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "result":Lorg/w3c/dom/NodeList;
    .local v26, "result":Lorg/w3c/dom/NodeList;
    .local v27, "i$":Ljava/util/Iterator;
    invoke-virtual/range {v23 .. v23}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->getId()J

    move-result-wide v4

    long-to-int v5, v4

    .line 139
    .local v5, "localColumnId":I
    add-int v4, v8, v1

    .line 140
    .local v4, "rowId":I
    move-object/from16 v28, v6

    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .local v28, "doc":Lorg/w3c/dom/Document;
    add-int v6, v22, v5

    .line 141
    .local v6, "columnId":I
    move/from16 v29, v5

    .end local v5    # "localColumnId":I
    .local v29, "localColumnId":I
    invoke-virtual/range {v23 .. v23}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->getLocalXPath()Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, "localXPath":Ljava/lang/String;
    move/from16 v31, v1

    move/from16 v30, v8

    const/4 v8, 0x1

    .end local v1    # "i":I
    .end local v8    # "rowOffset":I
    .local v30, "rowOffset":I
    .local v31, "i":I
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x2f

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    .end local v5    # "localXPath":Ljava/lang/String;
    .local v1, "localXPath":Ljava/lang/String;
    sget-object v5, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-interface {v7, v1, v3, v5}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 146
    .local v5, "value":Ljava/lang/String;
    sget-object v8, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;->logger:Lorg/apache/poi/util/POILogger;

    move-object/from16 v32, v3

    move-object/from16 v33, v7

    const/4 v3, 0x1

    .end local v3    # "singleNode":Lorg/w3c/dom/Node;
    .end local v7    # "xpath":Ljavax/xml/xpath/XPath;
    .local v32, "singleNode":Lorg/w3c/dom/Node;
    .local v33, "xpath":Ljavax/xml/xpath/XPath;
    new-array v7, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v16

    const/4 v3, 0x1

    invoke-virtual {v8, v3, v7}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v3

    .line 148
    .local v3, "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    if-nez v3, :cond_2

    .line 149
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v3

    .line 152
    :cond_2
    invoke-virtual {v3, v6}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v7

    .line 153
    .local v7, "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    if-nez v7, :cond_3

    .line 154
    invoke-virtual {v3, v6}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v7

    .line 156
    :cond_3
    move-object/from16 v34, v1

    move-object/from16 v35, v3

    const/4 v1, 0x1

    .end local v1    # "localXPath":Ljava/lang/String;
    .end local v3    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .local v34, "localXPath":Ljava/lang/String;
    .local v35, "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    new-array v3, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v36, v4

    .end local v4    # "rowId":I
    .local v36, "rowId":I
    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v16

    const/4 v1, 0x1

    invoke-virtual {v8, v1, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 158
    invoke-virtual/range {v23 .. v23}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->getXmlDataType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;

    move-result-object v3

    invoke-direct {v0, v5, v7, v3}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;->setCellValue(Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFCell;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;)V

    .line 159
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "columnId":I
    .end local v7    # "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .end local v23    # "xmlColumnPr":Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;
    .end local v29    # "localColumnId":I
    .end local v34    # "localXPath":Ljava/lang/String;
    .end local v35    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .end local v36    # "rowId":I
    move-object/from16 v5, v26

    move-object/from16 v4, v27

    move-object/from16 v6, v28

    move/from16 v8, v30

    move/from16 v1, v31

    move-object/from16 v3, v32

    move-object/from16 v7, v33

    goto/16 :goto_4

    .line 136
    .end local v26    # "result":Lorg/w3c/dom/NodeList;
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v28    # "doc":Lorg/w3c/dom/Document;
    .end local v30    # "rowOffset":I
    .end local v31    # "i":I
    .end local v32    # "singleNode":Lorg/w3c/dom/Node;
    .end local v33    # "xpath":Ljavax/xml/xpath/XPath;
    .local v1, "i":I
    .local v3, "singleNode":Lorg/w3c/dom/Node;
    .local v4, "i$":Ljava/util/Iterator;
    .local v5, "result":Lorg/w3c/dom/NodeList;
    .local v6, "doc":Lorg/w3c/dom/Document;
    .local v7, "xpath":Ljavax/xml/xpath/XPath;
    .restart local v8    # "rowOffset":I
    :cond_4
    move/from16 v31, v1

    move-object/from16 v32, v3

    move-object/from16 v27, v4

    move-object/from16 v26, v5

    move-object/from16 v28, v6

    move-object/from16 v33, v7

    move/from16 v30, v8

    const/4 v1, 0x1

    .line 130
    .end local v1    # "i":I
    .end local v3    # "singleNode":Lorg/w3c/dom/Node;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "result":Lorg/w3c/dom/NodeList;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "xpath":Ljavax/xml/xpath/XPath;
    .end local v8    # "rowOffset":I
    .restart local v26    # "result":Lorg/w3c/dom/NodeList;
    .restart local v28    # "doc":Lorg/w3c/dom/Document;
    .restart local v30    # "rowOffset":I
    .restart local v31    # "i":I
    .restart local v33    # "xpath":Ljavax/xml/xpath/XPath;
    add-int/lit8 v3, v31, 0x1

    move v1, v3

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    .end local v31    # "i":I
    .local v3, "i":I
    goto/16 :goto_3

    .end local v3    # "i":I
    .end local v25    # "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    .end local v26    # "result":Lorg/w3c/dom/NodeList;
    .end local v28    # "doc":Lorg/w3c/dom/Document;
    .end local v30    # "rowOffset":I
    .end local v33    # "xpath":Ljavax/xml/xpath/XPath;
    .restart local v1    # "i":I
    .local v4, "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    .restart local v5    # "result":Lorg/w3c/dom/NodeList;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v7    # "xpath":Ljavax/xml/xpath/XPath;
    .restart local v8    # "rowOffset":I
    :cond_5
    move/from16 v31, v1

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v28, v6

    move-object/from16 v33, v7

    move/from16 v30, v8

    const/4 v1, 0x1

    .line 161
    .end local v1    # "i":I
    .end local v2    # "table":Lorg/apache/poi/xssf/usermodel/XSSFTable;
    .end local v4    # "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    .end local v5    # "result":Lorg/w3c/dom/NodeList;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "xpath":Ljavax/xml/xpath/XPath;
    .end local v8    # "rowOffset":I
    .end local v22    # "columnOffset":I
    .end local v24    # "commonXPath":Ljava/lang/String;
    .restart local v25    # "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    .restart local v28    # "doc":Lorg/w3c/dom/Document;
    .restart local v33    # "xpath":Ljavax/xml/xpath/XPath;
    move-object/from16 v1, v21

    move-object/from16 v23, v28

    move-object/from16 v24, v33

    goto/16 :goto_2

    .line 162
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v25    # "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    .end local v28    # "doc":Lorg/w3c/dom/Document;
    .end local v33    # "xpath":Ljavax/xml/xpath/XPath;
    .restart local v4    # "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    .local v23, "doc":Lorg/w3c/dom/Document;
    .local v24, "xpath":Ljavax/xml/xpath/XPath;
    :cond_6
    return-void
.end method
