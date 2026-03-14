.class public final Lorg/apache/poi/ddf/UnknownEscherRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "UnknownEscherRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final NO_BYTES:[B


# instance fields
.field private _childRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation
.end field

.field private thedata:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/ddf/UnknownEscherRecord;->NO_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    .line 34
    sget-object v0, Lorg/apache/poi/ddf/UnknownEscherRecord;->NO_BYTES:[B

    iput-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    .line 39
    return-void
.end method


# virtual methods
.method public addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V
    .locals 1
    .param p1, "childRecord"    # Lorg/apache/poi/ddf/EscherRecord;

    .line 136
    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getChildRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->clone()Lorg/apache/poi/ddf/UnknownEscherRecord;

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

    .line 30
    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->clone()Lorg/apache/poi/ddf/UnknownEscherRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/ddf/UnknownEscherRecord;
    .locals 2

    .line 123
    new-instance v0, Lorg/apache/poi/ddf/UnknownEscherRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/UnknownEscherRecord;-><init>()V

    .line 124
    .local v0, "uer":Lorg/apache/poi/ddf/UnknownEscherRecord;
    iget-object v1, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    .line 125
    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getOptions()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/UnknownEscherRecord;->setOptions(S)V

    .line 126
    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getRecordId()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/UnknownEscherRecord;->setRecordId(S)V

    .line 127
    return-object v0
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "recordFactory"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/UnknownEscherRecord;->readHeader([BI)I

    move-result v0

    .line 48
    .local v0, "bytesRemaining":I
    array-length v1, p1

    add-int/lit8 v2, p2, 0x8

    sub-int/2addr v1, v2

    .line 49
    .local v1, "available":I
    if-le v0, v1, :cond_0

    .line 50
    move v0, v1

    .line 53
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->isContainerRecord()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, "bytesWritten":I
    new-array v3, v3, [B

    iput-object v3, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    .line 56
    add-int/lit8 p2, p2, 0x8

    .line 57
    add-int/lit8 v2, v2, 0x8

    .line 58
    :goto_0
    if-lez v0, :cond_1

    .line 59
    invoke-interface {p3, p1, p2}, Lorg/apache/poi/ddf/EscherRecordFactory;->createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v3

    .line 60
    .local v3, "child":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v3, p1, p2, p3}, Lorg/apache/poi/ddf/EscherRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    move-result v4

    .line 61
    .local v4, "childBytesWritten":I
    add-int/2addr v2, v4

    .line 62
    add-int/2addr p2, v4

    .line 63
    sub-int/2addr v0, v4

    .line 64
    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getChildRecords()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v3    # "child":Lorg/apache/poi/ddf/EscherRecord;
    .end local v4    # "childBytesWritten":I
    goto :goto_0

    .line 66
    :cond_1
    return v2

    .line 69
    .end local v2    # "bytesWritten":I
    :cond_2
    if-gez v0, :cond_3

    .line 70
    const/4 v0, 0x0

    .line 73
    :cond_3
    new-array v2, v0, [B

    iput-object v2, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    .line 74
    add-int/lit8 v4, p2, 0x8

    invoke-static {p1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    add-int/lit8 v2, v0, 0x8

    return v2
.end method

.method protected getAttributeMap()[[Ljava/lang/Object;
    .locals 8

    .line 141
    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getChildRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 142
    .local v0, "numCh":I
    new-instance v1, Ljava/util/ArrayList;

    mul-int/lit8 v2, v0, 0x2

    const/4 v3, 0x2

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    .local v1, "chLst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-string v2, "children"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v2, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

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

    .line 146
    .local v4, "er":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherRecord;->getRecordName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "er":Lorg/apache/poi/ddf/EscherRecord;
    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [[Ljava/lang/Object;

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "isContainer"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->isContainerRecord()Z

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

    iget-object v5, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    aput-object v5, v4, v7

    aput-object v4, v2, v3

    return-object v2
.end method

.method public getChildRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    return-object v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getRecordId()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 5
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "listener"    # Lorg/apache/poi/ddf/EscherSerializationListener;

    .line 80
    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    .line 82
    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 83
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 84
    iget-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    array-length v0, v0

    .line 85
    .local v0, "remainingBytes":I
    iget-object v1, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    .line 86
    .local v2, "r":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherRecord;->getRecordSize()I

    move-result v3

    add-int/2addr v0, v3

    .end local v2    # "r":Lorg/apache/poi/ddf/EscherRecord;
    goto :goto_0

    .line 88
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    add-int/lit8 v1, p1, 0x4

    invoke-static {p2, v1, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 89
    iget-object v1, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    const/4 v2, 0x0

    add-int/lit8 v3, p1, 0x8

    array-length v4, v1

    invoke-static {v1, v2, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    add-int/lit8 v1, p1, 0x8

    iget-object v2, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    array-length v2, v2

    add-int/2addr v1, v2

    .line 91
    .local v1, "pos":I
    iget-object v2, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ddf/EscherRecord;

    .line 92
    .local v3, "r":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v3, v1, p2, p3}, Lorg/apache/poi/ddf/EscherRecord;->serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I

    move-result v4

    add-int/2addr v1, v4

    .end local v3    # "r":Lorg/apache/poi/ddf/EscherRecord;
    goto :goto_1

    .line 95
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getRecordId()S

    move-result v2

    sub-int v3, v1, p1

    invoke-interface {p3, v1, v2, v3, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    .line 96
    sub-int v2, v1, p1

    return v2
.end method

.method public setChildRecords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p1, "childRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    iput-object p1, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    .line 119
    return-void
.end method
