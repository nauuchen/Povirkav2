.class public Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;
.super Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;
.source "XAdESXLSignatureFacet.java"


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final certificateFactory:Ljava/security/cert/CertificateFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 93
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;-><init>()V

    .line 95
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->certificateFactory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    nop

    .line 99
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X509 JCA error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private createRevocationValues(Lorg/etsi/uri/x01903/v13/RevocationValuesType;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)V
    .locals 4
    .param p1, "revocationValues"    # Lorg/etsi/uri/x01903/v13/RevocationValuesType;
    .param p2, "revocationData"    # Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;

    .line 374
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->hasCRLs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-interface {p1}, Lorg/etsi/uri/x01903/v13/RevocationValuesType;->addNewCRLValues()Lorg/etsi/uri/x01903/v13/CRLValuesType;

    move-result-object v0

    .line 376
    .local v0, "crlValues":Lorg/etsi/uri/x01903/v13/CRLValuesType;
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->getCRLs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 377
    .local v2, "crl":[B
    invoke-interface {v0}, Lorg/etsi/uri/x01903/v13/CRLValuesType;->addNewEncapsulatedCRLValue()Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;

    move-result-object v3

    .line 378
    .local v3, "encapsulatedCrlValue":Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;
    invoke-interface {v3, v2}, Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;->setByteArrayValue([B)V

    .line 379
    .end local v2    # "crl":[B
    .end local v3    # "encapsulatedCrlValue":Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;
    goto :goto_0

    .line 381
    .end local v0    # "crlValues":Lorg/etsi/uri/x01903/v13/CRLValuesType;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->hasOCSPs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    invoke-interface {p1}, Lorg/etsi/uri/x01903/v13/RevocationValuesType;->addNewOCSPValues()Lorg/etsi/uri/x01903/v13/OCSPValuesType;

    move-result-object v0

    .line 383
    .local v0, "ocspValues":Lorg/etsi/uri/x01903/v13/OCSPValuesType;
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->getOCSPs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 384
    .local v2, "ocsp":[B
    invoke-interface {v0}, Lorg/etsi/uri/x01903/v13/OCSPValuesType;->addNewEncapsulatedOCSPValue()Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;

    move-result-object v3

    .line 385
    .local v3, "encapsulatedOcspValue":Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;
    invoke-interface {v3, v2}, Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;->setByteArrayValue([B)V

    .line 386
    .end local v2    # "ocsp":[B
    .end local v3    # "encapsulatedOcspValue":Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;
    goto :goto_1

    .line 388
    .end local v0    # "ocspValues":Lorg/etsi/uri/x01903/v13/OCSPValuesType;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private createValidationData(Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)Lorg/etsi/uri/x01903/v14/ValidationDataType;
    .locals 2
    .param p1, "revocationData"    # Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;

    .line 366
    invoke-static {}, Lorg/etsi/uri/x01903/v14/ValidationDataType$Factory;->newInstance()Lorg/etsi/uri/x01903/v14/ValidationDataType;

    move-result-object v0

    .line 367
    .local v0, "validationData":Lorg/etsi/uri/x01903/v14/ValidationDataType;
    invoke-interface {v0}, Lorg/etsi/uri/x01903/v14/ValidationDataType;->addNewRevocationValues()Lorg/etsi/uri/x01903/v13/RevocationValuesType;

    move-result-object v1

    .line 368
    .local v1, "revocationValues":Lorg/etsi/uri/x01903/v13/RevocationValuesType;
    invoke-direct {p0, v1, p1}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->createRevocationValues(Lorg/etsi/uri/x01903/v13/RevocationValuesType;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)V

    .line 369
    return-object v0
.end method

.method private createXAdESTimeStamp(Ljava/util/List;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
    .locals 2
    .param p2, "revocationData"    # Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Node;",
            ">;",
            "Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;",
            ")",
            "Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;"
        }
    .end annotation

    .line 335
    .local p1, "nodeList":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getXadesCanonicalizationMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->getC14nValue(Ljava/util/List;Ljava/lang/String;)[B

    move-result-object v0

    .line 337
    .local v0, "c14nSignatureValueElement":[B
    invoke-direct {p0, v0, p2}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->createXAdESTimeStamp([BLorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;

    move-result-object v1

    return-object v1
.end method

.method private createXAdESTimeStamp([BLorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
    .locals 6
    .param p1, "data"    # [B
    .param p2, "revocationData"    # Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;

    .line 344
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspService()Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;->timeStamp([BLorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .local v0, "timeStampToken":[B
    nop

    .line 351
    invoke-static {}, Lorg/etsi/uri/x01903/v13/XAdESTimeStampType$Factory;->newInstance()Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;

    move-result-object v1

    .line 352
    .local v1, "xadesTimeStamp":Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "time-stamp-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;->setId(Ljava/lang/String;)V

    .line 353
    invoke-interface {v1}, Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;->addNewCanonicalizationMethod()Lorg/w3/x2000/x09/xmldsig/CanonicalizationMethodType;

    move-result-object v2

    .line 354
    .local v2, "c14nMethod":Lorg/w3/x2000/x09/xmldsig/CanonicalizationMethodType;
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getXadesCanonicalizationMethod()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3/x2000/x09/xmldsig/CanonicalizationMethodType;->setAlgorithm(Ljava/lang/String;)V

    .line 357
    invoke-interface {v1}, Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;->addNewEncapsulatedTimeStamp()Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;

    move-result-object v3

    .line 358
    .local v3, "encapsulatedTimeStamp":Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;
    invoke-interface {v3, v0}, Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;->setByteArrayValue([B)V

    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "time-stamp-token-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;->setId(Ljava/lang/String;)V

    .line 361
    return-object v1

    .line 345
    .end local v0    # "timeStampToken":[B
    .end local v1    # "xadesTimeStamp":Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
    .end local v2    # "c14nMethod":Lorg/w3/x2000/x09/xmldsig/CanonicalizationMethodType;
    .end local v3    # "encapsulatedTimeStamp":Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;
    :catch_0
    move-exception v1

    .line 346
    .restart local v0    # "timeStampToken":[B
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error while creating a time-stamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getC14nValue(Ljava/util/List;Ljava/lang/String;)[B
    .locals 5
    .param p1, "c14nAlgoId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Node;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .line 290
    .local p0, "nodeList":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 292
    .local v0, "c14nValue":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 297
    .local v2, "node":Lorg/w3c/dom/Node;
    invoke-static {p1}, Lorg/apache/xml/security/c14n/Canonicalizer;->getInstance(Ljava/lang/String;)Lorg/apache/xml/security/c14n/Canonicalizer;

    move-result-object v3

    .line 298
    .local v3, "c14n":Lorg/apache/xml/security/c14n/Canonicalizer;
    invoke-virtual {v3, v2}, Lorg/apache/xml/security/c14n/Canonicalizer;->canonicalizeSubtree(Lorg/w3c/dom/Node;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v2    # "node":Lorg/w3c/dom/Node;
    .end local v3    # "c14n":Lorg/apache/xml/security/c14n/Canonicalizer;
    goto :goto_0

    .line 304
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    nop

    .line 305
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 302
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "c14n error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 300
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 301
    .local v1, "e":Ljava/lang/RuntimeException;
    throw v1
.end method

.method private getCrlNumber(Ljava/security/cert/X509CRL;)Ljava/math/BigInteger;
    .locals 7
    .param p1, "crl"    # Ljava/security/cert/X509CRL;

    .line 309
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->cRLNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 310
    .local v0, "crlNumberExtensionValue":[B
    if-nez v0, :cond_0

    .line 311
    const/4 v1, 0x0

    return-object v1

    .line 315
    :cond_0
    const/4 v1, 0x0

    .local v1, "asn1IS1":Lorg/bouncycastle/asn1/ASN1InputStream;
    const/4 v2, 0x0

    .line 317
    .local v2, "asn1IS2":Lorg/bouncycastle/asn1/ASN1InputStream;
    :try_start_0
    new-instance v3, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    move-object v1, v3

    .line 318
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 319
    .local v3, "octetString":Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    .line 320
    .local v4, "octets":[B
    new-instance v5, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    move-object v2, v5

    .line 321
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 322
    .local v5, "integer":Lorg/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :try_start_1
    invoke-static {v2}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 325
    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v6

    .line 324
    .end local v3    # "octetString":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v4    # "octets":[B
    .end local v5    # "integer":Lorg/bouncycastle/asn1/ASN1Integer;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 325
    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .end local v0    # "crlNumberExtensionValue":[B
    .end local p1    # "crl":Ljava/security/cert/X509CRL;
    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 327
    .end local v1    # "asn1IS1":Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v2    # "asn1IS2":Lorg/bouncycastle/asn1/ASN1InputStream;
    .restart local v0    # "crlNumberExtensionValue":[B
    .restart local p1    # "crl":Ljava/security/cert/X509CRL;
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I/O error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public postSign(Lorg/w3c/dom/Document;)V
    .locals 33
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/MarshalException;
        }
    .end annotation

    .line 103
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "XAdES-X-L post sign phase"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 105
    const/4 v4, 0x0

    .line 106
    .local v4, "qualDoc":Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;
    const/4 v5, 0x0

    .line 109
    .local v5, "qualProps":Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;
    const-string v7, "http://uri.etsi.org/01903/v1.3.2#"

    const-string v8, "QualifyingProperties"

    invoke-interface {v2, v7, v8}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 110
    .local v7, "qualNl":Lorg/w3c/dom/NodeList;
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ne v8, v3, :cond_e

    .line 112
    :try_start_0
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    sget-object v9, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v8, v9}, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument$Factory;->parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/XmlOptions;)Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;

    move-result-object v8
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_6

    move-object v4, v8

    .line 115
    nop

    .line 116
    invoke-interface {v4}, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;->getQualifyingProperties()Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;

    move-result-object v5

    .line 122
    invoke-interface {v5}, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;->getUnsignedProperties()Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;

    move-result-object v8

    .line 123
    .local v8, "unsignedProps":Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;
    if-nez v8, :cond_0

    .line 124
    invoke-interface {v5}, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;->addNewUnsignedProperties()Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;

    move-result-object v8

    .line 126
    :cond_0
    invoke-interface {v8}, Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;->getUnsignedSignatureProperties()Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;

    move-result-object v9

    .line 127
    .local v9, "unsignedSigProps":Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;
    if-nez v9, :cond_1

    .line 128
    invoke-interface {v8}, Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;->addNewUnsignedSignatureProperties()Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;

    move-result-object v9

    .line 133
    :cond_1
    const-string v10, "http://www.w3.org/2000/09/xmldsig#"

    const-string v11, "SignatureValue"

    invoke-interface {v2, v10, v11}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 134
    .local v10, "nlSigVal":Lorg/w3c/dom/NodeList;
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ne v11, v3, :cond_d

    .line 138
    new-instance v11, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;

    invoke-direct {v11}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;-><init>()V

    .line 139
    .local v11, "tsaRevocationDataXadesT":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    new-array v12, v3, [Ljava/lang/Object;

    const-string v13, "creating XAdES-T time-stamp"

    aput-object v13, v12, v6

    invoke-virtual {v0, v3, v12}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 140
    invoke-interface {v10, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0, v11}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->createXAdESTimeStamp(Ljava/util/List;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;

    move-result-object v12

    .line 144
    .local v12, "signatureTimeStamp":Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
    invoke-interface {v9}, Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;->addNewSignatureTimeStamp()Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;

    move-result-object v0

    invoke-interface {v0, v12}, Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 147
    invoke-virtual {v11}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->hasRevocationDataEntries()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    invoke-direct {v1, v11}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->createValidationData(Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)Lorg/etsi/uri/x01903/v14/ValidationDataType;

    move-result-object v0

    .line 149
    .local v0, "validationData":Lorg/etsi/uri/x01903/v14/ValidationDataType;
    invoke-static {v9, v0}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->insertXChild(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/XmlObject;)V

    .line 152
    .end local v0    # "validationData":Lorg/etsi/uri/x01903/v14/ValidationDataType;
    :cond_2
    iget-object v0, v1, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getRevocationDataService()Lorg/apache/poi/poifs/crypt/dsig/services/RevocationDataService;

    move-result-object v0

    if-nez v0, :cond_3

    .line 157
    return-void

    .line 161
    :cond_3
    invoke-interface {v9}, Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;->addNewCompleteCertificateRefs()Lorg/etsi/uri/x01903/v13/CompleteCertificateRefsType;

    move-result-object v13

    .line 164
    .local v13, "completeCertificateRefs":Lorg/etsi/uri/x01903/v13/CompleteCertificateRefsType;
    invoke-interface {v13}, Lorg/etsi/uri/x01903/v13/CompleteCertificateRefsType;->addNewCertRefs()Lorg/etsi/uri/x01903/v13/CertIDListType;

    move-result-object v14

    .line 169
    .local v14, "certIdList":Lorg/etsi/uri/x01903/v13/CertIDListType;
    iget-object v0, v1, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSigningCertificateChain()Ljava/util/List;

    move-result-object v15

    .line 170
    .local v15, "certChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    .line 171
    .local v6, "chainSize":I
    if-le v6, v3, :cond_5

    .line 172
    invoke-interface {v15, v3, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 173
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v14}, Lorg/etsi/uri/x01903/v13/CertIDListType;->addNewCert()Lorg/etsi/uri/x01903/v13/CertIDType;

    move-result-object v3

    .line 174
    .local v3, "certId":Lorg/etsi/uri/x01903/v13/CertIDType;
    move-object/from16 v19, v4

    .end local v4    # "qualDoc":Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;
    .local v19, "qualDoc":Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;
    iget-object v4, v1, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move/from16 v20, v6

    const/4 v6, 0x0

    .end local v6    # "chainSize":I
    .local v20, "chainSize":I
    invoke-static {v3, v4, v6, v0}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->setCertID(Lorg/etsi/uri/x01903/v13/CertIDType;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;ZLjava/security/cert/X509Certificate;)V

    .line 175
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "certId":Lorg/etsi/uri/x01903/v13/CertIDType;
    move-object/from16 v4, v19

    move/from16 v6, v20

    const/4 v3, 0x1

    goto :goto_0

    .line 172
    .end local v19    # "qualDoc":Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;
    .end local v20    # "chainSize":I
    .restart local v4    # "qualDoc":Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;
    .restart local v6    # "chainSize":I
    :cond_4
    move-object/from16 v19, v4

    move/from16 v20, v6

    .end local v4    # "qualDoc":Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;
    .end local v6    # "chainSize":I
    .restart local v19    # "qualDoc":Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;
    .restart local v20    # "chainSize":I
    goto :goto_1

    .line 171
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v19    # "qualDoc":Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;
    .end local v20    # "chainSize":I
    .restart local v4    # "qualDoc":Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;
    .restart local v6    # "chainSize":I
    :cond_5
    move-object/from16 v19, v4

    move/from16 v20, v6

    .line 179
    .end local v4    # "qualDoc":Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;
    .end local v6    # "chainSize":I
    .restart local v19    # "qualDoc":Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;
    .restart local v20    # "chainSize":I
    :goto_1
    invoke-interface {v9}, Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;->addNewCompleteRevocationRefs()Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;

    move-result-object v3

    .line 181
    .local v3, "completeRevocationRefs":Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;
    iget-object v4, v1, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getRevocationDataService()Lorg/apache/poi/poifs/crypt/dsig/services/RevocationDataService;

    move-result-object v4

    invoke-interface {v4, v15}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationDataService;->getRevocationData(Ljava/util/List;)Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;

    move-result-object v4

    .line 183
    .local v4, "revocationData":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    invoke-virtual {v4}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->hasCRLs()Z

    move-result v6

    const-string v16, "Z"

    if-eqz v6, :cond_7

    .line 184
    invoke-interface {v3}, Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;->addNewCRLRefs()Lorg/etsi/uri/x01903/v13/CRLRefsType;

    move-result-object v6

    .line 185
    .local v6, "crlRefs":Lorg/etsi/uri/x01903/v13/CRLRefsType;
    invoke-interface {v3, v6}, Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;->setCRLRefs(Lorg/etsi/uri/x01903/v13/CRLRefsType;)V

    .line 187
    invoke-virtual {v4}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->getCRLs()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    const/16 v21, 0x0

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v8

    .end local v8    # "unsignedProps":Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;
    .local v23, "unsignedProps":Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;
    move-object/from16 v8, v22

    check-cast v8, [B

    .line 188
    .local v8, "encodedCrl":[B
    invoke-interface {v6}, Lorg/etsi/uri/x01903/v13/CRLRefsType;->addNewCRLRef()Lorg/etsi/uri/x01903/v13/CRLRefType;

    move-result-object v22

    .line 191
    .local v22, "crlRef":Lorg/etsi/uri/x01903/v13/CRLRefType;
    :try_start_1
    iget-object v0, v1, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->certificateFactory:Ljava/security/cert/CertificateFactory;
    :try_end_1
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v24, v6

    .end local v6    # "crlRefs":Lorg/etsi/uri/x01903/v13/CRLRefsType;
    .local v24, "crlRefs":Lorg/etsi/uri/x01903/v13/CRLRefsType;
    :try_start_2
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v6}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;
    :try_end_2
    .catch Ljava/security/cert/CRLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 196
    .local v0, "crl":Ljava/security/cert/X509CRL;
    nop

    .line 198
    invoke-interface/range {v22 .. v22}, Lorg/etsi/uri/x01903/v13/CRLRefType;->addNewCRLIdentifier()Lorg/etsi/uri/x01903/v13/CRLIdentifierType;

    move-result-object v6

    .line 199
    .local v6, "crlIdentifier":Lorg/etsi/uri/x01903/v13/CRLIdentifierType;
    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getIssuerDN()Ljava/security/Principal;

    move-result-object v21

    move-object/from16 v25, v11

    .end local v11    # "tsaRevocationDataXadesT":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    .local v25, "tsaRevocationDataXadesT":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    invoke-interface/range {v21 .. v21}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v26, v14

    .end local v14    # "certIdList":Lorg/etsi/uri/x01903/v13/CertIDListType;
    .local v26, "certIdList":Lorg/etsi/uri/x01903/v13/CertIDListType;
    const-string v14, ","

    move-object/from16 v27, v7

    .end local v7    # "qualNl":Lorg/w3c/dom/NodeList;
    .local v27, "qualNl":Lorg/w3c/dom/NodeList;
    const-string v7, ", "

    invoke-virtual {v11, v14, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 200
    .local v7, "issuerName":Ljava/lang/String;
    invoke-interface {v6, v7}, Lorg/etsi/uri/x01903/v13/CRLIdentifierType;->setIssuer(Ljava/lang/String;)V

    .line 201
    invoke-static/range {v16 .. v16}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v11, v14}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v11

    .line 202
    .local v11, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 203
    invoke-interface {v6, v11}, Lorg/etsi/uri/x01903/v13/CRLIdentifierType;->setIssueTime(Ljava/util/Calendar;)V

    .line 204
    invoke-direct {v1, v0}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->getCrlNumber(Ljava/security/cert/X509CRL;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-interface {v6, v14}, Lorg/etsi/uri/x01903/v13/CRLIdentifierType;->setNumber(Ljava/math/BigInteger;)V

    .line 206
    invoke-interface/range {v22 .. v22}, Lorg/etsi/uri/x01903/v13/CRLRefType;->addNewDigestAlgAndValue()Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;

    move-result-object v14

    .line 207
    .local v14, "digestAlgAndValue":Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;
    move-object/from16 v21, v0

    .end local v0    # "crl":Ljava/security/cert/X509CRL;
    .local v21, "crl":Ljava/security/cert/X509CRL;
    iget-object v0, v1, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    invoke-static {v14, v8, v0}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->setDigestAlgAndValue(Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;[BLorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    .line 208
    .end local v6    # "crlIdentifier":Lorg/etsi/uri/x01903/v13/CRLIdentifierType;
    .end local v7    # "issuerName":Ljava/lang/String;
    .end local v8    # "encodedCrl":[B
    .end local v11    # "cal":Ljava/util/Calendar;
    .end local v14    # "digestAlgAndValue":Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;
    .end local v21    # "crl":Ljava/security/cert/X509CRL;
    .end local v22    # "crlRef":Lorg/etsi/uri/x01903/v13/CRLRefType;
    move-object/from16 v8, v23

    move-object/from16 v6, v24

    move-object/from16 v11, v25

    move-object/from16 v14, v26

    move-object/from16 v7, v27

    goto :goto_2

    .line 193
    .end local v25    # "tsaRevocationDataXadesT":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    .end local v26    # "certIdList":Lorg/etsi/uri/x01903/v13/CertIDListType;
    .end local v27    # "qualNl":Lorg/w3c/dom/NodeList;
    .local v7, "qualNl":Lorg/w3c/dom/NodeList;
    .restart local v8    # "encodedCrl":[B
    .local v11, "tsaRevocationDataXadesT":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    .local v14, "certIdList":Lorg/etsi/uri/x01903/v13/CertIDListType;
    .restart local v22    # "crlRef":Lorg/etsi/uri/x01903/v13/CRLRefType;
    :catch_0
    move-exception v0

    move-object/from16 v27, v7

    move-object/from16 v25, v11

    move-object/from16 v26, v14

    .end local v7    # "qualNl":Lorg/w3c/dom/NodeList;
    .end local v11    # "tsaRevocationDataXadesT":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    .end local v14    # "certIdList":Lorg/etsi/uri/x01903/v13/CertIDListType;
    .restart local v25    # "tsaRevocationDataXadesT":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    .restart local v26    # "certIdList":Lorg/etsi/uri/x01903/v13/CertIDListType;
    .restart local v27    # "qualNl":Lorg/w3c/dom/NodeList;
    goto :goto_3

    .end local v24    # "crlRefs":Lorg/etsi/uri/x01903/v13/CRLRefsType;
    .end local v25    # "tsaRevocationDataXadesT":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    .end local v26    # "certIdList":Lorg/etsi/uri/x01903/v13/CertIDListType;
    .end local v27    # "qualNl":Lorg/w3c/dom/NodeList;
    .local v6, "crlRefs":Lorg/etsi/uri/x01903/v13/CRLRefsType;
    .restart local v7    # "qualNl":Lorg/w3c/dom/NodeList;
    .restart local v11    # "tsaRevocationDataXadesT":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    .restart local v14    # "certIdList":Lorg/etsi/uri/x01903/v13/CertIDListType;
    :catch_1
    move-exception v0

    move-object/from16 v24, v6

    move-object/from16 v27, v7

    move-object/from16 v25, v11

    move-object/from16 v26, v14

    .end local v6    # "crlRefs":Lorg/etsi/uri/x01903/v13/CRLRefsType;
    .end local v7    # "qualNl":Lorg/w3c/dom/NodeList;
    .end local v11    # "tsaRevocationDataXadesT":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    .end local v14    # "certIdList":Lorg/etsi/uri/x01903/v13/CertIDListType;
    .restart local v24    # "crlRefs":Lorg/etsi/uri/x01903/v13/CRLRefsType;
    .restart local v25    # "tsaRevocationDataXadesT":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    .restart local v26    # "certIdList":Lorg/etsi/uri/x01903/v13/CertIDListType;
    .restart local v27    # "qualNl":Lorg/w3c/dom/NodeList;
    :goto_3
    move-object/from16 v6, v21

    .line 194
    .local v0, "e":Ljava/security/cert/CRLException;
    .local v6, "crl":Ljava/security/cert/X509CRL;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CRL parse error: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/security/cert/CRLException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 187
    .end local v0    # "e":Ljava/security/cert/CRLException;
    .end local v22    # "crlRef":Lorg/etsi/uri/x01903/v13/CRLRefType;
    .end local v23    # "unsignedProps":Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;
    .end local v24    # "crlRefs":Lorg/etsi/uri/x01903/v13/CRLRefsType;
    .end local v25    # "tsaRevocationDataXadesT":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    .end local v26    # "certIdList":Lorg/etsi/uri/x01903/v13/CertIDListType;
    .end local v27    # "qualNl":Lorg/w3c/dom/NodeList;
    .local v6, "crlRefs":Lorg/etsi/uri/x01903/v13/CRLRefsType;
    .restart local v7    # "qualNl":Lorg/w3c/dom/NodeList;
    .local v8, "unsignedProps":Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;
    .restart local v11    # "tsaRevocationDataXadesT":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    .restart local v14    # "certIdList":Lorg/etsi/uri/x01903/v13/CertIDListType;
    :cond_6
    move-object/from16 v24, v6

    move-object/from16 v27, v7

    move-object/from16 v23, v8

    move-object/from16 v25, v11

    move-object/from16 v26, v14

    .end local v6    # "crlRefs":Lorg/etsi/uri/x01903/v13/CRLRefsType;
    .end local v7    # "qualNl":Lorg/w3c/dom/NodeList;
    .end local v8    # "unsignedProps":Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;
    .end local v11    # "tsaRevocationDataXadesT":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    .end local v14    # "certIdList":Lorg/etsi/uri/x01903/v13/CertIDListType;
    .restart local v23    # "unsignedProps":Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;
    .restart local v24    # "crlRefs":Lorg/etsi/uri/x01903/v13/CRLRefsType;
    .restart local v25    # "tsaRevocationDataXadesT":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    .restart local v26    # "certIdList":Lorg/etsi/uri/x01903/v13/CertIDListType;
    .restart local v27    # "qualNl":Lorg/w3c/dom/NodeList;
    goto :goto_4

    .line 183
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v23    # "unsignedProps":Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;
    .end local v24    # "crlRefs":Lorg/etsi/uri/x01903/v13/CRLRefsType;
    .end local v25    # "tsaRevocationDataXadesT":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    .end local v26    # "certIdList":Lorg/etsi/uri/x01903/v13/CertIDListType;
    .end local v27    # "qualNl":Lorg/w3c/dom/NodeList;
    .restart local v7    # "qualNl":Lorg/w3c/dom/NodeList;
    .restart local v8    # "unsignedProps":Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;
    .restart local v11    # "tsaRevocationDataXadesT":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    .restart local v14    # "certIdList":Lorg/etsi/uri/x01903/v13/CertIDListType;
    :cond_7
    move-object/from16 v27, v7

    move-object/from16 v23, v8

    move-object/from16 v25, v11

    move-object/from16 v26, v14

    .line 210
    .end local v7    # "qualNl":Lorg/w3c/dom/NodeList;
    .end local v8    # "unsignedProps":Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;
    .end local v11    # "tsaRevocationDataXadesT":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    .end local v14    # "certIdList":Lorg/etsi/uri/x01903/v13/CertIDListType;
    .restart local v23    # "unsignedProps":Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;
    .restart local v25    # "tsaRevocationDataXadesT":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    .restart local v26    # "certIdList":Lorg/etsi/uri/x01903/v13/CertIDListType;
    .restart local v27    # "qualNl":Lorg/w3c/dom/NodeList;
    :goto_4
    invoke-virtual {v4}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->hasOCSPs()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 211
    invoke-interface {v3}, Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;->addNewOCSPRefs()Lorg/etsi/uri/x01903/v13/OCSPRefsType;

    move-result-object v6

    .line 212
    .local v6, "ocspRefs":Lorg/etsi/uri/x01903/v13/OCSPRefsType;
    invoke-virtual {v4}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->getOCSPs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [B

    .line 214
    .local v8, "ocsp":[B
    :try_start_3
    invoke-interface {v6}, Lorg/etsi/uri/x01903/v13/OCSPRefsType;->addNewOCSPRef()Lorg/etsi/uri/x01903/v13/OCSPRefType;

    move-result-object v0

    .line 216
    .local v0, "ocspRef":Lorg/etsi/uri/x01903/v13/OCSPRefType;
    invoke-interface {v0}, Lorg/etsi/uri/x01903/v13/OCSPRefType;->addNewDigestAlgAndValue()Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;

    move-result-object v11

    .line 217
    .local v11, "digestAlgAndValue":Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;
    iget-object v14, v1, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v14}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v14

    invoke-static {v11, v8, v14}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->setDigestAlgAndValue(Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;[BLorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    .line 219
    invoke-interface {v0}, Lorg/etsi/uri/x01903/v13/OCSPRefType;->addNewOCSPIdentifier()Lorg/etsi/uri/x01903/v13/OCSPIdentifierType;

    move-result-object v14

    .line 221
    .local v14, "ocspIdentifier":Lorg/etsi/uri/x01903/v13/OCSPIdentifierType;
    move-object/from16 v18, v0

    .end local v0    # "ocspRef":Lorg/etsi/uri/x01903/v13/OCSPRefType;
    .local v18, "ocspRef":Lorg/etsi/uri/x01903/v13/OCSPRefType;
    new-instance v0, Lorg/bouncycastle/cert/ocsp/OCSPResp;

    invoke-direct {v0, v8}, Lorg/bouncycastle/cert/ocsp/OCSPResp;-><init>([B)V

    .line 223
    .local v0, "ocspResp":Lorg/bouncycastle/cert/ocsp/OCSPResp;
    invoke-virtual {v0}, Lorg/bouncycastle/cert/ocsp/OCSPResp;->getResponseObject()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    .line 225
    .local v21, "basicOcspResp":Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    move-object/from16 v22, v0

    .end local v0    # "ocspResp":Lorg/bouncycastle/cert/ocsp/OCSPResp;
    .local v22, "ocspResp":Lorg/bouncycastle/cert/ocsp/OCSPResp;
    invoke-static/range {v16 .. v16}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v24, v6

    .end local v6    # "ocspRefs":Lorg/etsi/uri/x01903/v13/OCSPRefsType;
    .local v24, "ocspRefs":Lorg/etsi/uri/x01903/v13/OCSPRefsType;
    :try_start_4
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 226
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual/range {v21 .. v21}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->getProducedAt()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 227
    invoke-interface {v14, v0}, Lorg/etsi/uri/x01903/v13/OCSPIdentifierType;->setProducedAt(Ljava/util/Calendar;)V

    .line 229
    invoke-interface {v14}, Lorg/etsi/uri/x01903/v13/OCSPIdentifierType;->addNewResponderID()Lorg/etsi/uri/x01903/v13/ResponderIDType;

    move-result-object v6

    .line 231
    .local v6, "responderId":Lorg/etsi/uri/x01903/v13/ResponderIDType;
    invoke-virtual/range {v21 .. v21}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->getResponderId()Lorg/bouncycastle/cert/ocsp/RespID;

    move-result-object v28

    .line 232
    .local v28, "respId":Lorg/bouncycastle/cert/ocsp/RespID;
    invoke-virtual/range {v28 .. v28}, Lorg/bouncycastle/cert/ocsp/RespID;->toASN1Primitive()Lorg/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object v29

    .line 233
    .local v29, "ocspResponderId":Lorg/bouncycastle/asn1/ocsp/ResponderID;
    invoke-virtual/range {v29 .. v29}, Lorg/bouncycastle/asn1/ocsp/ResponderID;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v30

    check-cast v30, Lorg/bouncycastle/asn1/DERTaggedObject;

    .line 234
    .local v30, "derTaggedObject":Lorg/bouncycastle/asn1/DERTaggedObject;
    move-object/from16 v31, v0

    .end local v0    # "cal":Ljava/util/Calendar;
    .local v31, "cal":Ljava/util/Calendar;
    invoke-virtual/range {v30 .. v30}, Lorg/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v32, v7

    const/4 v7, 0x2

    .end local v7    # "i$":Ljava/util/Iterator;
    .local v32, "i$":Ljava/util/Iterator;
    if-ne v7, v0, :cond_8

    .line 235
    :try_start_5
    invoke-virtual/range {v30 .. v30}, Lorg/bouncycastle/asn1/DERTaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 236
    .local v0, "keyHashOctetString":Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    .line 237
    .local v7, "key":[B
    invoke-interface {v6, v7}, Lorg/etsi/uri/x01903/v13/ResponderIDType;->setByKey([B)V

    .line 238
    .end local v0    # "keyHashOctetString":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v7    # "key":[B
    goto :goto_6

    .line 239
    :cond_8
    invoke-virtual/range {v30 .. v30}, Lorg/bouncycastle/asn1/DERTaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    .line 240
    .local v0, "name":Lorg/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->toString()Ljava/lang/String;

    move-result-object v7

    .line 241
    .local v7, "nameStr":Ljava/lang/String;
    invoke-interface {v6, v7}, Lorg/etsi/uri/x01903/v13/ResponderIDType;->setByName(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 245
    .end local v0    # "name":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local v6    # "responderId":Lorg/etsi/uri/x01903/v13/ResponderIDType;
    .end local v7    # "nameStr":Ljava/lang/String;
    .end local v11    # "digestAlgAndValue":Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;
    .end local v14    # "ocspIdentifier":Lorg/etsi/uri/x01903/v13/OCSPIdentifierType;
    .end local v18    # "ocspRef":Lorg/etsi/uri/x01903/v13/OCSPRefType;
    .end local v21    # "basicOcspResp":Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    .end local v22    # "ocspResp":Lorg/bouncycastle/cert/ocsp/OCSPResp;
    .end local v28    # "respId":Lorg/bouncycastle/cert/ocsp/RespID;
    .end local v29    # "ocspResponderId":Lorg/bouncycastle/asn1/ocsp/ResponderID;
    .end local v30    # "derTaggedObject":Lorg/bouncycastle/asn1/DERTaggedObject;
    .end local v31    # "cal":Ljava/util/Calendar;
    :goto_6
    nop

    .line 244
    .end local v8    # "ocsp":[B
    move-object/from16 v6, v24

    move-object/from16 v7, v32

    goto/16 :goto_5

    .line 243
    .restart local v8    # "ocsp":[B
    :catch_2
    move-exception v0

    goto :goto_7

    .end local v32    # "i$":Ljava/util/Iterator;
    .local v7, "i$":Ljava/util/Iterator;
    :catch_3
    move-exception v0

    move-object/from16 v32, v7

    .end local v7    # "i$":Ljava/util/Iterator;
    .restart local v32    # "i$":Ljava/util/Iterator;
    goto :goto_7

    .end local v24    # "ocspRefs":Lorg/etsi/uri/x01903/v13/OCSPRefsType;
    .end local v32    # "i$":Ljava/util/Iterator;
    .local v6, "ocspRefs":Lorg/etsi/uri/x01903/v13/OCSPRefsType;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :catch_4
    move-exception v0

    move-object/from16 v24, v6

    move-object/from16 v32, v7

    .line 244
    .end local v6    # "ocspRefs":Lorg/etsi/uri/x01903/v13/OCSPRefsType;
    .end local v7    # "i$":Ljava/util/Iterator;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v24    # "ocspRefs":Lorg/etsi/uri/x01903/v13/OCSPRefsType;
    .restart local v32    # "i$":Ljava/util/Iterator;
    :goto_7
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OCSP decoding error: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 212
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "ocsp":[B
    .end local v24    # "ocspRefs":Lorg/etsi/uri/x01903/v13/OCSPRefsType;
    .end local v32    # "i$":Ljava/util/Iterator;
    .restart local v6    # "ocspRefs":Lorg/etsi/uri/x01903/v13/OCSPRefsType;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_9
    move-object/from16 v24, v6

    move-object/from16 v32, v7

    .line 252
    .end local v6    # "ocspRefs":Lorg/etsi/uri/x01903/v13/OCSPRefsType;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 253
    .local v6, "timeStampNodesXadesX1":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-interface {v12}, Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-interface {v13}, Lorg/etsi/uri/x01903/v13/CompleteCertificateRefsType;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-interface {v3}, Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v7, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;

    invoke-direct {v7}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;-><init>()V

    .line 259
    .local v7, "tsaRevocationDataXadesX1":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    sget-object v8, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Object;

    const-string v16, "creating XAdES-X time-stamp"

    const/4 v0, 0x0

    aput-object v16, v14, v0

    invoke-virtual {v8, v11, v14}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 260
    invoke-direct {v1, v6, v7}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->createXAdESTimeStamp(Ljava/util/List;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;

    move-result-object v8

    .line 262
    .local v8, "timeStampXadesX1":Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
    invoke-virtual {v7}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->hasRevocationDataEntries()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 263
    invoke-direct {v1, v7}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->createValidationData(Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)Lorg/etsi/uri/x01903/v14/ValidationDataType;

    move-result-object v11

    .line 264
    .local v11, "timeStampXadesX1ValidationData":Lorg/etsi/uri/x01903/v14/ValidationDataType;
    invoke-static {v9, v11}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->insertXChild(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/XmlObject;)V

    .line 268
    .end local v11    # "timeStampXadesX1ValidationData":Lorg/etsi/uri/x01903/v14/ValidationDataType;
    :cond_b
    invoke-interface {v9}, Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;->addNewSigAndRefsTimeStamp()Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;

    move-result-object v11

    invoke-interface {v11, v8}, Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 271
    invoke-interface {v9}, Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;->addNewCertificateValues()Lorg/etsi/uri/x01903/v13/CertificateValuesType;

    move-result-object v11

    .line 272
    .local v11, "certificateValues":Lorg/etsi/uri/x01903/v13/CertificateValuesType;
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/security/cert/X509Certificate;

    .line 273
    .local v16, "certificate":Ljava/security/cert/X509Certificate;
    move-object/from16 v18, v3

    .end local v3    # "completeRevocationRefs":Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;
    .local v18, "completeRevocationRefs":Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;
    invoke-interface {v11}, Lorg/etsi/uri/x01903/v13/CertificateValuesType;->addNewEncapsulatedX509Certificate()Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;

    move-result-object v3

    .line 275
    .local v3, "encapsulatedPKIDataType":Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;->setByteArrayValue([B)V
    :try_end_6
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_6 .. :try_end_6} :catch_5

    .line 278
    nop

    .line 279
    .end local v3    # "encapsulatedPKIDataType":Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;
    .end local v16    # "certificate":Ljava/security/cert/X509Certificate;
    move-object/from16 v3, v18

    goto :goto_8

    .line 276
    .restart local v3    # "encapsulatedPKIDataType":Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;
    .restart local v16    # "certificate":Ljava/security/cert/X509Certificate;
    :catch_5
    move-exception v0

    .line 277
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    move-object/from16 v21, v3

    .end local v3    # "encapsulatedPKIDataType":Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;
    .local v21, "encapsulatedPKIDataType":Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object/from16 v22, v6

    .end local v6    # "timeStampNodesXadesX1":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    .local v22, "timeStampNodesXadesX1":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v7

    .end local v7    # "tsaRevocationDataXadesX1":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    .local v24, "tsaRevocationDataXadesX1":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    const-string v7, "certificate encoding error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 272
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v16    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v18    # "completeRevocationRefs":Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;
    .end local v21    # "encapsulatedPKIDataType":Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;
    .end local v22    # "timeStampNodesXadesX1":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    .end local v24    # "tsaRevocationDataXadesX1":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    .local v3, "completeRevocationRefs":Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;
    .restart local v6    # "timeStampNodesXadesX1":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    .restart local v7    # "tsaRevocationDataXadesX1":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    :cond_c
    move-object/from16 v18, v3

    move-object/from16 v22, v6

    move-object/from16 v24, v7

    .line 281
    .end local v3    # "completeRevocationRefs":Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;
    .end local v6    # "timeStampNodesXadesX1":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    .end local v7    # "tsaRevocationDataXadesX1":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    .end local v14    # "i$":Ljava/util/Iterator;
    .restart local v18    # "completeRevocationRefs":Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;
    .restart local v22    # "timeStampNodesXadesX1":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    .restart local v24    # "tsaRevocationDataXadesX1":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    invoke-interface {v9}, Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;->addNewRevocationValues()Lorg/etsi/uri/x01903/v13/RevocationValuesType;

    move-result-object v0

    .line 282
    .local v0, "revocationValues":Lorg/etsi/uri/x01903/v13/RevocationValuesType;
    invoke-direct {v1, v0, v4}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->createRevocationValues(Lorg/etsi/uri/x01903/v13/RevocationValuesType;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)V

    .line 285
    invoke-interface {v5}, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v2, v3, v6}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 286
    .local v3, "n":Lorg/w3c/dom/Node;
    move-object/from16 v6, v27

    const/4 v7, 0x0

    .end local v27    # "qualNl":Lorg/w3c/dom/NodeList;
    .local v6, "qualNl":Lorg/w3c/dom/NodeList;
    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v14, v3, v7}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 287
    return-void

    .line 135
    .end local v0    # "revocationValues":Lorg/etsi/uri/x01903/v13/RevocationValuesType;
    .end local v3    # "n":Lorg/w3c/dom/Node;
    .end local v6    # "qualNl":Lorg/w3c/dom/NodeList;
    .end local v11    # "certificateValues":Lorg/etsi/uri/x01903/v13/CertificateValuesType;
    .end local v12    # "signatureTimeStamp":Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
    .end local v13    # "completeCertificateRefs":Lorg/etsi/uri/x01903/v13/CompleteCertificateRefsType;
    .end local v15    # "certChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v18    # "completeRevocationRefs":Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;
    .end local v19    # "qualDoc":Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;
    .end local v20    # "chainSize":I
    .end local v22    # "timeStampNodesXadesX1":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    .end local v23    # "unsignedProps":Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;
    .end local v24    # "tsaRevocationDataXadesX1":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    .end local v25    # "tsaRevocationDataXadesT":Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    .end local v26    # "certIdList":Lorg/etsi/uri/x01903/v13/CertIDListType;
    .local v4, "qualDoc":Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;
    .local v7, "qualNl":Lorg/w3c/dom/NodeList;
    .local v8, "unsignedProps":Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "SignatureValue is not set."

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    .end local v8    # "unsignedProps":Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;
    .end local v9    # "unsignedSigProps":Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;
    .end local v10    # "nlSigVal":Lorg/w3c/dom/NodeList;
    :catch_6
    move-exception v0

    move-object v6, v7

    .line 114
    .end local v7    # "qualNl":Lorg/w3c/dom/NodeList;
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    .restart local v6    # "qualNl":Lorg/w3c/dom/NodeList;
    new-instance v3, Ljavax/xml/crypto/MarshalException;

    invoke-direct {v3, v0}, Ljavax/xml/crypto/MarshalException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 118
    .end local v0    # "e":Lorg/apache/xmlbeans/XmlException;
    .end local v6    # "qualNl":Lorg/w3c/dom/NodeList;
    .restart local v7    # "qualNl":Lorg/w3c/dom/NodeList;
    :cond_e
    new-instance v0, Ljavax/xml/crypto/MarshalException;

    const-string v3, "no XAdES-BES extension present"

    invoke-direct {v0, v3}, Ljavax/xml/crypto/MarshalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
