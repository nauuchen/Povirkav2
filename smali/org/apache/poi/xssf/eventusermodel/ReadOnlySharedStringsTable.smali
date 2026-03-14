.class public Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ReadOnlySharedStringsTable.java"


# instance fields
.field private characters:Ljava/lang/StringBuffer;

.field private count:I

.field private inRPh:Z

.field private final includePhoneticRuns:Z

.field private phoneticStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private strings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tIsOpen:Z

.field private uniqueCount:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1
    .param p1, "pkg"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 117
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Z)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Z)V
    .locals 3
    .param p1, "pkg"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .param p2, "includePhoneticRuns"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 130
    iput-boolean p2, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->includePhoneticRuns:Z

    .line 131
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHARED_STRINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 135
    .local v0, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/poi/openxml4j/opc/PackagePart;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 136
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 137
    .local v1, "sstPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->readFrom(Ljava/io/InputStream;)V

    .line 139
    .end local v1    # "sstPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Z)V

    .line 151
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Z)V
    .locals 1
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .param p2, "includePhoneticRuns"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 160
    iput-boolean p2, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->includePhoneticRuns:Z

    .line 161
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->readFrom(Ljava/io/InputStream;)V

    .line 162
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 278
    iget-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->tIsOpen:Z

    if-eqz v0, :cond_1

    .line 279
    iget-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->inRPh:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->includePhoneticRuns:Z

    if-eqz v1, :cond_0

    .line 280
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->characters:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 281
    :cond_0
    if-nez v0, :cond_1

    .line 282
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->characters:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 285
    :cond_1
    :goto_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 260
    if-eqz p1, :cond_0

    const-string v0, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    return-void

    .line 264
    :cond_0
    const-string v0, "si"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->strings:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->characters:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 266
    :cond_1
    const-string v0, "t"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 267
    iput-boolean v1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->tIsOpen:Z

    goto :goto_0

    .line 268
    :cond_2
    const-string v0, "rPh"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 269
    iput-boolean v1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->inRPh:Z

    .line 271
    :cond_3
    :goto_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 195
    iget v0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->count:I

    return v0
.end method

.method public getEntryAt(I)Ljava/lang/String;
    .locals 1
    .param p1, "idx"    # I

    .line 217
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->strings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->strings:Ljava/util/List;

    return-object v0
.end method

.method public getUniqueCount()I
    .locals 1

    .line 206
    iget v0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->uniqueCount:I

    return v0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 174
    .local v0, "pis":Ljava/io/PushbackInputStream;
    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    .line 175
    .local v1, "emptyTest":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 176
    invoke-virtual {v0, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 177
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 179
    .local v2, "sheetSource":Lorg/xml/sax/InputSource;
    :try_start_0
    invoke-static {}, Lorg/apache/poi/util/SAXHelper;->newXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    .line 180
    .local v3, "sheetParser":Lorg/xml/sax/XMLReader;
    invoke-interface {v3, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 181
    invoke-interface {v3, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v3    # "sheetParser":Lorg/xml/sax/XMLReader;
    goto :goto_0

    .line 182
    :catch_0
    move-exception v3

    .line 183
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAX parser appears to be broken - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 186
    .end local v2    # "sheetSource":Lorg/xml/sax/InputSource;
    .end local v3    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_0
    :goto_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 232
    if-eqz p1, :cond_0

    const-string v0, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    return-void

    .line 236
    :cond_0
    const-string v0, "sst"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    const-string v0, "count"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "count":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->count:I

    .line 239
    :cond_1
    const-string/jumbo v1, "uniqueCount"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "uniqueCount":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->uniqueCount:I

    .line 242
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->uniqueCount:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->strings:Ljava/util/List;

    .line 243
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->phoneticStrings:Ljava/util/Map;

    .line 244
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->characters:Ljava/lang/StringBuffer;

    .line 245
    .end local v0    # "count":Ljava/lang/String;
    .end local v1    # "uniqueCount":Ljava/lang/String;
    goto :goto_0

    :cond_3
    const-string v0, "si"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 246
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->characters:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0

    .line 247
    :cond_4
    const-string v0, "t"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 248
    iput-boolean v1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->tIsOpen:Z

    goto :goto_0

    .line 249
    :cond_5
    const-string v0, "rPh"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 250
    iput-boolean v1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->inRPh:Z

    .line 252
    iget-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->includePhoneticRuns:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->characters:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 253
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->characters:Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    :cond_6
    :goto_0
    return-void
.end method
