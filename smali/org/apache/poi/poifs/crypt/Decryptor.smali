.class public abstract Lorg/apache/poi/poifs/crypt/Decryptor;
.super Ljava/lang/Object;
.source "Decryptor.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT_PASSWORD:Ljava/lang/String; = "VelvetSweatshop"

.field public static final DEFAULT_POIFS_ENTRY:Ljava/lang/String; = "EncryptedPackage"


# instance fields
.field protected encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

.field private integrityHmacKey:[B

.field private integrityHmacValue:[B

.field private secretKey:Ljavax/crypto/SecretKey;

.field private verifier:[B


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static getInstance(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)Lorg/apache/poi/poifs/crypt/Decryptor;
    .locals 3
    .param p0, "info"    # Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    .line 118
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v0

    .line 119
    .local v0, "d":Lorg/apache/poi/poifs/crypt/Decryptor;
    if-eqz v0, :cond_0

    .line 122
    return-object v0

    .line 120
    :cond_0
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v2, "Unsupported version"

    invoke-direct {v1, v2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->clone()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/Decryptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 188
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/Decryptor;

    .line 189
    .local v0, "other":Lorg/apache/poi/poifs/crypt/Decryptor;
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacKey:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacKey:[B

    .line 190
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacValue:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacValue:[B

    .line 191
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->verifier:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/Decryptor;->verifier:[B

    .line 192
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/Decryptor;->secretKey:Ljavax/crypto/SecretKey;

    .line 194
    return-object v0
.end method

.method protected getBlockSizeInBytes()I
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getDataStream(Ljava/io/InputStream;II)Ljava/io/InputStream;
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "size"    # I
    .param p3, "initialPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 70
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string/jumbo v1, "this decryptor doesn\'t support reading from a stream"

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Ljava/io/InputStream;
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;)Ljava/io/InputStream;
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 130
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Ljava/io/InputStream;
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    return-object v0
.end method

.method public getIntegrityHmacKey()[B
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacKey:[B

    return-object v0
.end method

.method public getIntegrityHmacValue()[B
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacValue:[B

    return-object v0
.end method

.method protected getKeySizeInBytes()I
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public abstract getLength()J
.end method

.method public getSecretKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->secretKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getVerifier()[B
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->verifier:[B

    return-object v0
.end method

.method public initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;
    .locals 2
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "block"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 94
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string/jumbo v1, "this decryptor doesn\'t support initCipherForBlock"

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChunkSize(I)V
    .locals 2
    .param p1, "chunkSize"    # I

    .line 81
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string/jumbo v1, "this decryptor doesn\'t support changing the chunk size"

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V
    .locals 0
    .param p1, "encryptionInfo"    # Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    .line 183
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    .line 184
    return-void
.end method

.method protected setIntegrityHmacKey([B)V
    .locals 1
    .param p1, "integrityHmacKey"    # [B

    .line 163
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacKey:[B

    .line 164
    return-void
.end method

.method protected setIntegrityHmacValue([B)V
    .locals 1
    .param p1, "integrityHmacValue"    # [B

    .line 167
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacValue:[B

    .line 168
    return-void
.end method

.method protected setSecretKey(Ljavax/crypto/SecretKey;)V
    .locals 0
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;

    .line 155
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->secretKey:Ljavax/crypto/SecretKey;

    .line 156
    return-void
.end method

.method protected setVerifier([B)V
    .locals 1
    .param p1, "verifier"    # [B

    .line 159
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->verifier:[B

    .line 160
    return-void
.end method

.method public abstract verifyPassword(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
