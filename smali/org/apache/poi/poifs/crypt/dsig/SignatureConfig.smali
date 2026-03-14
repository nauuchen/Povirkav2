.class public Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;
.super Ljava/lang/Object;
.source "SignatureConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$SignatureConfigurable;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private canonicalizationMethod:Ljava/lang/String;

.field private digestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field private executionTime:Ljava/util/Date;

.field private includeEntireCertificateChain:Z

.field private includeIssuerSerial:Z

.field private includeKeyValue:Z

.field private key:Ljava/security/PrivateKey;

.field private keyInfoFactory:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;",
            ">;"
        }
    .end annotation
.end field

.field namespacePrefixes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private opcPackage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/poi/openxml4j/opc/OPCPackage;",
            ">;"
        }
    .end annotation
.end field

.field private packageSignatureId:Ljava/lang/String;

.field private provider:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private proxyUrl:Ljava/lang/String;

.field private revocationDataService:Lorg/apache/poi/poifs/crypt/dsig/services/RevocationDataService;

.field private signatureDescription:Ljava/lang/String;

.field private signatureFacets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;",
            ">;"
        }
    .end annotation
.end field

.field private signatureFactory:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/xml/crypto/dsig/XMLSignatureFactory;",
            ">;"
        }
    .end annotation
.end field

.field signatureMarshalListener:Lorg/w3c/dom/events/EventListener;

.field private signaturePolicyService:Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;

.field private signingCertificateChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private tspDigestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field private tspOldProtocol:Z

.field private tspPass:Ljava/lang/String;

.field private tspRequestPolicy:Ljava/lang/String;

.field private tspService:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;

.field private tspUrl:Ljava/lang/String;

.field private tspUser:Ljava/lang/String;

.field private tspValidator:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;

.field private uriDereferencer:Ljavax/xml/crypto/URIDereferencer;

.field private userAgent:Ljava/lang/String;

.field private xadesCanonicalizationMethod:Ljava/lang/String;

.field private xadesDigestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field private xadesIssuerNameNoReverseOrder:Z

.field private xadesRole:Ljava/lang/String;

.field private xadesSignatureId:Ljava/lang/String;

.field private xadesSignaturePolicyImplied:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->opcPackage:Ljava/lang/ThreadLocal;

    .line 72
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureFactory:Ljava/lang/ThreadLocal;

    .line 73
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->keyInfoFactory:Ljava/lang/ThreadLocal;

    .line 74
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->provider:Ljava/lang/ThreadLocal;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureFacets:Ljava/util/List;

    .line 77
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->digestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 78
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->executionTime:Ljava/util/Date;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->uriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    .line 87
    const-string v1, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->canonicalizationMethod:Ljava/lang/String;

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeEntireCertificateChain:Z

    .line 90
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeIssuerSerial:Z

    .line 91
    iput-boolean v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeKeyValue:Z

    .line 96
    new-instance v3, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;

    invoke-direct {v3}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;-><init>()V

    iput-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspService:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;

    .line 101
    iput-boolean v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspOldProtocol:Z

    .line 105
    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspDigestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 112
    const-string v2, "1.3.6.1.4.1.13762.3"

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspRequestPolicy:Ljava/lang/String;

    .line 113
    const-string v2, "POI XmlSign Service TSP Client"

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->userAgent:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesDigestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 125
    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesRole:Ljava/lang/String;

    .line 126
    const-string v2, "idSignedProperties"

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesSignatureId:Ljava/lang/String;

    .line 127
    iput-boolean v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesSignaturePolicyImplied:Z

    .line 128
    const-string v2, "http://www.w3.org/2001/10/xml-exc-c14n#"

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesCanonicalizationMethod:Ljava/lang/String;

    .line 133
    iput-boolean v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesIssuerNameNoReverseOrder:Z

    .line 139
    const-string v1, "idPackageSignature"

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->packageSignatureId:Ljava/lang/String;

    .line 145
    const-string v1, "Office OpenXML Document"

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureDescription:Ljava/lang/String;

    .line 153
    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureMarshalListener:Lorg/w3c/dom/events/EventListener;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->namespacePrefixes:Ljava/util/Map;

    return-void
.end method

