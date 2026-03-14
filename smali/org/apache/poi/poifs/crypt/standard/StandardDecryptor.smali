.class public Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;
.super Lorg/apache/poi/poifs/crypt/Decryptor;
.source "StandardDecryptor.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _length:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 46
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;-><init>()V

    .line 47
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->_length:J

    .line 50
    return-void
.end method

.method protected static fillAndXor([BB)[B
    .locals 4
    .param p0, "hash"    # [B
    .param p1, "fillByte"    # B

    .line 106
    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 107
    .local v0, "buff":[B
    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([BB)V

    .line 109
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 110
    aget-byte v2, v0, v1

    aget-byte v3, p0, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-static {v1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 114
    .local v1, "sha1":Ljava/security/MessageDigest;
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    return-object v2
.end method

.method protected static generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;I)Ljavax/crypto/SecretKey;
    .locals 10
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "ver"    # Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    .param p2, "keySize"    # I

    .line 84
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    .line 86
    .local v0, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSalt()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSpinCount()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BI)[B

    move-result-object v1

    .line 88
    .local v1, "pwHash":[B
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 89
    .local v2, "blockKey":[B
    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 91
    iget v4, v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    invoke-static {v1, v0, v2, v4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateKey([BLorg/apache/poi/poifs/crypt/HashAlgorithm;[BI)[B

    move-result-object v4

    .line 92
    .local v4, "finalHash":[B
    const/16 v5, 0x36

    invoke-static {v4, v5}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->fillAndXor([BB)[B

    move-result-object v5

    .line 93
    .local v5, "x1":[B
    const/16 v6, 0x5c

    invoke-static {v4, v6}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->fillAndXor([BB)[B

    move-result-object v6

    .line 95
    .local v6, "x2":[B
    array-length v7, v5

    array-length v8, v6

    add-int/2addr v7, v8

    new-array v7, v7, [B

    .line 96
    .local v7, "x3":[B
    array-length v8, v5

    invoke-static {v5, v3, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    array-length v8, v5

    array-length v9, v6

    invoke-static {v6, v3, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    invoke-static {v7, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 101
    .local v3, "key":[B
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v9

    iget-object v9, v9, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v8, v3, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 102
    .local v8, "skey":Ljavax/crypto/SecretKey;
    return-object v8
.end method

.method private getCipher(Ljavax/crypto/SecretKey;)Ljavax/crypto/Cipher;
    .locals 5
    .param p1, "key"    # Ljavax/crypto/SecretKey;

    .line 118
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    .line 119
    .local v0, "em":Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v1

    .line 120
    .local v1, "cm":Lorg/apache/poi/poifs/crypt/ChainingMode;
    sget-object v2, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    if-ne v1, v2, :cond_0

    .line 121
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p1, v2, v1, v3, v4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object v2

    return-object v2

    .line 120
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->clone()Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;

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

    .line 46
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->clone()Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 158
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->clone()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;

    return-object v0
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;
    .locals 10
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    const-string v0, "EncryptedPackage"

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v0

    .line 129
    .local v0, "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->_length:J

    .line 131
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    if-nez v1, :cond_0

    .line 132
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->verifyPassword(Ljava/lang/String;)Z

    .line 137
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v1

    iget v1, v1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->blockSize:I

    .line 138
    .local v1, "blockSize":I
    iget-wide v2, p0, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->_length:J

    int-to-long v4, v1

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    int-to-long v4, v1

    mul-long v2, v2, v4

    .line 139
    .local v2, "cipherLen":J
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->getCipher(Ljavax/crypto/SecretKey;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 141
    .local v4, "cipher":Ljavax/crypto/Cipher;
    new-instance v5, Lorg/apache/poi/util/BoundedInputStream;

    invoke-direct {v5, v0, v2, v3}, Lorg/apache/poi/util/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 142
    .local v5, "boundedDis":Ljava/io/InputStream;
    new-instance v6, Lorg/apache/poi/util/BoundedInputStream;

    new-instance v7, Ljavax/crypto/CipherInputStream;

    invoke-direct {v7, v5, v4}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    iget-wide v8, p0, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->_length:J

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/poi/util/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object v6
.end method

.method public getLength()J
    .locals 5

    .line 150
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->_length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 153
    return-wide v0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Decryptor.getDataStream() was not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .locals 11
    .param p1, "password"    # Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    .line 55
    .local v0, "ver":Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->getKeySizeInBytes()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;I)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 56
    .local v1, "skey":Ljavax/crypto/SecretKey;
    invoke-direct {p0, v1}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->getCipher(Ljavax/crypto/SecretKey;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 59
    .local v2, "cipher":Ljavax/crypto/Cipher;
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object v3

    .line 60
    .local v3, "encryptedVerifier":[B
    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 61
    .local v4, "verifier":[B
    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->setVerifier([B)V

    .line 62
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 63
    .local v5, "sha1":Ljava/security/MessageDigest;
    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 64
    .local v6, "calcVerifierHash":[B
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifierHash()[B

    move-result-object v7

    .line 65
    .local v7, "encryptedVerifierHash":[B
    invoke-virtual {v2, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    .line 70
    .local v8, "decryptedVerifierHash":[B
    array-length v9, v6

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    .line 72
    .local v9, "verifierHash":[B
    invoke-static {v6, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 73
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const/4 v10, 0x1

    return v10

    .line 76
    :cond_0
    const/4 v10, 0x0

    return v10

    .line 78
    .end local v3    # "encryptedVerifier":[B
    .end local v4    # "verifier":[B
    .end local v5    # "sha1":Ljava/security/MessageDigest;
    .end local v6    # "calcVerifierHash":[B
    .end local v7    # "encryptedVerifierHash":[B
    .end local v8    # "decryptedVerifierHash":[B
    .end local v9    # "verifierHash":[B
    :catch_0
    move-exception v3

    .line 79
    .local v3, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v4, v3}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
