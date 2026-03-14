.class public Lorg/apache/poi/util/HexDump;
.super Ljava/lang/Object;
.source "HexDump.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final EOL:Ljava/lang/String;

.field public static final UTF8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/HexDump;->EOL:Ljava/lang/String;

    .line 37
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/HexDump;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static byteToHex(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 390
    .local v0, "sb":Ljava/lang/StringBuilder;
    int-to-long v1, p0

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    const/4 v3, 0x2

    const-string v4, "0x"

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    .line 391
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static dump([BJI)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # J
    .param p3, "index"    # I

    .line 108
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/poi/util/HexDump;->dump([BJII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dump([BJII)Ljava/lang/String;
    .locals 15
    .param p0, "data"    # [B
    .param p1, "offset"    # J
    .param p3, "index"    # I
    .param p4, "length"    # I

    .line 125
    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    if-eqz v0, :cond_9

    array-length v3, v0

    if-nez v3, :cond_0

    goto/16 :goto_6

    .line 129
    :cond_0
    const v3, 0x7fffffff

    if-eq v2, v3, :cond_2

    if-ltz v2, :cond_2

    add-int v3, v1, v2

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    array-length v3, v0

    add-int v4, v1, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_1

    :cond_2
    :goto_0
    array-length v3, v0

    .line 134
    .local v3, "data_length":I
    :goto_1
    if-ltz v1, :cond_8

    array-length v4, v0

    if-ge v1, v4, :cond_8

    .line 139
    int-to-long v4, v1

    add-long v4, p1, v4

    .line 140
    .local v4, "display_offset":J
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x4a

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 142
    .local v6, "buffer":Ljava/lang/StringBuilder;
    move/from16 v7, p3

    .local v7, "j":I
    :goto_2
    if-ge v7, v3, :cond_7

    .line 143
    sub-int v8, v3, v7

    .line 145
    .local v8, "chars_read":I
    const/16 v9, 0x10

    if-le v8, v9, :cond_3

    .line 146
    const/16 v8, 0x10

    .line 149
    :cond_3
    const/16 v10, 0x8

    const-string v11, ""

    invoke-static {v6, v4, v5, v10, v11}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    .line 150
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_3
    if-ge v10, v9, :cond_5

    .line 151
    if-ge v10, v8, :cond_4

    .line 152
    add-int v11, v10, v7

    aget-byte v11, v0, v11

    int-to-long v11, v11

    const/4 v13, 0x2

    const-string v14, " "

    invoke-static {v6, v11, v12, v13, v14}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    goto :goto_4

    .line 154
    :cond_4
    const-string v11, "   "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 157
    .end local v10    # "k":I
    :cond_5
    const/16 v9, 0x20

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_5
    if-ge v9, v8, :cond_6

    .line 159
    add-int v10, v9, v7

    aget-byte v10, v0, v10

    invoke-static {v10}, Lorg/apache/poi/util/HexDump;->toAscii(I)C

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 161
    .end local v9    # "k":I
    :cond_6
    sget-object v9, Lorg/apache/poi/util/HexDump;->EOL:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    int-to-long v9, v8

    add-long/2addr v4, v9

    .line 142
    .end local v8    # "chars_read":I
    add-int/lit8 v7, v7, 0x10

    goto :goto_2

    .line 164
    .end local v7    # "j":I
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 135
    .end local v4    # "display_offset":J
    .end local v6    # "buffer":Ljava/lang/StringBuilder;
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " into array of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "err":Ljava/lang/String;
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v5, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 126
    .end local v3    # "data_length":I
    .end local v4    # "err":Ljava/lang/String;
    :cond_9
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/util/HexDump;->EOL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static dump(Ljava/io/InputStream;Ljava/io/PrintStream;II)V
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "start"    # I
    .param p3, "bytesToDump"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 332
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    .line 334
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 335
    .local v2, "c":I
    :goto_0
    if-eq v2, v1, :cond_0

    .line 337
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 338
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    goto :goto_0

    .line 340
    .end local v2    # "c":I
    :cond_0
    goto :goto_2

    .line 343
    :cond_1
    move v2, p3

    .line 344
    .local v2, "bytesRemaining":I
    :goto_1
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "bytesRemaining":I
    .local v3, "bytesRemaining":I
    if-lez v2, :cond_3

    .line 346
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 347
    .local v2, "c":I
    if-ne v2, v1, :cond_2

    .line 348
    goto :goto_2

    .line 350
    :cond_2
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 351
    .end local v2    # "c":I
    move v2, v3

    goto :goto_1

    .line 354
    .end local v3    # "bytesRemaining":I
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 355
    .local v1, "data":[B
    const-wide/16 v5, 0x0

    array-length v9, v1

    move-object v4, v1

    move-object v7, p1

    move v8, p2

    invoke-static/range {v4 .. v9}, Lorg/apache/poi/util/HexDump;->dump([BJLjava/io/OutputStream;II)V

    .line 356
    return-void
.end method

.method public static declared-synchronized dump([BJLjava/io/OutputStream;I)V
    .locals 7
    .param p0, "data"    # [B
    .param p1, "offset"    # J
    .param p3, "stream"    # Ljava/io/OutputStream;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-class v0, Lorg/apache/poi/util/HexDump;

    monitor-enter v0

    .line 92
    const v6, 0x7fffffff

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    :try_start_0
    invoke-static/range {v1 .. v6}, Lorg/apache/poi/util/HexDump;->dump([BJLjava/io/OutputStream;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit v0

    return-void

    .line 91
    .end local p0    # "data":[B
    .end local p1    # "offset":J
    .end local p3    # "stream":Ljava/io/OutputStream;
    .end local p4    # "index":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static dump([BJLjava/io/OutputStream;II)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # J
    .param p3, "stream"    # Ljava/io/OutputStream;
    .param p4, "index"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 63
    if-eqz p3, :cond_0

    .line 67
    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Lorg/apache/poi/util/HexDump;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 68
    .local v0, "osw":Ljava/io/OutputStreamWriter;
    invoke-static {p0, p1, p2, p4, p5}, Lorg/apache/poi/util/HexDump;->dump([BJII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 70
    return-void

    .line 64
    .end local v0    # "osw":Ljava/io/OutputStreamWriter;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot write to nullstream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static intToHex(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 372
    .local v0, "sb":Ljava/lang/StringBuilder;
    int-to-long v1, p0

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 v3, 0x8

    const-string v4, "0x"

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    .line 373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static longToHex(J)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # J

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 363
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x10

    const-string v2, "0x"

    invoke-static {v0, p0, p1, v1, v2}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/io/FileInputStream;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, "in":Ljava/io/InputStream;
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 414
    .local v2, "b":[B
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 415
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5, v1}, Lorg/apache/poi/util/HexDump;->dump([BJI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public static shortToHex(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 381
    .local v0, "sb":Ljava/lang/StringBuilder;
    int-to-long v1, p0

    const-wide/32 v3, 0xffff

    and-long/2addr v1, v3

    const/4 v3, 0x4

    const-string v4, "0x"

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    .line 382
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toAscii(I)C
    .locals 2
    .param p0, "dataB"    # I

    .line 168
    and-int/lit16 v0, p0, 0xff

    int-to-char v0, v0

    .line 169
    .local v0, "charB":C
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const/16 v1, 0x2e

    return v1

    .line 173
    :cond_0
    const/16 v1, 0xdd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xff

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 177
    :cond_1
    const/16 v0, 0x2e

    .line 178
    nop

    .line 182
    :goto_0
    return v0
.end method

.method public static toHex(B)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # B

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 281
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit16 v2, p0, 0xff

    int-to-long v2, v2

    const-string v4, ""

    invoke-static {v0, v2, v3, v1, v4}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    .line 282
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toHex(I)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # I

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 293
    .local v0, "sb":Ljava/lang/StringBuilder;
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const-string v4, ""

    invoke-static {v0, v2, v3, v1, v4}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toHex(J)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # J

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 305
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, ""

    invoke-static {v0, p0, p1, v1, v2}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 316
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "[]"

    :goto_1
    return-object v0
.end method

.method public static toHex(S)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # S

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 269
    .local v0, "sb":Ljava/lang/StringBuilder;
    const v2, 0xffff

    and-int/2addr v2, p0

    int-to-long v2, v2

    const-string v4, ""

    invoke-static {v0, v2, v3, v1, v4}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # [B

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v0, "retVal":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    .line 197
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 199
    if-lez v1, :cond_0

    .line 200
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_0
    aget-byte v2, p0, v1

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    .end local v1    # "x":I
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toHex([BI)Ljava/lang/String;
    .locals 8
    .param p0, "value"    # [B
    .param p1, "bytesPerLine"    # I

    .line 240
    array-length v0, p0

    if-nez v0, :cond_0

    .line 241
    const-string v0, ": 0"

    return-object v0

    .line 243
    :cond_0
    array-length v0, p0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    .line 244
    .local v1, "digits":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .local v0, "retVal":Ljava/lang/StringBuilder;
    const-wide/16 v2, 0x0

    const-string v4, ""

    invoke-static {v0, v2, v3, v1, v4}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    .line 246
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const/4 v3, 0x0

    .local v3, "x":I
    const/4 v5, -0x1

    .local v5, "i":I
    :goto_0
    array-length v6, p0

    if-ge v3, v6, :cond_3

    .line 248
    add-int/lit8 v5, v5, 0x1

    if-ne v5, p1, :cond_1

    .line 249
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    int-to-long v6, v3

    invoke-static {v0, v6, v7, v1, v4}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    .line 251
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const/4 v5, 0x0

    goto :goto_1

    .line 253
    :cond_1
    if-lez v3, :cond_2

    .line 254
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_2
    :goto_1
    aget-byte v6, p0, v3

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    .end local v3    # "x":I
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toHex([S)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # [S

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v0, "retVal":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 221
    if-lez v1, :cond_0

    .line 222
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_0
    aget-short v2, p0, v1

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v1    # "x":I
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V
    .locals 7
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # J
    .param p3, "nDigits"    # I
    .param p4, "prefix"    # Ljava/lang/String;

    .line 399
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    new-array v0, p3, [C

    .line 401
    .local v0, "buf":[C
    move-wide v1, p1

    .line 402
    .local v1, "acc":J
    add-int/lit8 v3, p3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 403
    const-wide/16 v4, 0xf

    and-long/2addr v4, v1

    long-to-int v5, v4

    .line 404
    .local v5, "digit":I
    const/16 v4, 0xa

    if-ge v5, v4, :cond_0

    add-int/lit8 v4, v5, 0x30

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v5, 0x41

    add-int/lit8 v4, v6, -0xa

    :goto_1
    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 405
    const/4 v4, 0x4

    ushr-long/2addr v1, v4

    .line 402
    .end local v5    # "digit":I
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 407
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 408
    return-void
.end method
