.class public Lorg/apache/poi/xssf/model/SharedStringsTable;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SharedStringsTable.java"


# static fields
.field private static final options:Lorg/apache/xmlbeans/XmlOptions;


# instance fields
.field private _sstDoc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;

.field private count:I

.field private final stmap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final strings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;",
            ">;"
        }
    .end annotation
.end field

.field private uniqueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 88
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/model/SharedStringsTable;->options:Lorg/apache/xmlbeans/XmlOptions;

    .line 90
    const-string v1, "SAVE_INNER"

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;)V

    .line 91
    const-string v1, "SAVE_AGGRESSIVE_NAMESPACES"

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;)V

    .line 92
    const-string v1, "SAVE_USE_DEFAULT_NAMESPACE"

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;)V

    .line 93
    const-string v1, ""

    const-string v2, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveImplicitNamespaces(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;

    .line 94
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->strings:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->stmap:Ljava/util/Map;

    .line 98
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->_sstDoc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;

    .line 99
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;->addNewSst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->strings:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->stmap:Ljava/util/Map;

    .line 107
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/SharedStringsTable;->readFrom(Ljava/io/InputStream;)V

    .line 108
    return-void
.end method

.method private getKey(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)Ljava/lang/String;
    .locals 1
    .param p1, "st"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    .line 135
    sget-object v0, Lorg/apache/poi/xssf/model/SharedStringsTable;->options:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->xmlText(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addEntry(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)I
    .locals 5
    .param p1, "st"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    .line 181
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/model/SharedStringsTable;->getKey(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "s":Ljava/lang/String;
    iget v1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->count:I

    .line 183
    iget-object v1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->stmap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->stmap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 187
    :cond_0
    iget v1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->uniqueCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->uniqueCount:I

    .line 189
    iget-object v1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->_sstDoc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;->getSst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;->addNewSi()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v1

    .line 190
    .local v1, "newSt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 191
    iget-object v2, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->strings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 192
    .local v2, "idx":I
    iget-object v3, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->stmap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v3, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->strings:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    return v2
.end method

.method protected commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/SharedStringsTable;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 229
    .local v0, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 230
    .local v1, "out":Ljava/io/OutputStream;
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/model/SharedStringsTable;->writeTo(Ljava/io/OutputStream;)V

    .line 231
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 232
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 155
    iget v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->count:I

    return v0
.end method

.method public getEntryAt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
    .locals 1
    .param p1, "idx"    # I

    .line 145
    iget-object v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->strings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->strings:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueCount()I
    .locals 1

    .line 166
    iget v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->uniqueCount:I

    return v0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 9
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "cnt":I
    :try_start_0
    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->_sstDoc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;

    .line 120
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;->getSst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;

    move-result-object v1

    .line 121
    .local v1, "sst":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;->getCount()J

    move-result-wide v2

    long-to-int v3, v2

    iput v3, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->count:I

    .line 122
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;->getUniqueCount()J

    move-result-wide v2

    long-to-int v3, v2

    iput v3, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->uniqueCount:I

    .line 124
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;->getSiArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v2

    .local v2, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 125
    .local v5, "st":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
    iget-object v6, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->stmap:Ljava/util/Map;

    invoke-direct {p0, v5}, Lorg/apache/poi/xssf/model/SharedStringsTable;->getKey(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v6, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->strings:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    nop

    .end local v5    # "st":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
    add-int/lit8 v0, v0, 0x1

    .line 124
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "cnt":I
    .end local v1    # "sst":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;
    .end local v2    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    nop

    .line 132
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "unable to parse shared strings table"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    .line 215
    .local v0, "xmlOptions":Lorg/apache/xmlbeans/XmlOptions;
    const v1, 0xf4240

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveCDataLengthThreshold(I)Lorg/apache/xmlbeans/XmlOptions;

    .line 216
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveCDataEntityCountThreshold(I)Lorg/apache/xmlbeans/XmlOptions;

    .line 219
    iget-object v1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->_sstDoc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;->getSst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;

    move-result-object v1

    .line 220
    .local v1, "sst":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;
    iget v2, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->count:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;->setCount(J)V

    .line 221
    iget v2, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->uniqueCount:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;->setUniqueCount(J)V

    .line 223
    iget-object v2, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->_sstDoc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;

    invoke-interface {v2, p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 224
    return-void
.end method
