.class public final Lorg/apache/poi/hssf/record/RecordInputStream;
.super Ljava/lang/Object;
.source "RecordInputStream.java"

# interfaces
.implements Lorg/apache/poi/util/LittleEndianInput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/RecordInputStream$SimpleHeaderInput;,
        Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DATA_LEN_NEEDS_TO_BE_READ:I = -0x1

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final INVALID_SID_VALUE:I = -0x1

.field public static final MAX_RECORD_DATA_SIZE:S = 0x2020s


# instance fields
.field private final _bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

.field private _currentDataLength:I

.field private _currentDataOffset:I

.field private _currentSid:I

.field private final _dataInput:Lorg/apache/poi/util/LittleEndianInput;

.field private _markedDataOffset:I

.field private _nextSid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    nop

    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/hssf/record/RecordInputStream;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/util/RecordFormatException;
        }
    .end annotation

    .line 121
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/poi/poifs/crypt/EncryptionInfo;I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/poifs/crypt/EncryptionInfo;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "key"    # Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .param p3, "initialOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/util/RecordFormatException;
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    if-nez p2, :cond_0

    .line 126
    invoke-static {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getLEI(Ljava/io/InputStream;)Lorg/apache/poi/util/LittleEndianInput;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    .line 127
    new-instance v0, Lorg/apache/poi/hssf/record/RecordInputStream$SimpleHeaderInput;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/RecordInputStream$SimpleHeaderInput;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;

    invoke-direct {v0, p1, p3, p2}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;-><init>(Ljava/io/InputStream;ILorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 130
    .local v0, "bds":Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;
    iput-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    .line 131
    iput-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

    .line 133
    .end local v0    # "bds":Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readNextSid()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    .line 134
    return-void
.end method

.method private checkRecordPosition(I)V
    .locals 4
    .param p1, "requiredByteCount"    # I

    .line 229
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    .line 230
    .local v0, "nAvailable":I
    if-lt v0, p1, :cond_0

    .line 232
    return-void

    .line 234
    :cond_0
    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->isContinueNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 236
    return-void

    .line 238
    :cond_1
    new-instance v1, Lorg/apache/poi/util/RecordFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough data ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to read requested ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getLEI(Ljava/io/InputStream;)Lorg/apache/poi/util/LittleEndianInput;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .line 137
    instance-of v0, p0, Lorg/apache/poi/util/LittleEndianInput;

    if-eqz v0, :cond_0

    .line 139
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/util/LittleEndianInput;

    return-object v0

    .line 142
    :cond_0
    new-instance v0, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {v0, p0}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private isContinueNext()Z
    .locals 3

    .line 491
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should never be called before end of current record"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 495
    return v1

    .line 502
    :cond_2
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private readNextSid()I
    .locals 5

    .line 190
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/BiffHeaderInput;->available()I

    move-result v0

    .line 191
    .local v0, "nAvailable":I
    const/4 v1, -0x1

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 192
    nop

    .line 197
    return v1

    .line 199
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

    invoke-interface {v2}, Lorg/apache/poi/hssf/record/BiffHeaderInput;->readRecordSID()I

    move-result v2

    .line 200
    .local v2, "result":I
    if-eq v2, v1, :cond_1

    .line 203
    iput v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    .line 204
    return v2

    .line 201
    :cond_1
    new-instance v1, Lorg/apache/poi/util/RecordFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found invalid sid ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readStringCommon(IZ)Ljava/lang/String;
    .locals 7
    .param p1, "requestedLength"    # I
    .param p2, "pIsCompressedEncoding"    # Z

    .line 385
    if-ltz p1, :cond_b

    const/high16 v0, 0x100000

    if-gt p1, v0, :cond_b

    .line 388
    new-array v0, p1, [C

    .line 389
    .local v0, "buf":[C
    move v1, p2

    .line 390
    .local v1, "isCompressedEncoding":Z
    const/4 v2, 0x0

    .line 392
    .local v2, "curLen":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v3

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    div-int/lit8 v3, v3, 0x2

    .line 393
    .local v3, "availableChars":I
    :goto_1
    sub-int v4, p1, v2

    if-gt v4, v3, :cond_3

    .line 395
    :goto_2
    if-ge v2, p1, :cond_2

    .line 397
    if-eqz v1, :cond_1

    .line 398
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v4

    int-to-char v4, v4

    .local v4, "ch":C
    goto :goto_3

    .line 400
    .end local v4    # "ch":C
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v4

    int-to-char v4, v4

    .line 402
    .restart local v4    # "ch":C
    :goto_3
    aput-char v4, v0, v2

    .line 403
    nop

    .end local v4    # "ch":C
    add-int/lit8 v2, v2, 0x1

    .line 404
    goto :goto_2

    .line 405
    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 409
    :cond_3
    :goto_4
    if-lez v3, :cond_5

    .line 411
    if-eqz v1, :cond_4

    .line 412
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v4

    int-to-char v4, v4

    .restart local v4    # "ch":C
    goto :goto_5

    .line 414
    .end local v4    # "ch":C
    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v4

    int-to-char v4, v4

    .line 416
    .restart local v4    # "ch":C
    :goto_5
    aput-char v4, v0, v2

    .line 417
    add-int/lit8 v2, v2, 0x1

    .line 418
    nop

    .end local v4    # "ch":C
    add-int/lit8 v3, v3, -0x1

    .line 419
    goto :goto_4

    .line 420
    :cond_5
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->isContinueNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 424
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v4

    if-nez v4, :cond_9

    .line 427
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 429
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v4

    .line 430
    .local v4, "compressFlag":B
    const/4 v5, 0x1

    if-eqz v4, :cond_7

    if-ne v4, v5, :cond_6

    goto :goto_6

    :cond_6
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 431
    :cond_7
    :goto_6
    if-nez v4, :cond_8

    goto :goto_7

    :cond_8
    const/4 v5, 0x0

    :goto_7
    move v1, v5

    .line 432
    .end local v3    # "availableChars":I
    .end local v4    # "compressFlag":B
    goto :goto_0

    .line 425
    .restart local v3    # "availableChars":I
    :cond_9
    new-instance v4, Lorg/apache/poi/util/RecordFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Odd number of bytes("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") left behind"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 421
    :cond_a
    new-instance v4, Lorg/apache/poi/util/RecordFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected to find a ContinueRecord in order to read remaining "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-int v6, p1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " chars"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 386
    .end local v0    # "buf":[C
    .end local v1    # "isCompressedEncoding":Z
    .end local v2    # "curLen":I
    .end local v3    # "availableChars":I
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad requested string length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 151
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    return v0
.end method

.method public getNextSid()I
    .locals 1

    .line 509
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 164
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentSid:I

    int-to-short v0, v0

    return v0
.end method

.method public hasNextRecord()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException;
        }
    .end annotation

    .line 177
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException;

    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentSid:I

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException;-><init>(II)V

    throw v0

    .line 180
    :cond_1
    :goto_0
    if-eq v0, v1, :cond_2

    .line 181
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readNextSid()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    .line 183
    :cond_2
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 521
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 522
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_markedDataOffset:I

    .line 523
    return-void
.end method

.method public nextRecord()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/util/RecordFormatException;
        }
    .end annotation

    .line 212
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 215
    iget v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    if-ne v2, v1, :cond_1

    .line 218
    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentSid:I

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    .line 220
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/BiffHeaderInput;->readDataSize()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    .line 221
    const/16 v1, 0x2020

    if-gt v0, v1, :cond_0

    .line 225
    return-void

    .line 222
    :cond_0
    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    const-string v1, "The content of an excel record cannot exceed 8224 bytes"

    invoke-direct {v0, v1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call nextRecord() without checking hasNextRecord() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EOF - next record not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 155
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 156
    .local v0, "limit":I
    if-nez v0, :cond_0

    .line 157
    const/4 v1, 0x0

    return v1

    .line 159
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([BII)V

    .line 160
    return v0
.end method

.method public readAllContinuedRemainder()[B
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 461
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x4040

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 464
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object v1

    .line 465
    .local v1, "b":[B
    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 466
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->isContinueNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 467
    nop

    .line 471
    .end local v1    # "b":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 469
    .restart local v1    # "b":[B
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 470
    .end local v1    # "b":[B
    goto :goto_0
.end method

.method public readByte()B
    .locals 2

    .line 247
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    .line 248
    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    .line 249
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    return v0
.end method

.method public readCompressedUnicode(I)Ljava/lang/String;
    .locals 1
    .param p1, "requestedLength"    # I

    .line 380
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readStringCommon(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readDouble()D
    .locals 4

    .line 302
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readLong()J

    move-result-wide v0

    .line 303
    .local v0, "valueLongBits":J
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 304
    .local v2, "result":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 310
    return-wide v2
.end method

.method public readFully([B)V
    .locals 2
    .param p1, "buf"    # [B

    .line 319
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([BIIZ)V

    .line 320
    return-void
.end method

.method public readFully([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 324
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([BIIZ)V

    .line 325
    return-void
.end method

.method protected readFully([BIIZ)V
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "isPlain"    # Z

    .line 328
    move v0, p3

    .line 329
    .local v0, "origLen":I
    if-eqz p1, :cond_6

    .line 331
    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt p3, v1, :cond_5

    .line 335
    :goto_0
    if-lez p3, :cond_4

    .line 336
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 337
    .local v1, "nextChunk":I
    if-nez v1, :cond_2

    .line 338
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 342
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 343
    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 339
    :cond_1
    new-instance v2, Lorg/apache/poi/util/RecordFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t read the remaining "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes of the requested "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes. No further record exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 346
    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    .line 347
    if-eqz p4, :cond_3

    .line 348
    iget-object v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v2, p1, p2, v1}, Lorg/apache/poi/util/LittleEndianInput;->readPlain([BII)V

    goto :goto_2

    .line 350
    :cond_3
    iget-object v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v2, p1, p2, v1}, Lorg/apache/poi/util/LittleEndianInput;->readFully([BII)V

    .line 352
    :goto_2
    iget v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    .line 353
    add-int/2addr p2, v1

    .line 354
    sub-int/2addr p3, v1

    .line 355
    .end local v1    # "nextChunk":I
    goto :goto_0

    .line 356
    :cond_4
    return-void

    .line 332
    :cond_5
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 330
    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method public readInt()I
    .locals 2

    .line 267
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    .line 268
    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    .line 269
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2

    .line 277
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    .line 278
    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    .line 279
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readPlain([BII)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 314
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([BIIZ)V

    .line 315
    return-void
.end method

.method public readRemainder()[B
    .locals 2

    .line 440
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    .line 441
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 442
    sget-object v1, Lorg/apache/poi/hssf/record/RecordInputStream;->EMPTY_BYTE_ARRAY:[B

    return-object v1

    .line 444
    :cond_0
    new-array v1, v0, [B

    .line 445
    .local v1, "result":[B
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    .line 446
    return-object v1
.end method

.method public readShort()S
    .locals 2

    .line 257
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    .line 258
    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    .line 259
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    return v0
.end method

.method public readString()Ljava/lang/String;
    .locals 3

    .line 359
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 360
    .local v0, "requestedLength":I
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    .line 361
    .local v1, "compressFlag":B
    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v0, v2}, Lorg/apache/poi/hssf/record/RecordInputStream;->readStringCommon(IZ)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public readUByte()I
    .locals 1

    .line 287
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUShort()I
    .locals 2

    .line 295
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    .line 296
    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    .line 297
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    return v0
.end method

.method public readUnicodeLEString(I)Ljava/lang/String;
    .locals 1
    .param p1, "requestedLength"    # I

    .line 376
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readStringCommon(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remaining()I
    .locals 2

    .line 479
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 481
    const/4 v0, 0x0

    return v0

    .line 483
    :cond_0
    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 535
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 536
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_markedDataOffset:I

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    .line 537
    return-void
.end method
