.class public Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;
.super Ljava/io/PushbackInputStream;
.source "ZipSecureFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/openxml4j/util/ZipSecureFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThresholdInputStream"
.end annotation


# instance fields
.field cis:Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;

.field counter:J

.field markPos:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "cis"    # Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;

    .line 205
    invoke-direct {p0, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 200
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    .line 201
    iput-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->markPos:J

    .line 206
    iput-object p2, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->cis:Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;

    .line 207
    return-void
.end method


# virtual methods
.method public advance(I)V
    .locals 7
    .param p1, "advance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    iget-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    .line 244
    invoke-static {}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->access$100()J

    move-result-wide v2

    const-string v4, ", cis.counter: "

    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    .line 245
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zip bomb detected! The file would exceed the max size of the expanded data in the zip-file. This may indicates that the file is used to inflate memory usage and thus could pose a security risk. You can adjust this limit via ZipSecureFile.setMaxEntrySize() if you need to work with files which are very large. Counter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->cis:Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iget-wide v2, v2, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    :goto_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Limits: MAX_ENTRY_SIZE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->access$100()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->cis:Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;

    if-nez v0, :cond_2

    .line 254
    return-void

    .line 258
    :cond_2
    iget-wide v1, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    const-wide/32 v5, 0x19000

    cmp-long v3, v1, v5

    if-gtz v3, :cond_3

    .line 259
    return-void

    .line 262
    :cond_3
    iget-wide v5, v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    long-to-double v5, v5

    long-to-double v0, v1

    div-double/2addr v5, v0

    .line 263
    .local v5, "ratio":D
    invoke-static {}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->access$200()D

    move-result-wide v0

    cmpl-double v2, v5, v0

    if-ltz v2, :cond_4

    .line 264
    return-void

    .line 268
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zip bomb detected! The file would exceed the max. ratio of compressed file size to the size of the expanded data.\nThis may indicate that the file is used to inflate memory usage and thus could pose a security risk.\nYou can adjust this limit via ZipSecureFile.setMinInflateRatio() if you need to work with files which exceed this limit.\nCounter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->cis:Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;

    iget-wide v2, v2, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Limits: MIN_INFLATE_RATIO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->access$200()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public closeEntry()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/util/zip/ZipInputStream;

    if-eqz v0, :cond_0

    .line 287
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    .line 288
    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/util/zip/ZipInputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 289
    return-void

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "underlying stream is not a ZipInputStream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNextEntry()Ljava/util/zip/ZipEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/util/zip/ZipInputStream;

    if-eqz v0, :cond_0

    .line 279
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    .line 280
    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/util/zip/ZipInputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "underlying stream is not a ZipInputStream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 327
    :try_start_0
    iget-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    iput-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->markPos:J

    .line 328
    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    .line 326
    .end local p0    # "this":Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;
    .end local p1    # "readlimit":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 322
    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 212
    .local v0, "b":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 213
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->advance(I)V

    .line 215
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 221
    .local v0, "cnt":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 222
    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->advance(I)V

    .line 224
    :cond_0
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 236
    :try_start_0
    iget-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->markPos:J

    iput-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    .line 237
    invoke-super {p0}, Ljava/io/PushbackInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    .line 235
    .end local p0    # "this":Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 4
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 230
    .local v0, "s":J
    iget-wide v2, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    .line 231
    return-wide v0
.end method

.method public unread(I)V
    .locals 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/PushbackInputStream;

    if-eqz v0, :cond_1

    .line 296
    iget-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 297
    iput-wide v2, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    .line 299
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 300
    return-void

    .line 294
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "underlying stream is not a PushbackInputStream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unread([BII)V
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/PushbackInputStream;

    if-eqz v0, :cond_1

    .line 307
    iget-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    .line 308
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 309
    iput-wide v2, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    .line 311
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 312
    return-void

    .line 305
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "underlying stream is not a PushbackInputStream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
