.class public final Lorg/apache/poi/hssf/record/ObjRecord;
.super Lorg/apache/poi/hssf/record/Record;
.source "ObjRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static MAX_PAD_ALIGNMENT:I = 0x0

.field private static final NORMAL_PAD_ALIGNMENT:I = 0x2

.field public static final sid:S = 0x5ds


# instance fields
.field private _isPaddedToQuadByteMultiple:Z

.field private final _uninterpretedData:[B

.field private subrecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/SubRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/4 v0, 0x4

    sput v0, Lorg/apache/poi/hssf/record/ObjRecord;->MAX_PAD_ALIGNMENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/Record;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_uninterpretedData:[B

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 9
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 59
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/Record;-><init>()V

    .line 69
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object v0

    .line 70
    .local v0, "subRecordData":[B
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-eq v2, v4, :cond_0

    .line 74
    iput-object v0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_uninterpretedData:[B

    .line 75
    iput-object v3, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    .line 76
    return-void

    .line 87
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    .line 88
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 89
    .local v2, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v4, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {v4, v2}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    .line 90
    .local v4, "subRecStream":Lorg/apache/poi/util/LittleEndianInputStream;
    invoke-static {v4, v1}, Lorg/apache/poi/hssf/record/SubRecord;->createSubRecord(Lorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/hssf/record/SubRecord;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    .line 91
    .local v5, "cmo":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    iget-object v6, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :goto_0
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getObjectType()S

    move-result v6

    invoke-static {v4, v6}, Lorg/apache/poi/hssf/record/SubRecord;->createSubRecord(Lorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/hssf/record/SubRecord;

    move-result-object v6

    .line 94
    .local v6, "subRecord":Lorg/apache/poi/hssf/record/SubRecord;
    iget-object v7, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/SubRecord;->isTerminating()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 96
    nop

    .line 99
    .end local v6    # "subRecord":Lorg/apache/poi/hssf/record/SubRecord;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    .line 100
    .local v6, "nRemainingBytes":I
    if-lez v6, :cond_4

    .line 102
    array-length v7, v0

    sget v8, Lorg/apache/poi/hssf/record/ObjRecord;->MAX_PAD_ALIGNMENT:I

    rem-int/2addr v7, v8

    if-nez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    iput-boolean v7, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_isPaddedToQuadByteMultiple:Z

    .line 103
    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x2

    :goto_2
    if-lt v6, v8, :cond_5

    .line 104
    invoke-static {v0, v6}, Lorg/apache/poi/hssf/record/ObjRecord;->canPaddingBeDiscarded([BI)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 109
    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_isPaddedToQuadByteMultiple:Z

    goto :goto_3

    .line 105
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Leftover "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes in subrecord data "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Lorg/apache/poi/util/RecordFormatException;

    invoke-direct {v3, v1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 113
    .end local v1    # "msg":Ljava/lang/String;
    :cond_4
    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_isPaddedToQuadByteMultiple:Z

    .line 115
    :cond_5
    :goto_3
    iput-object v3, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_uninterpretedData:[B

    .line 116
    return-void

    .line 98
    .end local v6    # "nRemainingBytes":I
    :cond_6
    goto :goto_0
.end method

.method private static canPaddingBeDiscarded([BI)Z
    .locals 2
    .param p0, "data"    # [B
    .param p1, "nRemainingBytes"    # I

    .line 129
    array-length v0, p0

    sub-int/2addr v0, p1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 130
    aget-byte v1, p0, v0

    if-eqz v1, :cond_0

    .line 131
    const/4 v1, 0x0

    return v1

    .line 129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addSubRecord(ILorg/apache/poi/hssf/record/SubRecord;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Lorg/apache/poi/hssf/record/SubRecord;

    .line 213
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 214
    return-void
.end method

.method public addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z
    .locals 1
    .param p1, "o"    # Lorg/apache/poi/hssf/record/SubRecord;

    .line 217
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clearSubRecords()V
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 210
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ObjRecord;->clone()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 4

    .line 222
    new-instance v0, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>()V

    .line 224
    .local v0, "rec":Lorg/apache/poi/hssf/record/ObjRecord;
    iget-object v1, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/SubRecord;

    .line 225
    .local v2, "record":Lorg/apache/poi/hssf/record/SubRecord;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/SubRecord;->clone()Lorg/apache/poi/hssf/record/SubRecord;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    goto :goto_0

    .line 227
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "record":Lorg/apache/poi/hssf/record/SubRecord;
    :cond_0
    return-object v0
.end method

.method public getRecordSize()I
    .locals 4

    .line 153
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_uninterpretedData:[B

    if-eqz v0, :cond_0

    .line 154
    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0

    .line 156
    :cond_0
    const/4 v0, 0x0

    .line 157
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/SubRecord;

    .line 158
    .local v2, "record":Lorg/apache/poi/hssf/record/SubRecord;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/SubRecord;->getDataSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    .end local v2    # "record":Lorg/apache/poi/hssf/record/SubRecord;
    goto :goto_0

    .line 160
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_isPaddedToQuadByteMultiple:Z

    if-eqz v1, :cond_2

    .line 161
    :goto_1
    sget v1, Lorg/apache/poi/hssf/record/ObjRecord;->MAX_PAD_ALIGNMENT:I

    rem-int v1, v0, v1

    if-eqz v1, :cond_3

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    :cond_2
    :goto_2
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 169
    :cond_3
    add-int/lit8 v1, v0, 0x4

    return v1
.end method

.method public getSid()S
    .locals 1

    .line 200
    const/16 v0, 0x5d

    return v0
.end method

.method public getSubRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/SubRecord;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    return-object v0
.end method

.method public serialize(I[B)I
    .locals 5
    .param p1, "offset"    # I
    .param p2, "data"    # [B

    .line 174
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ObjRecord;->getRecordSize()I

    move-result v0

    .line 175
    .local v0, "recSize":I
    add-int/lit8 v1, v0, -0x4

    .line 176
    .local v1, "dataSize":I
    new-instance v2, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    invoke-direct {v2, p2, p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BII)V

    .line 178
    .local v2, "out":Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 179
    invoke-virtual {v2, v1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 181
    iget-object v3, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_uninterpretedData:[B

    if-nez v3, :cond_2

    .line 183
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 184
    iget-object v4, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/record/SubRecord;

    .line 185
    .local v4, "record":Lorg/apache/poi/hssf/record/SubRecord;
    invoke-virtual {v4, v2}, Lorg/apache/poi/hssf/record/SubRecord;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 183
    .end local v4    # "record":Lorg/apache/poi/hssf/record/SubRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    .end local v3    # "i":I
    :cond_0
    add-int v3, p1, v1

    .line 189
    .local v3, "expectedEndIx":I
    :goto_1
    invoke-virtual {v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result v4

    if-ge v4, v3, :cond_1

    .line 190
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeByte(I)V

    goto :goto_1

    .line 192
    .end local v3    # "expectedEndIx":I
    :cond_1
    goto :goto_2

    .line 193
    :cond_2
    invoke-virtual {v2, v3}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->write([B)V

    .line 195
    :goto_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 139
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "[OBJ]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    iget-object v1, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 143
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/SubRecord;

    .line 144
    .local v2, "record":Lorg/apache/poi/hssf/record/SubRecord;
    const-string v3, "SUBRECORD: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 147
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "record":Lorg/apache/poi/hssf/record/SubRecord;
    :cond_0
    const-string v1, "[/OBJ]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
