.class public Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;
.super Lorg/apache/poi/poifs/crypt/Encryptor;
.source "XOREncryptor.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;-><init>()V

    .line 37
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

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;->clone()Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/Encryptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;->clone()Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 87
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->clone()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;

    return-object v0
.end method

.method public confirmPassword(Ljava/lang/String;)V
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorKey1(Ljava/lang/String;)I

    move-result v0

    .line 42
    .local v0, "keyComp":I
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier1(Ljava/lang/String;)I

    move-result v1

    .line 43
    .local v1, "verifierComp":I
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorArray1(Ljava/lang/String;)[B

    move-result-object v2

    .line 45
    .local v2, "xorArray":[B
    const/4 v3, 0x2

    new-array v3, v3, [B

    .line 46
    .local v3, "shortBuf":[B
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;

    .line 47
    .local v4, "ver":Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;
    const/4 v5, 0x0

    invoke-static {v3, v5, v0}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 48
    invoke-virtual {v4, v3}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;->setEncryptedKey([B)V

    .line 49
    invoke-static {v3, v5, v1}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 50
    invoke-virtual {v4, v3}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;->setEncryptedVerifier([B)V

    .line 51
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "XOR"

    invoke-direct {v5, v2, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v5}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V

    .line 52
    return-void
.end method

.method public confirmPassword(Ljava/lang/String;[B[B[B[B[B)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "keySpec"    # [B
    .param p3, "keySalt"    # [B
    .param p4, "verifier"    # [B
    .param p5, "verifierSalt"    # [B
    .param p6, "integritySalt"    # [B

    .line 58
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;->confirmPassword(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method protected createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 0
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    return-void
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 64
    new-instance v0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-object v0
.end method

.method public bridge synthetic getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
    .locals 1
    .param p1, "x0"    # Ljava/io/OutputStream;
    .param p2, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;->getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "initialOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 70
    new-instance v0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method protected getKeySizeInBytes()I
    .locals 1

    .line 74
    const/4 v0, -0x1

    return v0
.end method

.method public setChunkSize(I)V
    .locals 0
    .param p1, "chunkSize"    # I

    .line 80
    return-void
.end method
