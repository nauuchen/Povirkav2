.class public final Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;
.super Ljava/lang/Object;
.source "Biff8DecryptingStream.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/BiffHeaderInput;
.implements Lorg/apache/poi/util/LittleEndianInput;


# static fields
.field public static final RC4_REKEYING_INTERVAL:I = 0x400


# instance fields
.field private final buffer:[B

.field private ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

.field private final info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

.field private shouldSkipEncryptionOnCurrentRecord:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILorg/apache/poi/poifs/crypt/EncryptionInfo;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "initialOffset"    # I
    .param p3, "info"    # Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/util/RecordFormatException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->shouldSkipEncryptionOnCurrentRecord:Z

    .line 46
    :try_start_0
    new-array v1, p2, [B

    .line 48
    .local v1, "initialBuf":[B
    if-nez p2, :cond_0

    .line 49
    move-object v2, p1

    .local v2, "stream":Ljava/io/InputStream;
    goto :goto_0

    .line 51
    .end local v2    # "stream":Ljava/io/InputStream;
    :cond_0
    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-direct {v2, p1, p2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 52
    .restart local v2    # "stream":Ljava/io/InputStream;
    move-object v3, v2

    check-cast v3, Ljava/io/PushbackInputStream;

    invoke-virtual {v3, v1}, Ljava/io/PushbackInputStream;->unread([B)V

    .line 55
    :goto_0
    iput-object p3, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    .line 56
    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v3

    .line 57
    .local v3, "dec":Lorg/apache/poi/poifs/crypt/Decryptor;
    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lorg/apache/poi/poifs/crypt/Decryptor;->setChunkSize(I)V

    .line 58
    const v4, 0x7fffffff

    invoke-virtual {v3, v2, v4, v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getDataStream(Ljava/io/InputStream;II)Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    .line 60
    if-lez p2, :cond_1

    .line 61
    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "initialBuf":[B
    .end local v2    # "stream":Ljava/io/InputStream;
    .end local v3    # "dec":Lorg/apache/poi/poifs/crypt/Decryptor;
    :cond_1
    nop

    .line 66
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/poi/util/RecordFormatException;

    invoke-direct {v1, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isNeverEncryptedRecord(I)Z
    .locals 1
    .param p0, "sid"    # I

    .line 183
    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x809

    if-eq p0, v0, :cond_0

    .line 202
    const/4 v0, 0x0

    return v0

    .line 199
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->available()I

    move-result v0

    return v0
.end method

.method public getPosition()J
    .locals 2

    .line 174
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->getPos()J

    move-result-wide v0

    return-wide v0
.end method

.method public readByte()B
    .locals 3

    .line 127
    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->shouldSkipEncryptionOnCurrentRecord:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readPlain([BII)V

    .line 129
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    aget-byte v0, v0, v2

    return v0

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method public readDataSize()I
    .locals 3

    .line 89
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readPlain([BII)V

    .line 90
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v0

    .line 91
    .local v0, "dataSize":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->setNextRecordSize(I)V

    .line 92
    return v0
.end method

.method public readDouble()D
    .locals 6

    .line 97
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readLong()J

    move-result-wide v0

    .line 98
    .local v0, "valueLongBits":J
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 99
    .local v2, "result":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_0

    .line 103
    return-wide v2

    .line 101
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Did not expect to read NaN"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public readFully([B)V
    .locals 2
    .param p1, "buf"    # [B

    .line 108
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readFully([BII)V

    .line 109
    return-void
.end method

.method public readFully([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 113
    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->shouldSkipEncryptionOnCurrentRecord:Z

    if-eqz v0, :cond_0

    .line 114
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readPlain([BII)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->readFully([BII)V

    .line 118
    :goto_0
    return-void
.end method

.method public readInt()I
    .locals 3

    .line 152
    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->shouldSkipEncryptionOnCurrentRecord:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readPlain([BII)V

    .line 154
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result v0

    return v0

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 3

    .line 162
    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->shouldSkipEncryptionOnCurrentRecord:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readPlain([BII)V

    .line 164
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getLong([B)J

    move-result-wide v0

    return-wide v0

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readPlain([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 208
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->readPlain([BII)V

    .line 209
    return-void
.end method

.method public readRecordSID()I
    .locals 3

    .line 78
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readPlain([BII)V

    .line 79
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v0

    .line 80
    .local v0, "sid":I
    invoke-static {v0}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->isNeverEncryptedRecord(I)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->shouldSkipEncryptionOnCurrentRecord:Z

    .line 81
    return v0
.end method

.method public readShort()S
    .locals 3

    .line 142
    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->shouldSkipEncryptionOnCurrentRecord:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readPlain([BII)V

    .line 144
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getShort([B)S

    move-result v0

    return v0

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->readShort()S

    move-result v0

    return v0
.end method

.method public readUByte()I
    .locals 1

    .line 122
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUShort()I
    .locals 2

    .line 137
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method
