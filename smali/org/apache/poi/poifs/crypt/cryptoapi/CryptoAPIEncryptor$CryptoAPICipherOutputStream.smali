.class public Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;
.super Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
.source "CryptoAPIEncryptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CryptoAPICipherOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    .line 249
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->access$000(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 250
    return-void
.end method


# virtual methods
.method protected calculateChecksum(Ljava/io/File;I)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "i"    # I

    .line 239
    return-void
.end method

.method protected createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;)V
    .locals 2
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p2, "tmpFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 244
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "createEncryptionInfoEntry not supported"

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;->writeChunk(Z)V

    .line 255
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->flush()V

    .line 256
    return-void
.end method

.method protected initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;
    .locals 3
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "block"    # I
    .param p3, "lastChunk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;->flush()V

    .line 232
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    .line 233
    .local v0, "ei":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 234
    .local v1, "sk":Ljavax/crypto/SecretKey;
    const/4 v2, 0x1

    invoke-static {p1, p2, v0, v1, v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object v2

    return-object v2
.end method
