.class public final Lorg/apache/poi/ddf/EscherTextboxRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "EscherTextboxRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final NO_BYTES:[B

.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "msofbtClientTextbox"

.field public static final RECORD_ID:S = -0xff3s


# instance fields
.field private thedata:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/ddf/EscherTextboxRecord;->NO_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    .line 39
    sget-object v0, Lorg/apache/poi/ddf/EscherTextboxRecord;->NO_BYTES:[B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->clone()Lorg/apache/poi/ddf/EscherTextboxRecord;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/ddf/EscherRecord;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->clone()Lorg/apache/poi/ddf/EscherTextboxRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/ddf/EscherTextboxRecord;
    .locals 2

    .line 123
    new-instance v0, Lorg/apache/poi/ddf/EscherTextboxRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherTextboxRecord;-><init>()V

    .line 124
    .local v0, "etr":Lorg/apache/poi/ddf/EscherTextboxRecord;
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getOptions()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherTextboxRecord;->setOptions(S)V

    .line 125
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getRecordId()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherTextboxRecord;->setRecordId(S)V

    .line 126
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    .line 127
    return-object v0
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 4
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "recordFactory"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .line 47
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherTextboxRecord;->readHeader([BI)I

    move-result v0

    .line 51
    .local v0, "bytesRemaining":I
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    .line 52
    add-int/lit8 v2, p2, 0x8

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    add-int/lit8 v1, v0, 0x8

    return v1
.end method

.method protected getAttributeMap()[[Ljava/lang/Object;
    .locals 8

    .line 137
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getChildRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 138
    .local v0, "numCh":I
    new-instance v1, Ljava/util/ArrayList;

    mul-int/lit8 v2, v0, 0x2

    const/4 v3, 0x2

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .local v1, "chLst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-string v2, "children"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getChildRecords()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ddf/EscherRecord;

    .line 142
    .local v4, "er":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherRecord;->getRecordName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "er":Lorg/apache/poi/ddf/EscherRecord;
    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [[Ljava/lang/Object;

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "isContainer"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->isContainerRecord()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    aput-object v4, v2, v6

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v7

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Extra Data"

    aput-object v5, v4, v6

    iget-object v5, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    aput-object v5, v4, v7

    aput-object v4, v2, v3

    return-object v2
.end method

.method public getData()[B
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    return-object v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    .line 132
    const-string v0, "ClientTextbox"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 6
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "listener"    # Lorg/apache/poi/ddf/EscherSerializationListener;

    .line 59
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    .line 61
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 62
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 63
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    array-length v0, v0

    .line 64
    .local v0, "remainingBytes":I
    add-int/lit8 v1, p1, 0x4

    invoke-static {p2, v1, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 65
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    add-int/lit8 v2, p1, 0x8

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    add-int/lit8 v1, p1, 0x8

    iget-object v2, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    array-length v2, v2

    add-int/2addr v1, v2

    .line 68
    .local v1, "pos":I
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getRecordId()S

    move-result v2

    sub-int v3, v1, p1

    invoke-interface {p3, v1, v2, v3, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    .line 69
    sub-int v2, v1, p1

    .line 70
    .local v2, "size":I
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getRecordSize()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 73
    return v2

    .line 71
    :cond_0
    new-instance v3, Lorg/apache/poi/util/RecordFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes written but getRecordSize() reports "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getRecordSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setData([B)V
    .locals 2
    .param p1, "b"    # [B

    .line 112
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->setData([BII)V

    .line 113
    return-void
.end method

.method public setData([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 100
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    .line 101
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    return-void
.end method
