.class public Lorg/apache/poi/poifs/crypt/dsig/facets/EnvelopedSignatureFacet;
.super Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;
.source "EnvelopedSignatureFacet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;-><init>()V

    return-void
.end method


# virtual methods
.method public preSign(Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V
    .locals 9
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

    .line 51
    .local p2, "references":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/Reference;>;"
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/XMLObject;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v0, "transforms":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/Transform;>;"
    const-string v1, "http://www.w3.org/2000/09/xmldsig#enveloped-signature"

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/dsig/facets/EnvelopedSignatureFacet;->newTransform(Ljava/lang/String;)Ljavax/xml/crypto/dsig/Transform;

    move-result-object v7

    .line 53
    .local v7, "envelopedTransform":Ljavax/xml/crypto/dsig/Transform;
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v1, "http://www.w3.org/2001/10/xml-exc-c14n#"

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/dsig/facets/EnvelopedSignatureFacet;->newTransform(Ljava/lang/String;)Ljavax/xml/crypto/dsig/Transform;

    move-result-object v8

    .line 55
    .local v8, "exclusiveTransform":Ljavax/xml/crypto/dsig/Transform;
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v2, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/poifs/crypt/dsig/facets/EnvelopedSignatureFacet;->newReference(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[B)Ljavax/xml/crypto/dsig/Reference;

    move-result-object v1

    .line 58
    .local v1, "reference":Ljavax/xml/crypto/dsig/Reference;
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method
