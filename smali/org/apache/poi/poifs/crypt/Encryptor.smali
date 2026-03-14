.class public abstract Lorg/apache/poi/poifs/crypt/Encryptor;
.super Ljava/lang/Object;
.source "Encryptor.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field protected static final DEFAULT_POIFS_ENTRY:Ljava/lang/String; = "EncryptedPackage"


# instance fields
.field private encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

.field private secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)Lorg/apache/poi/poifs/crypt/Encryptor;
    .locals 1
    .param p0, "info"    # Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    .line 52
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v0

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

    .line 32
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->clone()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/Encryptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 99
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/Encryptor;

    .line 100
    .local v0, "other":Lorg/apache/poi/poifs/crypt/Encryptor;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/Encryptor;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/Encryptor;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/Encryptor;->secretKey:Ljavax/crypto/SecretKey;

    .line 102
    return-object v0
.end method

.method public abstract confirmPassword(Ljava/lang/String;)V
.end method

.method public abstract confirmPassword(Ljava/lang/String;[B[B[B[B[B)V
.end method

.method public abstract getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
    .locals 2
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "initialOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 67
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string/jumbo v1, "this decryptor doesn\'t support writing directly to a stream"

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Encryptor;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    return-object v0
.end method

.method public getSecretKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Encryptor;->secretKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public setChunkSize(I)V
    .locals 2
    .param p1, "chunkSize"    # I

    .line 94
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string/jumbo v1, "this decryptor doesn\'t support changing the chunk size"

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V
    .locals 0
    .param p1, "encryptionInfo"    # Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    .line 83
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Encryptor;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    .line 84
    return-void
.end method

.method public setSecretKey(Ljavax/crypto/SecretKey;)V
    .locals 0
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;

    .line 75
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Encryptor;->secretKey:Ljavax/crypto/SecretKey;

    .line 76
    return-void
.end method
