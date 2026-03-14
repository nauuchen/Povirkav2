.class public Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;
.super Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;
.source "XAdESSignatureFacet.java"


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field private static final XADES_TYPE:Ljava/lang/String; = "http://uri.etsi.org/01903#SignedProperties"


# instance fields
.field private dataObjectFormatMimeTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;-><init>()V

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->dataObjectFormatMimeTypes:Ljava/util/Map;

    return-void
.end method

.method protected static insertXChild(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/XmlObject;)V
    .locals 2
    .param p0, "root"    # Lorg/apache/xmlbeans/XmlObject;
    .param p1, "child"    # Lorg/apache/xmlbeans/XmlObject;

    .line 277
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlObject;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    .line 278
    .local v0, "rootCursor":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    .line 279
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    .line 280
    .local v1, "childCursor":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    .line 281
    invoke-interface {v1, v0}, Lorg/apache/xmlbeans/XmlCursor;->moveXml(Lorg/apache/xmlbeans/XmlCursor;)Z

    .line 282
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 283
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 284
    return-void
.end method

.method protected static setCertID(Lorg/etsi/uri/x01903/v13/CertIDType;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;ZLjava/security/cert/X509Certificate;)V
    .locals 7
    .param p0, "certId"    # Lorg/etsi/uri/x01903/v13/CertIDType;
    .param p1, "signatureConfig"    # Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;
    .param p2, "issuerNameNoReverseOrder"    # Z
    .param p3, "certificate"    # Ljava/security/cert/X509Certificate;

    .line 235
    invoke-interface {p0}, Lorg/etsi/uri/x01903/v13/CertIDType;->addNewIssuerSerial()Lorg/w3/x2000/x09/xmldsig/X509IssuerSerialType;

    move-result-object v0

    .line 237
    .local v0, "issuerSerial":Lorg/w3/x2000/x09/xmldsig/X509IssuerSerialType;
    if-eqz p2, :cond_0

    .line 247
    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const-string v3, ", "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .local v1, "issuerName":Ljava/lang/String;
    goto :goto_0

    .line 249
    .end local v1    # "issuerName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    .restart local v1    # "issuerName":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, v1}, Lorg/w3/x2000/x09/xmldsig/X509IssuerSerialType;->setX509IssuerName(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3/x2000/x09/xmldsig/X509IssuerSerialType;->setX509SerialNumber(Ljava/math/BigInteger;)V

    .line 256
    :try_start_0
    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .local v2, "encodedCertificate":[B
    nop

    .line 261
    invoke-interface {p0}, Lorg/etsi/uri/x01903/v13/CertIDType;->addNewCertDigest()Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;

    move-result-object v3

    .line 262
    .local v3, "certDigest":Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getXadesDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->setDigestAlgAndValue(Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;[BLorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    .line 263
    return-void

    .line 257
    .end local v2    # "encodedCertificate":[B
    .end local v3    # "certDigest":Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;
    :catch_0
    move-exception v2

    const/4 v3, 0x0

    .line 258
    .local v2, "e":Ljava/security/cert/CertificateEncodingException;
    .local v3, "encodedCertificate":[B
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "certificate encoding error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected static setDigestAlgAndValue(Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;[BLorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 3
    .param p0, "digestAlgAndValue"    # Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;
    .param p1, "data"    # [B
    .param p2, "digestAlgo"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 222
    invoke-interface {p0}, Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;->addNewDigestMethod()Lorg/w3/x2000/x09/xmldsig/DigestMethodType;

    move-result-object v0

    .line 223
    .local v0, "digestMethod":Lorg/w3/x2000/x09/xmldsig/DigestMethodType;
    invoke-static {p2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestMethodUri(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3/x2000/x09/xmldsig/DigestMethodType;->setAlgorithm(Ljava/lang/String;)V

    .line 225
    invoke-static {p2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 226
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 227
    .local v2, "digestValue":[B
    invoke-interface {p0, v2}, Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;->setDigestValue([B)V

    .line 228
    return-void
.end method


# virtual methods
.method public addMimeType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "dsReferenceUri"    # Ljava/lang/String;
    .param p2, "mimetype"    # Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->dataObjectFormatMimeTypes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    return-void
.end method

.method public preSign(Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V
    .locals 24
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Reference;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/XMLObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/dsig/XMLSignatureException;
        }
    .end annotation

    .line 104
    .local p2, "references":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/Reference;>;"
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/XMLObject;>;"
    move-object/from16 v6, p0

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "preSign"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 107
    invoke-static {}, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument$Factory;->newInstance()Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;

    move-result-object v7

    .line 108
    .local v7, "qualDoc":Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;
    invoke-interface {v7}, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;->addNewQualifyingProperties()Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;

    move-result-object v8

    .line 109
    .local v8, "qualifyingProperties":Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v6, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getPackageSignatureId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;->setTarget(Ljava/lang/String;)V

    .line 112
    invoke-interface {v8}, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;->addNewSignedProperties()Lorg/etsi/uri/x01903/v13/SignedPropertiesType;

    move-result-object v9

    .line 113
    .local v9, "signedProperties":Lorg/etsi/uri/x01903/v13/SignedPropertiesType;
    iget-object v0, v6, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getXadesSignatureId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Lorg/etsi/uri/x01903/v13/SignedPropertiesType;->setId(Ljava/lang/String;)V

    .line 116
    invoke-interface {v9}, Lorg/etsi/uri/x01903/v13/SignedPropertiesType;->addNewSignedSignatureProperties()Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;

    move-result-object v10

    .line 119
    .local v10, "signedSignatureProperties":Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;
    const-string v0, "Z"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v11

    .line 120
    .local v11, "xmlGregorianCalendar":Ljava/util/Calendar;
    iget-object v0, v6, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getExecutionTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 121
    const/16 v0, 0xe

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->clear(I)V

    .line 122
    invoke-interface {v10, v11}, Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;->setSigningTime(Ljava/util/Calendar;)V

    .line 125
    iget-object v0, v6, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSigningCertificateChain()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v6, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSigningCertificateChain()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 129
    invoke-interface {v10}, Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;->addNewSigningCertificate()Lorg/etsi/uri/x01903/v13/CertIDListType;

    move-result-object v12

    .line 130
    .local v12, "signingCertificates":Lorg/etsi/uri/x01903/v13/CertIDListType;
    invoke-interface {v12}, Lorg/etsi/uri/x01903/v13/CertIDListType;->addNewCert()Lorg/etsi/uri/x01903/v13/CertIDType;

    move-result-object v13

    .line 131
    .local v13, "certId":Lorg/etsi/uri/x01903/v13/CertIDType;
    iget-object v0, v6, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSigningCertificateChain()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/security/cert/X509Certificate;

    .line 132
    .local v14, "certificate":Ljava/security/cert/X509Certificate;
    iget-object v0, v6, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    iget-object v3, v6, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->isXadesIssuerNameNoReverseOrder()Z

    move-result v3

    invoke-static {v13, v0, v3, v14}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->setCertID(Lorg/etsi/uri/x01903/v13/CertIDType;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;ZLjava/security/cert/X509Certificate;)V

    .line 135
    iget-object v0, v6, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getXadesRole()Ljava/lang/String;

    move-result-object v15

    .line 136
    .local v15, "role":Ljava/lang/String;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-interface {v10}, Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;->addNewSignerRole()Lorg/etsi/uri/x01903/v13/SignerRoleType;

    move-result-object v0

    .line 138
    .local v0, "signerRole":Lorg/etsi/uri/x01903/v13/SignerRoleType;
    invoke-interface {v10, v0}, Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;->setSignerRole(Lorg/etsi/uri/x01903/v13/SignerRoleType;)V

    .line 139
    invoke-interface {v0}, Lorg/etsi/uri/x01903/v13/SignerRoleType;->addNewClaimedRoles()Lorg/etsi/uri/x01903/v13/ClaimedRolesListType;

    move-result-object v3

    .line 140
    .local v3, "claimedRolesList":Lorg/etsi/uri/x01903/v13/ClaimedRolesListType;
    invoke-interface {v3}, Lorg/etsi/uri/x01903/v13/ClaimedRolesListType;->addNewClaimedRole()Lorg/etsi/uri/x01903/v13/AnyType;

    move-result-object v4

    .line 141
    .local v4, "claimedRole":Lorg/etsi/uri/x01903/v13/AnyType;
    invoke-static {}, Lorg/apache/xmlbeans/XmlString$Factory;->newInstance()Lorg/apache/xmlbeans/XmlString;

    move-result-object v5

    .line 142
    .local v5, "roleString":Lorg/apache/xmlbeans/XmlString;
    invoke-interface {v5, v15}, Lorg/apache/xmlbeans/XmlString;->setStringValue(Ljava/lang/String;)V

    .line 143
    invoke-static {v4, v5}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->insertXChild(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/XmlObject;)V

    .line 147
    .end local v0    # "signerRole":Lorg/etsi/uri/x01903/v13/SignerRoleType;
    .end local v3    # "claimedRolesList":Lorg/etsi/uri/x01903/v13/ClaimedRolesListType;
    .end local v4    # "claimedRole":Lorg/etsi/uri/x01903/v13/AnyType;
    .end local v5    # "roleString":Lorg/apache/xmlbeans/XmlString;
    :cond_0
    iget-object v0, v6, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignaturePolicyService()Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;

    move-result-object v16

    .line 148
    .local v16, "policyService":Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;
    if-eqz v16, :cond_2

    .line 149
    invoke-interface {v10}, Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;->addNewSignaturePolicyIdentifier()Lorg/etsi/uri/x01903/v13/SignaturePolicyIdentifierType;

    move-result-object v0

    .line 152
    .local v0, "signaturePolicyIdentifier":Lorg/etsi/uri/x01903/v13/SignaturePolicyIdentifierType;
    invoke-interface {v0}, Lorg/etsi/uri/x01903/v13/SignaturePolicyIdentifierType;->addNewSignaturePolicyId()Lorg/etsi/uri/x01903/v13/SignaturePolicyIdType;

    move-result-object v3

    .line 154
    .local v3, "signaturePolicyId":Lorg/etsi/uri/x01903/v13/SignaturePolicyIdType;
    invoke-interface {v3}, Lorg/etsi/uri/x01903/v13/SignaturePolicyIdType;->addNewSigPolicyId()Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;

    move-result-object v4

    .line 155
    .local v4, "objectIdentifier":Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;
    invoke-interface/range {v16 .. v16}, Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;->getSignaturePolicyDescription()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;->setDescription(Ljava/lang/String;)V

    .line 157
    invoke-interface {v4}, Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;->addNewIdentifier()Lorg/etsi/uri/x01903/v13/IdentifierType;

    move-result-object v5

    .line 158
    .local v5, "identifier":Lorg/etsi/uri/x01903/v13/IdentifierType;
    invoke-interface/range {v16 .. v16}, Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;->getSignaturePolicyIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Lorg/etsi/uri/x01903/v13/IdentifierType;->setStringValue(Ljava/lang/String;)V

    .line 160
    invoke-interface/range {v16 .. v16}, Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;->getSignaturePolicyDocument()[B

    move-result-object v1

    .line 161
    .local v1, "signaturePolicyDocumentData":[B
    move-object/from16 v18, v0

    .end local v0    # "signaturePolicyIdentifier":Lorg/etsi/uri/x01903/v13/SignaturePolicyIdentifierType;
    .local v18, "signaturePolicyIdentifier":Lorg/etsi/uri/x01903/v13/SignaturePolicyIdentifierType;
    invoke-interface {v3}, Lorg/etsi/uri/x01903/v13/SignaturePolicyIdType;->addNewSigPolicyHash()Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;

    move-result-object v0

    .line 162
    .local v0, "sigPolicyHash":Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;
    move-object/from16 v19, v4

    .end local v4    # "objectIdentifier":Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;
    .local v19, "objectIdentifier":Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;
    iget-object v4, v6, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->setDigestAlgAndValue(Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;[BLorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    .line 164
    invoke-interface/range {v16 .. v16}, Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;->getSignaturePolicyDownloadUrl()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "signaturePolicyDownloadUrl":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 166
    invoke-interface {v3}, Lorg/etsi/uri/x01903/v13/SignaturePolicyIdType;->addNewSigPolicyQualifiers()Lorg/etsi/uri/x01903/v13/SigPolicyQualifiersListType;

    move-result-object v20

    .line 167
    .local v20, "sigPolicyQualifiers":Lorg/etsi/uri/x01903/v13/SigPolicyQualifiersListType;
    move-object/from16 v21, v0

    .end local v0    # "sigPolicyHash":Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;
    .local v21, "sigPolicyHash":Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;
    invoke-interface/range {v20 .. v20}, Lorg/etsi/uri/x01903/v13/SigPolicyQualifiersListType;->addNewSigPolicyQualifier()Lorg/etsi/uri/x01903/v13/AnyType;

    move-result-object v0

    .line 168
    .local v0, "sigPolicyQualifier":Lorg/etsi/uri/x01903/v13/AnyType;
    move-object/from16 v22, v1

    .end local v1    # "signaturePolicyDocumentData":[B
    .local v22, "signaturePolicyDocumentData":[B
    invoke-static {}, Lorg/apache/xmlbeans/XmlString$Factory;->newInstance()Lorg/apache/xmlbeans/XmlString;

    move-result-object v1

    .line 169
    .local v1, "spUriElement":Lorg/apache/xmlbeans/XmlString;
    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/XmlString;->setStringValue(Ljava/lang/String;)V

    .line 170
    invoke-static {v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->insertXChild(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_0

    .line 165
    .end local v20    # "sigPolicyQualifiers":Lorg/etsi/uri/x01903/v13/SigPolicyQualifiersListType;
    .end local v21    # "sigPolicyHash":Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;
    .end local v22    # "signaturePolicyDocumentData":[B
    .local v0, "sigPolicyHash":Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;
    .local v1, "signaturePolicyDocumentData":[B
    :cond_1
    move-object/from16 v21, v0

    move-object/from16 v22, v1

    .end local v0    # "sigPolicyHash":Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;
    .end local v1    # "signaturePolicyDocumentData":[B
    .restart local v21    # "sigPolicyHash":Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;
    .restart local v22    # "signaturePolicyDocumentData":[B
    goto :goto_0

    .line 172
    .end local v3    # "signaturePolicyId":Lorg/etsi/uri/x01903/v13/SignaturePolicyIdType;
    .end local v4    # "signaturePolicyDownloadUrl":Ljava/lang/String;
    .end local v5    # "identifier":Lorg/etsi/uri/x01903/v13/IdentifierType;
    .end local v18    # "signaturePolicyIdentifier":Lorg/etsi/uri/x01903/v13/SignaturePolicyIdentifierType;
    .end local v19    # "objectIdentifier":Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;
    .end local v21    # "sigPolicyHash":Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;
    .end local v22    # "signaturePolicyDocumentData":[B
    :cond_2
    iget-object v0, v6, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->isXadesSignaturePolicyImplied()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    invoke-interface {v10}, Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;->addNewSignaturePolicyIdentifier()Lorg/etsi/uri/x01903/v13/SignaturePolicyIdentifierType;

    move-result-object v0

    .line 175
    .local v0, "signaturePolicyIdentifier":Lorg/etsi/uri/x01903/v13/SignaturePolicyIdentifierType;
    invoke-interface {v0}, Lorg/etsi/uri/x01903/v13/SignaturePolicyIdentifierType;->addNewSignaturePolicyImplied()Lorg/apache/xmlbeans/XmlObject;

    goto :goto_1

    .line 172
    .end local v0    # "signaturePolicyIdentifier":Lorg/etsi/uri/x01903/v13/SignaturePolicyIdentifierType;
    :cond_3
    :goto_0
    nop

    .line 179
    :goto_1
    iget-object v0, v6, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->dataObjectFormatMimeTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 180
    invoke-interface {v9}, Lorg/etsi/uri/x01903/v13/SignedPropertiesType;->addNewSignedDataObjectProperties()Lorg/etsi/uri/x01903/v13/SignedDataObjectPropertiesType;

    move-result-object v0

    .line 183
    .local v0, "signedDataObjectProperties":Lorg/etsi/uri/x01903/v13/SignedDataObjectPropertiesType;
    invoke-interface {v0}, Lorg/etsi/uri/x01903/v13/SignedDataObjectPropertiesType;->getDataObjectFormatList()Ljava/util/List;

    move-result-object v1

    .line 185
    .local v1, "dataObjectFormats":Ljava/util/List;, "Ljava/util/List<Lorg/etsi/uri/x01903/v13/DataObjectFormatType;>;"
    iget-object v3, v6, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->dataObjectFormatMimeTypes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 187
    .local v4, "dataObjectFormatMimeType":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lorg/etsi/uri/x01903/v13/DataObjectFormatType$Factory;->newInstance()Lorg/etsi/uri/x01903/v13/DataObjectFormatType;

    move-result-object v5

    .line 188
    .local v5, "dataObjectFormat":Lorg/etsi/uri/x01903/v13/DataObjectFormatType;
    move-object/from16 v18, v0

    .end local v0    # "signedDataObjectProperties":Lorg/etsi/uri/x01903/v13/SignedDataObjectPropertiesType;
    .local v18, "signedDataObjectProperties":Lorg/etsi/uri/x01903/v13/SignedDataObjectPropertiesType;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v3

    .end local v3    # "i$":Ljava/util/Iterator;
    .local v20, "i$":Ljava/util/Iterator;
    move-object/from16 v3, v19

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lorg/etsi/uri/x01903/v13/DataObjectFormatType;->setObjectReference(Ljava/lang/String;)V

    .line 189
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v0}, Lorg/etsi/uri/x01903/v13/DataObjectFormatType;->setMimeType(Ljava/lang/String;)V

    .line 190
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v4    # "dataObjectFormatMimeType":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "dataObjectFormat":Lorg/etsi/uri/x01903/v13/DataObjectFormatType;
    move-object/from16 v0, v18

    move-object/from16 v3, v20

    goto :goto_2

    .line 185
    .end local v18    # "signedDataObjectProperties":Lorg/etsi/uri/x01903/v13/SignedDataObjectPropertiesType;
    .end local v20    # "i$":Ljava/util/Iterator;
    .restart local v0    # "signedDataObjectProperties":Lorg/etsi/uri/x01903/v13/SignedDataObjectPropertiesType;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v18, v0

    move-object/from16 v20, v3

    .line 195
    .end local v0    # "signedDataObjectProperties":Lorg/etsi/uri/x01903/v13/SignedDataObjectPropertiesType;
    .end local v1    # "dataObjectFormats":Ljava/util/List;, "Ljava/util/List<Lorg/etsi/uri/x01903/v13/DataObjectFormatType;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 196
    .local v5, "xadesObjectContent":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/XMLStructure;>;"
    invoke-interface {v8}, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/w3c/dom/Element;

    .line 197
    .local v4, "qualDocElSrc":Lorg/w3c/dom/Element;
    move-object/from16 v3, p1

    const/4 v0, 0x1

    invoke-interface {v3, v4, v0}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/w3c/dom/Element;

    .line 198
    .local v1, "qualDocEl":Lorg/w3c/dom/Element;
    new-instance v0, Ljavax/xml/crypto/dom/DOMStructure;

    invoke-direct {v0, v1}, Ljavax/xml/crypto/dom/DOMStructure;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v0

    move-object/from16 v17, v1

    .end local v1    # "qualDocEl":Lorg/w3c/dom/Element;
    .local v17, "qualDocEl":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1, v1, v1}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newXMLObject(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/crypto/dsig/XMLObject;

    move-result-object v1

    .line 200
    .local v1, "xadesObject":Ljavax/xml/crypto/dsig/XMLObject;
    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v18

    .line 204
    .local v19, "transforms":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/Transform;>;"
    const-string v0, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

    invoke-virtual {v6, v0}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->newTransform(Ljava/lang/String;)Ljavax/xml/crypto/dsig/Transform;

    move-result-object v0

    .line 205
    .local v0, "exclusiveTransform":Ljavax/xml/crypto/dsig/Transform;
    move-object/from16 v18, v5

    move-object/from16 v5, v19

    .end local v19    # "transforms":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/Transform;>;"
    .local v5, "transforms":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/Transform;>;"
    .local v18, "xadesObjectContent":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/XMLStructure;>;"
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    move-object/from16 v19, v0

    .end local v0    # "exclusiveTransform":Ljavax/xml/crypto/dsig/Transform;
    .local v19, "exclusiveTransform":Ljavax/xml/crypto/dsig/Transform;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v6, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getXadesSignatureId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "http://uri.etsi.org/01903#SignedProperties"

    move-object/from16 v0, p0

    move-object/from16 v23, v1

    .end local v1    # "xadesObject":Ljavax/xml/crypto/dsig/XMLObject;
    .local v23, "xadesObject":Ljavax/xml/crypto/dsig/XMLObject;
    move-object v1, v2

    move-object v2, v5

    move-object/from16 v3, v22

    move-object/from16 v22, v4

    .end local v4    # "qualDocElSrc":Lorg/w3c/dom/Element;
    .local v22, "qualDocElSrc":Lorg/w3c/dom/Element;
    move-object/from16 v4, v20

    move-object/from16 v20, v5

    .end local v5    # "transforms":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/Transform;>;"
    .local v20, "transforms":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/Transform;>;"
    move-object/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->newReference(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[B)Ljavax/xml/crypto/dsig/Reference;

    move-result-object v0

    .line 208
    .local v0, "reference":Ljavax/xml/crypto/dsig/Reference;
    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    return-void

    .line 125
    .end local v0    # "reference":Ljavax/xml/crypto/dsig/Reference;
    .end local v12    # "signingCertificates":Lorg/etsi/uri/x01903/v13/CertIDListType;
    .end local v13    # "certId":Lorg/etsi/uri/x01903/v13/CertIDType;
    .end local v14    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v15    # "role":Ljava/lang/String;
    .end local v16    # "policyService":Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;
    .end local v17    # "qualDocEl":Lorg/w3c/dom/Element;
    .end local v18    # "xadesObjectContent":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/XMLStructure;>;"
    .end local v19    # "exclusiveTransform":Ljavax/xml/crypto/dsig/Transform;
    .end local v20    # "transforms":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/Transform;>;"
    .end local v22    # "qualDocElSrc":Lorg/w3c/dom/Element;
    .end local v23    # "xadesObject":Ljavax/xml/crypto/dsig/XMLObject;
    :cond_6
    move-object/from16 v1, p2

    .line 127
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "no signing certificate chain available"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
