.class public abstract Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;
.super Ljava/lang/Object;
.source "SignatureFacet.java"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$SignatureConfigurable;


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field public static final MS_DIGSIG_NS:Ljava/lang/String; = "http://schemas.microsoft.com/office/2006/digsig"

.field public static final OO_DIGSIG_NS:Ljava/lang/String; = "http://schemas.openxmlformats.org/package/2006/digital-signature"

.field public static final XADES_132_NS:Ljava/lang/String; = "http://uri.etsi.org/01903/v1.3.2#"

.field public static final XADES_141_NS:Ljava/lang/String; = "http://uri.etsi.org/01903/v1.4.1#"

.field public static final XML_DIGSIG_NS:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#"

.field public static final XML_NS:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"


# instance fields
.field protected signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/poi/util/POILogger;
    .locals 1

    .line 61
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    return-object v0
.end method

.method public static brokenJvmWorkaround(Ljavax/xml/crypto/dsig/Reference;)V
    .locals 4
    .param p0, "reference"    # Ljavax/xml/crypto/dsig/Reference;

    .line 163
    invoke-interface {p0}, Ljavax/xml/crypto/dsig/Reference;->getDigestMethod()Ljavax/xml/crypto/dsig/DigestMethod;

    move-result-object v0

    .line 164
    .local v0, "digestMethod":Ljavax/xml/crypto/dsig/DigestMethod;
    invoke-interface {v0}, Ljavax/xml/crypto/dsig/DigestMethod;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "digestMethodUri":Ljava/lang/String;
    const-string v2, "BC"

    invoke-static {v2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    .line 167
    .local v2, "bcProv":Ljava/security/Provider;
    if-eqz v2, :cond_0

    const-string v3, "http://www.w3.org/2000/09/xmldsig#sha1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 170
    new-instance v3, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet$1;

    invoke-direct {v3, v0, v2, p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet$1;-><init>(Ljavax/xml/crypto/dsig/DigestMethod;Ljava/security/Provider;Ljavax/xml/crypto/dsig/Reference;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 189
    :cond_0
    return-void
.end method

.method public static newReference(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[BLorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)Ljavax/xml/crypto/dsig/Reference;
    .locals 13
    .param p0, "uri"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "digestValue"    # [B
    .param p5, "signatureConfig"    # Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Transform;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;",
            ")",
            "Ljavax/xml/crypto/dsig/Reference;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/dsig/XMLSignatureException;
        }
    .end annotation

    .line 140
    .local p1, "transforms":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/Transform;>;"
    invoke-virtual/range {p5 .. p5}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestMethodUri()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "digestMethodUri":Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v12

    .line 144
    .local v12, "sigFac":Ljavax/xml/crypto/dsig/XMLSignatureFactory;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v12, v1, v2}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newDigestMethod(Ljava/lang/String;Ljavax/xml/crypto/dsig/spec/DigestMethodParameterSpec;)Ljavax/xml/crypto/dsig/DigestMethod;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .local v4, "digestMethod":Ljavax/xml/crypto/dsig/DigestMethod;
    nop

    .line 150
    if-nez p4, :cond_0

    .line 151
    move-object v2, v12

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newReference(Ljava/lang/String;Ljavax/xml/crypto/dsig/DigestMethod;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/crypto/dsig/Reference;

    move-result-object v0

    .local v0, "reference":Ljavax/xml/crypto/dsig/Reference;
    goto :goto_0

    .line 153
    .end local v0    # "reference":Ljavax/xml/crypto/dsig/Reference;
    :cond_0
    move-object v5, v12

    move-object v6, p0

    move-object v7, v4

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v5 .. v11}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newReference(Ljava/lang/String;Ljavax/xml/crypto/dsig/DigestMethod;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[B)Ljavax/xml/crypto/dsig/Reference;

    move-result-object v0

    .line 156
    .restart local v0    # "reference":Ljavax/xml/crypto/dsig/Reference;
    :goto_0
    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->brokenJvmWorkaround(Ljavax/xml/crypto/dsig/Reference;)V

    .line 158
    return-object v0

    .line 145
    .end local v0    # "reference":Ljavax/xml/crypto/dsig/Reference;
    .end local v4    # "digestMethod":Ljavax/xml/crypto/dsig/DigestMethod;
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v2

    .local v0, "digestMethod":Ljavax/xml/crypto/dsig/DigestMethod;
    move-object v2, v3

    .line 146
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljavax/xml/crypto/dsig/XMLSignatureException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown digest method uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/xml/crypto/dsig/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method protected getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v0

    return-object v0
.end method

.method protected newReference(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[B)Ljavax/xml/crypto/dsig/Reference;
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;
    .param p5, "digestValue"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Transform;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B)",
            "Ljavax/xml/crypto/dsig/Reference;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/dsig/XMLSignatureException;
        }
    .end annotation

    .line 127
    .local p2, "transforms":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/Transform;>;"
    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->newReference(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[BLorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)Ljavax/xml/crypto/dsig/Reference;

    move-result-object v0

    return-object v0
.end method

.method protected newTransform(Ljava/lang/String;)Ljavax/xml/crypto/dsig/Transform;
    .locals 1
    .param p1, "canonicalizationMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/dsig/XMLSignatureException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->newTransform(Ljava/lang/String;Ljavax/xml/crypto/dsig/spec/TransformParameterSpec;)Ljavax/xml/crypto/dsig/Transform;

    move-result-object v0

    return-object v0
.end method

.method protected newTransform(Ljava/lang/String;Ljavax/xml/crypto/dsig/spec/TransformParameterSpec;)Ljavax/xml/crypto/dsig/Transform;
    .locals 4
    .param p1, "canonicalizationMethod"    # Ljava/lang/String;
    .param p2, "paramSpec"    # Ljavax/xml/crypto/dsig/spec/TransformParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/dsig/XMLSignatureException;
        }
    .end annotation

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newTransform(Ljava/lang/String;Ljavax/xml/crypto/dsig/spec/TransformParameterSpec;)Ljavax/xml/crypto/dsig/Transform;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljavax/xml/crypto/dsig/XMLSignatureException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown canonicalization method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/xml/crypto/dsig/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public postSign(Lorg/w3c/dom/Document;)V
    .locals 0
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/MarshalException;
        }
    .end annotation

    .line 106
    return-void
.end method

.method public preSign(Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    .line 94
    .local p2, "references":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/Reference;>;"
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/XMLObject;>;"
    return-void
.end method

.method public setSignatureConfig(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V
    .locals 0
    .param p1, "signatureConfig"    # Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 75
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 76
    return-void
.end method
