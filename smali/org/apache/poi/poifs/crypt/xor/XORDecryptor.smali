.class public Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;
.super Lorg/apache/poi/poifs/crypt/Decryptor;
.source "XORDecryptor.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;
    }
.end annotation


# instance fields
.field private chunkSize:I

.field private length:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;-><init>()V

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->length:J

    .line 38
    const/16 v0, 0x200

    iput v0, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->chunkSize:I

    .line 41
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;

    .line 36
    iget v0, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->chunkSize:I

    return v0
.end method

.method protected static initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;
    .locals 1
    .param p0, "cipher"    # Ljavax/crypto/Cipher;
    .param p1, "block"    # I
    .param p2, "encryptionInfo"    # Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .param p3, "skey"    # Ljavax/crypto/SecretKey;
    .param p4, "encryptMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->clone()Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/Decryptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->clone()Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 99
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->clone()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;

    return-object v0
.end method

.method public getDataStream(Ljava/io/InputStream;II)Ljava/io/InputStream;
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "size"    # I
    .param p3, "initialPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 79
    new-instance v0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;

    invoke-direct {v0, p0, p1, p3}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;-><init>(Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public bridge synthetic getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;
    .locals 2
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 73
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLength()J
    .locals 5

    .line 85
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 89
    return-wide v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Decryptor.getDataStream() was not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;
    .locals 1
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "block"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public setChunkSize(I)V
    .locals 0
    .param p1, "chunkSize"    # I

    .line 94
    iput p1, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->chunkSize:I

    .line 95
    return-void
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .locals 8
    .param p1, "password"    # Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;

    .line 46
    .local v0, "ver":Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;->getEncryptedKey()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([B)I

    move-result v1

    .line 47
    .local v1, "keyVer":I
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/util/LittleEndian;->getUShort([B)I

    move-result v2

    .line 48
    .local v2, "verifierVer":I
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorKey1(Ljava/lang/String;)I

    move-result v3

    .line 49
    .local v3, "keyComp":I
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier1(Ljava/lang/String;)I

    move-result v4

    .line 50
    .local v4, "verifierComp":I
    if-ne v1, v3, :cond_0

    if-ne v2, v4, :cond_0

    .line 51
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorArray1(Ljava/lang/String;)[B

    move-result-object v5

    .line 52
    .local v5, "xorArray":[B
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "XOR"

    invoke-direct {v6, v5, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v6}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V

    .line 53
    const/4 v6, 0x1

    return v6

    .line 55
    .end local v5    # "xorArray":[B
    :cond_0
    const/4 v5, 0x0

    return v5
.end method
