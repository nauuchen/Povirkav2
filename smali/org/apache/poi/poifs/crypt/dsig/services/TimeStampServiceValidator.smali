.class public interface abstract Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;
.super Ljava/lang/Object;
.source "TimeStampServiceValidator.java"


# virtual methods
.method public abstract validate(Ljava/util/List;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
