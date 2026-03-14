.class public Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;
.super Lorg/apache/poi/poifs/crypt/Encryptor;
.source "CryptoAPIEncryptor.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private chunkSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 52
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;-><init>()V

    .line 54
    const/16 v0, 0x200

    iput v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->chunkSize:I

    .line 57
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    .line 52
    iget v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->chunkSize:I

    return v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->clone()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

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

    .line 52
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->clone()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 223
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->clone()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    return-object v0
.end method

.method public confirmPassword(Ljava/lang/String;)V
    .locals 10
    .param p1, "password"    # Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 62
    .local v0, "r":Ljava/util/Random;
    const/16 v1, 0x10

    new-array v9, v1, [B

    .line 63
    .local v9, "salt":[B
    new-array v1, v1, [B

    .line 64
    .local v1, "verifier":[B
    invoke-virtual {v0, v9}, Ljava/util/Random;->nextBytes([B)V

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 66
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, v1

    move-object v7, v9

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->confirmPassword(Ljava/lang/String;[B[B[B[B[B)V

    .line 67
    return-void
.end method

.method public confirmPassword(Ljava/lang/String;[B[B[B[B[B)V
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "keySpec"    # [B
    .param p3, "keySalt"    # [B
    .param p4, "verifier"    # [B
    .param p5, "verifierSalt"    # [B
    .param p6, "integritySalt"    # [B

    .line 73
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 74
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    .line 75
    .local v0, "ver":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;
    invoke-virtual {v0, p5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->setSalt([B)V

    .line 76
    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 77
    .local v1, "skey":Ljavax/crypto/SecretKey;
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V

    .line 79
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 80
    .local v2, "cipher":Ljavax/crypto/Cipher;
    array-length v4, p4

    new-array v4, v4, [B

    .line 81
    .local v4, "encryptedVerifier":[B
    array-length v5, p4

    invoke-virtual {v2, p4, v3, v5, v4}, Ljavax/crypto/Cipher;->update([BII[B)I

    .line 82
    invoke-virtual {v0, v4}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->setEncryptedVerifier([B)V

    .line 83
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v3

    .line 84
    .local v3, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    invoke-static {v3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 85
    .local v5, "hashAlg":Ljava/security/MessageDigest;
    invoke-virtual {v5, p4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 86
    .local v6, "calcVerifierHash":[B
    invoke-virtual {v2, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 87
    .local v7, "encryptedVerifierHash":[B
    invoke-virtual {v0, v7}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->setEncryptedVerifierHash([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .end local v4    # "encryptedVerifier":[B
    .end local v5    # "hashAlg":Ljava/security/MessageDigest;
    .end local v6    # "calcVerifierHash":[B
    .end local v7    # "encryptedVerifierHash":[B
    nop

    .line 91
    return-void

    .line 88
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Lorg/apache/poi/EncryptedDocumentException;

    const-string v4, "Password confirmation failed"

    invoke-direct {v3, v4, v2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 73
    .end local v0    # "ver":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;
    .end local v1    # "skey":Ljavax/crypto/SecretKey;
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 5
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->addDefaultDataSpace(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    .line 205
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    .line 206
    .local v0, "info":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    .line 207
    .local v1, "header":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    .line 208
    .local v2, "verifier":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;
    new-instance v3, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$1;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;)V

    .line 217
    .local v3, "er":Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;
    const-string v4, "EncryptionInfo"

    invoke-static {p1, v4, v3}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->createEncryptionEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 218
    return-void
.end method

.method public bridge synthetic getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    move-result-object v0

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

    .line 52
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
    .locals 2
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "initialOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 115
    new-instance v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method protected getKeySizeInBytes()I
    .locals 1

    .line 195
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;
    .locals 3
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "block"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, p2, v0, v1, v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public setChunkSize(I)V
    .locals 0
    .param p1, "chunkSize"    # I

    .line 200
    iput p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->chunkSize:I

    .line 201
    return-void
.end method

.method public setSummaryEntries(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 16
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p2, "encryptedStream"    # Ljava/lang/String;
    .param p3, "entries"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 127
    move-object/from16 v0, p1

    new-instance v1, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;)V

    .line 128
    .local v1, "bos":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;
    const/16 v3, 0x8

    new-array v4, v3, [B

    .line 130
    .local v4, "buf":[B
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    .line 131
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v6, "descList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;>;"
    const/4 v7, 0x0

    .line 134
    .local v7, "block":I
    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 135
    .local v9, "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    invoke-interface {v9}, Lorg/apache/poi/poifs/filesystem/Entry;->isDirectoryEntry()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 136
    goto :goto_0

    .line 138
    :cond_0
    new-instance v11, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;

    invoke-direct {v11}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;-><init>()V

    .line 139
    .local v11, "descEntry":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    iput v7, v11, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->block:I

    .line 140
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->size()I

    move-result v12

    iput v12, v11, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    .line 141
    invoke-interface {v9}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    .line 142
    sget-object v12, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flagStream:Lorg/apache/poi/util/BitField;

    invoke-virtual {v12, v5, v10}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v10

    iput v10, v11, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flags:I

    .line 143
    iput v5, v11, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->reserved2:I

    .line 145
    invoke-virtual {v1, v7}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->setBlock(I)V

    .line 146
    invoke-virtual {v0, v9}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v10

    .line 147
    .local v10, "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    invoke-static {v10, v1}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 148
    invoke-virtual {v10}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    .line 150
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->size()I

    move-result v12

    iget v13, v11, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    sub-int/2addr v12, v13

    iput v12, v11, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamSize:I

    .line 151
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    nop

    .end local v9    # "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    .end local v10    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .end local v11    # "descEntry":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    add-int/lit8 v7, v7, 0x1

    .line 154
    goto :goto_0

    .line 156
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->size()I

    move-result v8

    .line 158
    .local v8, "streamDescriptorArrayOffset":I
    invoke-virtual {v1, v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->setBlock(I)V

    .line 159
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    int-to-long v11, v9

    invoke-static {v4, v5, v11, v12}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 160
    const/4 v9, 0x4

    invoke-virtual {v1, v4, v5, v9}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    .line 162
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;

    .line 163
    .local v12, "sde":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    iget v13, v12, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    int-to-long v13, v13

    invoke-static {v4, v5, v13, v14}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 164
    invoke-virtual {v1, v4, v5, v9}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    .line 165
    iget v13, v12, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamSize:I

    int-to-long v13, v13

    invoke-static {v4, v5, v13, v14}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 166
    invoke-virtual {v1, v4, v5, v9}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    .line 167
    iget v13, v12, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->block:I

    invoke-static {v4, v5, v13}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 168
    const/4 v13, 0x2

    invoke-virtual {v1, v4, v5, v13}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    .line 169
    iget-object v14, v12, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    int-to-short v14, v14

    invoke-static {v4, v5, v14}, Lorg/apache/poi/util/LittleEndian;->putUByte([BIS)V

    .line 170
    invoke-virtual {v1, v4, v5, v10}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    .line 171
    iget v14, v12, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flags:I

    int-to-short v14, v14

    invoke-static {v4, v5, v14}, Lorg/apache/poi/util/LittleEndian;->putUByte([BIS)V

    .line 172
    invoke-virtual {v1, v4, v5, v10}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    .line 173
    iget v14, v12, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->reserved2:I

    int-to-long v14, v14

    invoke-static {v4, v5, v14, v15}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 174
    invoke-virtual {v1, v4, v5, v9}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    .line 175
    iget-object v14, v12, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    invoke-static {v14}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object v14

    .line 176
    .local v14, "nameBytes":[B
    array-length v15, v14

    invoke-virtual {v1, v14, v5, v15}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    .line 177
    invoke-static {v4, v5, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 178
    invoke-virtual {v1, v4, v5, v13}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    .line 179
    .end local v12    # "sde":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    .end local v14    # "nameBytes":[B
    goto :goto_1

    .line 181
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->size()I

    move-result v10

    .line 182
    .local v10, "savedSize":I
    sub-int v11, v10, v8

    .line 183
    .local v11, "streamDescriptorArraySize":I
    int-to-long v12, v8

    invoke-static {v4, v5, v12, v13}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 184
    int-to-long v12, v11

    invoke-static {v4, v9, v12, v13}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 186
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->reset()V

    .line 187
    invoke-virtual {v1, v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->setBlock(I)V

    .line 188
    invoke-virtual {v1, v4, v5, v3}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    .line 189
    invoke-virtual {v1, v10}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->setSize(I)V

    .line 191
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->getBuf()[B

    move-result-object v9

    invoke-direct {v3, v9, v5, v10}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object/from16 v5, p2

    invoke-virtual {v0, v5, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 192
    return-void
.end method
