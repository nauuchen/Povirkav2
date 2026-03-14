.class public Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;
.super Ljava/lang/Object;
.source "SignatureInfo.java"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$SignatureConfigurable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field private static isInitialized:Z


# instance fields
.field private signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 173
    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->LOG:Lorg/apache/poi/util/POILogger;

    .line 174
    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->isInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->initXmlProvider()V

    .line 297
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    .line 171
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljavax/xml/crypto/dsig/XMLValidateContext;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;
    .param p1, "x1"    # Ljavax/xml/crypto/dsig/XMLValidateContext;

    .line 171
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->brokenJvmWorkaround(Ljavax/xml/crypto/dsig/XMLValidateContext;)V

    return-void
.end method

.method static synthetic access$200()Lorg/apache/poi/util/POILogger;
    .locals 1

    .line 171
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->LOG:Lorg/apache/poi/util/POILogger;

    return-object v0
.end method

.method private brokenJvmWorkaround(Ljavax/xml/crypto/dsig/XMLSignContext;)V
    .locals 2
    .param p1, "context"    # Ljavax/xml/crypto/dsig/XMLSignContext;

    .line 688
    const-string v0, "BC"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 689
    .local v0, "bcProv":Ljava/security/Provider;
    if-eqz v0, :cond_0

    .line 690
    const-string v1, "org.jcp.xml.dsig.internal.dom.SignatureProvider"

    invoke-interface {p1, v1, v0}, Ljavax/xml/crypto/dsig/XMLSignContext;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    :cond_0
    return-void
.end method

.method private brokenJvmWorkaround(Ljavax/xml/crypto/dsig/XMLValidateContext;)V
    .locals 2
    .param p1, "context"    # Ljavax/xml/crypto/dsig/XMLValidateContext;

    .line 696
    const-string v0, "BC"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 697
    .local v0, "bcProv":Ljava/security/Provider;
    if-eqz v0, :cond_0

    .line 698
    const-string v1, "org.jcp.xml.dsig.internal.dom.SignatureProvider"

    invoke-interface {p1, v1, v0}, Ljavax/xml/crypto/dsig/XMLValidateContext;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    :cond_0
    return-void
.end method

