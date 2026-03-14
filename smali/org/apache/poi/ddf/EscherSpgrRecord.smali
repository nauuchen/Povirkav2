.class public Lorg/apache/poi/ddf/EscherSpgrRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "EscherSpgrRecord.java"


# static fields
.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "MsofbtSpgr"

.field public static final RECORD_ID:S = -0xff7s


# instance fields
.field private field_1_rectX1:I

.field private field_2_rectY1:I

.field private field_3_rectX2:I

.field private field_4_rectY2:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "recordFactory"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherSpgrRecord;->readHeader([BI)I

    move-result v0

    .line 41
    .local v0, "bytesRemaining":I
    add-int/lit8 v1, p2, 0x8

    .line 42
    .local v1, "pos":I
    const/4 v2, 0x0

    .line 43
    .local v2, "size":I
    add-int v3, v1, v2

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_1_rectX1:I

    add-int/lit8 v2, v2, 0x4

    .line 44
    add-int v3, v1, v2

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_2_rectY1:I

    add-int/lit8 v2, v2, 0x4

    .line 45
    add-int v3, v1, v2

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_3_rectX2:I

    add-int/lit8 v2, v2, 0x4

    .line 46
    add-int v3, v1, v2

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_4_rectY2:I

    add-int/lit8 v2, v2, 0x4

    .line 47
    sub-int/2addr v0, v2

    .line 48
    if-nez v0, :cond_0

    .line 53
    add-int/lit8 v3, v2, 0x8

    add-int/2addr v3, v0

    return v3

    .line 49
    :cond_0
    new-instance v3, Lorg/apache/poi/util/RecordFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected no remaining bytes but got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected getAttributeMap()[[Ljava/lang/Object;
    .locals 6

    .line 171
    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "RectX"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_1_rectX1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "RectY"

    aput-object v3, v2, v4

    iget v3, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_2_rectY1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "RectWidth"

    aput-object v3, v2, v4

    iget v3, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_3_rectX2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RectHeight"

    aput-object v2, v1, v4

    iget v2, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_4_rectY2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getRecordId()S
    .locals 1

    .line 82
    const/16 v0, -0xff7

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    .line 87
    const-string v0, "Spgr"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    .line 77
    const/16 v0, 0x18

    return v0
.end method

.method public getRectX1()I
    .locals 1

    .line 97
    iget v0, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_1_rectX1:I

    return v0
.end method

.method public getRectX2()I
    .locals 1

    .line 137
    iget v0, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_3_rectX2:I

    return v0
.end method

.method public getRectY1()I
    .locals 1

    .line 117
    iget v0, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_2_rectY1:I

    return v0
.end method

.method public getRectY2()I
    .locals 1

    .line 157
    iget v0, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_4_rectY2:I

    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 4
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "listener"    # Lorg/apache/poi/ddf/EscherSerializationListener;

    .line 59
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    .line 60
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 61
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 62
    const/16 v0, 0x10

    .line 63
    .local v0, "remainingBytes":I
    add-int/lit8 v1, p1, 0x4

    invoke-static {p2, v1, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 64
    add-int/lit8 v1, p1, 0x8

    iget v2, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_1_rectX1:I

    invoke-static {p2, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 65
    add-int/lit8 v1, p1, 0xc

    iget v2, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_2_rectY1:I

    invoke-static {p2, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 66
    add-int/lit8 v1, p1, 0x10

    iget v2, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_3_rectX2:I

    invoke-static {p2, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 67
    add-int/lit8 v1, p1, 0x14

    iget v2, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_4_rectY2:I

    invoke-static {p2, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRecordSize()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRecordId()S

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRecordSize()I

    move-result v3

    add-int/2addr v3, p1

    invoke-interface {p3, v1, v2, v3, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    .line 71
    const/16 v1, 0x18

    return v1
.end method

.method public setRectX1(I)V
    .locals 0
    .param p1, "x1"    # I

    .line 107
    iput p1, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_1_rectX1:I

    .line 108
    return-void
.end method

.method public setRectX2(I)V
    .locals 0
    .param p1, "x2"    # I

    .line 147
    iput p1, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_3_rectX2:I

    .line 148
    return-void
.end method

.method public setRectY1(I)V
    .locals 0
    .param p1, "y1"    # I

    .line 127
    iput p1, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_2_rectY1:I

    .line 128
    return-void
.end method

.method public setRectY2(I)V
    .locals 0
    .param p1, "rectY2"    # I

    .line 166
    iput p1, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_4_rectY2:I

    .line 167
    return-void
.end method
