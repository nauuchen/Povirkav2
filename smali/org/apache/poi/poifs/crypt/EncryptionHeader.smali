.class public abstract Lorg/apache/poi/poifs/crypt/EncryptionHeader;
.super Ljava/lang/Object;
.source "EncryptionHeader.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ALGORITHM_AES_128:I

.field public static final ALGORITHM_AES_192:I

.field public static final ALGORITHM_AES_256:I

.field public static final ALGORITHM_RC4:I

.field public static final HASH_NONE:I

.field public static final HASH_SHA1:I

.field public static final HASH_SHA256:I

.field public static final HASH_SHA384:I

.field public static final HASH_SHA512:I

.field public static final MODE_CBC:I

.field public static final MODE_CFB:I

.field public static final MODE_ECB:I

.field public static final PROVIDER_AES:I

.field public static final PROVIDER_RC4:I


# instance fields
.field private blockSize:I

.field private chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

.field private cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field private cspName:Ljava/lang/String;

.field private flags:I

.field private hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field private keyBits:I

.field private keySalt:[B

.field private providerType:Lorg/apache/poi/poifs/crypt/CipherProvider;

.field private sizeExtra:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->ALGORITHM_RC4:I

    .line 28
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->ALGORITHM_AES_128:I

    .line 29
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes192:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->ALGORITHM_AES_192:I

    .line 30
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes256:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->ALGORITHM_AES_256:I

    .line 32
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->none:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->HASH_NONE:I

    .line 33
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->HASH_SHA1:I

    .line 34
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha256:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->HASH_SHA256:I

    .line 35
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha384:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->HASH_SHA384:I

    .line 36
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha512:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->HASH_SHA512:I

    .line 38
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherProvider;->rc4:Lorg/apache/poi/poifs/crypt/CipherProvider;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/CipherProvider;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->PROVIDER_RC4:I

    .line 39
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherProvider;->aes:Lorg/apache/poi/poifs/crypt/CipherProvider;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/CipherProvider;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->PROVIDER_AES:I

    .line 41
    sget-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->MODE_ECB:I

    .line 42
    sget-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->MODE_CBC:I

    .line 43
    sget-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->cfb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->MODE_CFB:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->clone()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 164
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    .line 165
    .local v0, "other":Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->keySalt:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_0
    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->keySalt:[B

    .line 166
    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 131
    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->blockSize:I

    return v0
.end method

.method public getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

    return-object v0
.end method

.method public getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-object v0
.end method

.method public getCipherProvider()Lorg/apache/poi/poifs/crypt/CipherProvider;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->providerType:Lorg/apache/poi/poifs/crypt/CipherProvider;

    return-object v0
.end method

.method public getCspName()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->cspName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 67
    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->flags:I

    return v0
.end method

.method public getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object v0
.end method

.method public getHashAlgorithmEx()Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object v0
.end method

.method public getKeySalt()[B
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->keySalt:[B

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .line 110
    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->keyBits:I

    return v0
.end method

.method public getSizeExtra()I
    .locals 1

    .line 75
    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->sizeExtra:I

    return v0
.end method

.method protected setBlockSize(I)V
    .locals 0
    .param p1, "blockSize"    # I

    .line 135
    iput p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->blockSize:I

    .line 136
    return-void
.end method

.method protected setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 0
    .param p1, "chainingMode"    # Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 63
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 64
    return-void
.end method

.method protected setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V
    .locals 2
    .param p1, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 87
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 88
    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 89
    iget v0, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->defaultKeySize:I

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setKeySize(I)V

    .line 91
    :cond_0
    return-void
.end method

.method protected setCipherProvider(Lorg/apache/poi/poifs/crypt/CipherProvider;)V
    .locals 0
    .param p1, "providerType"    # Lorg/apache/poi/poifs/crypt/CipherProvider;

    .line 151
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->providerType:Lorg/apache/poi/poifs/crypt/CipherProvider;

    .line 152
    return-void
.end method

.method protected setCspName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cspName"    # Ljava/lang/String;

    .line 159
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->cspName:Ljava/lang/String;

    .line 160
    return-void
.end method

.method protected setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 71
    iput p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->flags:I

    .line 72
    return-void
.end method

.method protected setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 0
    .param p1, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 106
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 107
    return-void
.end method

.method protected setKeySalt([B)V
    .locals 1
    .param p1, "salt"    # [B

    .line 143
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->keySalt:[B

    .line 144
    return-void
.end method

.method protected setKeySize(I)V
    .locals 4
    .param p1, "keyBits"    # I

    .line 121
    iput p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->keyBits:I

    .line 122
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    .local v0, "arr$":[I
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 123
    .local v3, "allowedBits":I
    if-ne v3, p1, :cond_0

    .line 124
    return-void

    .line 122
    .end local v3    # "allowedBits":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "arr$":[I
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeySize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not allowed for cipher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setSizeExtra(I)V
    .locals 0
    .param p1, "sizeExtra"    # I

    .line 79
    iput p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->sizeExtra:I

    .line 80
    return-void
.end method
