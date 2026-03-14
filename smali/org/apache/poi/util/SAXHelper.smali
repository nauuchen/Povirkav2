.class public final Lorg/apache/poi/util/SAXHelper;
.super Ljava/lang/Object;
.source "SAXHelper.java"


# static fields
.field static final IGNORING_ENTITY_RESOLVER:Lorg/xml/sax/EntityResolver;

.field private static lastLog:J

.field private static final logger:Lorg/apache/poi/util/POILogger;

.field private static final saxFactory:Ljavax/xml/parsers/SAXParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 39
    const-string v0, "Failed to create SAXParserFactory"

    const-class v1, Lorg/apache/poi/util/SAXHelper;

    invoke-static {v1}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/util/SAXHelper;->logger:Lorg/apache/poi/util/POILogger;

    .line 55
    new-instance v1, Lorg/apache/poi/util/SAXHelper$1;

    invoke-direct {v1}, Lorg/apache/poi/util/SAXHelper$1;-><init>()V

    sput-object v1, Lorg/apache/poi/util/SAXHelper;->IGNORING_ENTITY_RESOLVER:Lorg/xml/sax/EntityResolver;

    .line 66
    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    sput-object v5, Lorg/apache/poi/util/SAXHelper;->saxFactory:Ljavax/xml/parsers/SAXParserFactory;

    .line 67
    invoke-virtual {v5, v4}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 68
    invoke-virtual {v5, v3}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    nop

    .line 83
    return-void

    .line 75
    :catch_0
    move-exception v5

    .line 80
    .local v5, "e":Ljava/lang/Error;
    sget-object v6, Lorg/apache/poi/util/SAXHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    aput-object v5, v1, v3

    invoke-virtual {v6, v2, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 81
    throw v5

    .line 72
    .end local v5    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v5

    .line 73
    .local v5, "e":Ljava/lang/Exception;
    sget-object v6, Lorg/apache/poi/util/SAXHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    aput-object v5, v1, v3

    invoke-virtual {v6, v2, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 74
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 69
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 70
    .local v5, "re":Ljava/lang/RuntimeException;
    sget-object v6, Lorg/apache/poi/util/SAXHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    aput-object v5, v1, v3

    invoke-virtual {v6, v2, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 71
    throw v5
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized newXMLReader()Lorg/xml/sax/XMLReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    const-class v0, Lorg/apache/poi/util/SAXHelper;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lorg/apache/poi/util/SAXHelper;->saxFactory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 49
    .local v1, "xmlReader":Lorg/xml/sax/XMLReader;
    sget-object v2, Lorg/apache/poi/util/SAXHelper;->IGNORING_ENTITY_RESOLVER:Lorg/xml/sax/EntityResolver;

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 50
    const-string v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-static {v1, v2}, Lorg/apache/poi/util/SAXHelper;->trySetSAXFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;)V

    .line 51
    invoke-static {v1}, Lorg/apache/poi/util/SAXHelper;->trySetXercesSecurityManager(Lorg/xml/sax/XMLReader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit v0

    return-object v1

    .line 47
    .end local v1    # "xmlReader":Lorg/xml/sax/XMLReader;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static trySetSAXFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;)V
    .locals 8
    .param p0, "xmlReader"    # Lorg/xml/sax/XMLReader;
    .param p1, "feature"    # Ljava/lang/String;

    .line 87
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x1

    :try_start_0
    invoke-interface {p0, p1, v4}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    goto :goto_1

    .line 90
    :catch_0
    move-exception v5

    .line 91
    .local v5, "ame":Ljava/lang/AbstractMethodError;
    sget-object v6, Lorg/apache/poi/util/SAXHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, "Cannot set SAX feature because outdated XML parser in classpath"

    aput-object v7, v2, v1

    aput-object p1, v2, v4

    aput-object v5, v2, v0

    invoke-virtual {v6, v3, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 88
    .end local v5    # "ame":Ljava/lang/AbstractMethodError;
    :catch_1
    move-exception v5

    .line 89
    .local v5, "e":Ljava/lang/Exception;
    sget-object v6, Lorg/apache/poi/util/SAXHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, "SAX Feature unsupported"

    aput-object v7, v2, v1

    aput-object p1, v2, v4

    aput-object v5, v2, v0

    invoke-virtual {v6, v3, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 93
    :goto_1
    return-void
.end method

.method private static trySetXercesSecurityManager(Lorg/xml/sax/XMLReader;)V
    .locals 14
    .param p0, "xmlReader"    # Lorg/xml/sax/XMLReader;

    .line 97
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
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 102
    .local v3, "securityManagerClassName":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 103
    .local v6, "mgr":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "setEntityExpansionLimit"

    new-array v9, v5, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 104
    .local v7, "setLimit":Ljava/lang/reflect/Method;
    new-array v8, v5, [Ljava/lang/Object;

    const/16 v9, 0x1000

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v8, "http://apache.org/xml/properties/security-manager"

    invoke-interface {p0, v8, v6}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    return-void

    .line 108
    .end local v6    # "mgr":Ljava/lang/Object;
    .end local v7    # "setLimit":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v6

    .line 110
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-wide v9, Lorg/apache/poi/util/SAXHelper;->lastLog:J

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x5

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    add-long/2addr v9, v11

    cmp-long v11, v7, v9

    if-lez v11, :cond_0

    .line 111
    sget-object v7, Lorg/apache/poi/util/SAXHelper;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v8, 0x5

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "SAX Security Manager could not be setup [log suppressed for 5 minutes]"

    aput-object v10, v9, v4

    aput-object v6, v9, v5

    invoke-virtual {v7, v8, v9}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lorg/apache/poi/util/SAXHelper;->lastLog:J

    .line 97
    .end local v3    # "securityManagerClassName":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return-void
.end method
