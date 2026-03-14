.class public final Lorg/apache/poi/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final SKIP_BUFFER_SIZE:I = 0x800

.field private static SKIP_BYTE_BUFFER:[B

.field private static final logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/apache/poi/util/IOUtils;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/IOUtils;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static calculateChecksum(Ljava/io/InputStream;)J
    .locals 6
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 340
    .local v0, "sum":Ljava/util/zip/Checksum;
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 342
    .local v1, "buf":[B
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "count":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 343
    if-lez v3, :cond_0

    .line 344
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljava/util/zip/Checksum;->update([BII)V

    goto :goto_0

    .line 347
    :cond_1
    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v4

    return-wide v4
.end method

.method public static calculateChecksum([B)J
    .locals 3
    .param p0, "data"    # [B

    .line 326
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 327
    .local v0, "sum":Ljava/util/zip/Checksum;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2, v1}, Ljava/util/zip/Checksum;->update([BII)V

    .line 328
    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 7
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 360
    if-nez p0, :cond_0

    .line 361
    return-void

    .line 365
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "exc":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/poi/util/IOUtils;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x7

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to close resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 370
    .end local v0    # "exc":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "inp"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 312
    .local v0, "buff":[B
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "count":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 313
    if-lt v2, v3, :cond_1

    .line 316
    if-lez v2, :cond_0

    .line 317
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 314
    :cond_1
    new-instance v1, Lorg/apache/poi/util/RecordFormatException;

    const-string v3, "Can\'t have read < -1 bytes"

    invoke-direct {v1, v3}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :cond_2
    return-void
.end method

.method public static peekFirst8Bytes(Ljava/io/InputStream;)[B
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/EmptyFileException;
        }
    .end annotation

    .line 57
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lorg/apache/poi/util/IOUtils;->peekFirstNBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static peekFirstNBytes(Ljava/io/InputStream;I)[B
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/EmptyFileException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 69
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 70
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/apache/poi/util/BoundedInputStream;

    int-to-long v2, p1

    invoke-direct {v1, p0, v2, v3}, Lorg/apache/poi/util/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    invoke-static {v1, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    .line 73
    .local v1, "readBytes":I
    if-eqz v1, :cond_2

    .line 77
    if-ge v1, p1, :cond_0

    .line 78
    sub-int v2, p1, v1

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 80
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 81
    .local v2, "peekedBytes":[B
    instance-of v3, p0, Ljava/io/PushbackInputStream;

    if-eqz v3, :cond_1

    .line 82
    move-object v3, p0

    check-cast v3, Ljava/io/PushbackInputStream;

    .line 83
    .local v3, "pin":Ljava/io/PushbackInputStream;
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 84
    .end local v3    # "pin":Ljava/io/PushbackInputStream;
    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 88
    :goto_0
    return-object v2

    .line 74
    .end local v2    # "peekedBytes":[B
    :cond_2
    new-instance v2, Lorg/apache/poi/EmptyFileException;

    invoke-direct {v2}, Lorg/apache/poi/EmptyFileException;-><init>()V

    throw v2
.end method

.method public static readFully(Ljava/io/InputStream;[B)I
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    return v0
.end method

.method public static readFully(Ljava/io/InputStream;[BII)I
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, "total":I
    :goto_0
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 165
    .local v1, "got":I
    if-gez v1, :cond_1

    .line 166
    if-nez v0, :cond_0

    const/4 v2, -0x1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    return v2

    .line 168
    :cond_1
    add-int/2addr v0, v1

    .line 169
    if-ne v0, p3, :cond_2

    .line 170
    return v0

    .line 172
    .end local v1    # "got":I
    :cond_2
    goto :goto_0
.end method

.method public static readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p0, "channel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    const/4 v0, 0x0

    .line 189
    .local v0, "total":I
    :goto_0
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 190
    .local v1, "got":I
    if-gez v1, :cond_1

    .line 191
    if-nez v0, :cond_0

    const/4 v2, -0x1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    return v2

    .line 193
    :cond_1
    add-int/2addr v0, v1

    .line 194
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-eq v0, v2, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v2, v3, :cond_2

    goto :goto_2

    .line 197
    .end local v1    # "got":I
    :cond_2
    goto :goto_0

    .line 195
    .restart local v1    # "got":I
    :cond_3
    :goto_2
    return v0
.end method

.method public static safelyAllocate(JI)[B
    .locals 3
    .param p0, "length"    # J
    .param p2, "maxLength"    # I

    .line 435
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_2

    .line 438
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-gtz v2, :cond_1

    .line 441
    int-to-long v0, p2

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    .line 447
    long-to-int v0, p0

    new-array v0, v0, [B

    return-object v0

    .line 442
    :cond_0
    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to allocate an array > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for this record type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "If the file is not corrupt, please open an issue on bugzilla to request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "increasing the maximum allowable size for this record type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_1
    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    const-string v1, "Can\'t allocate an array > 2147483647"

    invoke-direct {v0, v1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_2
    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    const-string v1, "Can\'t allocate an array of length < 0"

    invoke-direct {v0, v1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static skipFully(Ljava/io/InputStream;J)J
    .locals 8
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "toSkip"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_5

    .line 408
    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 409
    return-wide v0

    .line 416
    :cond_0
    sget-object v2, Lorg/apache/poi/util/IOUtils;->SKIP_BYTE_BUFFER:[B

    if-nez v2, :cond_1

    .line 417
    const/16 v2, 0x800

    new-array v2, v2, [B

    sput-object v2, Lorg/apache/poi/util/IOUtils;->SKIP_BYTE_BUFFER:[B

    .line 419
    :cond_1
    move-wide v2, p1

    .line 420
    .local v2, "remain":J
    :goto_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    .line 422
    sget-object v4, Lorg/apache/poi/util/IOUtils;->SKIP_BYTE_BUFFER:[B

    const/4 v5, 0x0

    const-wide/16 v6, 0x800

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {p0, v4, v5, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    int-to-long v4, v4

    .line 423
    .local v4, "n":J
    cmp-long v6, v4, v0

    if-gez v6, :cond_2

    .line 424
    goto :goto_1

    .line 426
    :cond_2
    sub-long/2addr v2, v4

    .line 427
    .end local v4    # "n":J
    goto :goto_0

    .line 428
    :cond_3
    :goto_1
    cmp-long v0, p1, v2

    if-nez v0, :cond_4

    .line 429
    const-wide/16 v0, -0x1

    return-wide v0

    .line 431
    :cond_4
    sub-long v0, p1, v2

    return-wide v0

    .line 406
    .end local v2    # "remain":J
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip count must be non-negative, actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Ljava/io/InputStream;I)[B
    .locals 7
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    const v2, 0x7fffffff

    if-ne p1, v2, :cond_0

    const/16 v3, 0x1000

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 106
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-array v1, v1, [B

    .line 107
    .local v1, "buffer":[B
    const/4 v3, 0x0

    .line 109
    .local v3, "totalBytes":I
    :cond_1
    array-length v4, v1

    sub-int v5, p1, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 110
    .local v4, "readBytes":I
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v3, v6

    .line 111
    if-lez v4, :cond_2

    .line 112
    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 114
    :cond_2
    if-ge v3, p1, :cond_3

    const/4 v5, -0x1

    if-gt v4, v5, :cond_1

    .line 116
    :cond_3
    if-eq p1, v2, :cond_5

    if-lt v3, p1, :cond_4

    goto :goto_1

    .line 117
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v5, "unexpected EOF"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static toByteArray(Ljava/nio/ByteBuffer;I)[B
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I

    .line 130
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 135
    :cond_0
    new-array v0, p1, [B

    .line 136
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 137
    return-object v0
.end method

.method public static write(Lorg/apache/poi/POIDocument;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "doc"    # Lorg/apache/poi/POIDocument;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/POIDocument;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 216
    nop

    .line 217
    return-void

    .line 215
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static write(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "doc"    # Lorg/apache/poi/ss/usermodel/Workbook;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Workbook;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 235
    nop

    .line 236
    return-void

    .line 234
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static writeAndClose(Lorg/apache/poi/POIDocument;)V
    .locals 1
    .param p0, "doc"    # Lorg/apache/poi/POIDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->write()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 292
    nop

    .line 293
    return-void

    .line 291
    :catchall_0
    move-exception v0

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static writeAndClose(Lorg/apache/poi/POIDocument;Ljava/io/File;)V
    .locals 1
    .param p0, "doc"    # Lorg/apache/poi/POIDocument;
    .param p1, "out"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/POIDocument;->write(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 274
    nop

    .line 275
    return-void

    .line 273
    :catchall_0
    move-exception v0

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static writeAndClose(Lorg/apache/poi/POIDocument;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "doc"    # Lorg/apache/poi/POIDocument;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/poi/util/IOUtils;->write(Lorg/apache/poi/POIDocument;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 255
    nop

    .line 256
    return-void

    .line 254
    :catchall_0
    move-exception v0

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static writeAndClose(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "doc"    # Lorg/apache/poi/ss/usermodel/Workbook;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Workbook;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 302
    nop

    .line 303
    return-void

    .line 301
    :catchall_0
    move-exception v0

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method
