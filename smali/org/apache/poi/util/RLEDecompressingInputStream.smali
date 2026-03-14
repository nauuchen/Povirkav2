.class public Lorg/apache/poi/util/RLEDecompressingInputStream;
.super Ljava/io/InputStream;
.source "RLEDecompressingInputStream.java"


# static fields
.field private static final POWER2:[I


# instance fields
.field private final buf:[B

.field private final in:Ljava/io/InputStream;

.field private len:I

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/util/RLEDecompressingInputStream;->POWER2:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    .line 75
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->buf:[B

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    .line 77
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 78
    .local v1, "header":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 81
    invoke-direct {p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readChunk()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    .line 82
    return-void

    .line 79
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    and-int/lit16 v5, v1, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    const-string v0, "Header byte 0x01 expected, received 0x%02X"

    invoke-static {v4, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static decompress([B)[B
    .locals 2
    .param p0, "compressed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->decompress([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decompress([BII)[B
    .locals 4
    .param p0, "compressed"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 284
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0, p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 285
    .local v1, "instream":Ljava/io/InputStream;
    new-instance v2, Lorg/apache/poi/util/RLEDecompressingInputStream;

    invoke-direct {v2, v1}, Lorg/apache/poi/util/RLEDecompressingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 286
    .local v2, "stream":Ljava/io/InputStream;
    invoke-static {v2, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 287
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 288
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 289
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method static getCopyLenBits(I)I
    .locals 2
    .param p0, "offset"    # I

    .line 222
    const/16 v0, 0xb

    .local v0, "n":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 223
    sget-object v1, Lorg/apache/poi/util/RLEDecompressingInputStream;->POWER2:[I

    aget v1, v1, v0

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 224
    rsub-int/lit8 v1, v0, 0xf

    return v1

    .line 222
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 227
    .end local v0    # "n":I
    :cond_1
    const/16 v0, 0xc

    return v0
.end method

.method private readChunk()I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    .line 158
    iget-object v2, v0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort(Ljava/io/InputStream;)I

    move-result v2

    .line 159
    .local v2, "w":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 160
    return v3

    .line 162
    :cond_0
    and-int/lit16 v4, v2, 0xfff

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 163
    .local v4, "chunkSize":I
    and-int/lit16 v6, v2, 0x7000

    const/16 v7, 0x3000

    if-ne v6, v7, :cond_c

    .line 166
    const v6, 0x8000

    and-int/2addr v6, v2

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 167
    .local v6, "rawChunk":Z
    :goto_0
    if-eqz v6, :cond_3

    .line 168
    iget-object v3, v0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    iget-object v7, v0, Lorg/apache/poi/util/RLEDecompressingInputStream;->buf:[B

    invoke-virtual {v3, v7, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lt v3, v4, :cond_2

    .line 171
    return v4

    .line 169
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v1

    const-string v1, "Not enough bytes read, expected %d"

    invoke-static {v7, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 173
    :cond_3
    const/4 v1, 0x0

    .line 174
    .local v1, "inOffset":I
    const/4 v7, 0x0

    .line 175
    .local v7, "outOffset":I
    :goto_1
    if-ge v1, v4, :cond_b

    .line 176
    iget-object v8, v0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 177
    .local v8, "tokenFlags":I
    add-int/lit8 v1, v1, 0x1

    .line 178
    if-ne v8, v3, :cond_4

    .line 179
    goto :goto_6

    .line 181
    :cond_4
    const/4 v9, 0x0

    .local v9, "n":I
    :goto_2
    const/16 v10, 0x8

    if-ge v9, v10, :cond_a

    .line 182
    if-lt v1, v4, :cond_5

    .line 183
    goto :goto_5

    .line 185
    :cond_5
    sget-object v10, Lorg/apache/poi/util/RLEDecompressingInputStream;->POWER2:[I

    aget v11, v10, v9

    and-int/2addr v11, v8

    if-nez v11, :cond_7

    .line 187
    iget-object v10, v0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->read()I

    move-result v10

    .line 188
    .local v10, "b":I
    if-ne v10, v3, :cond_6

    .line 189
    return v3

    .line 191
    :cond_6
    iget-object v11, v0, Lorg/apache/poi/util/RLEDecompressingInputStream;->buf:[B

    add-int/lit8 v12, v7, 0x1

    .end local v7    # "outOffset":I
    .local v12, "outOffset":I
    int-to-byte v13, v10

    aput-byte v13, v11, v7

    .line 192
    nop

    .end local v10    # "b":I
    add-int/lit8 v1, v1, 0x1

    .line 193
    move v7, v12

    goto :goto_4

    .line 195
    .end local v12    # "outOffset":I
    .restart local v7    # "outOffset":I
    :cond_7
    iget-object v11, v0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v0, v11}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort(Ljava/io/InputStream;)I

    move-result v11

    .line 196
    .local v11, "token":I
    if-ne v11, v3, :cond_8

    .line 197
    return v3

    .line 199
    :cond_8
    add-int/lit8 v1, v1, 0x2

    .line 200
    add-int/lit8 v12, v7, -0x1

    invoke-static {v12}, Lorg/apache/poi/util/RLEDecompressingInputStream;->getCopyLenBits(I)I

    move-result v12

    .line 201
    .local v12, "copyLenBits":I
    shr-int v13, v11, v12

    add-int/2addr v13, v5

    .line 202
    .local v13, "copyOffset":I
    aget v10, v10, v12

    sub-int/2addr v10, v5

    and-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x3

    .line 203
    .local v10, "copyLen":I
    sub-int v14, v7, v13

    .line 204
    .local v14, "startPos":I
    add-int v15, v14, v10

    .line 205
    .local v15, "endPos":I
    move/from16 v16, v14

    move/from16 v3, v16

    .local v3, "i":I
    :goto_3
    if-ge v3, v15, :cond_9

    .line 206
    iget-object v5, v0, Lorg/apache/poi/util/RLEDecompressingInputStream;->buf:[B

    add-int/lit8 v17, v7, 0x1

    .end local v7    # "outOffset":I
    .local v17, "outOffset":I
    aget-byte v18, v5, v3

    aput-byte v18, v5, v7

    .line 205
    add-int/lit8 v3, v3, 0x1

    move/from16 v7, v17

    const/4 v5, 0x1

    goto :goto_3

    .line 181
    .end local v3    # "i":I
    .end local v10    # "copyLen":I
    .end local v11    # "token":I
    .end local v12    # "copyLenBits":I
    .end local v13    # "copyOffset":I
    .end local v14    # "startPos":I
    .end local v15    # "endPos":I
    .end local v17    # "outOffset":I
    .restart local v7    # "outOffset":I
    :cond_9
    :goto_4
    add-int/lit8 v9, v9, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x1

    goto :goto_2

    .line 210
    .end local v8    # "tokenFlags":I
    .end local v9    # "n":I
    :cond_a
    :goto_5
    const/4 v3, -0x1

    const/4 v5, 0x1

    goto :goto_1

    .line 211
    :cond_b
    :goto_6
    return v7

    .line 164
    .end local v1    # "inOffset":I
    .end local v6    # "rawChunk":Z
    .end local v7    # "outOffset":I
    :cond_c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const v7, 0xe000

    and-int/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v1, "Chunksize header A should be 0x3000, received 0x%04X"

    invoke-static {v5, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private readInt(Ljava/io/InputStream;)I
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    move v1, v0

    .local v1, "b0":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 264
    return v2

    .line 266
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    move v3, v0

    .local v3, "b1":I
    if-ne v0, v2, :cond_1

    .line 267
    return v2

    .line 269
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    move v4, v0

    .local v4, "b2":I
    if-ne v0, v2, :cond_2

    .line 270
    return v2

    .line 272
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    move v5, v0

    .local v5, "b3":I
    if-ne v0, v2, :cond_3

    .line 273
    return v2

    .line 275
    :cond_3
    and-int/lit16 v0, v1, 0xff

    and-int/lit16 v2, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    and-int/lit16 v2, v4, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    and-int/lit16 v2, v5, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method private readShort(Ljava/io/InputStream;)I
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    move v1, v0

    .local v1, "b0":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 253
    return v2

    .line 255
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    move v3, v0

    .local v3, "b1":I
    if-ne v0, v2, :cond_1

    .line 256
    return v2

    .line 258
    :cond_1
    and-int/lit16 v0, v1, 0xff

    and-int/lit16 v2, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    return v0
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 142
    iget v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    if-lez v0, :cond_0

    iget v1, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 148
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 87
    return v1

    .line 89
    :cond_0
    iget v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    if-lt v2, v0, :cond_1

    .line 90
    invoke-direct {p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readChunk()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    if-ne v0, v1, :cond_1

    .line 91
    return v1

    .line 94
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->buf:[B

    iget v1, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "l"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 105
    return v1

    .line 107
    :cond_0
    move v0, p2

    .line 108
    .local v0, "offset":I
    move v2, p3

    .line 109
    .local v2, "length":I
    :goto_0
    if-lez v2, :cond_3

    .line 110
    iget v3, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    iget v4, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    if-lt v3, v4, :cond_2

    .line 111
    invoke-direct {p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readChunk()I

    move-result v3

    iput v3, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    if-ne v3, v1, :cond_2

    .line 112
    if-le v0, p2, :cond_1

    sub-int v1, v0, p2

    :cond_1
    return v1

    .line 115
    :cond_2
    iget v3, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    iget v4, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 116
    .local v3, "c":I
    iget-object v4, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->buf:[B

    iget v5, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    invoke-static {v4, v5, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iget v4, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    .line 118
    sub-int/2addr v2, v3

    .line 119
    add-int/2addr v0, v3

    .line 120
    .end local v3    # "c":I
    goto :goto_0

    .line 121
    :cond_3
    return p3
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    invoke-direct {p0, p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readInt(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public readShort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-direct {p0, p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public skip(J)J
    .locals 6
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    move-wide v0, p1

    .line 127
    .local v0, "length":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 128
    iget v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    iget v3, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    if-lt v2, v3, :cond_0

    .line 129
    invoke-direct {p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readChunk()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 130
    const-wide/16 v2, -0x1

    return-wide v2

    .line 133
    :cond_0
    iget v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    iget v3, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 134
    .local v3, "c":I
    iget v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    .line 135
    int-to-long v4, v3

    sub-long/2addr v0, v4

    .line 136
    .end local v3    # "c":I
    goto :goto_0

    .line 137
    :cond_1
    return-wide p1
.end method
