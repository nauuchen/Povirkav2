.class Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;
.super Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
.source "XOREncryptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XORCipherOutputStream"
.end annotation


# instance fields
.field private recordEnd:I

.field private recordStart:I

.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;Ljava/io/OutputStream;I)V
    .locals 0
    .param p2, "stream"    # Ljava/io/OutputStream;
    .param p3, "initialPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;

    .line 95
    const/4 p1, -0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 91
    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->recordStart:I

    .line 92
    iput p1, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->recordEnd:I

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 0
    .param p2, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;

    .line 99
    const/4 p1, -0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;I)V

    .line 91
    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->recordStart:I

    .line 92
    iput p1, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->recordEnd:I

    .line 100
    return-void
.end method

.method private rotateLeft(BI)B
    .locals 3
    .param p1, "bits"    # B
    .param p2, "shift"    # I

    .line 175
    and-int/lit16 v0, p1, 0xff

    shl-int/2addr v0, p2

    and-int/lit16 v1, p1, 0xff

    rsub-int/lit8 v2, p2, 0x8

    ushr-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method


# virtual methods
.method protected calculateChecksum(Ljava/io/File;I)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "i"    # I

    .line 110
    return-void
.end method

.method protected createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;)V
    .locals 1
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p2, "tmpFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;->createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 116
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->setNextRecordSize(IZ)V

    .line 131
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->flush()V

    .line 132
    return-void
.end method

.method protected initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;
    .locals 3
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "block"    # I
    .param p3, "lastChunk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, p2, v0, v1, v2}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method protected invokeCipher(IZ)I
    .locals 9
    .param p1, "posInChunk"    # I
    .param p2, "doFinal"    # Z

    .line 136
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 137
    return v0

    .line 140
    :cond_0
    iget v1, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->recordEnd:I

    iget v2, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->recordStart:I

    sub-int/2addr v1, v2

    sub-int v1, p1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 142
    .local v0, "start":I
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->getPlainByteFlags()Ljava/util/BitSet;

    move-result-object v1

    .line 143
    .local v1, "plainBytes":Ljava/util/BitSet;
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/Encryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 144
    .local v2, "xorArray":[B
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->getChunk()[B

    move-result-object v3

    .line 145
    .local v3, "chunk":[B
    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 158
    .local v4, "plain":[B
    :goto_0
    iget v5, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->recordEnd:I

    iget v6, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->recordStart:I

    sub-int v6, v0, v6

    add-int/2addr v5, v6

    .line 160
    .local v5, "xorArrayIndex":I
    move v6, v0

    .local v6, "i":I
    :goto_1
    if-ge v6, p1, :cond_2

    .line 161
    aget-byte v7, v3, v6

    .line 162
    .local v7, "value":B
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "xorArrayIndex":I
    .local v8, "xorArrayIndex":I
    and-int/lit8 v5, v5, 0xf

    aget-byte v5, v2, v5

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    .line 163
    .end local v7    # "value":B
    .local v5, "value":B
    const/4 v7, 0x5

    invoke-direct {p0, v5, v7}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->rotateLeft(BI)B

    move-result v5

    .line 164
    aput-byte v5, v3, v6

    .line 160
    .end local v5    # "value":B
    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_1

    .line 167
    .end local v6    # "i":I
    .end local v8    # "xorArrayIndex":I
    .local v5, "xorArrayIndex":I
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v6

    .restart local v6    # "i":I
    :goto_2
    if-ltz v6, :cond_3

    if-ge v6, p1, :cond_3

    .line 168
    aget-byte v7, v4, v6

    aput-byte v7, v3, v6

    .line 167
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v6

    goto :goto_2

    .line 171
    .end local v6    # "i":I
    :cond_3
    return p1
.end method

.method public setNextRecordSize(IZ)V
    .locals 2
    .param p1, "recordSize"    # I
    .param p2, "isPlain"    # Z

    .line 120
    iget v0, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->recordEnd:I

    if-lez v0, :cond_0

    if-nez p2, :cond_0

    .line 122
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->getPos()J

    move-result-wide v0

    long-to-int v1, v0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->invokeCipher(IZ)I

    .line 124
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->getTotalPos()J

    move-result-wide v0

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->recordStart:I

    .line 125
    add-int/2addr v1, p1

    iput v1, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->recordEnd:I

    .line 126
    return-void
.end method
