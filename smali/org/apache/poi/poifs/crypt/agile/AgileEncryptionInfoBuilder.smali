.class public Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionInfoBuilder;
.super Ljava/lang/Object;
.source "AgileEncryptionInfoBuilder.java"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static parseDescriptor(Ljava/io/InputStream;)Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;
    .locals 3
    .param p0, "descriptor"    # Ljava/io/InputStream;

    .line 104
    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p0, v0}, Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v2, "Unable to parse encryption descriptor"

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static parseDescriptor(Ljava/lang/String;)Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;
    .locals 3
    .param p0, "descriptor"    # Ljava/lang/String;

    .line 96
    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p0, v0}, Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument$Factory;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v2, "Unable to parse encryption descriptor"

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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

    .line 56
    if-nez p2, :cond_0

    .line 57
    sget-object p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 59
    :cond_0
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    if-eq p2, v0, :cond_a

    .line 62
    if-nez p3, :cond_1

    .line 63
    sget-object p3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 65
    :cond_1
    if-nez p6, :cond_2

    .line 66
    sget-object p6, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 68
    :cond_2
    sget-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    if-eq p6, v0, :cond_4

    sget-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->cfb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    if-ne p6, v0, :cond_3

    goto :goto_0

    .line 69
    :cond_3
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "Agile encryption only supports CBC/CFB chaining."

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_4
    :goto_0
    const/4 v0, -0x1

    if-ne p4, v0, :cond_5

    .line 72
    iget p4, p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->defaultKeySize:I

    .line 74
    :cond_5
    if-ne p5, v0, :cond_6

    .line 75
    iget p5, p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->blockSize:I

    .line 77
    :cond_6
    const/4 v0, 0x0

    .line 78
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

    .line 79
    .local v0, "ks":I
    if-ne v0, p4, :cond_7

    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    :goto_2
    or-int/2addr v6, v4

    .line 78
    .end local v0    # "ks":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 81
    .end local v1    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_8
    if-eqz v6, :cond_9

    .line 84
    new-instance v7, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;-><init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    invoke-virtual {p1, v7}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    .line 85
    new-instance v7, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;-><init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    invoke-virtual {p1, v7}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    .line 86
    new-instance v0, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;-><init>()V

    .line 87
    .local v0, "dec":Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;
    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 88
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    .line 89
    new-instance v1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    invoke-direct {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;-><init>()V

    .line 90
    .local v1, "enc":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;
    invoke-virtual {v1, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 91
    invoke-virtual {p1, v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setEncryptor(Lorg/apache/poi/poifs/crypt/Encryptor;)V

    .line 92
    return-void

    .line 82
    .end local v0    # "dec":Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;
    .end local v1    # "enc":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;
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

    .line 60
    .end local v6    # "found":Z
    :cond_a
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "RC4 must not be used with agile encryption."

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

    .line 40
    move-object v0, p2

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionInfoBuilder;->parseDescriptor(Ljava/io/InputStream;)Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;

    move-result-object v0

    .line 41
    .local v0, "ed":Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;
    new-instance v1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    invoke-direct {v1, v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;-><init>(Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;)V

    invoke-virtual {p1, v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    .line 42
    new-instance v1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    invoke-direct {v1, v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;-><init>(Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;)V

    invoke-virtual {p1, v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    .line 43
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result v1

    sget-object v2, Lorg/apache/poi/poifs/crypt/EncryptionMode;->agile:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iget v2, v2, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMajor:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMinor()I

    move-result v1

    sget-object v2, Lorg/apache/poi/poifs/crypt/EncryptionMode;->agile:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iget v2, v2, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    if-ne v1, v2, :cond_0

    .line 45
    new-instance v1, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;

    invoke-direct {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;-><init>()V

    .line 46
    .local v1, "dec":Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;
    invoke-virtual {v1, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 47
    invoke-virtual {p1, v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    .line 48
    new-instance v2, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    invoke-direct {v2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;-><init>()V

    .line 49
    .local v2, "enc":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;
    invoke-virtual {v2, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 50
    invoke-virtual {p1, v2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setEncryptor(Lorg/apache/poi/poifs/crypt/Encryptor;)V

    .line 52
    .end local v1    # "dec":Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;
    .end local v2    # "enc":Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;
    :cond_0
    return-void
.end method
