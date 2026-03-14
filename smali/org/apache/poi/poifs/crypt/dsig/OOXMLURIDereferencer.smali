.class public Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;
.super Ljava/lang/Object;
.source "OOXMLURIDereferencer.java"

# interfaces
.implements Ljavax/xml/crypto/URIDereferencer;
.implements Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$SignatureConfigurable;


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private baseUriDereferencer:Ljavax/xml/crypto/URIDereferencer;

.field private signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findPart(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 10
    .param p1, "uri"    # Ljava/net/URI;

    .line 112
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "dereference"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v3, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "path":Ljava/lang/String;
    const/4 v5, 0x0

    if-eqz v2, :cond_1

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    :try_start_0
    invoke-static {v2}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .local v0, "ppn":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    nop

    .line 128
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getOpcPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    return-object v1

    .line 123
    .end local v0    # "ppn":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    :catch_0
    move-exception v0

    move-object v6, v5

    .line 124
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    .local v6, "ppn":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    sget-object v7, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v8, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v9, "illegal part name (not expected)"

    aput-object v9, v1, v4

    aput-object p1, v1, v3

    invoke-virtual {v7, v8, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 125
    return-object v5

    .line 116
    .end local v0    # "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    .end local v6    # "ppn":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    :cond_1
    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, "illegal part name (expected)"

    aput-object v6, v1, v4

    aput-object p1, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 117
    return-object v5
.end method


# virtual methods
.method public dereference(Ljavax/xml/crypto/URIReference;Ljavax/xml/crypto/XMLCryptoContext;)Ljavax/xml/crypto/Data;
    .locals 9
    .param p1, "uriReference"    # Ljavax/xml/crypto/URIReference;
    .param p2, "context"    # Ljavax/xml/crypto/XMLCryptoContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/URIReferenceException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->baseUriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->getURIDereferencer()Ljavax/xml/crypto/URIDereferencer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->baseUriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    .line 68
    :cond_0
    if-eqz p1, :cond_7

    .line 71
    if-eqz p2, :cond_6

    .line 77
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-interface {p1}, Ljavax/xml/crypto/URIReference;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    .line 80
    .local v1, "uri":Ljava/net/URI;
    nop

    .line 82
    invoke-direct {p0, v1}, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->findPart(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    .line 83
    .local v2, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    if-nez v2, :cond_1

    .line 84
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "cannot resolve, delegating to base DOM URI dereferencer"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v4, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->baseUriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    invoke-interface {v0, p1, p2}, Ljavax/xml/crypto/URIDereferencer;->dereference(Ljavax/xml/crypto/URIReference;Ljavax/xml/crypto/XMLCryptoContext;)Ljavax/xml/crypto/Data;

    move-result-object v0

    return-object v0

    .line 90
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    .local v3, "dataStream":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".rels"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 97
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 98
    .local v4, "bos":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v5

    move v6, v5

    .local v6, "ch":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_4

    .line 99
    const/16 v5, 0xa

    if-eq v6, v5, :cond_2

    const/16 v5, 0xd

    if-ne v6, v5, :cond_3

    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 102
    .end local v6    # "ch":I
    :cond_4
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v5

    .line 106
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_5
    nop

    .line 108
    new-instance v4, Ljavax/xml/crypto/OctetStreamData;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5, v0}, Ljavax/xml/crypto/OctetStreamData;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 104
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v3    # "dataStream":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    .line 105
    .local v0, "e":Ljava/io/IOException;
    .restart local v3    # "dataStream":Ljava/io/InputStream;
    :goto_1
    new-instance v4, Ljavax/xml/crypto/URIReferenceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "I/O error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljavax/xml/crypto/URIReferenceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 78
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "uri":Ljava/net/URI;
    .end local v2    # "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v3    # "dataStream":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .line 79
    .local v0, "uri":Ljava/net/URI;
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljavax/xml/crypto/URIReferenceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not URL decode the uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljavax/xml/crypto/URIReference;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/xml/crypto/URIReferenceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 72
    .end local v0    # "uri":Ljava/net/URI;
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "XMLCrytoContext cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "URIReference cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSignatureConfig(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V
    .locals 0
    .param p1, "signatureConfig"    # Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 60
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 61
    return-void
.end method
