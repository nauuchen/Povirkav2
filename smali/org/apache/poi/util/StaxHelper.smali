.class public final Lorg/apache/poi/util/StaxHelper;
.super Ljava/lang/Object;
.source "StaxHelper.java"


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lorg/apache/poi/util/StaxHelper;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/StaxHelper;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newXMLEventFactory()Ljavax/xml/stream/XMLEventFactory;
    .locals 1

    .line 58
    invoke-static {}, Ljavax/xml/stream/XMLEventFactory;->newFactory()Ljavax/xml/stream/XMLEventFactory;

    move-result-object v0

    return-object v0
.end method

.method public static newXMLInputFactory()Ljavax/xml/stream/XMLInputFactory;
    .locals 3

    .line 37
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newFactory()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    .line 38
    .local v0, "factory":Ljavax/xml/stream/XMLInputFactory;
    const-string v1, "javax.xml.stream.isNamespaceAware"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/StaxHelper;->trySetProperty(Ljavax/xml/stream/XMLInputFactory;Ljava/lang/String;Z)V

    .line 39
    const-string v1, "javax.xml.stream.isValidating"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/StaxHelper;->trySetProperty(Ljavax/xml/stream/XMLInputFactory;Ljava/lang/String;Z)V

    .line 40
    const-string v1, "javax.xml.stream.supportDTD"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/StaxHelper;->trySetProperty(Ljavax/xml/stream/XMLInputFactory;Ljava/lang/String;Z)V

    .line 41
    const-string v1, "javax.xml.stream.isSupportingExternalEntities"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/StaxHelper;->trySetProperty(Ljavax/xml/stream/XMLInputFactory;Ljava/lang/String;Z)V

    .line 42
    return-object v0
.end method

.method public static newXMLOutputFactory()Ljavax/xml/stream/XMLOutputFactory;
    .locals 3

    .line 49
    invoke-static {}, Ljavax/xml/stream/XMLOutputFactory;->newFactory()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v0

    .line 50
    .local v0, "factory":Ljavax/xml/stream/XMLOutputFactory;
    const-string v1, "javax.xml.stream.isRepairingNamespaces"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/StaxHelper;->trySetProperty(Ljavax/xml/stream/XMLOutputFactory;Ljava/lang/String;Z)V

    .line 51
    return-object v0
.end method

.method private static trySetProperty(Ljavax/xml/stream/XMLInputFactory;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "factory"    # Ljavax/xml/stream/XMLInputFactory;
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .line 63
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x5

    :try_start_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Ljavax/xml/stream/XMLInputFactory;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v5

    .line 67
    .local v5, "ame":Ljava/lang/AbstractMethodError;
    sget-object v6, Lorg/apache/poi/util/StaxHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v7, "Cannot set StAX property because outdated StAX parser in classpath"

    aput-object v7, v3, v2

    aput-object p1, v3, v1

    aput-object v5, v3, v0

    invoke-virtual {v6, v4, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 64
    .end local v5    # "ame":Ljava/lang/AbstractMethodError;
    :catch_1
    move-exception v5

    .line 65
    .local v5, "e":Ljava/lang/Exception;
    sget-object v6, Lorg/apache/poi/util/StaxHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v7, "StAX Property unsupported"

    aput-object v7, v3, v2

    aput-object p1, v3, v1

    aput-object v5, v3, v0

    invoke-virtual {v6, v4, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 68
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 69
    :goto_1
    return-void
.end method

.method private static trySetProperty(Ljavax/xml/stream/XMLOutputFactory;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "factory"    # Ljavax/xml/stream/XMLOutputFactory;
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .line 73
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x5

    :try_start_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Ljavax/xml/stream/XMLOutputFactory;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v5

    .line 77
    .local v5, "ame":Ljava/lang/AbstractMethodError;
    sget-object v6, Lorg/apache/poi/util/StaxHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v7, "Cannot set StAX property because outdated StAX parser in classpath"

    aput-object v7, v3, v2

    aput-object p1, v3, v1

    aput-object v5, v3, v0

    invoke-virtual {v6, v4, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 74
    .end local v5    # "ame":Ljava/lang/AbstractMethodError;
    :catch_1
    move-exception v5

    .line 75
    .local v5, "e":Ljava/lang/Exception;
    sget-object v6, Lorg/apache/poi/util/StaxHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v7, "StAX Property unsupported"

    aput-object v7, v3, v2

    aput-object p1, v3, v1

    aput-object v5, v3, v0

    invoke-virtual {v6, v4, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 78
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 79
    :goto_1
    return-void
.end method
