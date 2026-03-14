.class Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;
.super Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
.source "AgileEncryptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AgileCipherOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 0
    .param p2, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 429
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    .line 430
    const/16 p1, 0x1000

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;I)V

    .line 431
    return-void
.end method


# virtual methods
.method protected calculateChecksum(Ljava/io/File;I)V
    .locals 1
    .param p1, "fileOut"    # Ljava/io/File;
    .param p2, "oleStreamSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->updateIntegrityHMAC(Ljava/io/File;I)V

    .line 444
    return-void
.end method

.method protected createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;)V
    .locals 1
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p2, "tmpFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;)V

    .line 450
    return-void
.end method

.method protected initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;
    .locals 7
    .param p1, "existing"    # Ljavax/crypto/Cipher;
    .param p2, "block"    # I
    .param p3, "lastChunk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v4

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;IZLorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method
