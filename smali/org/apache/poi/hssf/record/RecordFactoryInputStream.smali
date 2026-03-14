.class public final Lorg/apache/poi/hssf/record/RecordFactoryInputStream;
.super Ljava/lang/Object;
.source "RecordFactoryInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;
    }
.end annotation


# instance fields
.field private _bofDepth:I

.field private _lastDrawingRecord:Lorg/apache/poi/hssf/record/DrawingRecord;

.field private _lastRecord:Lorg/apache/poi/hssf/record/Record;

.field private _lastRecordWasEOFLevelZero:Z

.field private final _recStream:Lorg/apache/poi/hssf/record/RecordInputStream;

.field private final _shouldIncludeContinueRecords:Z

.field private _unreadRecordBuffer:[Lorg/apache/poi/hssf/record/Record;

.field private _unreadRecordIndex:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "shouldIncludeContinueRecords"    # Z

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordIndex:I

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    .line 170
    new-instance v0, Lorg/apache/poi/hssf/record/DrawingRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/DrawingRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastDrawingRecord:Lorg/apache/poi/hssf/record/DrawingRecord;

    .line 185
    new-instance v0, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    .line 186
    .local v0, "rs":Lorg/apache/poi/hssf/record/RecordInputStream;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    new-instance v2, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;Ljava/util/List;)V

    .line 188
    .local v2, "sei":Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->hasEncryption()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->createDecryptingStream(Ljava/io/InputStream;)Lorg/apache/poi/hssf/record/RecordInputStream;

    move-result-object v0

    .line 194
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 195
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/poi/hssf/record/Record;

    iput-object v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordBuffer:[Lorg/apache/poi/hssf/record/Record;

    .line 196
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 197
    iput v4, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordIndex:I

    .line 199
    :cond_1
    iput-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_recStream:Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 200
    iput-boolean p2, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_shouldIncludeContinueRecords:Z

    .line 201
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->getLastRecord()Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    .line 220
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->hasBOFRecord()Z

    move-result v3

    iput v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_bofDepth:I

    .line 221
    iput-boolean v4, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecordWasEOFLevelZero:Z

    .line 222
    return-void
.end method

.method private getNextUnreadRecord()Lorg/apache/poi/hssf/record/Record;
    .locals 4

    .line 269
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordBuffer:[Lorg/apache/poi/hssf/record/Record;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 270
    iget v2, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordIndex:I

    .line 271
    .local v2, "ix":I
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 272
    aget-object v0, v0, v2

    .line 273
    .local v0, "result":Lorg/apache/poi/hssf/record/Record;
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordIndex:I

    .line 274
    return-object v0

    .line 276
    .end local v0    # "result":Lorg/apache/poi/hssf/record/Record;
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordIndex:I

    .line 277
    iput-object v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordBuffer:[Lorg/apache/poi/hssf/record/Record;

    .line 279
    .end local v2    # "ix":I
    :cond_1
    return-object v1
.end method

.method private readNextRecord()Lorg/apache/poi/hssf/record/Record;
    .locals 5

    .line 289
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_recStream:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/RecordFactory;->createSingleRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    .line 290
    .local v0, "record":Lorg/apache/poi/hssf/record/Record;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecordWasEOFLevelZero:Z

    .line 292
    instance-of v2, v0, Lorg/apache/poi/hssf/record/BOFRecord;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 293
    iget v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_bofDepth:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_bofDepth:I

    .line 294
    return-object v0

    .line 297
    :cond_0
    instance-of v2, v0, Lorg/apache/poi/hssf/record/EOFRecord;

    if-eqz v2, :cond_2

    .line 298
    iget v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_bofDepth:I

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_bofDepth:I

    .line 299
    if-ge v1, v3, :cond_1

    .line 300
    iput-boolean v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecordWasEOFLevelZero:Z

    .line 303
    :cond_1
    return-object v0

    .line 306
    :cond_2
    instance-of v2, v0, Lorg/apache/poi/hssf/record/DBCellRecord;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 308
    return-object v4

    .line 311
    :cond_3
    instance-of v2, v0, Lorg/apache/poi/hssf/record/RKRecord;

    if-eqz v2, :cond_4

    .line 312
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/hssf/record/RKRecord;

    invoke-static {v1}, Lorg/apache/poi/hssf/record/RecordFactory;->convertToNumberRecord(Lorg/apache/poi/hssf/record/RKRecord;)Lorg/apache/poi/hssf/record/NumberRecord;

    move-result-object v1

    return-object v1

    .line 315
    :cond_4
    instance-of v2, v0, Lorg/apache/poi/hssf/record/MulRKRecord;

    if-eqz v2, :cond_5

    .line 316
    move-object v2, v0

    check-cast v2, Lorg/apache/poi/hssf/record/MulRKRecord;

    invoke-static {v2}, Lorg/apache/poi/hssf/record/RecordFactory;->convertRKRecords(Lorg/apache/poi/hssf/record/MulRKRecord;)[Lorg/apache/poi/hssf/record/NumberRecord;

    move-result-object v2

    .line 318
    .local v2, "records":[Lorg/apache/poi/hssf/record/Record;
    iput-object v2, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordBuffer:[Lorg/apache/poi/hssf/record/Record;

    .line 319
    iput v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordIndex:I

    .line 320
    aget-object v1, v2, v1

    return-object v1

    .line 323
    .end local v2    # "records":[Lorg/apache/poi/hssf/record/Record;
    :cond_5
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    const/16 v2, 0xeb

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    instance-of v2, v1, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    if-eqz v2, :cond_6

    .line 325
    check-cast v1, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    .line 326
    .local v1, "lastDGRecord":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    move-object v2, v0

    check-cast v2, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->join(Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;)V

    .line 327
    return-object v4

    .line 329
    .end local v1    # "lastDGRecord":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    :cond_6
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_e

    .line 330
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/hssf/record/ContinueRecord;

    .line 332
    .local v1, "contRec":Lorg/apache/poi/hssf/record/ContinueRecord;
    iget-object v2, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    instance-of v3, v2, Lorg/apache/poi/hssf/record/ObjRecord;

    if-nez v3, :cond_c

    instance-of v3, v2, Lorg/apache/poi/hssf/record/TextObjectRecord;

    if-eqz v3, :cond_7

    goto :goto_0

    .line 343
    :cond_7
    instance-of v3, v2, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    if-eqz v3, :cond_8

    .line 344
    check-cast v2, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ContinueRecord;->getData()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->processContinueRecord([B)V

    .line 345
    return-object v4

    .line 347
    :cond_8
    instance-of v3, v2, Lorg/apache/poi/hssf/record/DrawingRecord;

    if-eqz v3, :cond_9

    .line 349
    return-object v1

    .line 351
    :cond_9
    instance-of v3, v2, Lorg/apache/poi/hssf/record/UnknownRecord;

    if-eqz v3, :cond_a

    .line 354
    return-object v0

    .line 356
    :cond_a
    instance-of v2, v2, Lorg/apache/poi/hssf/record/EOFRecord;

    if-eqz v2, :cond_b

    .line 359
    return-object v0

    .line 361
    :cond_b
    new-instance v2, Lorg/apache/poi/util/RecordFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled Continue Record followining "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 335
    :cond_c
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastDrawingRecord:Lorg/apache/poi/hssf/record/DrawingRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ContinueRecord;->getData()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/DrawingRecord;->processContinueRecord([B)V

    .line 338
    iget-boolean v2, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_shouldIncludeContinueRecords:Z

    if-eqz v2, :cond_d

    .line 339
    return-object v0

    .line 341
    :cond_d
    return-object v4

    .line 363
    .end local v1    # "contRec":Lorg/apache/poi/hssf/record/ContinueRecord;
    :cond_e
    iput-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    .line 364
    instance-of v1, v0, Lorg/apache/poi/hssf/record/DrawingRecord;

    if-eqz v1, :cond_f

    .line 365
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/hssf/record/DrawingRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastDrawingRecord:Lorg/apache/poi/hssf/record/DrawingRecord;

    .line 367
    :cond_f
    return-object v0
.end method


# virtual methods
.method public nextRecord()Lorg/apache/poi/hssf/record/Record;
    .locals 4

    .line 229
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->getNextUnreadRecord()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    .line 230
    .local v0, "r":Lorg/apache/poi/hssf/record/Record;
    if-eqz v0, :cond_0

    .line 232
    return-object v0

    .line 235
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_recStream:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 237
    return-object v2

    .line 240
    :cond_1
    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecordWasEOFLevelZero:Z

    if-eqz v1, :cond_2

    .line 246
    iget-object v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_recStream:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getNextSid()I

    move-result v1

    const/16 v3, 0x809

    if-eq v1, v3, :cond_2

    .line 247
    return-object v2

    .line 253
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_recStream:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 255
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->readNextRecord()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    .line 256
    if-nez v0, :cond_3

    .line 258
    goto :goto_0

    .line 260
    :cond_3
    return-object v0
.end method
