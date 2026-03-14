.class public Lorg/apache/poi/ddf/EscherBitmapBlip;
.super Lorg/apache/poi/ddf/EscherBlipRecord;
.source "EscherBitmapBlip.java"


# static fields
.field private static final HEADER_SIZE:I = 0x8

.field public static final RECORD_ID_DIB:S = -0xfe1s

.field public static final RECORD_ID_JPEG:S = -0xfe3s

.field public static final RECORD_ID_PNG:S = -0xfe2s


# instance fields
.field private final field_1_UID:[B

.field private field_2_marker:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;-><init>()V

    .line 29
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_1_UID:[B

    .line 30
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    return-void
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "recordFactory"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .line 34
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherBitmapBlip;->readHeader([BI)I

    move-result v0

    .line 35
    .local v0, "bytesAfterHeader":I
    add-int/lit8 v1, p2, 0x8

    .line 37
    .local v1, "pos":I
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_1_UID:[B

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v4

    .line 38
    aget-byte v2, p1, v1

    iput-byte v2, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    add-int/lit8 v1, v1, 0x1

    .line 40
    add-int/lit8 v2, v0, -0x11

    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/poi/ddf/EscherBitmapBlip;->setPictureData([BII)V

    .line 42
    add-int/lit8 v2, v0, 0x8

    return v2
.end method

.method protected getAttributeMap()[[Ljava/lang/Object;
    .locals 6

    .line 113
    const/4 v0, 0x2

    new-array v1, v0, [[Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "Marker"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Extra Data"

    aput-object v2, v0, v4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getPicturedata()[B

    move-result-object v2

    aput-object v2, v0, v5

    aput-object v0, v1, v5

    return-object v1
.end method

.method public getMarker()B
    .locals 1

    .line 98
    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    return v0
.end method

.method public getRecordSize()I
    .locals 1

    .line 65
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getPicturedata()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x19

    return v0
.end method

.method public getUID()[B
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_1_UID:[B

    return-object v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 5
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "listener"    # Lorg/apache/poi/ddf/EscherSerializationListener;

    .line 47
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    .line 49
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 50
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 51
    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getRecordSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 52
    add-int/lit8 v0, p1, 0x8

    .line 54
    .local v0, "pos":I
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_1_UID:[B

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v1, v2, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    add-int/lit8 v1, v0, 0x10

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    aput-byte v3, p2, v1

    .line 56
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getPicturedata()[B

    move-result-object v1

    .line 57
    .local v1, "pd":[B
    add-int/lit8 v3, v0, 0x11

    array-length v4, v1

    invoke-static {v1, v2, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getRecordSize()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getRecordId()S

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getRecordSize()I

    move-result v4

    invoke-interface {p3, v2, v3, v4, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    .line 60
    array-length v2, v1

    add-int/lit8 v2, v2, 0x19

    return v2
.end method

.method public setMarker(B)V
    .locals 0
    .param p1, "field_2_marker"    # B

    .line 108
    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    .line 109
    return-void
.end method

.method public setUID([B)V
    .locals 3
    .param p1, "field_1_UID"    # [B

    .line 85
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_1_UID:[B

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "field_1_UID must be byte[16]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
