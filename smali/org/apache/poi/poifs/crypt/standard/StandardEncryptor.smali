.class public Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;
.super Lorg/apache/poi/poifs/crypt/Encryptor;
.source "StandardEncryptor.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;
    }
.end annotation


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;-><init>()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;
    .param p1, "x1"    # Ljavax/crypto/SecretKey;
    .param p2, "x2"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->getCipher(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lorg/apache/poi/util/POILogger;
    .locals 1

    .line 56
    sget-object v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->logger:Lorg/apache/poi/util/POILogger;

    return-object v0
.end method

.method private getCipher(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 7
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .param p2, "padding"    # Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    .line 114
    .local v0, "ver":Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->clone()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;

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

    .line 56
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->clone()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 233
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->clone()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;

    return-object v0
.end method

.method public confirmPassword(Ljava/lang/String;)V
    .locals 10
    .param p1, "password"    # Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 66
    .local v0, "r":Ljava/util/Random;
    const/16 v1, 0x10

    new-array v9, v1, [B

    .local v9, "salt":[B
    new-array v1, v1, [B

    .line 67
    .local v1, "verifier":[B
    invoke-virtual {v0, v9}, Ljava/util/Random;->nextBytes([B)V

    .line 68
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 70
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, v9

    move-object v7, v1

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->confirmPassword(Ljava/lang/String;[B[B[B[B[B)V

    .line 71
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

    .line 82
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    .line 84
    .local v0, "ver":Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;
    invoke-virtual {v0, p5}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setSalt([B)V

    .line 85
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->getKeySizeInBytes()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;I)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 86
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V

    .line 87
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->getCipher(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 90
    .local v2, "cipher":Ljavax/crypto/Cipher;
    :try_start_0
    invoke-virtual {v2, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 91
    .local v3, "encryptedVerifier":[B
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 92
    .local v4, "hashAlgo":Ljava/security/MessageDigest;
    invoke-virtual {v4, p4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 101
    .local v5, "calcVerifierHash":[B
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v6

    iget v6, v6, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->encryptedVerifierHashLength:I

    .line 102
    .local v6, "encVerHashSize":I
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 104
    .local v7, "encryptedVerifierHash":[B
    invoke-virtual {v0, v3}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setEncryptedVerifier([B)V

    .line 105
    invoke-virtual {v0, v7}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setEncryptedVerifierHash([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v3    # "encryptedVerifier":[B
    .end local v4    # "hashAlgo":Ljava/security/MessageDigest;
    .end local v5    # "calcVerifierHash":[B
    .end local v6    # "encVerHashSize":I
    .end local v7    # "encryptedVerifierHash":[B
    nop

    .line 110
    return-void

    .line 106
    :catch_0
    move-exception v3

    .line 107
    .local v3, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Lorg/apache/poi/EncryptedDocumentException;

    const-string v5, "Password confirmation failed"

    invoke-direct {v4, v5, v3}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 5
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    .line 212
    .local v0, "info":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    .line 213
    .local v1, "header":Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    .line 215
    .local v2, "verifier":Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;
    new-instance v3, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$1;-><init>(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;)V

    .line 226
    .local v3, "er":Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;
    const-string v4, "EncryptionInfo"

    invoke-static {p1, v4, v3}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->createEncryptionEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 229
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

    .line 120
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 121
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->addDefaultDataSpace(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    .line 122
    new-instance v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-object v0
.end method

.method protected getKeySizeInBytes()I
    .locals 1

    .line 207
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method
