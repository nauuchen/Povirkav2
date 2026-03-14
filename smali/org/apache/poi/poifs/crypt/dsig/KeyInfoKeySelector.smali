.class public Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;
.super Ljavax/xml/crypto/KeySelector;
.source "KeyInfoKeySelector.java"

# interfaces
.implements Ljavax/xml/crypto/KeySelectorResult;


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private certChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljavax/xml/crypto/KeySelector;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCertChain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    return-object v0
.end method

.method public getKey()Ljava/security/Key;
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSigner()Ljava/security/cert/X509Certificate;
    .locals 2

    .line 97
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    :goto_0
    return-object v0
.end method

.method public select(Ljavax/xml/crypto/dsig/keyinfo/KeyInfo;Ljavax/xml/crypto/KeySelector$Purpose;Ljavax/xml/crypto/AlgorithmMethod;Ljavax/xml/crypto/XMLCryptoContext;)Ljavax/xml/crypto/KeySelectorResult;
    .locals 14
    .param p1, "keyInfo"    # Ljavax/xml/crypto/dsig/keyinfo/KeyInfo;
    .param p2, "purpose"    # Ljavax/xml/crypto/KeySelector$Purpose;
    .param p3, "method"    # Ljavax/xml/crypto/AlgorithmMethod;
    .param p4, "context"    # Ljavax/xml/crypto/XMLCryptoContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/KeySelectorException;
        }
    .end annotation

    .line 57
    move-object v0, p0

    sget-object v1, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "select key"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 58
    if-eqz p1, :cond_5

    .line 61
    invoke-interface {p1}, Ljavax/xml/crypto/dsig/keyinfo/KeyInfo;->getContent()Ljava/util/List;

    move-result-object v1

    .line 62
    .local v1, "keyInfoContent":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/XMLStructure;>;"
    iget-object v3, v0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 63
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/xml/crypto/XMLStructure;

    .line 64
    .local v4, "keyInfoStructure":Ljavax/xml/crypto/XMLStructure;
    instance-of v6, v4, Ljavax/xml/crypto/dsig/keyinfo/X509Data;

    if-nez v6, :cond_0

    .line 65
    goto :goto_0

    .line 67
    :cond_0
    move-object v6, v4

    check-cast v6, Ljavax/xml/crypto/dsig/keyinfo/X509Data;

    .line 68
    .local v6, "x509Data":Ljavax/xml/crypto/dsig/keyinfo/X509Data;
    invoke-interface {v6}, Ljavax/xml/crypto/dsig/keyinfo/X509Data;->getContent()Ljava/util/List;

    move-result-object v7

    .line 69
    .local v7, "x509DataList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 70
    .local v9, "x509DataObject":Ljava/lang/Object;
    instance-of v10, v9, Ljava/security/cert/X509Certificate;

    if-nez v10, :cond_1

    .line 71
    goto :goto_1

    .line 73
    :cond_1
    move-object v10, v9

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 74
    .local v10, "certificate":Ljava/security/cert/X509Certificate;
    sget-object v11, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const-string v13, "certificate"

    aput-object v13, v12, v5

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v13

    aput-object v13, v12, v2

    invoke-virtual {v11, v2, v12}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 75
    iget-object v11, v0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v9    # "x509DataObject":Ljava/lang/Object;
    .end local v10    # "certificate":Ljava/security/cert/X509Certificate;
    goto :goto_1

    .line 77
    .end local v4    # "keyInfoStructure":Ljavax/xml/crypto/XMLStructure;
    .end local v6    # "x509Data":Ljavax/xml/crypto/dsig/keyinfo/X509Data;
    .end local v7    # "x509DataList":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_2
    goto :goto_0

    .line 78
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v2, v0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 81
    return-object v0

    .line 79
    :cond_4
    new-instance v2, Ljavax/xml/crypto/KeySelectorException;

    const-string v3, "No key found!"

    invoke-direct {v2, v3}, Ljavax/xml/crypto/KeySelectorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    .end local v1    # "keyInfoContent":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/XMLStructure;>;"
    :cond_5
    new-instance v1, Ljavax/xml/crypto/KeySelectorException;

    const-string v2, "no ds:KeyInfo present"

    invoke-direct {v1, v2}, Ljavax/xml/crypto/KeySelectorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
