.class public Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;
.super Ljava/lang/Object;
.source "DigestInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final description:Ljava/lang/String;

.field public final digestValue:[B

.field public final hashAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;


# direct methods
.method public constructor <init>([BLorg/apache/poi/poifs/crypt/HashAlgorithm;Ljava/lang/String;)V
    .locals 1
    .param p1, "digestValue"    # [B
    .param p2, "hashAlgo"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p3, "description"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;->digestValue:[B

    .line 47
    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;->hashAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 48
    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;->description:Ljava/lang/String;

    .line 49
    return-void
.end method
