.class public Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
.super Ljava/lang/Object;
.source "RevocationData.java"


# instance fields
.field private final crls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final ocsps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->crls:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->ocsps:Ljava/util/List;

    .line 50
    return-void
.end method


# virtual methods
.method public addCRL(Ljava/security/cert/X509CRL;)V
    .locals 5
    .param p1, "crl"    # Ljava/security/cert/X509CRL;

    .line 69
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .local v0, "encodedCrl":[B
    nop

    .line 74
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->addCRL([B)V

    .line 75
    return-void

    .line 70
    .end local v0    # "encodedCrl":[B
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 71
    .local v0, "e":Ljava/security/cert/CRLException;
    .local v1, "encodedCrl":[B
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CRL coding error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/CRLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public addCRL([B)V
    .locals 1
    .param p1, "encodedCrl"    # [B

    .line 58
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->crls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public addOCSP([B)V
    .locals 1
    .param p1, "encodedOcsp"    # [B

    .line 83
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->ocsps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public getCRLs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->crls:Ljava/util/List;

    return-object v0
.end method

.method public getOCSPs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->ocsps:Ljava/util/List;

    return-object v0
.end method

.method public hasCRLs()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->crls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasOCSPs()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->ocsps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasRevocationDataEntries()Z
    .locals 1

    .line 130
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->hasOCSPs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->hasCRLs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
