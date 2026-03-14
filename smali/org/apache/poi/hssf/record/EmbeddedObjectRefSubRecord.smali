.class public final Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "EmbeddedObjectRefSubRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B

.field private static logger:Lorg/apache/poi/util/POILogger; = null

.field public static final sid:S = 0x9s


# instance fields
.field private field_1_unknown_int:I

.field private field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

.field private field_2_unknownFormulaData:[B

.field private field_3_unicode_flag:Z

.field private field_4_ole_classname:Ljava/lang/String;

.field private field_4_unknownByte:Ljava/lang/Byte;

.field private field_5_stream_id:Ljava/lang/Integer;

.field private field_6_unknown:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->logger:Lorg/apache/poi/util/POILogger;

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 67
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    .line 68
    sget-object v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    .line 70
    return-void

    nop

    :array_0
    .array-data 1
        0x2t
        0x6ct
        0x6at
        0x16t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 16
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p2, "size"    # I

    .line 76
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 83
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v2

    .line 84
    .local v2, "streamIdOffset":I
    add-int/lit8 v3, p2, -0x2

    .line 86
    .local v3, "remaining":I
    sub-int v4, v3, v2

    .line 87
    .local v4, "dataLenAfterFormula":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v5

    .line 88
    .local v5, "formulaSize":I
    add-int/lit8 v3, v3, -0x2

    .line 89
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v6

    iput v6, v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_1_unknown_int:I

    .line 90
    add-int/lit8 v3, v3, -0x4

    .line 91
    invoke-static {v1, v5}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->readRawData(Lorg/apache/poi/util/LittleEndianInput;I)[B

    move-result-object v6

    .line 92
    .local v6, "formulaRawBytes":[B
    sub-int/2addr v3, v5

    .line 93
    invoke-static {v6}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->readRefPtg([B)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v7

    iput-object v7, v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 94
    const/4 v8, 0x0

    if-nez v7, :cond_0

    .line 98
    iput-object v6, v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    goto :goto_0

    .line 100
    :cond_0
    iput-object v8, v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    .line 104
    :goto_0
    add-int/lit8 v7, v4, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-lt v3, v7, :cond_5

    .line 105
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v7

    .line 106
    .local v7, "tag":I
    const/4 v11, 0x1

    .line 107
    .local v11, "stringByteCount":I
    const/4 v12, 0x3

    if-ne v7, v12, :cond_4

    .line 110
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v12

    .line 111
    .local v12, "nChars":I
    add-int/lit8 v11, v11, 0x2

    .line 112
    if-lez v12, :cond_3

    .line 114
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v13

    and-int/2addr v13, v10

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    iput-boolean v13, v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    .line 115
    add-int/lit8 v11, v11, 0x1

    .line 116
    if-eqz v13, :cond_2

    .line 117
    invoke-static {v1, v12}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    .line 118
    mul-int/lit8 v13, v12, 0x2

    add-int/2addr v11, v13

    goto :goto_2

    .line 120
    :cond_2
    invoke-static {v1, v12}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    .line 121
    add-int/2addr v11, v12

    goto :goto_2

    .line 124
    :cond_3
    const-string v13, ""

    iput-object v13, v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    .line 126
    .end local v7    # "tag":I
    .end local v12    # "nChars":I
    :goto_2
    goto :goto_3

    .line 108
    .restart local v7    # "tag":I
    :cond_4
    new-instance v8, Lorg/apache/poi/util/RecordFormatException;

    const-string v9, "Expected byte 0x03 here"

    invoke-direct {v8, v9}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 127
    .end local v7    # "tag":I
    .end local v11    # "stringByteCount":I
    :cond_5
    iput-object v8, v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    .line 128
    const/4 v11, 0x0

    .line 130
    .restart local v11    # "stringByteCount":I
    :goto_3
    sub-int/2addr v3, v11

    .line 132
    add-int v7, v11, v5

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_6

    .line 133
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v7

    .line 134
    .local v7, "b":I
    add-int/lit8 v3, v3, -0x1

    .line 135
    iget-object v12, v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-eqz v12, :cond_6

    iget-object v12, v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    if-nez v12, :cond_6

    .line 136
    int-to-byte v12, v7

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    iput-object v12, v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_unknownByte:Ljava/lang/Byte;

    .line 139
    .end local v7    # "b":I
    :cond_6
    sub-int v7, v3, v4

    .line 141
    .local v7, "nUnexpectedPadding":I
    if-lez v7, :cond_7

    .line 142
    sget-object v12, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v13, 0x7

    new-array v10, v10, [Ljava/lang/Object;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Discarding "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " unexpected padding bytes "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v9

    invoke-virtual {v12, v13, v10}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 143
    invoke-static {v1, v7}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->readRawData(Lorg/apache/poi/util/LittleEndianInput;I)[B

    .line 144
    sub-int/2addr v3, v7

    .line 148
    :cond_7
    const/4 v9, 0x4

    if-lt v4, v9, :cond_8

    .line 149
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    .line 150
    add-int/lit8 v3, v3, -0x4

    goto :goto_4

    .line 152
    :cond_8
    iput-object v8, v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    .line 154
    :goto_4
    invoke-static {v1, v3}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->readRawData(Lorg/apache/poi/util/LittleEndianInput;I)[B

    move-result-object v8

    iput-object v8, v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    .line 155
    return-void
.end method

.method private getDataSize(I)I
    .locals 2
    .param p1, "idOffset"    # I

    .line 210
    add-int/lit8 v0, p1, 0x2

    .line 211
    .local v0, "result":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 212
    add-int/lit8 v0, v0, 0x4

    .line 214
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    array-length v1, v1

    add-int/2addr v1, v0

    return v1
.end method

.method private getStreamIDOffset(I)I
    .locals 3
    .param p1, "formulaSize"    # I

    .line 182
    const/4 v0, 0x6

    .line 183
    .local v0, "result":I
    add-int/2addr v0, p1

    .line 186
    iget-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 188
    const/4 v1, 0x0

    .local v1, "stringLen":I
    goto :goto_0

    .line 190
    .end local v1    # "stringLen":I
    :cond_0
    add-int/lit8 v0, v0, 0x3

    .line 191
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 192
    .restart local v1    # "stringLen":I
    if-lez v1, :cond_2

    .line 193
    add-int/lit8 v0, v0, 0x1

    .line 194
    iget-boolean v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    if-eqz v2, :cond_1

    .line 195
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    goto :goto_0

    .line 197
    :cond_1
    add-int/2addr v0, v1

    .line 202
    :cond_2
    :goto_0
    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    .line 203
    add-int/lit8 v0, v0, 0x1

    .line 205
    :cond_3
    return v0
.end method

.method private static readRawData(Lorg/apache/poi/util/LittleEndianInput;I)[B
    .locals 3
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p1, "size"    # I

    .line 170
    if-ltz p1, :cond_1

    .line 173
    if-nez p1, :cond_0

    .line 174
    sget-object v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 176
    :cond_0
    new-array v0, p1, [B

    .line 177
    .local v0, "result":[B
    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 178
    return-object v0

    .line 171
    .end local v0    # "result":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative size ("

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

.method private static readRefPtg([B)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 3
    .param p0, "formulaRawBytes"    # [B

    .line 158
    new-instance v0, Lorg/apache/poi/util/LittleEndianInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    .line 159
    .local v0, "in":Lorg/apache/poi/util/LittleEndianInput;
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v1

    .line 160
    .local v1, "ptgSid":B
    const/16 v2, 0x24

    if-eq v1, v2, :cond_3

    const/16 v2, 0x25

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_0

    .line 166
    const/4 v2, 0x0

    return-object v2

    .line 162
    :cond_0
    new-instance v2, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-direct {v2, v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v2

    .line 164
    :cond_1
    new-instance v2, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    invoke-direct {v2, v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v2

    .line 161
    :cond_2
    new-instance v2, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    invoke-direct {v2, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v2

    .line 163
    :cond_3
    new-instance v2, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    invoke-direct {v2, v0}, Lorg/apache/poi/ss/formula/ptg/RefPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v2
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->clone()Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;
    .locals 0

    .line 310
    return-object p0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/hssf/record/SubRecord;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->clone()Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    move-result-object v0

    return-object v0
.end method

.method protected getDataSize()I
    .locals 3

    .line 217
    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    array-length v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v0

    .line 218
    .local v0, "formulaSize":I
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getStreamIDOffset(I)I

    move-result v1

    .line 219
    .local v1, "idOffset":I
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getDataSize(I)I

    move-result v2

    return v2
.end method

.method public getOLEClassName()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectData()[B
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 73
    const/16 v0, 0x9

    return v0
.end method

.method public getStreamId()Ljava/lang/Integer;
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    return-object v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 8
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 224
    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    array-length v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v0

    .line 225
    .local v0, "formulaSize":I
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getStreamIDOffset(I)I

    move-result v1

    .line 226
    .local v1, "idOffset":I
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getDataSize(I)I

    move-result v2

    .line 229
    .local v2, "dataSize":I
    const/16 v3, 0x9

    invoke-interface {p1, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 230
    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 232
    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 233
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 234
    iget v3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_1_unknown_int:I

    invoke-interface {p1, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 236
    const/16 v3, 0xc

    .line 238
    .local v3, "pos":I
    iget-object v4, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-nez v4, :cond_1

    .line 239
    iget-object v4, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    invoke-interface {p1, v4}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    goto :goto_1

    .line 241
    :cond_1
    invoke-virtual {v4, p1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->write(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 243
    :goto_1
    add-int/2addr v3, v0

    .line 246
    iget-object v4, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 248
    const/4 v4, 0x0

    .local v4, "stringLen":I
    goto :goto_2

    .line 250
    .end local v4    # "stringLen":I
    :cond_2
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 251
    add-int/lit8 v3, v3, 0x1

    .line 252
    iget-object v4, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 253
    .restart local v4    # "stringLen":I
    invoke-interface {p1, v4}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 254
    add-int/lit8 v3, v3, 0x2

    .line 255
    if-lez v4, :cond_4

    .line 256
    iget-boolean v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    invoke-interface {p1, v5}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 257
    add-int/lit8 v3, v3, 0x1

    .line 259
    iget-boolean v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    if-eqz v5, :cond_3

    .line 260
    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    invoke-static {v5, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 261
    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v3, v5

    goto :goto_2

    .line 263
    :cond_3
    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    invoke-static {v5, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 264
    add-int/2addr v3, v4

    .line 270
    :cond_4
    :goto_2
    add-int/lit8 v5, v3, -0x6

    sub-int v5, v1, v5

    if-eqz v5, :cond_7

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 272
    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_unknownByte:Ljava/lang/Byte;

    if-nez v5, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Ljava/lang/Byte;->intValue()I

    move-result v5

    :goto_3
    invoke-interface {p1, v5}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 273
    add-int/lit8 v3, v3, 0x1

    .line 274
    goto :goto_4

    .line 278
    :cond_6
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad padding calculation ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 276
    :cond_7
    nop

    .line 281
    :goto_4
    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    if-eqz v5, :cond_8

    .line 282
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v5}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 283
    add-int/lit8 v3, v3, 0x4

    .line 285
    :cond_8
    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    invoke-interface {p1, v5}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 286
    return-void
.end method

.method public setOleClassname(Ljava/lang/String;)V
    .locals 0
    .param p1, "oleClassname"    # Ljava/lang/String;

    .line 344
    iput-object p1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public setStorageId(I)V
    .locals 1
    .param p1, "storageId"    # I

    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    .line 349
    return-void
.end method

.method public setUnknownFormulaData([B)V
    .locals 0
    .param p1, "formularData"    # [B

    .line 340
    iput-object p1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    .line 341
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 314
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 315
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "[ftPictFmla]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    const-string v1, "    .f2unknown     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_1_unknown_int:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->intToHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    iget-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-nez v1, :cond_0

    .line 318
    const-string v1, "    .f3unknown     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 320
    :cond_0
    const-string v1, "    .formula       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 323
    const-string v1, "    .unicodeFlag   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    const-string v1, "    .oleClassname  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_unknownByte:Ljava/lang/Byte;

    if-eqz v1, :cond_2

    .line 327
    const-string v1, "    .f4unknown   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_unknownByte:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->intValue()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->byteToHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 330
    const-string v1, "    .streamId      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->intToHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    :cond_3
    iget-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    array-length v1, v1

    if-lez v1, :cond_4

    .line 333
    const-string v1, "    .f7unknown     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    :cond_4
    const-string v1, "[/ftPictFmla]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
