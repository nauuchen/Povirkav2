.class public Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;
.super Ljava/lang/Object;
.source "StandardEncryptionInfoBuilder.java"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 8
    .param p1, "info"    # Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .param p2, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .param p3, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p4, "keyBits"    # I
    .param p5, "blockSize"    # I
    .param p6, "chainingMode"    # Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 53
    if-nez p2, :cond_0

    .line 54
    sget-object p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 56
    :cond_0
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    if-eq p2, v0, :cond_2

    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes192:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    if-eq p2, v0, :cond_2

    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes256:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "Standard encryption only supports AES128/192/256."

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_2
    :goto_0
    if-nez p3, :cond_3

    .line 63
    sget-object p3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 65
    :cond_3
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    if-ne p3, v0, :cond_b

    .line 68
    if-nez p6, :cond_4

    .line 69
    sget-object p6, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 71
    :cond_4
    sget-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    if-ne p6, v0, :cond_a

    .line 74
    const/4 v0, -0x1

    if-ne p4, v0, :cond_5

    .line 75
    iget p4, p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->defaultKeySize:I

    .line 77
    :cond_5
    if-ne p5, v0, :cond_6

    .line 78
    iget p5, p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->blockSize:I

    .line 80
    :cond_6
    const/4 v0, 0x0

    .line 81
    .local v0, "found":Z
    iget-object v1, p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    .local v1, "arr$":[I
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    move v6, v0

    .end local v0    # "found":Z
    .local v3, "i$":I
    .local v6, "found":Z
    :goto_1
    if-ge v3, v2, :cond_8

    aget v0, v1, v3

    .line 82
    .local v0, "ks":I
    if-ne v0, p4, :cond_7

    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    :goto_2
    or-int/2addr v6, v4

    .line 81
    .end local v0    # "ks":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 84
    .end local v1    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_8
    if-eqz v6, :cond_9

    .line 87
    new-instance v7, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;-><init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    invoke-virtual {p1, v7}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    .line 88
    new-instance v7, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;-><init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    invoke-virtual {p1, v7}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    .line 89
    new-instance v0, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;-><init>()V

    .line 90
    .local v0, "dec":Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;
    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 91
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    .line 92
    new-instance v1, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;

    invoke-direct {v1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;-><init>()V

    .line 93
    .local v1, "enc":Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;
    invoke-virtual {v1, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 94
    invoke-virtual {p1, v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setEncryptor(Lorg/apache/poi/poifs/crypt/Encryptor;)V

    .line 95
    return-void

    .line 85
    .end local v0    # "dec":Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;
    .end local v1    # "enc":Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;
    :cond_9
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeySize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not allowed for Cipher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    .end local v6    # "found":Z
    :cond_a
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "Standard encryption only supports ECB chaining."

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_b
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "Standard encryption only supports SHA-1."

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 3
    .param p1, "info"    # Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .param p2, "dis"    # Lorg/apache/poi/util/LittleEndianInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-interface {p2}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    .line 37
    new-instance v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    invoke-direct {v0, p2}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 38
    .local v0, "header":Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    .line 39
    new-instance v1, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    invoke-direct {v1, p2, v0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;-><init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;)V

    invoke-virtual {p1, v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    .line 41
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMinor()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 42
    :cond_0
    new-instance v1, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;

    invoke-direct {v1}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;-><init>()V

    .line 43
    .local v1, "dec":Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;
    invoke-virtual {v1, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 44
    invoke-virtual {p1, v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    .line 46
    .end local v1    # "dec":Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;
    :cond_1
    return-void
.end method
