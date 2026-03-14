.class public Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;
.super Lorg/apache/poi/poifs/crypt/EncryptionHeader;
.source "AgileEncryptionHeader.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private encryptedHmacKey:[B

.field private encryptedHmacValue:[B


# direct methods
.method protected constructor <init>(Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;)V
    .locals 9
    .param p1, "ed"    # Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;

    .line 37
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;-><init>()V

    .line 40
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;->getEncryption()Lcom/microsoft/schemas/office/x2006/encryption/CTEncryption;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/encryption/CTEncryption;->getKeyData()Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    .local v1, "keyData":Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;
    if-eqz v1, :cond_4

    .line 46
    nop

    .line 48
    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;->getKeyBits()J

    move-result-wide v2

    long-to-int v3, v2

    .line 50
    .local v3, "keyBits":I
    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;->getCipherAlgorithm()Lcom/microsoft/schemas/office/x2006/encryption/STCipherAlgorithm$Enum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/schemas/office/x2006/encryption/STCipherAlgorithm$Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->fromXmlId(Ljava/lang/String;I)Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v2

    .line 51
    .local v2, "ca":Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    .line 52
    iget-object v4, v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->provider:Lorg/apache/poi/poifs/crypt/CipherProvider;

    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setCipherProvider(Lorg/apache/poi/poifs/crypt/CipherProvider;)V

    .line 54
    invoke-virtual {p0, v3}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setKeySize(I)V

    .line 55
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setFlags(I)V

    .line 56
    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setSizeExtra(I)V

    .line 57
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setCspName(Ljava/lang/String;)V

    .line 58
    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;->getBlockSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setBlockSize(I)V

    .line 60
    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;->getCipherChaining()Lcom/microsoft/schemas/office/x2006/encryption/STCipherChaining$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/schemas/office/x2006/encryption/STCipherChaining$Enum;->intValue()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 65
    sget-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->cfb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    .line 66
    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported chaining mode - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;->getCipherChaining()Lcom/microsoft/schemas/office/x2006/encryption/STCipherChaining$Enum;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    sget-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    .line 63
    nop

    .line 71
    :goto_0
    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;->getHashSize()I

    move-result v0

    .line 73
    .local v0, "hashSize":I
    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;->getHashAlgorithm()Lcom/microsoft/schemas/office/x2006/encryption/STHashAlgorithm$Enum;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/schemas/office/x2006/encryption/STHashAlgorithm$Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->fromEcmaId(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v4

    .line 74
    .local v4, "ha":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    .line 76
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v5

    iget v5, v5, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    if-ne v5, v0, :cond_3

    .line 81
    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;->getSaltSize()I

    move-result v5

    .line 82
    .local v5, "saltLength":I
    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;->getSaltValue()[B

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setKeySalt([B)V

    .line 83
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getKeySalt()[B

    move-result-object v6

    array-length v6, v6

    if-ne v6, v5, :cond_2

    .line 87
    invoke-interface {p1}, Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;->getEncryption()Lcom/microsoft/schemas/office/x2006/encryption/CTEncryption;

    move-result-object v6

    invoke-interface {v6}, Lcom/microsoft/schemas/office/x2006/encryption/CTEncryption;->getDataIntegrity()Lcom/microsoft/schemas/office/x2006/encryption/CTDataIntegrity;

    move-result-object v6

    .line 88
    .local v6, "di":Lcom/microsoft/schemas/office/x2006/encryption/CTDataIntegrity;
    invoke-interface {v6}, Lcom/microsoft/schemas/office/x2006/encryption/CTDataIntegrity;->getEncryptedHmacKey()[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setEncryptedHmacKey([B)V

    .line 89
    invoke-interface {v6}, Lcom/microsoft/schemas/office/x2006/encryption/CTDataIntegrity;->getEncryptedHmacValue()[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setEncryptedHmacValue([B)V

    .line 90
    return-void

    .line 84
    .end local v6    # "di":Lcom/microsoft/schemas/office/x2006/encryption/CTDataIntegrity;
    :cond_2
    new-instance v6, Lorg/apache/poi/EncryptedDocumentException;

    const-string v7, "Invalid salt length"

    invoke-direct {v6, v7}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 77
    .end local v5    # "saltLength":I
    :cond_3
    new-instance v5, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported hash algorithm: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;->getHashAlgorithm()Lcom/microsoft/schemas/office/x2006/encryption/STHashAlgorithm$Enum;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " @ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 42
    .end local v0    # "hashSize":I
    .end local v2    # "ca":Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .end local v3    # "keyBits":I
    .end local v4    # "ha":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "keyData not set"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v1    # "keyData":Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;
    .end local p1    # "ed":Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    .restart local v1    # "keyData":Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;
    .restart local p1    # "ed":Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v1    # "keyData":Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;
    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "keyData":Lcom/microsoft/schemas/office/x2006/encryption/CTKeyData;
    :goto_1
    new-instance v2, Lorg/apache/poi/EncryptedDocumentException;

    const-string v3, "Unable to parse keyData"

    invoke-direct {v2, v3}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionInfoBuilder;->parseDescriptor(Ljava/lang/String;)Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;-><init>(Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 0
    .param p1, "algorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .param p2, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p3, "keyBits"    # I
    .param p4, "blockSize"    # I
    .param p5, "chainingMode"    # Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 93
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;-><init>()V

    .line 94
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    .line 95
    invoke-virtual {p0, p2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    .line 96
    invoke-virtual {p0, p3}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setKeySize(I)V

    .line 97
    invoke-virtual {p0, p4}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setBlockSize(I)V

    .line 98
    invoke-virtual {p0, p5}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    .line 99
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->clone()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->clone()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 128
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->clone()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    .line 129
    .local v0, "other":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->encryptedHmacKey:[B

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_0
    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->encryptedHmacKey:[B

    .line 130
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->encryptedHmacValue:[B

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [B

    :goto_1
    iput-object v2, v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->encryptedHmacValue:[B

    .line 131
    return-object v0
.end method

.method public getEncryptedHmacKey()[B
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->encryptedHmacKey:[B

    return-object v0
.end method

.method public getEncryptedHmacValue()[B
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->encryptedHmacValue:[B

    return-object v0
.end method

.method protected setEncryptedHmacKey([B)V
    .locals 1
    .param p1, "encryptedHmacKey"    # [B

    .line 115
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->encryptedHmacKey:[B

    .line 116
    return-void
.end method

.method protected setEncryptedHmacValue([B)V
    .locals 1
    .param p1, "encryptedHmacValue"    # [B

    .line 123
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->encryptedHmacValue:[B

    .line 124
    return-void
.end method

.method protected setKeySalt([B)V
    .locals 2
    .param p1, "salt"    # [B

    .line 104
    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getBlockSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 107
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setKeySalt([B)V

    .line 108
    return-void

    .line 105
    :cond_0
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "invalid verifier salt"

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