.method public static getDigestMethodUri(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/lang/String;
    .locals 3
    .param p0, "digestAlgo"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 792
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$1;->$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm:[I

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 798
    const-string v0, "http://www.w3.org/2001/04/xmlenc#ripemd160"

    return-object v0

    .line 799
    :cond_0
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hash algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported for signing."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 797
    :cond_1
    const-string v0, "http://www.w3.org/2001/04/xmlenc#sha512"

    return-object v0

    .line 796
    :cond_2
    const-string v0, "http://www.w3.org/2001/04/xmldsig-more#sha384"

    return-object v0

    .line 795
    :cond_3
    const-string v0, "http://www.w3.org/2001/04/xmlenc#sha256"

    return-object v0

    .line 794
    :cond_4
    const-string v0, "http://www.w3.org/2001/04/xmldsig-more#sha224"

    return-object v0

    .line 793
    :cond_5
    const-string v0, "http://www.w3.org/2000/09/xmldsig#sha1"

    return-object v0
.end method

.method protected static nvl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 711
    .local p0, "value":Ljava/lang/Object;, "TT;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public addSignatureFacet(Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;)V
    .locals 1
    .param p1, "signatureFacet"    # Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;

    .line 219
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureFacets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method public getCanonicalizationMethod()Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->canonicalizationMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->digestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object v0
.end method

.method public getDigestMethodUri()Ljava/lang/String;
    .locals 1

    .line 784
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestMethodUri(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExecutionTime()Ljava/util/Date;
    .locals 1

    .line 300
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->executionTime:Ljava/util/Date;

    return-object v0
.end method

.method public getHashMagic()[B
    .locals 4

    .line 723
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$1;->$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm:[I

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x11

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    move-object v0, v3

    .line 756
    .local v0, "result":[B
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hash algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported for signing."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 723
    .end local v0    # "result":[B
    :pswitch_0
    move-object v0, v3

    .line 748
    .restart local v0    # "result":[B
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    move-object v0, v1

    .line 751
    goto :goto_0

    .line 723
    .end local v0    # "result":[B
    :pswitch_1
    move-object v0, v3

    .line 744
    .restart local v0    # "result":[B
    new-array v1, v1, [B

    fill-array-data v1, :array_1

    move-object v0, v1

    .line 747
    goto :goto_0

    .line 723
    .end local v0    # "result":[B
    :pswitch_2
    move-object v0, v3

    .line 740
    .restart local v0    # "result":[B
    new-array v1, v2, [B

    fill-array-data v1, :array_2

    move-object v0, v1

    .line 743
    goto :goto_0

    .line 723
    .end local v0    # "result":[B
    :pswitch_3
    move-object v0, v3

    .line 736
    .restart local v0    # "result":[B
    new-array v1, v2, [B

    fill-array-data v1, :array_3

    move-object v0, v1

    .line 739
    goto :goto_0

    .line 723
    .end local v0    # "result":[B
    :pswitch_4
    move-object v0, v3

    .line 732
    .restart local v0    # "result":[B
    new-array v1, v2, [B

    fill-array-data v1, :array_4

    move-object v0, v1

    .line 735
    goto :goto_0

    .line 723
    .end local v0    # "result":[B
    :pswitch_5
    move-object v0, v3

    .line 728
    .restart local v0    # "result":[B
    new-array v1, v2, [B

    fill-array-data v1, :array_5

    move-object v0, v1

    .line 731
    goto :goto_0

    .line 724
    .end local v0    # "result":[B
    :pswitch_6
    new-array v0, v1, [B

    fill-array-data v0, :array_6

    .line 727
    .restart local v0    # "result":[B
    nop

    .line 760
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x30t
        0x1ft
        0x30t
        0x7t
        0x6t
        0x5t
        0x2bt
        0x24t
        0x3t
        0x2t
        0x1t
        0x4t
        0x14t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x30t
        0x1bt
        0x30t
        0x7t
        0x6t
        0x5t
        0x2bt
        0x24t
        0x3t
        0x2t
        0x2t
        0x4t
        0x10t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x30t
        0x4ft
        0x30t
        0xbt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x3t
        0x4t
        0x40t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x30t
        0x3ft
        0x30t
        0xbt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x2t
        0x4t
        0x30t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x30t
        0x2ft
        0x30t
        0xbt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x1t
        0x4t
        0x20t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x30t
        0x2bt
        0x30t
        0xbt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x4t
        0x4t
        0x1ct
    .end array-data

    nop

    :array_6
    .array-data 1
        0x30t
        0x1ft
        0x30t
        0x7t
        0x6t
        0x5t
        0x2bt
        0xet
        0x3t
        0x2t
        0x1at
        0x4t
        0x14t
    .end array-data
.end method

.method public getKey()Ljava/security/PrivateKey;
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->key:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getKeyInfoFactory()Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;
    .locals 3

    .line 834
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->keyInfoFactory:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;

    .line 835
    .local v0, "keyFac":Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;
    if-nez v0, :cond_0

    .line 836
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getProvider()Ljava/security/Provider;

    move-result-object v1

    const-string v2, "DOM"

    invoke-static {v2, v1}, Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;

    move-result-object v0

    .line 837
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->setKeyInfoFactory(Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;)V

    .line 839
    :cond_0
    return-object v0
.end method

.method public getNamespacePrefixes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 694
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->namespacePrefixes:Ljava/util/Map;

    return-object v0
.end method

.method public getOpcPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->opcPackage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;

    return-object v0
.end method

.method public getPackageSignatureId()Ljava/lang/String;
    .locals 1

    .line 373
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->packageSignatureId:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/security/Provider;
    .locals 13

    .line 856
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->provider:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    .line 857
    .local v0, "prov":Ljava/security/Provider;
    if-nez v0, :cond_1

    .line 858
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "jsr105Provider"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "org.apache.jcp.xml.dsig.internal.dom.XMLDSigRI"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v5, "org.jcp.xml.dsig.internal.dom.XMLDSigRI"

    aput-object v5, v1, v2

    .line 863
    .local v1, "dsigProviderNames":[Ljava/lang/String;
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v2, v6

    .line 864
    .local v7, "pn":Ljava/lang/String;
    if-nez v7, :cond_0

    goto :goto_1

    .line 866
    :cond_0
    :try_start_0
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/Provider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v8

    .line 867
    goto :goto_2

    .line 868
    :catch_0
    move-exception v8

    .line 869
    .local v8, "e":Ljava/lang/Exception;
    sget-object v9, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v10, v4, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "XMLDsig-Provider \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' can\'t be found - trying next."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-virtual {v9, v4, v10}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 863
    .end local v7    # "pn":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 874
    .end local v1    # "dsigProviderNames":[Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 878
    return-object v0

    .line 875
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "JRE doesn\'t support default xml signature provider - set jsr105Provider system property!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getProxyUrl()Ljava/lang/String;
    .locals 1

    .line 435
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->proxyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRevocationDataService()Lorg/apache/poi/poifs/crypt/dsig/services/RevocationDataService;
    .locals 1

    .line 507
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->revocationDataService:Lorg/apache/poi/poifs/crypt/dsig/services/RevocationDataService;

    return-object v0
.end method

.method public getSignatureDescription()Ljava/lang/String;
    .locals 1

    .line 343
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureFacets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureFacets:Ljava/util/List;

    return-object v0
.end method

.method public getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;
    .locals 3

    .line 815
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureFactory:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    .line 816
    .local v0, "sigFac":Ljavax/xml/crypto/dsig/XMLSignatureFactory;
    if-nez v0, :cond_0

    .line 817
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getProvider()Ljava/security/Provider;

    move-result-object v1

    const-string v2, "DOM"

    invoke-static {v2, v1}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v0

    .line 818
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->setSignatureFactory(Ljavax/xml/crypto/dsig/XMLSignatureFactory;)V

    .line 820
    :cond_0
    return-object v0
.end method

.method public getSignatureMarshalListener()Lorg/w3c/dom/events/EventListener;
    .locals 1

    .line 679
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureMarshalListener:Lorg/w3c/dom/events/EventListener;

    return-object v0
.end method

.method public getSignatureMethodUri()Ljava/lang/String;
    .locals 3

    .line 768
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$1;->$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm:[I

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 774
    const-string v0, "http://www.w3.org/2001/04/xmldsig-more#rsa-ripemd160"

    return-object v0

    .line 775
    :cond_0
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hash algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported for signing."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 773
    :cond_1
    const-string v0, "http://www.w3.org/2001/04/xmldsig-more#rsa-sha512"

    return-object v0

    .line 772
    :cond_2
    const-string v0, "http://www.w3.org/2001/04/xmldsig-more#rsa-sha384"

    return-object v0

    .line 771
    :cond_3
    const-string v0, "http://www.w3.org/2001/04/xmldsig-more#rsa-sha256"

    return-object v0

    .line 770
    :cond_4
    const-string v0, "http://www.w3.org/2001/04/xmldsig-more#rsa-sha224"

    return-object v0

    .line 769
    :cond_5
    const-string v0, "http://www.w3.org/2000/09/xmldsig#rsa-sha1"

    return-object v0
.end method

.method public getSignaturePolicyService()Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signaturePolicyService:Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;

    return-object v0
.end method

.method public getSigningCertificateChain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signingCertificateChain:Ljava/util/List;

    return-object v0
.end method

.method public getTspDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 2

    .line 419
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspDigestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->digestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-static {v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->nvl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object v0
.end method

.method public getTspPass()Ljava/lang/String;
    .locals 1

    .line 478
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspPass:Ljava/lang/String;

    return-object v0
.end method

.method public getTspRequestPolicy()Ljava/lang/String;
    .locals 1

    .line 552
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspRequestPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public getTspService()Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;
    .locals 1

    .line 450
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspService:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;

    return-object v0
.end method

.method public getTspUrl()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTspUser()Ljava/lang/String;
    .locals 1

    .line 464
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspUser:Ljava/lang/String;

    return-object v0
.end method

.method public getTspValidator()Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;
    .locals 1

    .line 492
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspValidator:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;

    return-object v0
.end method

.method public getUriDereferencer()Ljavax/xml/crypto/URIDereferencer;
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->uriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 537
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getXadesCanonicalizationMethod()Ljava/lang/String;
    .locals 1

    .line 887
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesCanonicalizationMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getXadesDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 2

    .line 522
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesDigestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->digestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-static {v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->nvl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object v0
.end method

.method public getXadesRole()Ljava/lang/String;
    .locals 1

    .line 611
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesRole:Ljava/lang/String;

    return-object v0
.end method

.method public getXadesSignatureId()Ljava/lang/String;
    .locals 2

    .line 626
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesSignatureId:Ljava/lang/String;

    const-string v1, "idSignedProperties"

    invoke-static {v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->nvl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected init(Z)V
    .locals 3
    .param p1, "onlyValidation"    # Z

    .line 171
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->opcPackage:Ljava/lang/ThreadLocal;

    if-eqz v0, :cond_9

    .line 174
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->uriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->uriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->uriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    instance-of v1, v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$SignatureConfigurable;

    if-eqz v1, :cond_1

    .line 178
    check-cast v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$SignatureConfigurable;

    invoke-interface {v0, p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$SignatureConfigurable;->setSignatureConfig(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V

    .line 180
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->namespacePrefixes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->namespacePrefixes:Ljava/util/Map;

    const-string v1, "http://schemas.openxmlformats.org/package/2006/digital-signature"

    const-string v2, "mdssi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->namespacePrefixes:Ljava/util/Map;

    const-string v1, "http://uri.etsi.org/01903/v1.3.2#"

    const-string/jumbo v2, "xd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_2
    if-eqz p1, :cond_3

    return-void

    .line 191
    :cond_3
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureMarshalListener:Lorg/w3c/dom/events/EventListener;

    if-nez v0, :cond_4

    .line 192
    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureMarshalListener:Lorg/w3c/dom/events/EventListener;

    .line 195
    :cond_4
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureMarshalListener:Lorg/w3c/dom/events/EventListener;

    instance-of v1, v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$SignatureConfigurable;

    if-eqz v1, :cond_5

    .line 196
    check-cast v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$SignatureConfigurable;

    invoke-interface {v0, p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$SignatureConfigurable;->setSignatureConfig(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V

    .line 199
    :cond_5
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspService:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;

    if-eqz v0, :cond_6

    .line 200
    invoke-interface {v0, p0}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;->setSignatureConfig(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V

    .line 203
    :cond_6
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureFacets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 204
    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->addSignatureFacet(Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;)V

    .line 205
    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->addSignatureFacet(Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;)V

    .line 206
    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->addSignatureFacet(Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;)V

    .line 207
    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/facets/Office2010SignatureFacet;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/dsig/facets/Office2010SignatureFacet;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->addSignatureFacet(Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;)V

    .line 210
    :cond_7
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureFacets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;

    .line 211
    .local v1, "sf":Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;
    invoke-virtual {v1, p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->setSignatureConfig(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V

    .end local v1    # "sf":Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;
    goto :goto_0

    .line 213
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_8
    return-void

    .line 172
    :cond_9
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "opcPackage is null"

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isIncludeEntireCertificateChain()Z
    .locals 1

    .line 567
    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeEntireCertificateChain:Z

    return v0
.end method

.method public isIncludeIssuerSerial()Z
    .locals 1

    .line 582
    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeIssuerSerial:Z

    return v0
.end method

.method public isIncludeKeyValue()Z
    .locals 1

    .line 596
    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeKeyValue:Z

    return v0
.end method

.method public isTspOldProtocol()Z
    .locals 1

    .line 403
    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspOldProtocol:Z

    return v0
.end method

.method public isXadesIssuerNameNoReverseOrder()Z
    .locals 1

    .line 662
    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesIssuerNameNoReverseOrder:Z

    return v0
.end method

.method public isXadesSignaturePolicyImplied()Z
    .locals 1

    .line 642
    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesSignaturePolicyImplied:Z

    return v0
.end method

.method public setCanonicalizationMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "canonicalizationMethod"    # Ljava/lang/String;

    .line 365
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->canonicalizationMethod:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setDigestAlgo(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 0
    .param p1, "digestAlgo"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 247
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->digestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 248
    return-void
.end method

.method public setExecutionTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "executionTime"    # Ljava/util/Date;

    .line 307
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->executionTime:Ljava/util/Date;

    .line 308
    return-void
.end method

.method public setIncludeEntireCertificateChain(Z)V
    .locals 0
    .param p1, "includeEntireCertificateChain"    # Z

    .line 575
    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeEntireCertificateChain:Z

    .line 576
    return-void
.end method

.method public setIncludeIssuerSerial(Z)V
    .locals 0
    .param p1, "includeIssuerSerial"    # Z

    .line 589
    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeIssuerSerial:Z

    .line 590
    return-void
.end method

.method public setIncludeKeyValue(Z)V
    .locals 0
    .param p1, "includeKeyValue"    # Z

    .line 603
    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeKeyValue:Z

    .line 604
    return-void
.end method

.method public setKey(Ljava/security/PrivateKey;)V
    .locals 0
    .param p1, "key"    # Ljava/security/PrivateKey;

    .line 275
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->key:Ljava/security/PrivateKey;

    .line 276
    return-void
.end method

.method public setKeyInfoFactory(Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;)V
    .locals 1
    .param p1, "keyInfoFactory"    # Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;

    .line 827
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->keyInfoFactory:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 828
    return-void
.end method

.method public setNamespacePrefixes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 701
    .local p1, "namespacePrefixes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->namespacePrefixes:Ljava/util/Map;

    .line 702
    return-void
.end method

.method public setOpcPackage(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1
    .param p1, "opcPackage"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 261
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->opcPackage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 262
    return-void
.end method

.method public setPackageSignatureId(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageSignatureId"    # Ljava/lang/String;

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xmldsig-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->nvl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->packageSignatureId:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public setProxyUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyUrl"    # Ljava/lang/String;

    .line 443
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->proxyUrl:Ljava/lang/String;

    .line 444
    return-void
.end method

.method public setRevocationDataService(Lorg/apache/poi/poifs/crypt/dsig/services/RevocationDataService;)V
    .locals 0
    .param p1, "revocationDataService"    # Lorg/apache/poi/poifs/crypt/dsig/services/RevocationDataService;

    .line 515
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->revocationDataService:Lorg/apache/poi/poifs/crypt/dsig/services/RevocationDataService;

    .line 516
    return-void
.end method

.method public setSignatureDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "signatureDescription"    # Ljava/lang/String;

    .line 351
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureDescription:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public setSignatureFacets(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;",
            ">;)V"
        }
    .end annotation

    .line 233
    .local p1, "signatureFacets":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;>;"
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureFacets:Ljava/util/List;

    .line 234
    return-void
.end method

.method public setSignatureFactory(Ljavax/xml/crypto/dsig/XMLSignatureFactory;)V
    .locals 1
    .param p1, "signatureFactory"    # Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    .line 808
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureFactory:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 809
    return-void
.end method

.method public setSignatureMarshalListener(Lorg/w3c/dom/events/EventListener;)V
    .locals 0
    .param p1, "signatureMarshalListener"    # Lorg/w3c/dom/events/EventListener;

    .line 687
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureMarshalListener:Lorg/w3c/dom/events/EventListener;

    .line 688
    return-void
.end method

.method public setSignaturePolicyService(Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;)V
    .locals 0
    .param p1, "signaturePolicyService"    # Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;

    .line 321
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signaturePolicyService:Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;

    .line 322
    return-void
.end method

.method public setSigningCertificateChain(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .line 292
    .local p1, "signingCertificateChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signingCertificateChain:Ljava/util/List;

    .line 293
    return-void
.end method

.method public setTspDigestAlgo(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 0
    .param p1, "tspDigestAlgo"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 427
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspDigestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 428
    return-void
.end method

.method public setTspOldProtocol(Z)V
    .locals 0
    .param p1, "tspOldProtocol"    # Z

    .line 411
    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspOldProtocol:Z

    .line 412
    return-void
.end method

.method public setTspPass(Ljava/lang/String;)V
    .locals 0
    .param p1, "tspPass"    # Ljava/lang/String;

    .line 485
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspPass:Ljava/lang/String;

    .line 486
    return-void
.end method

.method public setTspRequestPolicy(Ljava/lang/String;)V
    .locals 0
    .param p1, "tspRequestPolicy"    # Ljava/lang/String;

    .line 559
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspRequestPolicy:Ljava/lang/String;

    .line 560
    return-void
.end method

.method public setTspService(Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;)V
    .locals 0
    .param p1, "tspService"    # Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;

    .line 457
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspService:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;

    .line 458
    return-void
.end method

.method public setTspUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "tspUrl"    # Ljava/lang/String;

    .line 395
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspUrl:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public setTspUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "tspUser"    # Ljava/lang/String;

    .line 471
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspUser:Ljava/lang/String;

    .line 472
    return-void
.end method

.method public setTspValidator(Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;)V
    .locals 0
    .param p1, "tspValidator"    # Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;

    .line 499
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspValidator:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;

    .line 500
    return-void
.end method

.method public setUriDereferencer(Ljavax/xml/crypto/URIDereferencer;)V
    .locals 0
    .param p1, "uriDereferencer"    # Ljavax/xml/crypto/URIDereferencer;

    .line 335
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->uriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    .line 336
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .line 544
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->userAgent:Ljava/lang/String;

    .line 545
    return-void
.end method

.method public setXadesCanonicalizationMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "xadesCanonicalizationMethod"    # Ljava/lang/String;

    .line 895
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesCanonicalizationMethod:Ljava/lang/String;

    .line 896
    return-void
.end method

.method public setXadesDigestAlgo(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 0
    .param p1, "xadesDigestAlgo"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 530
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesDigestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 531
    return-void
.end method

.method public setXadesIssuerNameNoReverseOrder(Z)V
    .locals 0
    .param p1, "xadesIssuerNameNoReverseOrder"    # Z

    .line 669
    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesIssuerNameNoReverseOrder:Z

    .line 670
    return-void
.end method

.method public setXadesRole(Ljava/lang/String;)V
    .locals 0
    .param p1, "xadesRole"    # Ljava/lang/String;

    .line 618
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesRole:Ljava/lang/String;

    .line 619
    return-void
.end method

.method public setXadesSignatureId(Ljava/lang/String;)V
    .locals 0
    .param p1, "xadesSignatureId"    # Ljava/lang/String;

    .line 634
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesSignatureId:Ljava/lang/String;

    .line 635
    return-void
.end method

.method public setXadesSignaturePolicyImplied(Z)V
    .locals 0
    .param p1, "xadesSignaturePolicyImplied"    # Z

    .line 649
    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesSignaturePolicyImplied:Z

    .line 650
    return-void
.end method
