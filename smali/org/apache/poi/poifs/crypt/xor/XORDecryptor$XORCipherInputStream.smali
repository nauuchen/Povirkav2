.class Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;
.super Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;
.source "XORDecryptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XORCipherInputStream"
.end annotation


# instance fields
.field private final initialOffset:I

.field private recordEnd:I

.field private recordStart:I

.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;Ljava/io/InputStream;I)V
    .locals 2
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "initialPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->this$0:Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;

    .line 109
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->access$000(Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;)I

    move-result p1

    const-wide/32 v0, 0x7fffffff

    invoke-direct {p0, p2, v0, v1, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;-><init>(Ljava/io/InputStream;JI)V

    .line 104
    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->recordStart:I

    .line 105
    iput p1, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->recordEnd:I

    .line 110
    iput p3, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->initialOffset:I

    .line 111
    return-void
.end method

.method private rotateLeft(BI)B
    .locals 3
    .param p1, "bits"    # B
    .param p2, "shift"    # I

    .line 154
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
.method protected initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;
    .locals 1
    .param p1, "existing"    # Ljavax/crypto/Cipher;
    .param p2, "block"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->this$0:Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method protected invokeCipher(IZ)I
    .locals 9
    .param p1, "totalBytes"    # I
    .param p2, "doFinal"    # Z

    .line 121
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->getPos()J

    move-result-wide v0

    long-to-int v1, v0

    .line 122
    .local v1, "pos":I
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->this$0:Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 123
    .local v0, "xorArray":[B
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->getChunk()[B

    move-result-object v2

    .line 124
    .local v2, "chunk":[B
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->getPlain()[B

    move-result-object v3

    .line 125
    .local v3, "plain":[B
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->getChunkMask()I

    move-result v4

    and-int/2addr v4, v1

    .line 137
    .local v4, "posInChunk":I
    iget v5, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->initialOffset:I

    iget v6, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->recordEnd:I

    add-int/2addr v5, v6

    iget v6, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->recordStart:I

    sub-int v6, v1, v6

    add-int/2addr v5, v6

    .line 139
    .local v5, "xorArrayIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    add-int v7, v1, v6

    iget v8, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->recordEnd:I

    if-ge v7, v8, :cond_0

    if-ge v6, p1, :cond_0

    .line 143
    add-int v7, v4, v6

    aget-byte v7, v3, v7

    .line 144
    .local v7, "value":B
    const/4 v8, 0x3

    invoke-direct {p0, v7, v8}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->rotateLeft(BI)B

    move-result v7

    .line 145
    add-int v8, v5, v6

    and-int/lit8 v8, v8, 0xf

    aget-byte v8, v0, v8

    xor-int/2addr v8, v7

    int-to-byte v7, v8

    .line 146
    add-int v8, v4, v6

    aput-byte v7, v2, v8

    .line 139
    .end local v7    # "value":B
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 150
    .end local v6    # "i":I
    :cond_0
    return p1
.end method

.method public setNextRecordSize(I)V
    .locals 5
    .param p1, "recordSize"    # I

    .line 166
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->getPos()J

    move-result-wide v0

    long-to-int v1, v0

    .line 167
    .local v1, "pos":I
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->getChunk()[B

    move-result-object v0

    .line 168
    .local v0, "chunk":[B
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->getChunkMask()I

    move-result v2

    .line 169
    .local v2, "chunkMask":I
    iput v1, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->recordStart:I

    .line 170
    add-int v3, v1, p1

    iput v3, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->recordEnd:I

    .line 171
    array-length v3, v0

    and-int v4, v1, v2

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 172
    .local v3, "nextBytes":I
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->invokeCipher(IZ)I

    .line 173
    return-void
.end method
