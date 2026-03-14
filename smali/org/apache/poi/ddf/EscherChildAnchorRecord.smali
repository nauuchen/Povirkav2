.class public Lorg/apache/poi/ddf/EscherChildAnchorRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "EscherChildAnchorRecord.java"


# static fields
.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "MsofbtChildAnchor"

.field public static final RECORD_ID:S = -0xff1s


# instance fields
.field private field_1_dx1:I

.field private field_2_dy1:I

.field private field_3_dx2:I

.field private field_4_dy2:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "recordFactory"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .line 42
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->readHeader([BI)I

    move-result v0

    .line 43
    .local v0, "bytesRemaining":I
    add-int/lit8 v1, p2, 0x8

    .line 44
    .local v1, "pos":I
    const/4 v2, 0x0

    .line 45
    .local v2, "size":I
    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    .line 47
    add-int v3, v1, v2

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_1_dx1:I

    add-int/lit8 v2, v2, 0x4

    .line 48
    add-int v3, v1, v2

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_2_dy1:I

    add-int/lit8 v2, v2, 0x4

    .line 49
    add-int v3, v1, v2

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_3_dx2:I

    add-int/lit8 v2, v2, 0x4

    .line 50
    add-int v3, v1, v2

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_4_dy2:I

    add-int/lit8 v2, v2, 0x4

    .line 51
    goto :goto_0

    .line 59
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Invalid EscherChildAnchorRecord - neither 8 nor 16 bytes."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :cond_1
    add-int v3, v1, v2

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_1_dx1:I

    add-int/lit8 v2, v2, 0x2

    .line 54
    add-int v3, v1, v2

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_2_dy1:I

    add-int/lit8 v2, v2, 0x2

    .line 55
    add-int v3, v1, v2

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_3_dx2:I

    add-int/lit8 v2, v2, 0x2

    .line 56
    add-int v3, v1, v2

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_4_dy2:I

    add-int/lit8 v2, v2, 0x2

    .line 57
    nop

    .line 62
    :goto_0
    add-int/lit8 v3, v2, 0x8

    return v3
.end method

.method protected getAttributeMap()[[Ljava/lang/Object;
    .locals 6

    .line 180
    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "X1"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_1_dx1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Y1"

    aput-object v3, v2, v4

    iget v3, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_2_dy1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "X2"

    aput-object v3, v2, v4

    iget v3, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_3_dx2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Y2"

    aput-object v2, v1, v4

    iget v2, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_4_dy2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getDx1()I
    .locals 1

    .line 105
    iget v0, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_1_dx1:I

    return v0
.end method

.method public getDx2()I
    .locals 1

    .line 145
    iget v0, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_3_dx2:I

    return v0
.end method

.method public getDy1()I
    .locals 1

    .line 125
    iget v0, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_2_dy1:I

    return v0
.end method

.method public getDy2()I
    .locals 1

    .line 165
    iget v0, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_4_dy2:I

    return v0
.end method

.method public getRecordId()S
    .locals 1

    .line 89
    const/16 v0, -0xff1

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    .line 94
    const-string v0, "ChildAnchor"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    .line 84
    const/16 v0, 0x18

    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 3
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "listener"    # Lorg/apache/poi/ddf/EscherSerializationListener;

    .line 67
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    .line 68
    move v0, p1

    .line 69
    .local v0, "pos":I
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->getOptions()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, v0, 0x2

    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, v0, 0x2

    .line 71
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->getRecordSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 72
    iget v1, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_1_dx1:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 73
    iget v1, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_2_dy1:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 74
    iget v1, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_3_dx2:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 75
    iget v1, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_4_dy2:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 77
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->getRecordId()S

    move-result v1

    sub-int v2, v0, p1

    invoke-interface {p3, v0, v1, v2, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    .line 78
    sub-int v1, v0, p1

    return v1
.end method

.method public setDx1(I)V
    .locals 0
    .param p1, "field_1_dx1"    # I

    .line 115
    iput p1, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_1_dx1:I

    .line 116
    return-void
.end method

.method public setDx2(I)V
    .locals 0
    .param p1, "field_3_dx2"    # I

    .line 155
    iput p1, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_3_dx2:I

    .line 156
    return-void
.end method

.method public setDy1(I)V
    .locals 0
    .param p1, "field_2_dy1"    # I

    .line 135
    iput p1, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_2_dy1:I

    .line 136
    return-void
.end method

.method public setDy2(I)V
    .locals 0
    .param p1, "field_4_dy2"    # I

    .line 175
    iput p1, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_4_dy2:I

    .line 176
    return-void
.end method
