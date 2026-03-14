.class public Lorg/apache/poi/util/LittleEndianByteArrayInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "LittleEndianByteArrayInputStream.java"

# interfaces
.implements Lorg/apache/poi/util/LittleEndianInput;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 25
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "buf"    # [B

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([BI)V

    .line 36
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "startOffset"    # I

    .line 31
    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([BII)V

    .line 32
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .param p1, "buf"    # [B
    .param p2, "startOffset"    # I
    .param p3, "maxReadLen"    # I

    .line 27
    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 28
    return-void
.end method


# virtual methods
.method protected checkPosition(I)V
    .locals 2
    .param p1, "i"    # I

    .line 39
    iget v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->count:I

    iget v1, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 42
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Buffer overrun"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReadIndex()I
    .locals 1

    .line 45
    iget v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->pos:I

    return v0
.end method

.method public readByte()B
    .locals 1

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->checkPosition(I)V

    .line 59
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    .line 108
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFully([B)V
    .locals 2
    .param p1, "buffer"    # [B

    .line 119
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->checkPosition(I)V

    .line 120
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->read([BII)I

    .line 121
    return-void
.end method

.method public readFully([BII)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 113
    invoke-virtual {p0, p3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->checkPosition(I)V

    .line 114
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->read([BII)I

    .line 115
    return-void
.end method

.method public readInt()I
    .locals 7

    .line 64
    const/4 v0, 0x4

    .line 65
    .local v0, "size":I
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->checkPosition(I)V

    .line 66
    iget-object v1, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->buf:[B

    iget v2, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->pos:I

    invoke-static {v1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    .line 67
    .local v1, "le":I
    const-wide/16 v2, 0x4

    invoke-super {p0, v2, v3}, Ljava/io/ByteArrayInputStream;->skip(J)J

    move-result-wide v4

    .line 68
    .local v4, "skipped":J
    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    .line 69
    return v1

    .line 68
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Buffer overrun"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public readLong()J
    .locals 8

    .line 74
    const/16 v0, 0x8

    .line 75
    .local v0, "size":I
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->checkPosition(I)V

    .line 76
    iget-object v1, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->buf:[B

    iget v2, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->pos:I

    invoke-static {v1, v2}, Lorg/apache/poi/util/LittleEndian;->getLong([BI)J

    move-result-wide v1

    .line 77
    .local v1, "le":J
    const-wide/16 v3, 0x8

    invoke-super {p0, v3, v4}, Ljava/io/ByteArrayInputStream;->skip(J)J

    move-result-wide v5

    .line 78
    .local v5, "skipped":J
    cmp-long v7, v5, v3

    if-nez v7, :cond_0

    .line 79
    return-wide v1

    .line 78
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Buffer overrun"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public readPlain([BII)V
    .locals 0
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([BII)V

    .line 126
    return-void
.end method

.method public readShort()S
    .locals 7

    .line 84
    const/4 v0, 0x2

    .line 85
    .local v0, "size":I
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->checkPosition(I)V

    .line 86
    iget-object v1, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->buf:[B

    iget v2, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->pos:I

    invoke-static {v1, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    .line 87
    .local v1, "le":S
    const-wide/16 v2, 0x2

    invoke-super {p0, v2, v3}, Ljava/io/ByteArrayInputStream;->skip(J)J

    move-result-wide v4

    .line 88
    .local v4, "skipped":J
    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    .line 89
    return v1

    .line 88
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Buffer overrun"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public readUByte()I
    .locals 1

    .line 94
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUInt()J
    .locals 4

    .line 103
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUShort()I
    .locals 2

    .line 99
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public setReadIndex(I)V
    .locals 1
    .param p1, "pos"    # I

    .line 49
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->count:I

    if-ge p1, v0, :cond_0

    .line 52
    iput p1, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->pos:I

    .line 53
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
