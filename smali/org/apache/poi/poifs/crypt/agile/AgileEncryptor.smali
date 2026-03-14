.class public Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;
.super Lorg/apache/poi/poifs/crypt/Encryptor;
.source "AgileEncryptor.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;
    }
.end annotation


# instance fields
.field private final certificateUri:Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;

.field private integritySalt:[B

.field private final passwordUri:Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;

.field private pwHash:[B


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;-><init>()V

    .line 271
    sget-object v0, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri;->HTTP_SCHEMAS_MICROSOFT_COM_OFFICE_2006_KEY_ENCRYPTOR_PASSWORD:Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->passwordUri:Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;

    .line 273
    sget-object v0, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri;->HTTP_SCHEMAS_MICROSOFT_COM_OFFICE_2006_KEY_ENCRYPTOR_CERTIFICATE:Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->certificateUri:Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;

    .line 83
    return-void
.end method

.method private static mapHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Lcom/microsoft/schemas/office/x2006/encryption/STHashAlgorithm$Enum;
    .locals 4
    .param p0, "hashAlgo"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 357
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaString:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/schemas/office/x2006/encryption/STHashAlgorithm$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/x2006/encryption/STHashAlgorithm$Enum;

    move-result-object v0

    .line 358
    .local v0, "xmlHashAlgo":Lcom/microsoft/schemas/office/x2006/encryption/STHashAlgorithm$Enum;
    if-eqz v0, :cond_0

    .line 361
    return-object v0

    .line 359
    :cond_0
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HashAlgorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

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

    .line 78
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->clone()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

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

    .line 78
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->clone()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 455
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->clone()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    .line 456
    .local v0, "other":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->integritySalt:[B

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_0
    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->integritySalt:[B

    .line 457
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->pwHash:[B

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [B

    :goto_1
    iput-object v2, v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->pwHash:[B

    .line 458
    return-object v0
.end method

.method public confirmPassword(Ljava/lang/String;)V
    .locals 17
    .param p1, "password"    # Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 89
    .local v0, "r":Ljava/util/Random;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    .line 90
    .local v1, "header":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getBlockSize()I

    move-result v2

    .line 91
    .local v2, "blockSize":I
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getKeySize()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    .line 92
    .local v3, "keySize":I
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v4

    iget v4, v4, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    .line 94
    .local v4, "hashSize":I
    new-array v12, v2, [B

    .line 95
    .local v12, "newVerifierSalt":[B
    new-array v13, v2, [B

    .line 96
    .local v13, "newVerifier":[B
    new-array v14, v2, [B

    .line 97
    .local v14, "newKeySalt":[B
    new-array v15, v3, [B

    .line 98
    .local v15, "newKeySpec":[B
    new-array v11, v4, [B

    .line 99
    .local v11, "newIntegritySalt":[B
    invoke-virtual {v0, v12}, Ljava/util/Random;->nextBytes([B)V

    .line 100
    invoke-virtual {v0, v13}, Ljava/util/Random;->nextBytes([B)V

    .line 101
    invoke-virtual {v0, v14}, Ljava/util/Random;->nextBytes([B)V

    .line 102
    invoke-virtual {v0, v15}, Ljava/util/Random;->nextBytes([B)V

    .line 103
    invoke-virtual {v0, v11}, Ljava/util/Random;->nextBytes([B)V

    .line 105
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v15

    move-object v8, v14

    move-object v9, v12

    move-object v10, v13

    move-object/from16 v16, v11

    .end local v11    # "newIntegritySalt":[B
    .local v16, "newIntegritySalt":[B
    invoke-virtual/range {v5 .. v11}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->confirmPassword(Ljava/lang/String;[B[B[B[B[B)V

    .line 106
    return-void
.end method

.method public confirmPassword(Ljava/lang/String;[B[B[B[B[B)V
    .locals 19
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "keySpec"    # [B
    .param p3, "keySalt"    # [B
    .param p4, "verifier"    # [B
    .param p5, "verifierSalt"    # [B
    .param p6, "integritySalt"    # [B

    .line 110
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    .line 111
    .local v5, "ver":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    .line 113
    .local v6, "header":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;
    invoke-virtual {v5, v4}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setSalt([B)V

    .line 114
    move-object/from16 v7, p3

    invoke-virtual {v6, v7}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setKeySalt([B)V

    .line 116
    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getBlockSize()I

    move-result v8

    .line 118
    .local v8, "blockSize":I
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getSpinCount()I

    move-result v9

    move-object/from16 v10, p1

    invoke-static {v10, v0, v4, v9}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BI)[B

    move-result-object v0

    iput-object v0, v1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->pwHash:[B

    .line 133
    sget-object v9, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kVerifierInputBlock:[B

    const/4 v11, 0x1

    invoke-static {v5, v0, v9, v3, v11}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->hashInput(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;[B[B[BI)[B

    move-result-object v9

    .line 134
    .local v9, "encryptedVerifier":[B
    invoke-virtual {v5, v9}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setEncryptedVerifier([B)V

    .line 149
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v12

    .line 150
    .local v12, "hashMD":Ljava/security/MessageDigest;
    invoke-virtual {v12, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v13

    .line 151
    .local v13, "hashedVerifier":[B
    iget-object v0, v1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->pwHash:[B

    sget-object v14, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kHashedVerifierBlock:[B

    invoke-static {v5, v0, v14, v13, v11}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->hashInput(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;[B[B[BI)[B

    move-result-object v14

    .line 152
    .local v14, "encryptedVerifierHash":[B
    invoke-virtual {v5, v14}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setEncryptedVerifierHash([B)V

    .line 167
    iget-object v0, v1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->pwHash:[B

    sget-object v15, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kCryptoKeyBlock:[B

    invoke-static {v5, v0, v15, v2, v11}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->hashInput(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;[B[B[BI)[B

    move-result-object v15

    .line 168
    .local v15, "encryptedKey":[B
    invoke-virtual {v5, v15}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setEncryptedKey([B)V

    .line 170
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v11

    iget-object v11, v11, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v0, v2, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v11, v0

    .line 171
    .local v11, "secretKey":Ljavax/crypto/SecretKey;
    invoke-virtual {v1, v11}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V

    .line 197
    invoke-virtual/range {p6 .. p6}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, v1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->integritySalt:[B

    .line 200
    :try_start_0
    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getKeySalt()[B

    move-result-object v2

    sget-object v3, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kIntegrityKeyBlock:[B

    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getBlockSize()I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateIv(Lorg/apache/poi/poifs/crypt/HashAlgorithm;[B[BI)[B

    move-result-object v0

    .line 201
    .local v0, "vec":[B
    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v2

    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v11, v2, v3, v0, v4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 202
    .local v2, "cipher":Ljavax/crypto/Cipher;
    iget-object v3, v1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->integritySalt:[B

    array-length v4, v3

    invoke-static {v4, v8}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->getNextBlockSize(II)I

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object v3

    .line 203
    .local v3, "hmacKey":[B
    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 204
    .local v4, "encryptedHmacKey":[B
    invoke-virtual {v6, v4}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setEncryptedHmacKey([B)V

    .line 206
    const-string v16, "RSA"

    invoke-static/range {v16 .. v16}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v16

    move-object/from16 v2, v16

    .line 207
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getCertificates()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;

    move-object/from16 v18, v17

    .line 208
    .local v18, "ace":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;
    move-object/from16 v17, v0

    move-object/from16 v0, v18

    .end local v18    # "ace":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;
    .local v0, "ace":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;
    .local v17, "vec":[B
    iget-object v1, v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->x509:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    move-object/from16 v18, v3

    const/4 v3, 0x1

    .end local v3    # "hmacKey":[B
    .local v18, "hmacKey":[B
    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 209
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->encryptedKey:[B

    .line 210
    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMac(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 211
    .local v1, "x509Hmac":Ljavax/crypto/Mac;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 212
    iget-object v3, v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->x509:Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3

    iput-object v3, v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->certVerifier:[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v0    # "ace":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;
    .end local v1    # "x509Hmac":Ljavax/crypto/Mac;
    move-object/from16 v1, p0

    move-object/from16 v0, v17

    move-object/from16 v3, v18

    goto :goto_0

    .line 207
    .end local v17    # "vec":[B
    .end local v18    # "hmacKey":[B
    .local v0, "vec":[B
    .restart local v3    # "hmacKey":[B
    :cond_0
    move-object/from16 v17, v0

    move-object/from16 v18, v3

    .line 216
    .end local v0    # "vec":[B
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "hmacKey":[B
    .end local v4    # "encryptedHmacKey":[B
    .end local v16    # "i$":Ljava/util/Iterator;
    nop

    .line 217
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v1, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createEncryptionDocument()Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;
    .locals 15

    .line 277
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    .line 278
    .local v0, "ver":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    .line 280
    .local v1, "header":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;
    invoke-static {}, Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument$Factory;->newInstance()Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;

    move-result-object v2

    .line 281
    .local v2, "ed":Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;
    invoke-interface {v2}, Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;->addNewEncryption()Lcom/microsoft/schemas/office/x2006/encryption/CTEncryption;

    move-result-object v3

    .line 283
    .local v3, "edRoot":Lcom/microsoft/schemas/office/x2006/encryption/CTEncryption;
    invoke-interface {v3}, Lcom/microsoft/schemas/office/x2006/encryption/CTEncryption;->addNewKeyData()Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;

    move-result-object v4

    .line 284
    .local v4, "keyData":Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;
    invoke-interface {v3}, Lcom/microsoft/schemas/office/x2006/encryption/CTEncryption;->addNewKeyEncryptors()Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptors;

    move-result-object v5

    .line 285
    .local v5, "keyEncList":Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptors;
    invoke-interface {v5}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptors;->addNewKeyEncryptor()Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor;

    move-result-object v6

    .line 286
    .local v6, "keyEnc":Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor;
    iget-object v7, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->passwordUri:Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;

    invoke-interface {v6, v7}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor;->setUri(Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;)V

    .line 287
    invoke-interface {v6}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor;->addNewEncryptedPasswordKey()Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;

    move-result-object v7

    .line 289
    .local v7, "keyPass":Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getSpinCount()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->setSpinCount(I)V

    .line 291
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getBlockSize()I

    move-result v8

    invoke-interface {v4, v8}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;->setSaltSize(I)V

    .line 292
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getBlockSize()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->setSaltSize(I)V

    .line 294
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getBlockSize()I

    move-result v8

    invoke-interface {v4, v8}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;->setBlockSize(I)V

    .line 295
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getBlockSize()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->setBlockSize(I)V

    .line 297
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getKeySize()I

    move-result v8

    int-to-long v8, v8

    invoke-interface {v4, v8, v9}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;->setKeyBits(J)V

    .line 298
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getKeySize()I

    move-result v8

    int-to-long v8, v8

    invoke-interface {v7, v8, v9}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->setKeyBits(J)V

    .line 300
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v8

    iget v8, v8, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    invoke-interface {v4, v8}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;->setHashSize(I)V

    .line 301
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v8

    iget v8, v8, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    invoke-interface {v7, v8}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->setHashSize(I)V

    .line 304
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v8

    iget-object v8, v8, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->xmlId:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v9

    iget-object v9, v9, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->xmlId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 307
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v8

    iget-object v8, v8, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->xmlId:Ljava/lang/String;

    invoke-static {v8}, Lcom/microsoft/schemas/office/x2006/encryption/STCipherAlgorithm$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/x2006/encryption/STCipherAlgorithm$Enum;

    move-result-object v8

    .line 308
    .local v8, "xmlCipherAlgo":Lcom/microsoft/schemas/office/x2006/encryption/STCipherAlgorithm$Enum;
    const-string v9, " not supported."

    if-eqz v8, :cond_3

    .line 311
    invoke-interface {v4, v8}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;->setCipherAlgorithm(Lcom/microsoft/schemas/office/x2006/encryption/STCipherAlgorithm$Enum;)V

    .line 312
    invoke-interface {v7, v8}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->setCipherAlgorithm(Lcom/microsoft/schemas/office/x2006/encryption/STCipherAlgorithm$Enum;)V

    .line 314
    sget-object v10, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$2;->$SwitchMap$org$apache$poi$poifs$crypt$ChainingMode:[I

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/poi/poifs/crypt/ChainingMode;->ordinal()I

    move-result v11

    aget v10, v10, v11

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 320
    sget-object v9, Lcom/microsoft/schemas/office/x2006/encryption/STCipherChaining;->CHAINING_MODE_CFB:Lcom/microsoft/schemas/office/x2006/encryption/STCipherChaining$Enum;

    invoke-interface {v4, v9}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;->setCipherChaining(Lcom/microsoft/schemas/office/x2006/encryption/STCipherChaining$Enum;)V

    .line 321
    sget-object v9, Lcom/microsoft/schemas/office/x2006/encryption/STCipherChaining;->CHAINING_MODE_CFB:Lcom/microsoft/schemas/office/x2006/encryption/STCipherChaining$Enum;

    invoke-interface {v7, v9}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->setCipherChaining(Lcom/microsoft/schemas/office/x2006/encryption/STCipherChaining$Enum;)V

    .line 322
    goto :goto_0

    .line 324
    :cond_0
    new-instance v10, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ChainingMode "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 316
    :cond_1
    sget-object v9, Lcom/microsoft/schemas/office/x2006/encryption/STCipherChaining;->CHAINING_MODE_CBC:Lcom/microsoft/schemas/office/x2006/encryption/STCipherChaining$Enum;

    invoke-interface {v4, v9}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;->setCipherChaining(Lcom/microsoft/schemas/office/x2006/encryption/STCipherChaining$Enum;)V

    .line 317
    sget-object v9, Lcom/microsoft/schemas/office/x2006/encryption/STCipherChaining;->CHAINING_MODE_CBC:Lcom/microsoft/schemas/office/x2006/encryption/STCipherChaining$Enum;

    invoke-interface {v7, v9}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->setCipherChaining(Lcom/microsoft/schemas/office/x2006/encryption/STCipherChaining$Enum;)V

    .line 318
    nop

    .line 327
    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->mapHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Lcom/microsoft/schemas/office/x2006/encryption/STHashAlgorithm$Enum;

    move-result-object v9

    invoke-interface {v4, v9}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;->setHashAlgorithm(Lcom/microsoft/schemas/office/x2006/encryption/STHashAlgorithm$Enum;)V

    .line 328
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->mapHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Lcom/microsoft/schemas/office/x2006/encryption/STHashAlgorithm$Enum;

    move-result-object v9

    invoke-interface {v7, v9}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->setHashAlgorithm(Lcom/microsoft/schemas/office/x2006/encryption/STHashAlgorithm$Enum;)V

    .line 330
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getKeySalt()[B

    move-result-object v9

    invoke-interface {v4, v9}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;->setSaltValue([B)V

    .line 331
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getSalt()[B

    move-result-object v9

    invoke-interface {v7, v9}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->setSaltValue([B)V

    .line 332
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object v9

    invoke-interface {v7, v9}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->setEncryptedVerifierHashInput([B)V

    .line 333
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getEncryptedVerifierHash()[B

    move-result-object v9

    invoke-interface {v7, v9}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->setEncryptedVerifierHashValue([B)V

    .line 334
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getEncryptedKey()[B

    move-result-object v9

    invoke-interface {v7, v9}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->setEncryptedKeyValue([B)V

    .line 336
    invoke-interface {v3}, Lcom/microsoft/schemas/office/x2006/encryption/CTEncryption;->addNewDataIntegrity()Lcom/microsoft/schemas/office/x2006/encryption/CTDataIntegrity;

    move-result-object v9

    .line 337
    .local v9, "hmacData":Lcom/microsoft/schemas/office/x2006/encryption/CTDataIntegrity;
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getEncryptedHmacKey()[B

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/microsoft/schemas/office/x2006/encryption/CTDataIntegrity;->setEncryptedHmacKey([B)V

    .line 338
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getEncryptedHmacValue()[B

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/microsoft/schemas/office/x2006/encryption/CTDataIntegrity;->setEncryptedHmacValue([B)V

    .line 340
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getCertificates()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;

    .line 341
    .local v11, "ace":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;
    invoke-interface {v5}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptors;->addNewKeyEncryptor()Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor;

    move-result-object v6

    .line 342
    iget-object v12, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->certificateUri:Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;

    invoke-interface {v6, v12}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor;->setUri(Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;)V

    .line 343
    invoke-interface {v6}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor;->addNewEncryptedCertificateKey()Lcom/microsoft/schemas/office/x2006/keyEncryptor/certificate/CTCertificateKeyEncryptor;

    move-result-object v12

    .line 345
    .local v12, "certData":Lcom/microsoft/schemas/office/x2006/keyEncryptor/certificate/CTCertificateKeyEncryptor;
    :try_start_0
    iget-object v13, v11, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->x509:Ljava/security/cert/X509Certificate;

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/certificate/CTCertificateKeyEncryptor;->setX509Certificate([B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    nop

    .line 349
    iget-object v13, v11, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->encryptedKey:[B

    invoke-interface {v12, v13}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/certificate/CTCertificateKeyEncryptor;->setEncryptedKeyValue([B)V

    .line 350
    iget-object v13, v11, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->certVerifier:[B

    invoke-interface {v12, v13}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/certificate/CTCertificateKeyEncryptor;->setCertVerifier([B)V

    .line 351
    .end local v11    # "ace":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;
    .end local v12    # "certData":Lcom/microsoft/schemas/office/x2006/keyEncryptor/certificate/CTCertificateKeyEncryptor;
    goto :goto_1

    .line 346
    .restart local v11    # "ace":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;
    .restart local v12    # "certData":Lcom/microsoft/schemas/office/x2006/keyEncryptor/certificate/CTCertificateKeyEncryptor;
    :catch_0
    move-exception v13

    .line 347
    .local v13, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v14, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v14, v13}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 353
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "ace":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;
    .end local v12    # "certData":Lcom/microsoft/schemas/office/x2006/keyEncryptor/certificate/CTCertificateKeyEncryptor;
    .end local v13    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_2
    return-object v2

    .line 309
    .end local v9    # "hmacData":Lcom/microsoft/schemas/office/x2006/encryption/CTDataIntegrity;
    :cond_3
    new-instance v10, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CipherAlgorithm "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 305
    .end local v8    # "xmlCipherAlgo":Lcom/microsoft/schemas/office/x2006/encryption/STCipherAlgorithm$Enum;
    :cond_4
    new-instance v8, Lorg/apache/poi/EncryptedDocumentException;

    const-string v9, "Cipher algorithm of header and verifier have to match"

    invoke-direct {v8, v9}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method protected createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;)V
    .locals 3
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p2, "tmpFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 390
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->addDefaultDataSpace(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    .line 392
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    .line 394
    .local v0, "info":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    new-instance v1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$1;-><init>(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 409
    .local v1, "er":Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;
    const-string v2, "EncryptionInfo"

    invoke-static {p1, v2, v1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->createEncryptionEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 410
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

    .line 223
    new-instance v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 224
    .local v0, "countStream":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;
    return-object v0
.end method

.method protected marshallEncryptionDocument(Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 6
    .param p1, "ed"    # Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;
    .param p2, "os"    # Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    .line 365
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    .line 366
    .local v0, "xo":Lorg/apache/xmlbeans/XmlOptions;
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setCharacterEncoding(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions;

    .line 367
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 368
    .local v2, "nsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->passwordUri:Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;

    invoke-virtual {v3}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "p"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->certificateUri:Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;

    invoke-virtual {v3}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "c"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->setUseDefaultNamespace()Lorg/apache/xmlbeans/XmlOptions;

    .line 371
    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSuggestedPrefixes(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;

    .line 372
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->setSaveNamespacesFirst()Lorg/apache/xmlbeans/XmlOptions;

    .line 373
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->setSaveAggressiveNamespaces()Lorg/apache/xmlbeans/XmlOptions;

    .line 377
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->setSaveNoXmlDecl()Lorg/apache/xmlbeans/XmlOptions;

    .line 378
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 380
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    const-string v4, "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\r\n"

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 381
    invoke-interface {p1, v3, v0}, Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 382
    invoke-virtual {v3, p2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    nop

    .line 386
    return-void

    .line 383
    :catch_0
    move-exception v1

    .line 384
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Lorg/apache/poi/EncryptedDocumentException;

    const-string v5, "error marshalling encryption info document"

    invoke-direct {v4, v5, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected updateIntegrityHMAC(Ljava/io/File;I)V
    .locals 17
    .param p1, "tmpFile"    # Ljava/io/File;
    .param p2, "oleStreamSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    .line 241
    .local v1, "header":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getBlockSize()I

    move-result v2

    .line 242
    .local v2, "blockSize":I
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v3

    .line 243
    .local v3, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    invoke-static {v3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMac(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljavax/crypto/Mac;

    move-result-object v4

    .line 244
    .local v4, "integrityMD":Ljavax/crypto/Mac;
    move-object/from16 v5, p0

    iget-object v0, v5, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->integritySalt:[B

    array-length v6, v0

    invoke-static {v6, v2}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->getNextBlockSize(II)I

    move-result v6

    invoke-static {v0, v6}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object v6

    .line 245
    .local v6, "hmacKey":[B
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v7, v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceHmacId:Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 247
    const/16 v0, 0x400

    new-array v7, v0, [B

    .line 248
    .local v7, "buf":[B
    move/from16 v8, p2

    int-to-long v9, v8

    const/4 v0, 0x0

    invoke-static {v7, v0, v9, v10}, Lorg/apache/poi/util/LittleEndian;->putLong([BIJ)V

    .line 249
    const/16 v9, 0x8

    invoke-virtual {v4, v7, v0, v9}, Ljavax/crypto/Mac;->update([BII)V

    .line 251
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v10, p1

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 254
    .local v9, "fis":Ljava/io/InputStream;
    :goto_0
    :try_start_0
    invoke-virtual {v9, v7}, Ljava/io/InputStream;->read([B)I

    move-result v11

    move v12, v11

    .local v12, "readBytes":I
    const/4 v13, -0x1

    if-eq v11, v13, :cond_0

    .line 255
    invoke-virtual {v4, v7, v0, v12}, Ljavax/crypto/Mac;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 258
    .end local v12    # "readBytes":I
    :cond_0
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 259
    nop

    .line 261
    invoke-virtual {v4}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    .line 262
    .local v0, "hmacValue":[B
    array-length v11, v0

    invoke-static {v11, v2}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->getNextBlockSize(II)I

    move-result v11

    invoke-static {v0, v11}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object v11

    .line 264
    .local v11, "hmacValueFilled":[B
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v12

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getKeySalt()[B

    move-result-object v13

    sget-object v14, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kIntegrityValueBlock:[B

    invoke-static {v12, v13, v14, v2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateIv(Lorg/apache/poi/poifs/crypt/HashAlgorithm;[B[BI)[B

    move-result-object v12

    .line 265
    .local v12, "iv":[B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v13

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v14

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v15

    move-object/from16 v16, v0

    .end local v0    # "hmacValue":[B
    .local v16, "hmacValue":[B
    const/4 v0, 0x1

    invoke-static {v13, v14, v15, v12, v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 266
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0, v11}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v13

    .line 268
    .local v13, "encryptedHmacValue":[B
    invoke-virtual {v1, v13}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setEncryptedHmacValue([B)V

    .line 269
    return-void

    .line 258
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v11    # "hmacValueFilled":[B
    .end local v12    # "iv":[B
    .end local v13    # "encryptedHmacValue":[B
    .end local v16    # "hmacValue":[B
    :catchall_0
    move-exception v0

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    throw v0
.end method
