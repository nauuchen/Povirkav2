.class public Lorg/apache/poi/poifs/crypt/xor/XOREncryptionInfoBuilder;
.super Ljava/lang/Object;
.source "XOREncryptionInfoBuilder.java"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 2
    .param p1, "info"    # Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .param p2, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .param p3, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p4, "keyBits"    # I
    .param p5, "blockSize"    # I
    .param p6, "chainingMode"    # Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 53
    new-instance v0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    .line 54
    new-instance v0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    .line 55
    new-instance v0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;-><init>()V

    .line 56
    .local v0, "dec":Lorg/apache/poi/poifs/crypt/Decryptor;
    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 57
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    .line 58
    new-instance v1, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;

    invoke-direct {v1}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;-><init>()V

    .line 59
    .local v1, "enc":Lorg/apache/poi/poifs/crypt/Encryptor;
    invoke-virtual {v1, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 60
    invoke-virtual {p1, v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setEncryptor(Lorg/apache/poi/poifs/crypt/Encryptor;)V

    .line 61
    return-void
.end method

.method public initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 2
    .param p1, "info"    # Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .param p2, "dis"    # Lorg/apache/poi/util/LittleEndianInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    .line 40
    new-instance v0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;

    invoke-direct {v0, p2}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    .line 41
    new-instance v0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;-><init>()V

    .line 42
    .local v0, "dec":Lorg/apache/poi/poifs/crypt/Decryptor;
    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 43
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    .line 44
    new-instance v1, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;

    invoke-direct {v1}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;-><init>()V

    .line 45
    .local v1, "enc":Lorg/apache/poi/poifs/crypt/Encryptor;
    invoke-virtual {v1, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 46
    invoke-virtual {p1, v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setEncryptor(Lorg/apache/poi/poifs/crypt/Encryptor;)V

    .line 47
    return-void
.end method
