.class public Lorg/apache/poi/util/LittleEndianInputStream;
.super Ljava/io/FilterInputStream;
.source "LittleEndianInputStream.java"

# interfaces
.implements Lorg/apache/poi/util/LittleEndianInput;


# static fields
.field private static final EOF:I = -0x1


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;

    .line 35
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    return-void
.end method

.method private _read([BII)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    move v0, p3

    .line 144
    .local v0, "remaining":I
    :goto_0
    if-lez v0, :cond_1

    .line 145
    sub-int v1, p3, v0

    .line 146
    .local v1, "location":I
    add-int v2, p2, v1

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->read([BII)I

    move-result v2

    .line 147
    .local v2, "count":I
    const/4 v3, -0x1

    if-ne v3, v2, :cond_0

    .line 148
    goto :goto_1

    .line 150
    :cond_0
    sub-int/2addr v0, v2

    .line 151
    .end local v1    # "location":I
    .end local v2    # "count":I
    goto :goto_0

    .line 153
    :cond_1
    :goto_1
    sub-int v1, p3, v0

    return v1
.end method

.method private static checkEOF(II)V
    .locals 2
    .param p0, "actualBytes"    # I
    .param p1, "expectedBytes"    # I

    .line 121
    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected end-of-file"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 42
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readByte()B
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    .line 66
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFully([B)V
    .locals 2
    .param p1, "buf"    # [B

    .line 128
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([BII)V

    .line 129
    return-void
.end method

.method public readFully([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 134
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/util/LittleEndianInputStream;->_read([BII)I

    move-result v0

    invoke-static {v0, p3}, Lorg/apache/poi/util/LittleEndianInputStream;->checkEOF(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    nop

    .line 138
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readInt()I
    .locals 3

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 73
    .local v0, "buf":[B
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->read([B)I

    move-result v1

    array-length v2, v0

    invoke-static {v1, v2}, Lorg/apache/poi/util/LittleEndianInputStream;->checkEOF(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    nop

    .line 77
    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result v1

    return v1

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public readLong()J
    .locals 4

    .line 95
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 97
    .local v1, "buf":[B
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/util/LittleEndianInputStream;->read([B)I

    move-result v2

    invoke-static {v2, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->checkEOF(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    nop

    .line 101
    invoke-static {v1}, Lorg/apache/poi/util/LittleEndian;->getLong([B)J

    move-result-wide v2

    return-wide v2

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public readPlain([BII)V
    .locals 0
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 158
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([BII)V

    .line 159
    return-void
.end method

.method public readShort()S
    .locals 1

    .line 106
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public readUByte()I
    .locals 3

    .line 55
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 57
    .local v1, "buf":[B
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/util/LittleEndianInputStream;->read([B)I

    move-result v2

    invoke-static {v2, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->checkEOF(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    nop

    .line 61
    invoke-static {v1}, Lorg/apache/poi/util/LittleEndian;->getUByte([B)S

    move-result v0

    return v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public readUInt()J
    .locals 4

    .line 89
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    .line 90
    .local v0, "retNum":J
    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    return-wide v2
.end method

.method public readUShort()I
    .locals 3

    .line 111
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 113
    .local v1, "buf":[B
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/util/LittleEndianInputStream;->read([B)I

    move-result v2

    invoke-static {v2, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->checkEOF(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    nop

    .line 117
    invoke-static {v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([B)I

    move-result v0

    return v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
