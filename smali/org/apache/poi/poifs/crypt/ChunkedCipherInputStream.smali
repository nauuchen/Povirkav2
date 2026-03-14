.class public abstract Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;
.super Lorg/apache/poi/util/LittleEndianInputStream;
.source "ChunkedCipherInputStream.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final chunk:[B

.field private final chunkBits:I

.field private chunkIsValid:Z

.field private final chunkSize:I

.field private final cipher:Ljavax/crypto/Cipher;

.field private lastIndex:I

.field private final plain:[B

.field private pos:J

.field private final size:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JI)V
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "size"    # J
    .param p4, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 48
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;-><init>(Ljava/io/InputStream;JII)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JII)V
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "size"    # J
    .param p4, "chunkSize"    # I
    .param p5, "initialPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkIsValid:Z

    .line 54
    iput-wide p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->size:J

    .line 55
    int-to-long v0, p5

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    .line 56
    iput p4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkSize:I

    .line 57
    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    const/16 v0, 0x1000

    goto :goto_0

    :cond_0
    move v0, p4

    .line 58
    .local v0, "cs":I
    :goto_0
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunk:[B

    .line 59
    new-array v2, v0, [B

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->plain:[B

    .line 60
    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkBits:I

    .line 61
    iget-wide v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    shr-long v1, v2, v1

    long-to-int v2, v1

    iput v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->lastIndex:I

    .line 62
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    .line 63
    return-void
.end method

.method private nextChunk()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkSize:I

    const-string v1, "buffer underrun"

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 177
    iget-wide v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    iget v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkBits:I

    shr-long/2addr v3, v0

    long-to-int v0, v3

    .line 178
    .local v0, "index":I
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, v3, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    .line 180
    iget v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->lastIndex:I

    if-eq v3, v0, :cond_1

    .line 181
    sub-int v3, v0, v3

    iget v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkBits:I

    shl-int/2addr v3, v4

    int-to-long v3, v3

    .line 182
    .local v3, "skipN":J
    invoke-super {p0, v3, v4}, Lorg/apache/poi/util/LittleEndianInputStream;->skip(J)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-ltz v7, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 187
    .end local v3    # "skipN":J
    :cond_1
    :goto_0
    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->lastIndex:I

    .line 190
    .end local v0    # "index":I
    :cond_2
    iget-wide v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->size:J

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunk:[B

    array-length v0, v0

    int-to-long v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v0, v3

    .line 191
    .local v0, "todo":I
    const/4 v3, 0x0

    .local v3, "readBytes":I
    const/4 v4, 0x0

    .line 193
    .local v4, "totalBytes":I
    :cond_3
    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->plain:[B

    sub-int v6, v0, v4

    invoke-super {p0, v5, v4, v6}, Lorg/apache/poi/util/LittleEndianInputStream;->read([BII)I

    move-result v3

    .line 194
    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v4, v6

    .line 195
    if-eq v3, v2, :cond_4

    if-lt v4, v0, :cond_3

    .line 197
    :cond_4
    if-ne v3, v2, :cond_6

    iget-wide v6, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    int-to-long v8, v4

    add-long/2addr v6, v8

    iget-wide v8, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->size:J

    cmp-long v2, v6, v8

    if-gez v2, :cond_6

    const-wide/32 v6, 0x7fffffff

    cmp-long v2, v8, v6

    if-ltz v2, :cond_5

    goto :goto_1

    .line 198
    :cond_5
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    :cond_6
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->plain:[B

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunk:[B

    invoke-static {v1, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    iget v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkSize:I

    if-ne v4, v1, :cond_7

    const/4 v5, 0x1

    :cond_7
    invoke-virtual {p0, v4, v5}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->invokeCipher(IZ)I

    .line 204
    return-void
.end method

.method private read([BIIZ)I
    .locals 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "readPlain"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, "total":I
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->available()I

    move-result v1

    if-gtz v1, :cond_0

    .line 96
    const/4 v1, -0x1

    return v1

    .line 99
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->getChunkMask()I

    move-result v1

    .line 100
    .local v1, "chunkMask":I
    :goto_0
    if-lez p3, :cond_5

    .line 101
    iget-boolean v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkIsValid:Z

    if-nez v2, :cond_1

    .line 103
    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->nextChunk()V

    .line 104
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkIsValid:Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_1

    .line 105
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Lorg/apache/poi/EncryptedDocumentException;

    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 109
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunk:[B

    array-length v2, v2

    int-to-long v2, v2

    iget-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    int-to-long v6, v1

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v3, v2

    .line 110
    .local v3, "count":I
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->available()I

    move-result v2

    .line 111
    .local v2, "avail":I
    if-nez v2, :cond_2

    .line 112
    return v0

    .line 114
    :cond_2
    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 116
    if-eqz p4, :cond_3

    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->plain:[B

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunk:[B

    :goto_2
    iget-wide v5, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    int-to-long v7, v1

    and-long/2addr v5, v7

    long-to-int v6, v5

    invoke-static {v4, v6, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    add-int/2addr p2, v3

    .line 119
    sub-int/2addr p3, v3

    .line 120
    iget-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    .line 121
    int-to-long v6, v1

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_4

    .line 122
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkIsValid:Z

    .line 124
    :cond_4
    add-int/2addr v0, v3

    .line 125
    .end local v2    # "avail":I
    .end local v3    # "count":I
    goto :goto_0

    .line 127
    :cond_5
    return v0
.end method

.method private remainingBytes()I
    .locals 4

    .line 153
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->size:J

    iget-wide v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 144
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->remainingBytes()I

    move-result v0

    return v0
.end method

.method protected getChunk()[B
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunk:[B

    return-object v0
.end method

.method protected getChunkMask()I
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunk:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected getPlain()[B
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->plain:[B

    return-object v0
.end method

.method public getPos()J
    .locals 2

    .line 276
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    return-wide v0
.end method

.method public final initCipherForBlock(I)Ljavax/crypto/Cipher;
    .locals 2
    .param p1, "block"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 66
    iget v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkIsValid:Z

    .line 71
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "the cipher block can only be set for streaming encryption, e.g. CryptoAPI..."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method protected invokeCipher(IZ)I
    .locals 3
    .param p1, "totalBytes"    # I
    .param p2, "doFinal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 215
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 216
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunk:[B

    invoke-virtual {v1, v2, v0, p1, v2}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move-result v0

    return v0

    .line 218
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunk:[B

    invoke-virtual {v1, v2, v0, p1, v2}, Ljavax/crypto/Cipher;->update([BII[B)I

    move-result v0

    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 163
    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .end local p0    # "this":Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;
    .end local p1    # "readlimit":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    .line 81
    .local v1, "b":[B
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->read([B)I

    move-result v3

    if-ne v3, v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    aget-byte v0, v1, v2

    :goto_0
    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->read([BIIZ)I

    move-result v0

    return v0
.end method

.method public readPlain([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 229
    if-gtz p3, :cond_0

    .line 230
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x0

    .line 236
    .local v0, "total":I
    :cond_1
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->read([BIIZ)I

    move-result v1

    .line 237
    .local v1, "readBytes":I
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 238
    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    if-lt v0, p3, :cond_1

    .line 240
    :cond_2
    if-lt v0, p3, :cond_3

    .line 246
    .end local v0    # "total":I
    .end local v1    # "readBytes":I
    nop

    .line 247
    return-void

    .line 241
    .restart local v0    # "total":I
    .restart local v1    # "readBytes":I
    :cond_3
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "buffer underrun"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v0    # "total":I
    .end local v1    # "readBytes":I
    .restart local p1    # "b":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 168
    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .end local p0    # "this":Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNextRecordSize(I)V
    .locals 0
    .param p1, "recordSize"    # I

    .line 256
    return-void
.end method

.method public skip(J)J
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    .line 133
    .local v0, "start":J
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->remainingBytes()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 135
    .local v2, "skip":J
    iget-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    add-long/2addr v4, v2

    xor-long/2addr v4, v0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->getChunkMask()I

    move-result v6

    not-int v6, v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 136
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkIsValid:Z

    .line 138
    :cond_0
    iget-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    .line 139
    return-wide v2
.end method
