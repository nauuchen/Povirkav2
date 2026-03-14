.class public final Lorg/apache/poi/ddf/EscherBSERecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "EscherBSERecord.java"


# static fields
.field public static final BT_DIB:B = 0x7t

.field public static final BT_EMF:B = 0x2t

.field public static final BT_ERROR:B = 0x0t

.field public static final BT_JPEG:B = 0x5t

.field public static final BT_PICT:B = 0x4t

.field public static final BT_PNG:B = 0x6t

.field public static final BT_UNKNOWN:B = 0x1t

.field public static final BT_WMF:B = 0x3t

.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "MsofbtBSE"

.field public static final RECORD_ID:S = -0xff9s


# instance fields
.field private _remainingData:[B

.field private field_10_unused2:B

.field private field_11_unused3:B

.field private field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

.field private field_1_blipTypeWin32:B

.field private field_2_blipTypeMacOS:B

.field private final field_3_uid:[B

.field private field_4_tag:S

.field private field_5_size:I

.field private field_6_ref:I

.field private field_7_offset:I

.field private field_8_usage:B

.field private field_9_name:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    .line 44
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    .line 55
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    .line 58
    const/16 v0, -0xff9

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherBSERecord;->setRecordId(S)V

    .line 59
    return-void
.end method

.method public static getBlipType(B)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # B

    .line 365
    packed-switch p0, :pswitch_data_0

    .line 375
    const/16 v0, 0x20

    if-ge p0, v0, :cond_0

    .line 376
    const-string v0, " NotKnown"

    return-object v0

    .line 373
    :pswitch_0
    const-string v0, " DIB"

    return-object v0

    .line 372
    :pswitch_1
    const-string v0, " PNG"

    return-object v0

    .line 371
    :pswitch_2
    const-string v0, " JPEG"

    return-object v0

    .line 370
    :pswitch_3
    const-string v0, " PICT"

    return-object v0

    .line 369
    :pswitch_4
    const-string v0, " WMF"

    return-object v0

    .line 368
    :pswitch_5
    const-string v0, " EMF"

    return-object v0

    .line 367
    :pswitch_6
    const-string v0, " UNKNOWN"

    return-object v0

    .line 366
    :pswitch_7
    const-string v0, " ERROR"

    return-object v0

    .line 378
    :cond_0
    const-string v0, " Client"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "recordFactory"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .line 63
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherBSERecord;->readHeader([BI)I

    move-result v0

    .line 64
    .local v0, "bytesRemaining":I
    add-int/lit8 v1, p2, 0x8

    .line 65
    .local v1, "pos":I
    aget-byte v2, p1, v1

    iput-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_1_blipTypeWin32:B

    .line 66
    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_2_blipTypeMacOS:B

    .line 67
    add-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static {p1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    add-int/lit8 v2, v1, 0x12

    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_4_tag:S

    .line 69
    add-int/lit8 v2, v1, 0x14

    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_5_size:I

    .line 70
    add-int/lit8 v2, v1, 0x18

    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_6_ref:I

    .line 71
    add-int/lit8 v2, v1, 0x1c

    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_7_offset:I

    .line 72
    add-int/lit8 v2, v1, 0x20

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_8_usage:B

    .line 73
    add-int/lit8 v2, v1, 0x21

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_9_name:B

    .line 74
    add-int/lit8 v2, v1, 0x22

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_10_unused2:B

    .line 75
    add-int/lit8 v2, v1, 0x23

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_11_unused3:B

    .line 76
    add-int/lit8 v0, v0, -0x24

    .line 78
    const/4 v2, 0x0

    .line 79
    .local v2, "bytesRead":I
    if-lez v0, :cond_0

    .line 81
    add-int/lit8 v3, v1, 0x24

    invoke-interface {p3, p1, v3}, Lorg/apache/poi/ddf/EscherRecordFactory;->createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ddf/EscherBlipRecord;

    iput-object v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    .line 82
    add-int/lit8 v5, v1, 0x24

    invoke-virtual {v3, p1, v5, p3}, Lorg/apache/poi/ddf/EscherBlipRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    move-result v2

    .line 84
    :cond_0
    add-int/lit8 v3, v2, 0x24

    add-int/2addr v1, v3

    .line 85
    sub-int/2addr v0, v2

    .line 87
    new-array v3, v0, [B

    iput-object v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    .line 88
    invoke-static {p1, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    add-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x24

    iget-object v5, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lorg/apache/poi/ddf/EscherBlipRecord;->getRecordSize()I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    return v3
.end method

.method protected getAttributeMap()[[Ljava/lang/Object;
    .locals 6

    .line 383
    const/16 v0, 0xd

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BlipTypeWin32"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_1_blipTypeWin32:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BlipTypeMacOS"

    aput-object v3, v2, v4

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_2_blipTypeMacOS:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "SUID"

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Tag"

    aput-object v3, v2, v4

    iget-short v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_4_tag:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Size"

    aput-object v3, v2, v4

    iget v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_5_size:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Ref"

    aput-object v3, v2, v4

    iget v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_6_ref:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Offset"

    aput-object v3, v2, v4

    iget v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_7_offset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Usage"

    aput-object v3, v2, v4

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_8_usage:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Name"

    aput-object v3, v2, v4

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_9_name:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Unused2"

    aput-object v3, v2, v4

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_10_unused2:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Unused3"

    aput-object v3, v2, v4

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_11_unused3:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Blip Record"

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    aput-object v3, v2, v5

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Extra Data"

    aput-object v2, v1, v4

    iget-object v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    aput-object v2, v1, v5

    const/16 v2, 0xc

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getBlipRecord()Lorg/apache/poi/ddf/EscherBlipRecord;
    .locals 1

    .line 332
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    return-object v0
.end method

.method public getBlipTypeMacOS()B
    .locals 1

    .line 174
    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_2_blipTypeMacOS:B

    return v0
.end method

.method public getBlipTypeWin32()B
    .locals 1

    .line 155
    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_1_blipTypeWin32:B

    return v0
.end method

.method public getName()B
    .locals 1

    .line 303
    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_9_name:B

    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 267
    iget v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_7_offset:I

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    .line 145
    const-string v0, "BSE"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 3

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "field_12_size":I
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherBlipRecord;->getRecordSize()I

    move-result v0

    .line 135
    :cond_0
    const/4 v1, 0x0

    .line 136
    .local v1, "remaining_size":I
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    if-eqz v2, :cond_1

    .line 137
    array-length v1, v2

    .line 139
    :cond_1
    add-int/lit8 v2, v0, 0x2c

    add-int/2addr v2, v1

    return v2
.end method

.method public getRef()I
    .locals 1

    .line 249
    iget v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_6_ref:I

    return v0
.end method

.method public getRemainingData()[B
    .locals 1

    .line 345
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 231
    iget v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_5_size:I

    return v0
.end method

.method public getTag()S
    .locals 1

    .line 213
    iget-short v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_4_tag:S

    return v0
.end method

.method public getUid()[B
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    return-object v0
.end method

.method public getUnused2()B
    .locals 1

    .line 316
    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_10_unused2:B

    return v0
.end method

.method public getUnused3()B
    .locals 1

    .line 324
    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_11_unused3:B

    return v0
.end method

.method public getUsage()B
    .locals 1

    .line 285
    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_8_usage:B

    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 7
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "listener"    # Lorg/apache/poi/ddf/EscherSerializationListener;

    .line 95
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    .line 97
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 98
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    .line 101
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 102
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getRecordId()S

    move-result v2

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 103
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getRecordSize()I

    move-result v0

    .line 104
    .local v0, "blipSize":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x24

    add-int/2addr v2, v0

    .line 105
    .local v2, "remainingBytes":I
    add-int/lit8 v3, p1, 0x4

    invoke-static {p2, v3, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 107
    add-int/lit8 v3, p1, 0x8

    iget-byte v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_1_blipTypeWin32:B

    aput-byte v4, p2, v3

    .line 108
    add-int/lit8 v3, p1, 0x9

    iget-byte v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_2_blipTypeMacOS:B

    aput-byte v4, p2, v3

    .line 109
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    add-int/lit8 v4, p1, 0xa

    const/16 v5, 0x10

    invoke-static {v3, v1, p2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    add-int/lit8 v3, p1, 0x1a

    iget-short v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_4_tag:S

    invoke-static {p2, v3, v4}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 111
    add-int/lit8 v3, p1, 0x1c

    iget v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_5_size:I

    invoke-static {p2, v3, v4}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 112
    add-int/lit8 v3, p1, 0x20

    iget v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_6_ref:I

    invoke-static {p2, v3, v4}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 113
    add-int/lit8 v3, p1, 0x24

    iget v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_7_offset:I

    invoke-static {p2, v3, v4}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 114
    add-int/lit8 v3, p1, 0x28

    iget-byte v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_8_usage:B

    aput-byte v4, p2, v3

    .line 115
    add-int/lit8 v3, p1, 0x29

    iget-byte v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_9_name:B

    aput-byte v4, p2, v3

    .line 116
    add-int/lit8 v3, p1, 0x2a

    iget-byte v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_10_unused2:B

    aput-byte v4, p2, v3

    .line 117
    add-int/lit8 v3, p1, 0x2b

    iget-byte v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_11_unused3:B

    aput-byte v4, p2, v3

    .line 118
    const/4 v3, 0x0

    .line 119
    .local v3, "bytesWritten":I
    iget-object v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    if-eqz v4, :cond_2

    .line 120
    add-int/lit8 v5, p1, 0x2c

    new-instance v6, Lorg/apache/poi/ddf/NullEscherSerializationListener;

    invoke-direct {v6}, Lorg/apache/poi/ddf/NullEscherSerializationListener;-><init>()V

    invoke-virtual {v4, v5, p2, v6}, Lorg/apache/poi/ddf/EscherBlipRecord;->serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I

    move-result v3

    .line 122
    :cond_2
    iget-object v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    add-int/lit8 v5, p1, 0x2c

    add-int/2addr v5, v3

    array-length v6, v4

    invoke-static {v4, v1, p2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    add-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x24

    iget-object v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    array-length v4, v4

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    .line 125
    .local v1, "pos":I
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getRecordId()S

    move-result v4

    sub-int v5, v1, p1

    invoke-interface {p3, v1, v4, v5, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    .line 126
    sub-int v4, v1, p1

    return v4
.end method

.method public setBlipRecord(Lorg/apache/poi/ddf/EscherBlipRecord;)V
    .locals 0
    .param p1, "blipRecord"    # Lorg/apache/poi/ddf/EscherBlipRecord;

    .line 336
    iput-object p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    .line 337
    return-void
.end method

.method public setBlipTypeMacOS(B)V
    .locals 0
    .param p1, "blipTypeMacOS"    # B

    .line 183
    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_2_blipTypeMacOS:B

    .line 184
    return-void
.end method

.method public setBlipTypeWin32(B)V
    .locals 0
    .param p1, "blipTypeWin32"    # B

    .line 164
    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_1_blipTypeWin32:B

    .line 165
    return-void
.end method

.method public setName(B)V
    .locals 0
    .param p1, "name"    # B

    .line 312
    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_9_name:B

    .line 313
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 276
    iput p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_7_offset:I

    .line 277
    return-void
.end method

.method public setRef(I)V
    .locals 0
    .param p1, "ref"    # I

    .line 258
    iput p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_6_ref:I

    .line 259
    return-void
.end method

.method public setRemainingData([B)V
    .locals 1
    .param p1, "remainingData"    # [B

    .line 354
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    .line 355
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 240
    iput p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_5_size:I

    .line 241
    return-void
.end method

.method public setTag(S)V
    .locals 0
    .param p1, "tag"    # S

    .line 222
    iput-short p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_4_tag:S

    .line 223
    return-void
.end method

.method public setUid([B)V
    .locals 3
    .param p1, "uid"    # [B

    .line 201
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    return-void

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uid must be byte[16]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUnused2(B)V
    .locals 0
    .param p1, "unused2"    # B

    .line 320
    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_10_unused2:B

    .line 321
    return-void
.end method

.method public setUnused3(B)V
    .locals 0
    .param p1, "unused3"    # B

    .line 328
    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_11_unused3:B

    .line 329
    return-void
.end method

.method public setUsage(B)V
    .locals 0
    .param p1, "usage"    # B

    .line 294
    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_8_usage:B

    .line 295
    return-void
.end method
