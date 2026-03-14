.class public Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;
.super Lorg/apache/poi/poifs/crypt/Decryptor;
.source "AgileDecryptor.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor$AgileCipherInputStream;
    }
.end annotation


# static fields
.field static final kCryptoKeyBlock:[B

.field static final kHashedVerifierBlock:[B

.field static final kIntegrityKeyBlock:[B

.field static final kIntegrityValueBlock:[B

.field static final kVerifierInputBlock:[B


# instance fields
.field private _length:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kVerifierInputBlock:[B

    .line 72
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kHashedVerifierBlock:[B

    .line 75
    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kCryptoKeyBlock:[B

    .line 78
    new-array v1, v0, [B

    fill-array-data v1, :array_3

    sput-object v1, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kIntegrityKeyBlock:[B

    .line 81
    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kIntegrityValueBlock:[B

    .line 84
    return-void

    :array_0
    .array-data 1
        -0x2t
        -0x59t
        -0x2et
        0x76t
        0x3bt
        0x4bt
        -0x62t
        0x79t
    .end array-data

    :array_1
    .array-data 1
        -0x29t
        -0x56t
        0xft
        0x6dt
        0x30t
        0x61t
        0x34t
        0x4et
    .end array-data

    :array_2
    .array-data 1
        0x14t
        0x6et
        0xbt
        -0x19t
        -0x55t
        -0x54t
        -0x30t
        -0x2at
    .end array-data

    :array_3
    .array-data 1
        0x5ft
        -0x4et
        -0x53t
        0x1t
        0xct
        -0x47t
        -0x1ft
        -0xat
    .end array-data

    :array_4
    .array-data 1
        -0x60t
        0x67t
        0x7ft
        0x2t
        -0x4et
        0x2ct
        -0x7ct
        0x33t
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;-><init>()V

    .line 60
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->_length:J

    .line 87
    return-void
.end method

.method protected static getNextBlockSize(II)I
    .locals 1
    .param p0, "inputLen"    # I
    .param p1, "blockSize"    # I

    .line 255
    move v0, p1

    .local v0, "fillSize":I
    :goto_0
    if-ge v0, p0, :cond_0

    add-int/2addr v0, p1

    goto :goto_0

    .line 256
    :cond_0
    return v0
.end method

.method static hashInput(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;[B[B[BI)[B
    .locals 16
    .param p0, "ver"    # Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;
    .param p1, "pwHash"    # [B
    .param p2, "blockKey"    # [B
    .param p3, "inputKey"    # [B
    .param p4, "cipherMode"    # I

    .line 260
    move-object/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v2

    .line 261
    .local v2, "cipherAlgo":Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v3

    .line 262
    .local v3, "chainMode":Lorg/apache/poi/poifs/crypt/ChainingMode;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getKeySize()I

    move-result v0

    div-int/lit8 v4, v0, 0x8

    .line 263
    .local v4, "keySize":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getBlockSize()I

    move-result v5

    .line 264
    .local v5, "blockSize":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v6

    .line 266
    .local v6, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-static {v7, v6, v8, v4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateKey([BLorg/apache/poi/poifs/crypt/HashAlgorithm;[BI)[B

    move-result-object v9

    .line 267
    .local v9, "intermedKey":[B
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v10, v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v0, v9, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v10, v0

    .line 268
    .local v10, "skey":Ljavax/crypto/SecretKey;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getSalt()[B

    move-result-object v0

    const/4 v11, 0x0

    invoke-static {v6, v0, v11, v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateIv(Lorg/apache/poi/poifs/crypt/HashAlgorithm;[B[BI)[B

    move-result-object v12

    .line 269
    .local v12, "iv":[B
    move/from16 v13, p4

    invoke-static {v10, v2, v3, v12, v13}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object v14

    .line 273
    .local v14, "cipher":Ljavax/crypto/Cipher;
    :try_start_0
    array-length v0, v1

    invoke-static {v0, v5}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->getNextBlockSize(II)I

    move-result v0

    invoke-static {v1, v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v0

    .line 274
    .end local p3    # "inputKey":[B
    .local v1, "inputKey":[B
    :try_start_1
    invoke-virtual {v14, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 275
    .local v0, "hashFinal":[B
    return-object v0

    .line 276
    .end local v0    # "hashFinal":[B
    :catch_0
    move-exception v0

    .local v11, "hashFinal":[B
    goto :goto_0

    .end local v1    # "inputKey":[B
    .end local v11    # "hashFinal":[B
    .restart local p3    # "inputKey":[B
    :catch_1
    move-exception v0

    .line 277
    .end local p3    # "inputKey":[B
    .local v0, "e":Ljava/security/GeneralSecurityException;
    .restart local v1    # "inputKey":[B
    .restart local v11    # "hashFinal":[B
    :goto_0
    new-instance v15, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v15, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v15
.end method

.method protected static initCipherForBlock(Ljavax/crypto/Cipher;IZLorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;
    .locals 8
    .param p0, "existing"    # Ljavax/crypto/Cipher;
    .param p1, "block"    # I
    .param p2, "lastChunk"    # Z
    .param p3, "encryptionInfo"    # Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .param p4, "skey"    # Ljavax/crypto/SecretKey;
    .param p5, "encryptionMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 299
    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    .line 300
    .local v0, "header":Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    if-eqz p2, :cond_0

    const-string v1, "PKCS5Padding"

    goto :goto_0

    :cond_0
    const-string v1, "NoPadding"

    .line 301
    .local v1, "padding":Ljava/lang/String;
    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 302
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySalt()[B

    move-result-object v5

    move-object v2, p4

    move v6, p5

    move-object v7, v1

    invoke-static/range {v2 .. v7}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 305
    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 306
    .local v2, "blockKey":[B
    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 307
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySalt()[B

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getBlockSize()I

    move-result v5

    invoke-static {v3, v4, v2, v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateIv(Lorg/apache/poi/poifs/crypt/HashAlgorithm;[B[BI)[B

    move-result-object v3

    .line 310
    .local v3, "iv":[B
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v4

    sget-object v5, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc2:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    if-ne v4, v5, :cond_3

    .line 311
    new-instance v4, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-interface {p4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x8

    invoke-direct {v4, v5, v3}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[B)V

    .local v4, "aps":Ljava/security/spec/AlgorithmParameterSpec;
    goto :goto_1

    .line 313
    .end local v4    # "aps":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_3
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 316
    .restart local v4    # "aps":Ljava/security/spec/AlgorithmParameterSpec;
    :goto_1
    invoke-virtual {p0, p5, p4, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 318
    return-object p0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->clone()Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;

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

    .line 59
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->clone()Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 354
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->clone()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;

    return-object v0
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;
    .locals 4
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 283
    const-string v0, "EncryptedPackage"

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v0

    .line 284
    .local v0, "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->_length:J

    .line 285
    new-instance v1, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor$AgileCipherInputStream;

    iget-wide v2, p0, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->_length:J

    invoke-direct {v1, p0, v0, v2, v3}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor$AgileCipherInputStream;-><init>(Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;Lorg/apache/poi/poifs/filesystem/DocumentInputStream;J)V

    return-object v1
.end method

.method public getLength()J
    .locals 5

    .line 290
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->_length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 293
    return-wide v0

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EcmaDecryptor.getDataStream() was not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .locals 19
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 94
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    .line 95
    .local v1, "ver":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    .line 97
    .local v2, "header":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getBlockSize()I

    move-result v3

    .line 99
    .local v3, "blockSize":I
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getSalt()[B

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getSpinCount()I

    move-result v6

    move-object/from16 v7, p1

    invoke-static {v7, v4, v5, v6}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BI)[B

    move-result-object v4

    .line 114
    .local v4, "pwHash":[B
    sget-object v5, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kVerifierInputBlock:[B

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object v6

    const/4 v8, 0x2

    invoke-static {v1, v4, v5, v6, v8}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->hashInput(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;[B[B[BI)[B

    move-result-object v5

    .line 115
    .local v5, "verfierInputEnc":[B
    invoke-virtual {v0, v5}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->setVerifier([B)V

    .line 116
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 117
    .local v6, "hashMD":Ljava/security/MessageDigest;
    invoke-virtual {v6, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v9

    .line 131
    .local v9, "verifierHash":[B
    sget-object v10, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kHashedVerifierBlock:[B

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getEncryptedVerifierHash()[B

    move-result-object v11

    invoke-static {v1, v4, v10, v11, v8}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->hashInput(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;[B[B[BI)[B

    move-result-object v10

    .line 132
    .local v10, "verifierHashDec":[B
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v11

    iget v11, v11, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    invoke-static {v10, v11}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object v10

    .line 147
    sget-object v11, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kCryptoKeyBlock:[B

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getEncryptedKey()[B

    move-result-object v12

    invoke-static {v1, v4, v11, v12, v8}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->hashInput(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;[B[B[BI)[B

    move-result-object v11

    .line 148
    .local v11, "keyspec":[B
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getKeySize()I

    move-result v12

    div-int/lit8 v12, v12, 0x8

    invoke-static {v11, v12}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object v11

    .line 149
    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v13

    iget-object v13, v13, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v12, v11, v13}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 164
    .local v12, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v13

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getKeySalt()[B

    move-result-object v14

    sget-object v15, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kIntegrityKeyBlock:[B

    invoke-static {v13, v14, v15, v3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateIv(Lorg/apache/poi/poifs/crypt/HashAlgorithm;[B[BI)[B

    move-result-object v13

    .line 165
    .local v13, "vec":[B
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v14

    .line 166
    .local v14, "cipherAlgo":Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v15

    invoke-static {v12, v14, v15, v13, v8}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object v15

    .line 167
    .local v15, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getEncryptedHmacKey()[B

    move-result-object v8

    invoke-virtual {v15, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    .line 168
    .local v8, "hmacKey":[B
    move-object/from16 v16, v4

    .end local v4    # "pwHash":[B
    .local v16, "pwHash":[B
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v4

    iget v4, v4, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    invoke-static {v8, v4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object v4

    .line 179
    .end local v8    # "hmacKey":[B
    .local v4, "hmacKey":[B
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v8

    move-object/from16 v17, v5

    .end local v5    # "verfierInputEnc":[B
    .local v17, "verfierInputEnc":[B
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getKeySalt()[B

    move-result-object v5

    move-object/from16 v18, v6

    .end local v6    # "hashMD":Ljava/security/MessageDigest;
    .local v18, "hashMD":Ljava/security/MessageDigest;
    sget-object v6, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kIntegrityValueBlock:[B

    invoke-static {v8, v5, v6, v3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateIv(Lorg/apache/poi/poifs/crypt/HashAlgorithm;[B[BI)[B

    move-result-object v5

    .line 180
    .end local v13    # "vec":[B
    .local v5, "vec":[B
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v6

    const/4 v8, 0x2

    invoke-static {v12, v14, v6, v5, v8}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 181
    .end local v15    # "cipher":Ljavax/crypto/Cipher;
    .local v6, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getEncryptedHmacValue()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    .line 182
    .local v8, "hmacValue":[B
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v13

    iget v13, v13, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    invoke-static {v8, v13}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object v8

    .line 184
    invoke-static {v10, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 185
    invoke-virtual {v0, v12}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V

    .line 186
    invoke-virtual {v0, v4}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->setIntegrityHmacKey([B)V

    .line 187
    invoke-virtual {v0, v8}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->setIntegrityHmacValue([B)V

    .line 188
    const/4 v13, 0x1

    return v13

    .line 190
    :cond_0
    const/4 v13, 0x0

    return v13
.end method

.method public verifyPassword(Ljava/security/KeyPair;Ljava/security/cert/X509Certificate;)Z
    .locals 17
    .param p1, "keyPair"    # Ljava/security/KeyPair;
    .param p2, "x509"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 206
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    .line 207
    .local v1, "ver":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    .line 208
    .local v2, "header":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v3

    .line 209
    .local v3, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v4

    .line 210
    .local v4, "cipherAlgo":Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getBlockSize()I

    move-result v5

    .line 212
    .local v5, "blockSize":I
    const/4 v6, 0x0

    .line 213
    .local v6, "ace":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getCertificates()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;

    .line 214
    .local v8, "aceEntry":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;
    iget-object v9, v8, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->x509:Ljava/security/cert/X509Certificate;

    move-object/from16 v10, p2

    invoke-virtual {v10, v9}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 215
    move-object v6, v8

    .line 216
    goto :goto_1

    .end local v8    # "aceEntry":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;
    :cond_0
    goto :goto_0

    .line 213
    :cond_1
    move-object/from16 v10, p2

    .line 219
    .end local v7    # "i$":Ljava/util/Iterator;
    :goto_1
    const/4 v7, 0x0

    if-nez v6, :cond_2

    .line 220
    return v7

    .line 223
    :cond_2
    const-string v8, "RSA"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v8

    .line 224
    .local v8, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v9

    const/4 v11, 0x2

    invoke-virtual {v8, v11, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 225
    iget-object v9, v6, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->encryptedKey:[B

    invoke-virtual {v8, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v9

    .line 226
    .local v9, "keyspec":[B
    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v13

    iget-object v13, v13, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v12, v9, v13}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 228
    .local v12, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {v3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMac(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljavax/crypto/Mac;

    move-result-object v13

    .line 229
    .local v13, "x509Hmac":Ljavax/crypto/Mac;
    invoke-virtual {v13, v12}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 230
    iget-object v14, v6, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->x509:Ljava/security/cert/X509Certificate;

    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v14

    invoke-virtual {v13, v14}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v14

    .line 232
    .local v14, "certVerifier":[B
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getKeySalt()[B

    move-result-object v15

    sget-object v7, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kIntegrityKeyBlock:[B

    invoke-static {v3, v15, v7, v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateIv(Lorg/apache/poi/poifs/crypt/HashAlgorithm;[B[BI)[B

    move-result-object v7

    .line 233
    .local v7, "vec":[B
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v15

    invoke-static {v12, v4, v15, v7, v11}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object v8

    .line 234
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getEncryptedHmacKey()[B

    move-result-object v15

    invoke-virtual {v8, v15}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v15

    .line 235
    .local v15, "hmacKey":[B
    iget v11, v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    invoke-static {v15, v11}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object v11

    .line 237
    .end local v15    # "hmacKey":[B
    .local v11, "hmacKey":[B
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getKeySalt()[B

    move-result-object v15

    move-object/from16 v16, v1

    .end local v1    # "ver":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;
    .local v16, "ver":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;
    sget-object v1, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kIntegrityValueBlock:[B

    invoke-static {v3, v15, v1, v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateIv(Lorg/apache/poi/poifs/crypt/HashAlgorithm;[B[BI)[B

    move-result-object v1

    .line 238
    .end local v7    # "vec":[B
    .local v1, "vec":[B
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v7

    const/4 v15, 0x2

    invoke-static {v12, v4, v7, v1, v15}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 239
    .end local v8    # "cipher":Ljavax/crypto/Cipher;
    .local v7, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getEncryptedHmacValue()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    .line 240
    .local v8, "hmacValue":[B
    iget v15, v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    invoke-static {v8, v15}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object v8

    .line 243
    iget-object v15, v6, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->certVerifier:[B

    invoke-static {v15, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 244
    invoke-virtual {v0, v12}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V

    .line 245
    invoke-virtual {v0, v11}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->setIntegrityHmacKey([B)V

    .line 246
    invoke-virtual {v0, v8}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->setIntegrityHmacValue([B)V

    .line 247
    const/4 v15, 0x1

    return v15

    .line 249
    :cond_3
    const/4 v15, 0x0

    return v15
.end method
