.class public Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;
.super Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;
.source "KeyInfoSignatureFacet.java"


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;-><init>()V

    return-void
.end method


# virtual methods
.method public postSign(Lorg/w3c/dom/Document;)V
    .locals 18
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/MarshalException;
        }
    .end annotation

    .line 64
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "postSign"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 66
    const-string v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string v4, "Object"

    invoke-interface {v2, v0, v4}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 72
    .local v4, "nl":Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_0

    move-object v5, v7

    goto :goto_0

    :cond_0
    invoke-interface {v4, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 77
    .local v5, "nextSibling":Lorg/w3c/dom/Node;
    :goto_0
    iget-object v8, v1, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v8}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getKeyInfoFactory()Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;

    move-result-object v8

    .line 78
    .local v8, "keyInfoFactory":Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v9, "x509DataObjects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v10, v1, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v10}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSigningCertificateChain()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 81
    .local v10, "signingCertificate":Ljava/security/cert/X509Certificate;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v11, "keyInfoContent":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/XMLStructure;>;"
    iget-object v12, v1, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v12}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->isIncludeKeyValue()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 86
    :try_start_0
    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;->newKeyValue(Ljava/security/PublicKey;)Ljavax/xml/crypto/dsig/keyinfo/KeyValue;

    move-result-object v7
    :try_end_0
    .catch Ljava/security/KeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .local v7, "keyValue":Ljavax/xml/crypto/dsig/keyinfo/KeyValue;
    nop

    .line 90
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 87
    .end local v7    # "keyValue":Ljavax/xml/crypto/dsig/keyinfo/KeyValue;
    :catch_0
    move-exception v0

    move-object v3, v7

    .line 88
    .local v0, "e":Ljava/security/KeyException;
    .local v3, "keyValue":Ljavax/xml/crypto/dsig/keyinfo/KeyValue;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "key exception: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/security/KeyException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 93
    .end local v0    # "e":Ljava/security/KeyException;
    .end local v3    # "keyValue":Ljavax/xml/crypto/dsig/keyinfo/KeyValue;
    :cond_1
    :goto_1
    iget-object v7, v1, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v7}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->isIncludeIssuerSerial()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 94
    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v8, v7, v12}, Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;->newX509IssuerSerial(Ljava/lang/String;Ljava/math/BigInteger;)Ljavax/xml/crypto/dsig/keyinfo/X509IssuerSerial;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_2
    iget-object v7, v1, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v7}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->isIncludeEntireCertificateChain()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 100
    iget-object v7, v1, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v7}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSigningCertificateChain()Ljava/util/List;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 102
    :cond_3
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 106
    invoke-virtual {v8, v9}, Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;->newX509Data(Ljava/util/List;)Ljavax/xml/crypto/dsig/keyinfo/X509Data;

    move-result-object v7

    .line 107
    .local v7, "x509Data":Ljavax/xml/crypto/dsig/keyinfo/X509Data;
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v7    # "x509Data":Ljavax/xml/crypto/dsig/keyinfo/X509Data;
    :cond_4
    invoke-virtual {v8, v11}, Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;->newKeyInfo(Ljava/util/List;)Ljavax/xml/crypto/dsig/keyinfo/KeyInfo;

    move-result-object v7

    .line 110
    .local v7, "keyInfo":Ljavax/xml/crypto/dsig/keyinfo/KeyInfo;
    move-object v12, v7

    check-cast v12, Lorg/apache/jcp/xml/dsig/internal/dom/DOMKeyInfo;

    .line 112
    .local v12, "domKeyInfo":Lorg/apache/jcp/xml/dsig/internal/dom/DOMKeyInfo;
    new-instance v13, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet$1;

    invoke-direct {v13, v1}, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet$1;-><init>(Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;)V

    .line 128
    .local v13, "key":Ljava/security/Key;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v14

    .line 129
    .local v14, "n":Lorg/w3c/dom/Element;
    new-instance v15, Ljavax/xml/crypto/dsig/dom/DOMSignContext;

    if-nez v5, :cond_5

    invoke-direct {v15, v13, v14}, Ljavax/xml/crypto/dsig/dom/DOMSignContext;-><init>(Ljava/security/Key;Lorg/w3c/dom/Node;)V

    goto :goto_3

    :cond_5
    invoke-direct {v15, v13, v14, v5}, Ljavax/xml/crypto/dsig/dom/DOMSignContext;-><init>(Ljava/security/Key;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    .line 132
    .local v15, "domSignContext":Ljavax/xml/crypto/dsig/dom/DOMSignContext;
    :goto_3
    iget-object v6, v1, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getNamespacePrefixes()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 133
    .local v16, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v3, v17

    check-cast v3, Ljava/lang/String;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v15, v3, v1}, Ljavax/xml/crypto/dsig/dom/DOMSignContext;->putNamespacePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v1, p0

    goto :goto_4

    .line 136
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v16    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    new-instance v1, Ljavax/xml/crypto/dom/DOMStructure;

    invoke-direct {v1, v14}, Ljavax/xml/crypto/dom/DOMStructure;-><init>(Lorg/w3c/dom/Node;)V

    .line 137
    .local v1, "domStructure":Ljavax/xml/crypto/dom/DOMStructure;
    invoke-virtual {v12, v1, v15}, Lorg/apache/jcp/xml/dsig/internal/dom/DOMKeyInfo;->marshal(Ljavax/xml/crypto/XMLStructure;Ljavax/xml/crypto/XMLCryptoContext;)V

    .line 140
    if-eqz v5, :cond_8

    .line 141
    const-string v3, "KeyInfo"

    invoke-interface {v2, v0, v3}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 142
    .local v0, "kiNl":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_7

    .line 145
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_5

    .line 143
    :cond_7
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v6, "KeyInfo wasn\'t set"

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 147
    .end local v0    # "kiNl":Lorg/w3c/dom/NodeList;
    :cond_8
    :goto_5
    return-void
.end method
