.class public Lorg/apache/poi/ddf/EscherBlipRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "EscherBlipRecord.java"


# static fields
.field private static final HEADER_SIZE:I = 0x8

.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "msofbtBlip"

.field public static final RECORD_ID_END:S = -0xee9s

.field public static final RECORD_ID_START:S = -0xfe8s


# instance fields
.field private field_pictureData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 4
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "recordFactory"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .line 36
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherBlipRecord;->readHeader([BI)I

    move-result v0

    .line 37
    .local v0, "bytesAfterHeader":I
    add-int/lit8 v1, p2, 0x8

    .line 39
    .local v1, "pos":I
    new-array v2, v0, [B

    iput-object v2, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    .line 40
    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    add-int/lit8 v2, v0, 0x8

    return v2
.end method

.method protected getAttributeMap()[[Ljava/lang/Object;
    .locals 5

    .line 103
    const/4 v0, 0x1

    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Extra Data"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getPicturedata()[B

    move-result-object v3

    aput-object v3, v2, v0

    aput-object v2, v1, v4

    return-object v1
.end method

.method public getPicturedata()[B
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    return-object v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    .line 65
    const-string v0, "Blip"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 4
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "listener"    # Lorg/apache/poi/ddf/EscherSerializationListener;

    .line 47
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    .line 49
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 50
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 52
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    add-int/lit8 v1, p1, 0x4

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    add-int/lit8 v0, p1, 0x4

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getRecordId()S

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x4

    invoke-interface {p3, v0, v1, v2, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    .line 55
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public setPictureData([B)V
    .locals 2
    .param p1, "pictureData"    # [B

    .line 83
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/ddf/EscherBlipRecord;->setPictureData([BII)V

    .line 84
    return-void
.end method

.method public setPictureData([BII)V
    .locals 2
    .param p1, "pictureData"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 94
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_0

    .line 97
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    .line 98
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "picture data can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
