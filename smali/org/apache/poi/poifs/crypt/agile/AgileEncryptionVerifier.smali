.class public Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;
.super Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
.source "AgileEncryptionVerifier.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;
    }
.end annotation


# instance fields
.field private blockSize:I

.field private certList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;",
            ">;"
        }
    .end annotation
.end field

.field private keyBits:I


# direct methods
.method protected constructor <init>(Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;)V
    .locals 13
    .param p1, "ed"    # Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;

    .line 58
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->certList:Ljava/util/List;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->keyBits:I

    .line 52
    iput v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->blockSize:I

    .line 59
    invoke-interface {p1}, Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;->getEncryption()Lcom/microsoft/schemas/office/x2006/encryption/CTEncryption;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/schemas/office/x2006/encryption/CTEncryption;->getKeyEncryptors()Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptors;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptors;->getKeyEncryptorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 62
    .local v0, "encList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor;>;"
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor;

    invoke-interface {v2}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor;->getEncryptedPasswordKey()Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 63
    .local v1, "keyData":Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;
    if-eqz v1, :cond_6

    .line 68
    nop

    .line 70
    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->getKeyBits()J

    move-result-wide v2

    long-to-int v3, v2

    .line 71
    .local v3, "kb":I
    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->getCipherAlgorithm()Lcom/microsoft/schemas/office/x2006/encryption/STCipherAlgorithm$Enum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/schemas/office/x2006/encryption/STCipherAlgorithm$Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->fromXmlId(Ljava/lang/String;I)Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v2

    .line 72
    .local v2, "ca":Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    .line 74
    invoke-virtual {p0, v3}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setKeySize(I)V

    .line 76
    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->getBlockSize()I

    move-result v4

    .line 77
    .local v4, "blockSize":I
    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setBlockSize(I)V

    .line 79
    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->getHashSize()I

    move-result v5

    .line 81
    .local v5, "hashSize":I
    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->getHashAlgorithm()Lcom/microsoft/schemas/office/x2006/encryption/STHashAlgorithm$Enum;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/schemas/office/x2006/encryption/STHashAlgorithm$Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->fromEcmaId(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v6

    .line 82
    .local v6, "ha":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    invoke-virtual {p0, v6}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    .line 84
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v7

    iget v7, v7, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    if-ne v7, v5, :cond_5

    .line 89
    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->getSpinCount()I

    move-result v7

    invoke-virtual {p0, v7}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setSpinCount(I)V

    .line 90
    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->getEncryptedVerifierHashInput()[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setEncryptedVerifier([B)V

    .line 91
    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->getSaltValue()[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setSalt([B)V

    .line 92
    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->getEncryptedKeyValue()[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setEncryptedKey([B)V

    .line 93
    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->getEncryptedVerifierHashValue()[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setEncryptedVerifierHash([B)V

    .line 95
    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->getSaltSize()I

    move-result v7

    .line 96
    .local v7, "saltSize":I
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getSalt()[B

    move-result-object v8

    array-length v8, v8

    if-ne v7, v8, :cond_4

    .line 100
    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->getCipherChaining()Lcom/microsoft/schemas/office/x2006/encryption/STCipherChaining$Enum;

    move-result-object v8

    invoke-virtual {v8}, Lcom/microsoft/schemas/office/x2006/encryption/STCipherChaining$Enum;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 105
    sget-object v8, Lorg/apache/poi/poifs/crypt/ChainingMode;->cfb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    invoke-virtual {p0, v8}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    .line 106
    goto :goto_0

    .line 108
    :cond_0
    new-instance v8, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported chaining mode - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->getCipherChaining()Lcom/microsoft/schemas/office/x2006/encryption/STCipherChaining$Enum;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 102
    :cond_1
    sget-object v8, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    invoke-virtual {p0, v8}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    .line 103
    nop

    .line 111
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 112
    return-void

    .line 116
    :cond_2
    :try_start_1
    const-string v8, "X.509"

    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v8

    .line 117
    .local v8, "cf":Ljava/security/cert/CertificateFactory;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor;

    invoke-interface {v9}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor;->getEncryptedCertificateKey()Lcom/microsoft/schemas/office/x2006/keyEncryptor/certificate/CTCertificateKeyEncryptor;

    move-result-object v9

    .line 119
    .local v9, "certKey":Lcom/microsoft/schemas/office/x2006/keyEncryptor/certificate/CTCertificateKeyEncryptor;
    new-instance v10, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;

    invoke-direct {v10}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;-><init>()V

    .line 120
    .local v10, "ace":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;
    invoke-interface {v9}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/certificate/CTCertificateKeyEncryptor;->getCertVerifier()[B

    move-result-object v11

    iput-object v11, v10, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->certVerifier:[B

    .line 121
    invoke-interface {v9}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/certificate/CTCertificateKeyEncryptor;->getEncryptedKeyValue()[B

    move-result-object v11

    iput-object v11, v10, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->encryptedKey:[B

    .line 122
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-interface {v9}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/certificate/CTCertificateKeyEncryptor;->getX509Certificate()[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v8, v11}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    iput-object v11, v10, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->x509:Ljava/security/cert/X509Certificate;

    .line 123
    iget-object v11, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->certList:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    nop

    .end local v9    # "certKey":Lcom/microsoft/schemas/office/x2006/keyEncryptor/certificate/CTCertificateKeyEncryptor;
    .end local v10    # "ace":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;
    goto :goto_1

    .line 127
    .end local v8    # "cf":Ljava/security/cert/CertificateFactory;
    :cond_3
    nop

    .line 128
    return-void

    .line 125
    :catch_0
    move-exception v8

    .line 126
    .local v8, "e":Ljava/security/GeneralSecurityException;
    new-instance v9, Lorg/apache/poi/EncryptedDocumentException;

    const-string v10, "can\'t parse X509 certificate"

    invoke-direct {v9, v10, v8}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 97
    .end local v8    # "e":Ljava/security/GeneralSecurityException;
    :cond_4
    new-instance v8, Lorg/apache/poi/EncryptedDocumentException;

    const-string v9, "Invalid salt size"

    invoke-direct {v8, v9}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 85
    .end local v7    # "saltSize":I
    :cond_5
    new-instance v7, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported hash algorithm: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;->getHashAlgorithm()Lcom/microsoft/schemas/office/x2006/encryption/STHashAlgorithm$Enum;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " @ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 64
    .end local v2    # "ca":Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .end local v3    # "kb":I
    .end local v4    # "blockSize":I
    .end local v5    # "hashSize":I
    .end local v6    # "ha":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    :cond_6
    :try_start_2
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "encryptedKey not set"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "encList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor;>;"
    .end local v1    # "keyData":Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;
    .end local p1    # "ed":Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 66
    .restart local v0    # "encList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor;>;"
    .restart local v1    # "keyData":Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;
    .restart local p1    # "ed":Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;
    :catch_1
    move-exception v2

    goto :goto_2

    .end local v1    # "keyData":Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;
    :catch_2
    move-exception v2

    .line 67
    .restart local v1    # "keyData":Lcom/microsoft/schemas/office/x2006/keyEncryptor/password/CTPasswordKeyEncryptor;
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v3, Lorg/apache/poi/EncryptedDocumentException;

    const-string v4, "Unable to parse keyData"

    invoke-direct {v3, v4, v2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionInfoBuilder;->parseDescriptor(Ljava/lang/String;)Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;-><init>(Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 1
    .param p1, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .param p2, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p3, "keyBits"    # I
    .param p4, "blockSize"    # I
    .param p5, "chainingMode"    # Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 130
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->certList:Ljava/util/List;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->keyBits:I

    .line 52
    iput v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->blockSize:I

    .line 131
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    .line 132
    invoke-virtual {p0, p2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    .line 133
    invoke-virtual {p0, p5}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    .line 134
    invoke-virtual {p0, p3}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setKeySize(I)V

    .line 135
    invoke-virtual {p0, p4}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setBlockSize(I)V

    .line 136
    const v0, 0x186a0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setSpinCount(I)V

    .line 137
    return-void
.end method


# virtual methods
.method public addCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "x509"    # Ljava/security/cert/X509Certificate;

    .line 166
    new-instance v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;-><init>()V

    .line 167
    .local v0, "ace":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;
    iput-object p1, v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->x509:Ljava/security/cert/X509Certificate;

    .line 168
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->certList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->clone()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->clone()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 177
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->clone()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    .line 179
    .local v0, "other":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->certList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->certList:Ljava/util/List;

    .line 180
    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 203
    iget v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->blockSize:I

    return v0
.end method

.method public getCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->certList:Ljava/util/List;

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .line 192
    iget v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->keyBits:I

    return v0
.end method

.method protected setBlockSize(I)V
    .locals 0
    .param p1, "blockSize"    # I

    .line 228
    iput p1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->blockSize:I

    .line 229
    return-void
.end method

.method protected final setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V
    .locals 2
    .param p1, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 233
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    .line 234
    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 235
    iget v0, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->defaultKeySize:I

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setKeySize(I)V

    .line 237
    :cond_0
    return-void
.end method

.method protected setEncryptedKey([B)V
    .locals 0
    .param p1, "encryptedKey"    # [B

    .line 162
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setEncryptedKey([B)V

    .line 163
    return-void
.end method

.method protected setEncryptedVerifier([B)V
    .locals 0
    .param p1, "encryptedVerifier"    # [B

    .line 150
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setEncryptedVerifier([B)V

    .line 151
    return-void
.end method

.method protected setEncryptedVerifierHash([B)V
    .locals 0
    .param p1, "encryptedVerifierHash"    # [B

    .line 156
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setEncryptedVerifierHash([B)V

    .line 157
    return-void
.end method

.method protected setKeySize(I)V
    .locals 4
    .param p1, "keyBits"    # I

    .line 212
    iput p1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->keyBits:I

    .line 213
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    .local v0, "arr$":[I
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 214
    .local v3, "allowedBits":I
    if-ne v3, p1, :cond_0

    .line 215
    return-void

    .line 213
    .end local v3    # "allowedBits":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    .end local v0    # "arr$":[I
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeySize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not allowed for cipher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setSalt([B)V
    .locals 2
    .param p1, "salt"    # [B

    .line 141
    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v1

    iget v1, v1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->blockSize:I

    if-ne v0, v1, :cond_0

    .line 144
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setSalt([B)V

    .line 145
    return-void

    .line 142
    :cond_0
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "invalid verifier salt"

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
