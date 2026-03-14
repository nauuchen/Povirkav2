.class public Lorg/apache/poi/POIXMLTypeLoader;
.super Ljava/lang/Object;
.source "POIXMLTypeLoader.java"


# static fields
.field public static final DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

.field private static final MS_EXCEL_URN:Ljava/lang/String; = "urn:schemas-microsoft-com:office:excel"

.field private static final MS_OFFICE_URN:Ljava/lang/String; = "urn:schemas-microsoft-com:office:office"

.field private static final MS_VML_URN:Ljava/lang/String; = "urn:schemas-microsoft-com:vml"

.field private static final MS_WORD_URN:Ljava/lang/String; = "urn:schemas-microsoft-com:office:word"

.field private static typeLoader:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/xmlbeans/SchemaTypeLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 53
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/POIXMLTypeLoader;->typeLoader:Ljava/lang/ThreadLocal;

    .line 64
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    sput-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    .line 65
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->setSaveOuter()Lorg/apache/xmlbeans/XmlOptions;

    .line 66
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->setUseDefaultNamespace()Lorg/apache/xmlbeans/XmlOptions;

    .line 67
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->setSaveAggressiveNamespaces()Lorg/apache/xmlbeans/XmlOptions;

    .line 68
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setCharacterEncoding(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions;

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "http://schemas.openxmlformats.org/drawingml/2006/main"

    const-string v3, "a"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v2, "http://schemas.openxmlformats.org/drawingml/2006/chart"

    const-string v3, "c"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v2, "http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing"

    const-string/jumbo v3, "wp"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v2, "http://schemas.openxmlformats.org/markup-compatibility/2006"

    const-string/jumbo v3, "ve"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/math"

    const-string v3, "m"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships"

    const-string v3, "r"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes"

    const-string/jumbo v3, "vt"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v2, "http://schemas.openxmlformats.org/presentationml/2006/main"

    const-string v3, "p"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v2, "http://schemas.openxmlformats.org/wordprocessingml/2006/main"

    const-string/jumbo v3, "w"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v2, "http://schemas.microsoft.com/office/word/2006/wordml"

    const-string/jumbo v3, "wne"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string/jumbo v2, "urn:schemas-microsoft-com:office:office"

    const-string v3, "o"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string/jumbo v2, "urn:schemas-microsoft-com:office:excel"

    const-string/jumbo v3, "x"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string/jumbo v2, "urn:schemas-microsoft-com:office:word"

    const-string/jumbo v3, "w10"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string/jumbo v2, "urn:schemas-microsoft-com:vml"

    const-string/jumbo v3, "v"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSuggestedPrefixes(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;

    .line 95
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTypeLoader(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 3
    .param p0, "type"    # Lorg/apache/xmlbeans/SchemaType;

    .line 122
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->typeLoader:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaTypeLoader;

    .line 123
    .local v0, "tl":Lorg/apache/xmlbeans/SchemaTypeLoader;
    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 125
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-static {v1}, Lorg/apache/xmlbeans/XmlBeans;->typeLoaderForClassLoader(Ljava/lang/ClassLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v0

    .line 126
    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->typeLoader:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 128
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    :cond_0
    return-object v0
.end method

.method private static getXmlOptions(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1
    .param p0, "options"    # Lorg/apache/xmlbeans/XmlOptions;

    .line 98
    if-nez p0, :cond_0

    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static newInstance(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2
    .param p0, "type"    # Lorg/apache/xmlbeans/SchemaType;
    .param p1, "options"    # Lorg/apache/xmlbeans/XmlOptions;

    .line 132
    invoke-static {p0}, Lorg/apache/poi/POIXMLTypeLoader;->getTypeLoader(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/poi/POIXMLTypeLoader;->getXmlOptions(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->newInstance(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    return-object v0
.end method

.method public static newValidatingXMLInputStream(Lorg/apache/xmlbeans/xml/stream/XMLInputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/xml/stream/XMLInputStream;
    .locals 2
    .param p0, "xis"    # Lorg/apache/xmlbeans/xml/stream/XMLInputStream;
    .param p1, "type"    # Lorg/apache/xmlbeans/SchemaType;
    .param p2, "options"    # Lorg/apache/xmlbeans/XmlOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Lorg/apache/xmlbeans/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 192
    invoke-static {p1}, Lorg/apache/poi/POIXMLTypeLoader;->getTypeLoader(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/poi/POIXMLTypeLoader;->getXmlOptions(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->newValidatingXMLInputStream(Lorg/apache/xmlbeans/xml/stream/XMLInputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/xml/stream/XMLInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/File;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "type"    # Lorg/apache/xmlbeans/SchemaType;
    .param p2, "options"    # Lorg/apache/xmlbeans/XmlOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 146
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0, p1, p2}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public static parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 4
    .param p0, "jiois"    # Ljava/io/InputStream;
    .param p1, "type"    # Lorg/apache/xmlbeans/SchemaType;
    .param p2, "options"    # Lorg/apache/xmlbeans/XmlOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    :try_start_0
    invoke-static {p0}, Lorg/apache/poi/util/DocumentHelper;->readDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 164
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-static {p1}, Lorg/apache/poi/POIXMLTypeLoader;->getTypeLoader(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v1

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-static {p2}, Lorg/apache/poi/POIXMLTypeLoader;->getXmlOptions(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lorg/apache/xmlbeans/SchemaTypeLoader;->parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 165
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to parse xml bean"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parse(Ljava/io/Reader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 4
    .param p0, "jior"    # Ljava/io/Reader;
    .param p1, "type"    # Lorg/apache/xmlbeans/SchemaType;
    .param p2, "options"    # Lorg/apache/xmlbeans/XmlOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    :try_start_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {v0}, Lorg/apache/poi/util/DocumentHelper;->readDocument(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 177
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-static {p1}, Lorg/apache/poi/POIXMLTypeLoader;->getTypeLoader(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v1

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-static {p2}, Lorg/apache/poi/POIXMLTypeLoader;->getXmlOptions(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lorg/apache/xmlbeans/SchemaTypeLoader;->parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 178
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/apache/xmlbeans/XmlException;

    const-string v2, "Unable to parse xml bean"

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parse(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 3
    .param p0, "xmlText"    # Ljava/lang/String;
    .param p1, "type"    # Lorg/apache/xmlbeans/SchemaType;
    .param p2, "options"    # Lorg/apache/xmlbeans/XmlOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 137
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Ljava/io/Reader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/xmlbeans/XmlException;

    const-string v2, "Unable to parse xml bean"

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parse(Ljava/net/URL;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2
    .param p0, "file"    # Ljava/net/URL;
    .param p1, "type"    # Lorg/apache/xmlbeans/SchemaType;
    .param p2, "options"    # Lorg/apache/xmlbeans/XmlOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 155
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0, p1, p2}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public static parse(Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2
    .param p0, "xsr"    # Ljavax/xml/stream/XMLStreamReader;
    .param p1, "type"    # Lorg/apache/xmlbeans/SchemaType;
    .param p2, "options"    # Lorg/apache/xmlbeans/XmlOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 171
    invoke-static {p1}, Lorg/apache/poi/POIXMLTypeLoader;->getTypeLoader(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/poi/POIXMLTypeLoader;->getXmlOptions(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->parse(Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lorg/apache/xmlbeans/xml/stream/XMLInputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2
    .param p0, "xis"    # Lorg/apache/xmlbeans/xml/stream/XMLInputStream;
    .param p1, "type"    # Lorg/apache/xmlbeans/SchemaType;
    .param p2, "options"    # Lorg/apache/xmlbeans/XmlOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Lorg/apache/xmlbeans/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 188
    invoke-static {p1}, Lorg/apache/poi/POIXMLTypeLoader;->getTypeLoader(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/poi/POIXMLTypeLoader;->getXmlOptions(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->parse(Lorg/apache/xmlbeans/xml/stream/XMLInputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "type"    # Lorg/apache/xmlbeans/SchemaType;
    .param p2, "options"    # Lorg/apache/xmlbeans/XmlOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 184
    invoke-static {p1}, Lorg/apache/poi/POIXMLTypeLoader;->getTypeLoader(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/poi/POIXMLTypeLoader;->getXmlOptions(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    return-object v0
.end method

.method public static setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p0, "cl"    # Ljava/lang/ClassLoader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "4.0"
    .end annotation

    .line 119
    return-void
.end method
