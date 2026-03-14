.class public final Lorg/apache/poi/openxml4j/opc/StreamHelper;
.super Ljava/lang/Object;
.source "StreamHelper.java"


# static fields
.field private static final transformerFactory:Ljavax/xml/transform/TransformerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/StreamHelper;->transformerFactory:Ljavax/xml/transform/TransformerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 4
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "outStream"    # Ljava/io/OutputStream;

    .line 102
    const/16 v0, 0x400

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [B

    .line 104
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "bytesRead":I
    if-ltz v2, :cond_0

    .line 105
    invoke-virtual {p1, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    .end local v0    # "buffer":[B
    .end local v3    # "bytesRead":I
    :cond_0
    nop

    .line 110
    const/4 v0, 0x1

    return v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    return v1
.end method

.method private static declared-synchronized getIdentityTransformer()Ljavax/xml/transform/Transformer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const-class v0, Lorg/apache/poi/openxml4j/opc/StreamHelper;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lorg/apache/poi/openxml4j/opc/StreamHelper;->transformerFactory:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static saveXmlInStream(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)Z
    .locals 5
    .param p0, "xmlContent"    # Lorg/w3c/dom/Document;
    .param p1, "outStream"    # Ljava/io/OutputStream;

    .line 61
    :try_start_0
    invoke-static {}, Lorg/apache/poi/openxml4j/opc/StreamHelper;->getIdentityTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    .line 62
    .local v0, "trans":Ljavax/xml/transform/Transformer;
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 64
    .local v1, "xmlSource":Ljavax/xml/transform/Source;
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    new-instance v3, Lorg/apache/poi/openxml4j/opc/StreamHelper$1;

    invoke-direct {v3, p1}, Lorg/apache/poi/openxml4j/opc/StreamHelper$1;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 78
    .local v2, "outputTarget":Ljavax/xml/transform/Result;
    const-string v3, "encoding"

    const-string v4, "UTF-8"

    invoke-virtual {v0, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v3, "indent"

    const-string v4, "no"

    invoke-virtual {v0, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v3, "standalone"

    const-string/jumbo v4, "yes"

    invoke-virtual {v0, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0    # "trans":Ljavax/xml/transform/Transformer;
    .end local v1    # "xmlSource":Ljavax/xml/transform/Source;
    .end local v2    # "outputTarget":Ljavax/xml/transform/Result;
    nop

    .line 88
    const/4 v0, 0x1

    return v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    const/4 v1, 0x0

    return v1
.end method