.method protected static declared-synchronized initXmlProvider()V
    .locals 4

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    monitor-enter v0

    .line 422
    :try_start_0
    sget-boolean v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->isInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 423
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->isInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    :try_start_2
    invoke-static {}, Lorg/apache/xml/security/Init;->init()V

    .line 427
    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->registerDsigProvider()V

    .line 428
    invoke-static {}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->registerBouncyCastle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 431
    nop

    .line 432
    monitor-exit v0

    return-void

    .line 429
    :catch_0
    move-exception v1

    .line 430
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Xml & BouncyCastle-Provider initialization failed"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 421
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static safe(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 682
    .local p0, "other":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 683
    .local v0, "emptyList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public confirmSignature()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/dsig/XMLSignatureException;,
            Ljavax/xml/crypto/MarshalException;
        }
    .end annotation

    .line 332
    invoke-static {}, Lorg/apache/poi/util/DocumentHelper;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 335
    .local v0, "document":Lorg/w3c/dom/Document;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->preSign(Lorg/w3c/dom/Document;Ljava/util/List;)Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;

    move-result-object v1

    .line 338
    .local v1, "digestInfo":Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;
    iget-object v2, v1, Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;->digestValue:[B

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signDigest([B)[B

    move-result-object v2

    .line 341
    .local v2, "signatureValue":[B
    invoke-virtual {p0, v0, v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->postSign(Lorg/w3c/dom/Document;[B)V

    .line 342
    return-void
.end method

.method public getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;
    .locals 1

    .line 303
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    return-object v0
.end method

.method public getSignatureParts()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;",
            ">;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->init(Z)V

    .line 373
    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;-><init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)V

    return-object v0
.end method

.method public postSign(Lorg/w3c/dom/Document;[B)V
    .locals 5
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .param p2, "signatureValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/MarshalException;
        }
    .end annotation

    .line 584
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "postSign"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 589
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getPackageSignatureId()Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, "signatureId":Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v3, "Id"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 597
    const-string v2, "http://www.w3.org/2000/09/xmldsig#"

    const-string v3, "SignatureValue"

    invoke-interface {p1, v2, v3}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 598
    .local v2, "sigValNl":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 601
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {p2}, Lorg/apache/xml/security/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 606
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureFacets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;

    .line 607
    .local v3, "signatureFacet":Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;
    invoke-virtual {v3, p1}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->postSign(Lorg/w3c/dom/Document;)V

    .end local v3    # "signatureFacet":Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;
    goto :goto_0

    .line 610
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->writeDocument(Lorg/w3c/dom/Document;)V

    .line 611
    return-void

    .line 599
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "preSign has to be called before postSign"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 591
    .end local v2    # "sigValNl":Lorg/w3c/dom/NodeList;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ds:Signature not found for @Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public preSign(Lorg/w3c/dom/Document;Ljava/util/List;)Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;
    .locals 23
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;",
            ">;)",
            "Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/dsig/XMLSignatureException;,
            Ljavax/xml/crypto/MarshalException;
        }
    .end annotation

    .line 441
    .local p2, "digestInfos":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->init(Z)V

    .line 445
    move-object v4, v2

    check-cast v4, Lorg/w3c/dom/events/EventTarget;

    .line 446
    .local v4, "target":Lorg/w3c/dom/events/EventTarget;
    iget-object v0, v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureMarshalListener()Lorg/w3c/dom/events/EventListener;

    move-result-object v5

    .line 447
    .local v5, "creationListener":Lorg/w3c/dom/events/EventListener;
    const/4 v0, 0x1

    if-eqz v5, :cond_1

    .line 448
    instance-of v6, v5, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;

    if-eqz v6, :cond_0

    .line 449
    move-object v6, v5

    check-cast v6, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;

    invoke-virtual {v6, v4}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->setEventTarget(Lorg/w3c/dom/events/EventTarget;)V

    .line 451
    :cond_0
    invoke-static {v4, v5, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->setListener(Lorg/w3c/dom/events/EventTarget;Lorg/w3c/dom/events/EventListener;Z)V

    .line 457
    :cond_1
    new-instance v6, Ljavax/xml/crypto/dsig/dom/DOMSignContext;

    iget-object v7, v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v7}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getKey()Ljava/security/PrivateKey;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljavax/xml/crypto/dsig/dom/DOMSignContext;-><init>(Ljava/security/Key;Lorg/w3c/dom/Node;)V

    .line 458
    .local v6, "xmlSignContext":Ljavax/xml/crypto/dsig/XMLSignContext;
    iget-object v7, v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v7}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getUriDereferencer()Ljavax/xml/crypto/URIDereferencer;

    move-result-object v7

    .line 459
    .local v7, "uriDereferencer":Ljavax/xml/crypto/URIDereferencer;
    if-eqz v7, :cond_2

    .line 460
    invoke-interface {v6, v7}, Ljavax/xml/crypto/dsig/XMLSignContext;->setURIDereferencer(Ljavax/xml/crypto/URIDereferencer;)V

    .line 463
    :cond_2
    iget-object v8, v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v8}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getNamespacePrefixes()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 464
    .local v9, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v6, v10, v11}, Ljavax/xml/crypto/dsig/XMLSignContext;->putNamespacePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 466
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string v8, ""

    invoke-interface {v6, v8}, Ljavax/xml/crypto/dsig/XMLSignContext;->setDefaultNamespacePrefix(Ljava/lang/String;)V

    .line 469
    invoke-direct {v1, v6}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->brokenJvmWorkaround(Ljavax/xml/crypto/dsig/XMLSignContext;)V

    .line 471
    iget-object v8, v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v8}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v8

    .line 476
    .local v8, "signatureFactory":Ljavax/xml/crypto/dsig/XMLSignatureFactory;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v9

    .line 477
    .local v15, "references":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/Reference;>;"
    invoke-static/range {p2 .. p2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->safe(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;

    .line 478
    .local v10, "digestInfo":Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;
    iget-object v11, v10, Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;->digestValue:[B

    .line 480
    .local v11, "documentDigestValue":[B
    new-instance v12, Ljava/io/File;

    iget-object v13, v10, Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;->description:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    .line 481
    .local v12, "uri":Ljava/lang/String;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v13, v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-object/from16 v16, v12

    move-object/from16 v20, v11

    move-object/from16 v21, v13

    invoke-static/range {v16 .. v21}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->newReference(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[BLorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)Ljavax/xml/crypto/dsig/Reference;

    move-result-object v13

    .line 483
    .local v13, "reference":Ljavax/xml/crypto/dsig/Reference;
    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    .end local v10    # "digestInfo":Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;
    .end local v11    # "documentDigestValue":[B
    .end local v12    # "uri":Ljava/lang/String;
    .end local v13    # "reference":Ljavax/xml/crypto/dsig/Reference;
    goto :goto_1

    .line 489
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v9

    .line 490
    .local v14, "objects":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/XMLObject;>;"
    iget-object v9, v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v9}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureFacets()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;

    .line 491
    .local v10, "signatureFacet":Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;
    sget-object v11, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v12, v0, [Ljava/lang/Object;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invoking signature facet: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v12, v3

    const/4 v0, 0x1

    invoke-virtual {v11, v0, v12}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 492
    invoke-virtual {v10, v2, v15, v14}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->preSign(Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V

    const/4 v0, 0x1

    .end local v10    # "signatureFacet":Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;
    goto :goto_2

    .line 500
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_0
    iget-object v0, v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureMethodUri()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v8, v0, v10}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newSignatureMethod(Ljava/lang/String;Ljavax/xml/crypto/dsig/spec/SignatureMethodParameterSpec;)Ljavax/xml/crypto/dsig/SignatureMethod;

    move-result-object v0

    .line 502
    .local v0, "signatureMethod":Ljavax/xml/crypto/dsig/SignatureMethod;
    iget-object v11, v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v11}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getCanonicalizationMethod()Ljava/lang/String;

    move-result-object v11

    check-cast v10, Ljavax/xml/crypto/dsig/spec/C14NMethodParameterSpec;

    invoke-virtual {v8, v11, v10}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newCanonicalizationMethod(Ljava/lang/String;Ljavax/xml/crypto/dsig/spec/C14NMethodParameterSpec;)Ljavax/xml/crypto/dsig/CanonicalizationMethod;

    move-result-object v10

    .line 505
    .local v10, "canonicalizationMethod":Ljavax/xml/crypto/dsig/CanonicalizationMethod;
    invoke-virtual {v8, v10, v0, v15}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newSignedInfo(Ljavax/xml/crypto/dsig/CanonicalizationMethod;Ljavax/xml/crypto/dsig/SignatureMethod;Ljava/util/List;)Ljavax/xml/crypto/dsig/SignedInfo;

    move-result-object v9
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v9

    .line 509
    .end local v10    # "canonicalizationMethod":Ljavax/xml/crypto/dsig/CanonicalizationMethod;
    .local v0, "signedInfo":Ljavax/xml/crypto/dsig/SignedInfo;
    nop

    .line 514
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v10}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getPackageSignatureId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-signature-value"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 515
    .local v17, "signatureValueId":Ljava/lang/String;
    const/4 v11, 0x0

    iget-object v9, v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v9}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getPackageSignatureId()Ljava/lang/String;

    move-result-object v13

    move-object v9, v8

    move-object v10, v0

    move-object v12, v14

    move-object/from16 v18, v14

    .end local v14    # "objects":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/XMLObject;>;"
    .local v18, "objects":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/XMLObject;>;"
    move-object/from16 v14, v17

    invoke-virtual/range {v9 .. v14}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newXMLSignature(Ljavax/xml/crypto/dsig/SignedInfo;Ljavax/xml/crypto/dsig/keyinfo/KeyInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/crypto/dsig/XMLSignature;

    move-result-object v9

    .line 522
    .local v9, "xmlSignature":Ljavax/xml/crypto/dsig/XMLSignature;
    invoke-interface {v9, v6}, Ljavax/xml/crypto/dsig/XMLSignature;->sign(Ljavax/xml/crypto/dsig/XMLSignContext;)V

    .line 527
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/xml/crypto/dsig/XMLObject;

    .line 528
    .local v11, "object":Ljavax/xml/crypto/dsig/XMLObject;
    sget-object v12, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "object java type: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x0

    aput-object v3, v14, v13

    const/4 v3, 0x1

    invoke-virtual {v12, v3, v14}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 529
    invoke-interface {v11}, Ljavax/xml/crypto/dsig/XMLObject;->getContent()Ljava/util/List;

    move-result-object v3

    .line 530
    .local v3, "objectContentList":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/XMLStructure;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavax/xml/crypto/XMLStructure;

    .line 531
    .local v13, "objectContent":Ljavax/xml/crypto/XMLStructure;
    sget-object v14, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->LOG:Lorg/apache/poi/util/POILogger;

    move-object/from16 v16, v3

    const/4 v2, 0x1

    .end local v3    # "objectContentList":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/XMLStructure;>;"
    .local v16, "objectContentList":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/XMLStructure;>;"
    new-array v3, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v4

    .end local v4    # "target":Lorg/w3c/dom/events/EventTarget;
    .local v21, "target":Lorg/w3c/dom/events/EventTarget;
    const-string v4, "object content java type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    invoke-virtual {v14, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 532
    instance-of v3, v13, Ljavax/xml/crypto/dsig/Manifest;

    if-nez v3, :cond_6

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-object/from16 v4, v21

    goto :goto_4

    .line 533
    :cond_6
    move-object v3, v13

    check-cast v3, Ljavax/xml/crypto/dsig/Manifest;

    .line 534
    .local v3, "manifest":Ljavax/xml/crypto/dsig/Manifest;
    invoke-interface {v3}, Ljavax/xml/crypto/dsig/Manifest;->getReferences()Ljava/util/List;

    move-result-object v14

    .line 535
    .local v14, "manifestReferences":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/Reference;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavax/xml/crypto/dsig/Reference;

    .line 536
    .local v20, "manifestReference":Ljavax/xml/crypto/dsig/Reference;
    invoke-interface/range {v20 .. v20}, Ljavax/xml/crypto/dsig/Reference;->getDigestValue()[B

    move-result-object v22

    if-eqz v22, :cond_7

    goto :goto_5

    .line 538
    :cond_7
    move-object/from16 v2, v20

    check-cast v2, Lorg/apache/jcp/xml/dsig/internal/dom/DOMReference;

    .line 539
    .local v2, "manifestDOMReference":Lorg/apache/jcp/xml/dsig/internal/dom/DOMReference;
    invoke-virtual {v2, v6}, Lorg/apache/jcp/xml/dsig/internal/dom/DOMReference;->digest(Ljavax/xml/crypto/dsig/XMLSignContext;)V

    .line 540
    .end local v2    # "manifestDOMReference":Lorg/apache/jcp/xml/dsig/internal/dom/DOMReference;
    .end local v20    # "manifestReference":Ljavax/xml/crypto/dsig/Reference;
    const/4 v2, 0x1

    goto :goto_5

    .line 541
    .end local v3    # "manifest":Ljavax/xml/crypto/dsig/Manifest;
    .end local v13    # "objectContent":Ljavax/xml/crypto/XMLStructure;
    .end local v14    # "manifestReferences":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/Reference;>;"
    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_8
    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-object/from16 v4, v21

    goto :goto_4

    .line 530
    .end local v16    # "objectContentList":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/XMLStructure;>;"
    .end local v21    # "target":Lorg/w3c/dom/events/EventTarget;
    .local v3, "objectContentList":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/XMLStructure;>;"
    .restart local v4    # "target":Lorg/w3c/dom/events/EventTarget;
    :cond_9
    move-object/from16 v16, v3

    move-object/from16 v21, v4

    const/4 v4, 0x0

    .line 542
    .end local v3    # "objectContentList":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/XMLStructure;>;"
    .end local v4    # "target":Lorg/w3c/dom/events/EventTarget;
    .end local v11    # "object":Ljavax/xml/crypto/dsig/XMLObject;
    .end local v12    # "i$":Ljava/util/Iterator;
    .restart local v21    # "target":Lorg/w3c/dom/events/EventTarget;
    move-object/from16 v2, p1

    move-object/from16 v4, v21

    const/4 v3, 0x0

    goto/16 :goto_3

    .line 527
    .end local v21    # "target":Lorg/w3c/dom/events/EventTarget;
    .restart local v4    # "target":Lorg/w3c/dom/events/EventTarget;
    :cond_a
    move-object/from16 v21, v4

    .line 547
    .end local v4    # "target":Lorg/w3c/dom/events/EventTarget;
    .end local v10    # "i$":Ljava/util/Iterator;
    .restart local v21    # "target":Lorg/w3c/dom/events/EventTarget;
    invoke-interface {v0}, Ljavax/xml/crypto/dsig/SignedInfo;->getReferences()Ljava/util/List;

    move-result-object v2

    .line 548
    .local v2, "signedInfoReferences":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/Reference;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/xml/crypto/dsig/Reference;

    .line 549
    .local v4, "signedInfoReference":Ljavax/xml/crypto/dsig/Reference;
    move-object v10, v4

    check-cast v10, Lorg/apache/jcp/xml/dsig/internal/dom/DOMReference;

    .line 552
    .local v10, "domReference":Lorg/apache/jcp/xml/dsig/internal/dom/DOMReference;
    invoke-virtual {v10}, Lorg/apache/jcp/xml/dsig/internal/dom/DOMReference;->getDigestValue()[B

    move-result-object v11

    if-eqz v11, :cond_b

    goto :goto_6

    .line 554
    :cond_b
    invoke-virtual {v10, v6}, Lorg/apache/jcp/xml/dsig/internal/dom/DOMReference;->digest(Ljavax/xml/crypto/dsig/XMLSignContext;)V

    .line 555
    .end local v4    # "signedInfoReference":Ljavax/xml/crypto/dsig/Reference;
    .end local v10    # "domReference":Lorg/apache/jcp/xml/dsig/internal/dom/DOMReference;
    goto :goto_6

    .line 560
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_c
    move-object v3, v0

    check-cast v3, Lorg/apache/jcp/xml/dsig/internal/dom/DOMSignedInfo;

    .line 561
    .local v3, "domSignedInfo":Lorg/apache/jcp/xml/dsig/internal/dom/DOMSignedInfo;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 562
    .local v4, "dataStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v3, v6, v4}, Lorg/apache/jcp/xml/dsig/internal/dom/DOMSignedInfo;->canonicalize(Ljavax/xml/crypto/XMLCryptoContext;Ljava/io/ByteArrayOutputStream;)V

    .line 563
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 570
    .local v10, "octets":[B
    iget-object v11, v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v11}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v11

    .line 571
    .local v11, "md":Ljava/security/MessageDigest;
    invoke-virtual {v11, v10}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v12

    .line 574
    .local v12, "digestValue":[B
    iget-object v13, v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v13}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureDescription()Ljava/lang/String;

    move-result-object v13

    .line 575
    .local v13, "description":Ljava/lang/String;
    new-instance v14, Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;

    move-object/from16 v16, v0

    .end local v0    # "signedInfo":Ljavax/xml/crypto/dsig/SignedInfo;
    .local v16, "signedInfo":Ljavax/xml/crypto/dsig/SignedInfo;
    iget-object v0, v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    invoke-direct {v14, v12, v0, v13}, Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;-><init>([BLorg/apache/poi/poifs/crypt/HashAlgorithm;Ljava/lang/String;)V

    return-object v14

    .line 507
    .end local v2    # "signedInfoReferences":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/Reference;>;"
    .end local v3    # "domSignedInfo":Lorg/apache/jcp/xml/dsig/internal/dom/DOMSignedInfo;
    .end local v9    # "xmlSignature":Ljavax/xml/crypto/dsig/XMLSignature;
    .end local v10    # "octets":[B
    .end local v11    # "md":Ljava/security/MessageDigest;
    .end local v12    # "digestValue":[B
    .end local v13    # "description":Ljava/lang/String;
    .end local v16    # "signedInfo":Ljavax/xml/crypto/dsig/SignedInfo;
    .end local v17    # "signatureValueId":Ljava/lang/String;
    .end local v18    # "objects":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/XMLObject;>;"
    .end local v21    # "target":Lorg/w3c/dom/events/EventTarget;
    .local v4, "target":Lorg/w3c/dom/events/EventTarget;
    .local v14, "objects":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/XMLObject;>;"
    :catch_0
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v18, v14

    .end local v4    # "target":Lorg/w3c/dom/events/EventTarget;
    .end local v14    # "objects":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/XMLObject;>;"
    .restart local v18    # "objects":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/XMLObject;>;"
    .restart local v21    # "target":Lorg/w3c/dom/events/EventTarget;
    move-object v2, v9

    .line 508
    .local v0, "e":Ljava/security/GeneralSecurityException;
    .local v2, "signedInfo":Ljavax/xml/crypto/dsig/SignedInfo;
    new-instance v3, Ljavax/xml/crypto/dsig/XMLSignatureException;

    invoke-direct {v3, v0}, Ljavax/xml/crypto/dsig/XMLSignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setSignatureConfig(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V
    .locals 0
    .param p1, "signatureConfig"    # Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 310
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 311
    return-void
.end method

.method public signDigest([B)[B
    .locals 7
    .param p1, "digest"    # [B

    .line 352
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getKey()Ljava/security/PrivateKey;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rsa:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    sget-object v3, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "PKCS1Padding"

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 356
    .local v0, "cipher":Ljavax/crypto/Cipher;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 357
    .local v1, "digestInfoValueBuf":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getHashMagic()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 358
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 359
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 360
    .local v2, "digestInfoValue":[B
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .local v3, "signatureValue":[B
    return-object v3

    .line 362
    .end local v1    # "digestInfoValueBuf":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "digestInfoValue":[B
    .end local v3    # "signatureValue":[B
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v2, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public verifySignature()Z
    .locals 3

    .line 318
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureParts()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;

    .line 320
    .local v1, "sp":Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->validate()Z

    move-result v2

    return v2

    .line 322
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sp":Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected writeDocument(Lorg/w3c/dom/Document;)V
    .locals 12
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/MarshalException;
        }
    .end annotation

    .line 620
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    .line 621
    .local v0, "xo":Lorg/apache/xmlbeans/XmlOptions;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 622
    .local v1, "namespaceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getNamespacePrefixes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 623
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 625
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSuggestedPrefixes(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;

    .line 626
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->setUseDefaultNamespace()Lorg/apache/xmlbeans/XmlOptions;

    .line 628
    sget-object v2, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "output signed Office OpenXML document"

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 634
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getOpcPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v2

    .line 639
    .local v2, "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    :try_start_0
    const-string v5, "/_xmlsignatures/sig1.xml"

    invoke-static {v5}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v4
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 641
    .local v4, "sigPartName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    :try_start_1
    const-string v5, "/_xmlsignatures/origin.sigs"

    invoke-static {v5}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v3
    :try_end_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 644
    .local v3, "sigsPartName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    nop

    .line 646
    invoke-virtual {v2, v4}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    .line 647
    .local v5, "sigPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    if-nez v5, :cond_1

    .line 648
    const-string v6, "application/vnd.openxmlformats-package.digital-signature-xmlsignature+xml"

    invoke-virtual {v2, v4, v6}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    .line 652
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 653
    .local v6, "os":Ljava/io/OutputStream;
    sget-object v7, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v7}, Lorg/w3/x2000/x09/xmldsig/SignatureDocument$Factory;->parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/XmlOptions;)Lorg/w3/x2000/x09/xmldsig/SignatureDocument;

    move-result-object v7

    .line 654
    .local v7, "sigDoc":Lorg/w3/x2000/x09/xmldsig/SignatureDocument;
    invoke-interface {v7, v6, v0}, Lorg/w3/x2000/x09/xmldsig/SignatureDocument;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 655
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 658
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v7    # "sigDoc":Lorg/w3/x2000/x09/xmldsig/SignatureDocument;
    nop

    .line 660
    invoke-virtual {v2, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v6

    .line 661
    .local v6, "sigsPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    if-nez v6, :cond_2

    .line 663
    const-string v7, "application/vnd.openxmlformats-package.digital-signature-origin"

    invoke-virtual {v2, v3, v7}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v6

    .line 666
    :cond_2
    const-string v7, "http://schemas.openxmlformats.org/package/2006/relationships/digital-signature/origin"

    invoke-virtual {v2, v7}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v8

    .line 667
    .local v8, "relCol":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    invoke-virtual {v8}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 668
    .local v10, "pr":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-virtual {v10}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removeRelationship(Ljava/lang/String;)V

    .end local v10    # "pr":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    goto :goto_1

    .line 670
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_3
    sget-object v9, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {v2, v3, v9, v7}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 672
    sget-object v7, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    const-string v9, "http://schemas.openxmlformats.org/package/2006/relationships/digital-signature/signature"

    invoke-virtual {v6, v4, v7, v9}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 673
    return-void

    .line 656
    .end local v6    # "sigsPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v8    # "relCol":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    :catch_0
    move-exception v6

    .line 657
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljavax/xml/crypto/MarshalException;

    const-string v8, "Unable to write signature document"

    invoke-direct {v7, v8, v6}, Ljavax/xml/crypto/MarshalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 642
    .end local v3    # "sigsPartName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .end local v5    # "sigPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .restart local v3    # "sigsPartName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    goto :goto_2

    .end local v3    # "sigsPartName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .end local v4    # "sigPartName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    :catch_2
    move-exception v5

    .line 643
    .restart local v3    # "sigsPartName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .restart local v4    # "sigPartName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .local v5, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    :goto_2
    new-instance v6, Ljavax/xml/crypto/MarshalException;

    invoke-direct {v6, v5}, Ljavax/xml/crypto/MarshalException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method
