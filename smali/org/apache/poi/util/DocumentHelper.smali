.class public final Lorg/apache/poi/util/DocumentHelper;
.super Ljava/lang/Object;
.source "DocumentHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/util/DocumentHelper$DocHelperErrorHandler;
    }
.end annotation


# static fields
.field private static final documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private static final documentBuilderSingleton:Ljavax/xml/parsers/DocumentBuilder;

.field private static logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    const-class v0, Lorg/apache/poi/util/DocumentHelper;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/DocumentHelper;->logger:Lorg/apache/poi/util/POILogger;

    .line 96
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/DocumentHelper;->documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 99
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 100
    const-string v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/DocumentHelper;->trySetSAXFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    .line 101
    invoke-static {v0}, Lorg/apache/poi/util/DocumentHelper;->trySetXercesSecurityManager(Ljavax/xml/parsers/DocumentBuilderFactory;)V

    .line 154
    invoke-static {}, Lorg/apache/poi/util/DocumentHelper;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/DocumentHelper;->documentBuilderSingleton:Ljavax/xml/parsers/DocumentBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/poi/util/POILogger;
    .locals 1

    .line 37
    sget-object v0, Lorg/apache/poi/util/DocumentHelper;->logger:Lorg/apache/poi/util/POILogger;

    return-object v0
.end method

.method public static addNamespaceDeclaration(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "element"    # Lorg/w3c/dom/Element;
    .param p1, "namespacePrefix"    # Ljava/lang/String;
    .param p2, "namespaceURI"    # Ljava/lang/String;

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.w3.org/2000/xmlns/"

    invoke-interface {p0, v1, v0, p2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public static addNamespaceDeclaration(Lorg/w3c/dom/Element;Ljavax/xml/stream/events/Namespace;)V
    .locals 2
    .param p0, "element"    # Lorg/w3c/dom/Element;
    .param p1, "namespace"    # Ljavax/xml/stream/events/Namespace;

    .line 176
    invoke-interface {p1}, Ljavax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljavax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/poi/util/DocumentHelper;->addNamespaceDeclaration(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public static declared-synchronized createDocument()Lorg/w3c/dom/Document;
    .locals 2

    const-class v0, Lorg/apache/poi/util/DocumentHelper;

    monitor-enter v0

    .line 160
    :try_start_0
    sget-object v1, Lorg/apache/poi/util/DocumentHelper;->documentBuilderSingleton:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 4

    const-class v0, Lorg/apache/poi/util/DocumentHelper;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v1, Lorg/apache/poi/util/DocumentHelper;->documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 88
    .local v1, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    sget-object v2, Lorg/apache/poi/util/SAXHelper;->IGNORING_ENTITY_RESOLVER:Lorg/xml/sax/EntityResolver;

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 89
    new-instance v2, Lorg/apache/poi/util/DocumentHelper$DocHelperErrorHandler;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/poi/util/DocumentHelper$DocHelperErrorHandler;-><init>(Lorg/apache/poi/util/DocumentHelper$1;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit v0

    return-object v1

    .line 86
    .end local v1    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "cannot create a DocumentBuilder"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_0
    monitor-exit v0

    throw v1
.end method

.method public static readDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 1
    .param p0, "inp"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 140
    invoke-static {}, Lorg/apache/poi/util/DocumentHelper;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static readDocument(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    .locals 1
    .param p0, "inp"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 150
    invoke-static {}, Lorg/apache/poi/util/DocumentHelper;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method private static trySetSAXFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "dbf"    # Ljavax/xml/parsers/DocumentBuilderFactory;
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 106
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x5

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    goto :goto_1

    .line 109
    :catch_0
    move-exception v5

    .line 110
    .local v5, "ame":Ljava/lang/AbstractMethodError;
    sget-object v6, Lorg/apache/poi/util/DocumentHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v7, "Cannot set SAX feature because outdated XML parser in classpath"

    aput-object v7, v3, v2

    aput-object p1, v3, v1

    aput-object v5, v3, v0

    invoke-virtual {v6, v4, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 107
    .end local v5    # "ame":Ljava/lang/AbstractMethodError;
    :catch_1
    move-exception v5

    .line 108
    .local v5, "e":Ljava/lang/Exception;
    sget-object v6, Lorg/apache/poi/util/DocumentHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v7, "SAX Feature unsupported"

    aput-object v7, v3, v2

    aput-object p1, v3, v1

    aput-object v5, v3, v0

    invoke-virtual {v6, v4, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 112
    :goto_1
    return-void
.end method

.method private static trySetXercesSecurityManager(Ljavax/xml/parsers/DocumentBuilderFactory;)V
    .locals 11
    .param p0, "dbf"    # Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 116
    const-string v0, "com.sun.org.apache.xerces.internal.util.SecurityManager"

    const-string v1, "org.apache.xerces.util.SecurityManager"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 121
    .local v3, "securityManagerClassName":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 122
    .local v6, "mgr":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "setEntityExpansionLimit"

    new-array v9, v5, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 123
    .local v7, "setLimit":Ljava/lang/reflect/Method;
    new-array v8, v5, [Ljava/lang/Object;

    const/16 v9, 0x1000

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v8, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p0, v8, v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    return-void

    .line 127
    .end local v6    # "mgr":Ljava/lang/Object;
    .end local v7    # "setLimit":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v6

    .line 128
    .local v6, "e":Ljava/lang/Throwable;
    sget-object v7, Lorg/apache/poi/util/DocumentHelper;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v8, 0x5

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "SAX Security Manager could not be setup"

    aput-object v10, v9, v4

    aput-object v6, v9, v5

    invoke-virtual {v7, v8, v9}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 116
    .end local v3    # "securityManagerClassName":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Throwable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method
