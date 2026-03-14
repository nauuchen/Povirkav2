.class Lorg/apache/poi/hpsf/TypedPropertyValue;
.super Ljava/lang/Object;
.source "TypedPropertyValue.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _type:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lorg/apache/poi/hpsf/TypedPropertyValue;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_type:I

    .line 38
    iput-object p2, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 39
    return-void
.end method

.method static skipPadding(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 5
    .param p0, "lei"    # Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    .line 252
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->getReadIndex()I

    move-result v0

    .line 253
    .local v0, "offset":I
    and-int/lit8 v1, v0, 0x3

    rsub-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x3

    .line 254
    .local v1, "skipBytes":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 255
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->mark(I)V

    .line 256
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->read()I

    move-result v3

    .line 257
    .local v3, "b":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    .line 254
    .end local v3    # "b":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    .restart local v3    # "b":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->reset()V

    .line 262
    .end local v2    # "i":I
    .end local v3    # "b":I
    :cond_2
    return-void
.end method


# virtual methods
.method getValue()Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 7
    .param p1, "lei"    # Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    .line 46
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_type:I

    .line 47
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result v0

    .line 48
    .local v0, "padding":S
    if-eqz v0, :cond_0

    .line 49
    sget-object v1, Lorg/apache/poi/hpsf/TypedPropertyValue;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TypedPropertyValue padding at offset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->getReadIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " MUST be 0, but it\'s value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->readValue(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    .line 53
    return-void
.end method

.method readValue(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 18
    .param p1, "lei"    # Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    .line 56
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_type:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_6

    const/16 v3, 0xb

    const/4 v4, 0x0

    if-eq v2, v3, :cond_5

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_4

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_3

    const/16 v3, 0x101e

    if-eq v2, v3, :cond_2

    const/16 v3, 0x101f

    if-eq v2, v3, :cond_2

    const/16 v3, 0x1047

    if-eq v2, v3, :cond_2

    const/16 v3, 0x1048

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    sparse-switch v2, :sswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    move-object v2, v4

    .local v2, "cur":Lorg/apache/poi/hpsf/Currency;
    move-object v3, v4

    .local v3, "dec":Lorg/apache/poi/hpsf/Decimal;
    move-object v5, v4

    .local v5, "cps":Lorg/apache/poi/hpsf/CodePageString;
    move-object v6, v4

    .local v6, "arr":Lorg/apache/poi/hpsf/Array;
    move-object v7, v4

    .local v7, "vec":Lorg/apache/poi/hpsf/Vector;
    move-object v8, v4

    .local v8, "guid":Lorg/apache/poi/hpsf/GUID;
    move-object v9, v4

    .local v9, "vs":Lorg/apache/poi/hpsf/VersionedStream;
    move-object v10, v4

    .local v10, "ft":Lorg/apache/poi/hpsf/Filetime;
    move-object v11, v4

    .local v11, "blob":Lorg/apache/poi/hpsf/Blob;
    move-object v12, v4

    .local v12, "cd":Lorg/apache/poi/hpsf/ClipboardData;
    move-object v13, v4

    .local v13, "ipn":Lorg/apache/poi/hpsf/IndirectPropertyName;
    move-object v14, v4

    .local v14, "date":Lorg/apache/poi/hpsf/Date;
    move-object v15, v4

    .line 246
    .local v4, "vb":Lorg/apache/poi/hpsf/VariantBool;
    .local v15, "us":Lorg/apache/poi/hpsf/UnicodeString;
    move-object/from16 v16, v2

    .end local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    .local v16, "cur":Lorg/apache/poi/hpsf/Currency;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    .end local v3    # "dec":Lorg/apache/poi/hpsf/Decimal;
    .local v17, "dec":Lorg/apache/poi/hpsf/Decimal;
    const-string v3, "Unknown (possibly, incorrect) TypedPropertyValue type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 94
    .end local v2    # "msg":Ljava/lang/String;
    .end local v4    # "vb":Lorg/apache/poi/hpsf/VariantBool;
    .end local v5    # "cps":Lorg/apache/poi/hpsf/CodePageString;
    .end local v6    # "arr":Lorg/apache/poi/hpsf/Array;
    .end local v7    # "vec":Lorg/apache/poi/hpsf/Vector;
    .end local v8    # "guid":Lorg/apache/poi/hpsf/GUID;
    .end local v9    # "vs":Lorg/apache/poi/hpsf/VersionedStream;
    .end local v10    # "ft":Lorg/apache/poi/hpsf/Filetime;
    .end local v11    # "blob":Lorg/apache/poi/hpsf/Blob;
    .end local v12    # "cd":Lorg/apache/poi/hpsf/ClipboardData;
    .end local v13    # "ipn":Lorg/apache/poi/hpsf/IndirectPropertyName;
    .end local v14    # "date":Lorg/apache/poi/hpsf/Date;
    .end local v15    # "us":Lorg/apache/poi/hpsf/UnicodeString;
    .end local v16    # "cur":Lorg/apache/poi/hpsf/Currency;
    .end local v17    # "dec":Lorg/apache/poi/hpsf/Decimal;
    :pswitch_0
    const/16 v2, 0x8

    new-array v3, v2, [B

    .line 95
    .local v3, "biBytesLE":[B
    invoke-virtual {v1, v3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([B)V

    .line 98
    const/16 v4, 0x9

    new-array v4, v4, [B

    .line 99
    .local v4, "biBytesBE":[B
    array-length v5, v3

    .line 100
    .local v5, "i":I
    move-object v6, v3

    .local v6, "arr$":[B
    array-length v7, v6

    .local v7, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v7, :cond_1

    aget-byte v9, v6, v8

    .line 101
    .local v9, "b":B
    if-gt v5, v2, :cond_0

    .line 102
    aput-byte v9, v4, v5

    .line 104
    :cond_0
    nop

    .end local v9    # "b":B
    add-int/lit8 v5, v5, -0x1

    .line 100
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 106
    .end local v6    # "arr$":[B
    .end local v7    # "len$":I
    .end local v8    # "i$":I
    :cond_1
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v2, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 107
    goto/16 :goto_1

    .line 90
    .end local v3    # "biBytesLE":[B
    .end local v4    # "biBytesBE":[B
    .end local v5    # "i":I
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 91
    goto/16 :goto_1

    .line 75
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUShort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 76
    goto/16 :goto_1

    .line 67
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUByte()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 68
    goto/16 :goto_1

    .line 63
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readByte()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 64
    goto/16 :goto_1

    .line 56
    :sswitch_0
    move-object v2, v4

    .local v2, "cur":Lorg/apache/poi/hpsf/Currency;
    move-object v3, v4

    .local v3, "dec":Lorg/apache/poi/hpsf/Decimal;
    move-object v5, v4

    .local v5, "cps":Lorg/apache/poi/hpsf/CodePageString;
    move-object v6, v4

    .local v6, "vec":Lorg/apache/poi/hpsf/Vector;
    move-object v7, v4

    .local v7, "guid":Lorg/apache/poi/hpsf/GUID;
    move-object v8, v4

    .local v8, "vs":Lorg/apache/poi/hpsf/VersionedStream;
    move-object v9, v4

    .local v9, "ft":Lorg/apache/poi/hpsf/Filetime;
    move-object v10, v4

    .local v10, "blob":Lorg/apache/poi/hpsf/Blob;
    move-object v11, v4

    .local v11, "cd":Lorg/apache/poi/hpsf/ClipboardData;
    move-object v12, v4

    .local v12, "ipn":Lorg/apache/poi/hpsf/IndirectPropertyName;
    move-object v13, v4

    .local v13, "date":Lorg/apache/poi/hpsf/Date;
    move-object v14, v4

    .line 240
    .local v4, "vb":Lorg/apache/poi/hpsf/VariantBool;
    .local v14, "us":Lorg/apache/poi/hpsf/UnicodeString;
    new-instance v15, Lorg/apache/poi/hpsf/Array;

    invoke-direct {v15}, Lorg/apache/poi/hpsf/Array;-><init>()V

    .line 241
    .local v15, "arr":Lorg/apache/poi/hpsf/Array;
    invoke-virtual {v15, v1}, Lorg/apache/poi/hpsf/Array;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    .line 242
    iput-object v15, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 243
    goto/16 :goto_1

    .line 56
    .end local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    .end local v3    # "dec":Lorg/apache/poi/hpsf/Decimal;
    .end local v4    # "vb":Lorg/apache/poi/hpsf/VariantBool;
    .end local v5    # "cps":Lorg/apache/poi/hpsf/CodePageString;
    .end local v6    # "vec":Lorg/apache/poi/hpsf/Vector;
    .end local v7    # "guid":Lorg/apache/poi/hpsf/GUID;
    .end local v8    # "vs":Lorg/apache/poi/hpsf/VersionedStream;
    .end local v9    # "ft":Lorg/apache/poi/hpsf/Filetime;
    .end local v10    # "blob":Lorg/apache/poi/hpsf/Blob;
    .end local v11    # "cd":Lorg/apache/poi/hpsf/ClipboardData;
    .end local v12    # "ipn":Lorg/apache/poi/hpsf/IndirectPropertyName;
    .end local v13    # "date":Lorg/apache/poi/hpsf/Date;
    .end local v14    # "us":Lorg/apache/poi/hpsf/UnicodeString;
    .end local v15    # "arr":Lorg/apache/poi/hpsf/Array;
    :sswitch_1
    move-object v2, v4

    .restart local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    move-object v3, v4

    .restart local v3    # "dec":Lorg/apache/poi/hpsf/Decimal;
    move-object v5, v4

    .restart local v5    # "cps":Lorg/apache/poi/hpsf/CodePageString;
    move-object v6, v4

    .local v6, "guid":Lorg/apache/poi/hpsf/GUID;
    move-object v7, v4

    .local v7, "ft":Lorg/apache/poi/hpsf/Filetime;
    move-object v8, v4

    .local v8, "blob":Lorg/apache/poi/hpsf/Blob;
    move-object v9, v4

    .local v9, "cd":Lorg/apache/poi/hpsf/ClipboardData;
    move-object v10, v4

    .local v10, "ipn":Lorg/apache/poi/hpsf/IndirectPropertyName;
    move-object v11, v4

    .local v11, "date":Lorg/apache/poi/hpsf/Date;
    move-object v12, v4

    .line 192
    .restart local v4    # "vb":Lorg/apache/poi/hpsf/VariantBool;
    .local v12, "us":Lorg/apache/poi/hpsf/UnicodeString;
    new-instance v13, Lorg/apache/poi/hpsf/VersionedStream;

    invoke-direct {v13}, Lorg/apache/poi/hpsf/VersionedStream;-><init>()V

    .line 193
    .local v13, "vs":Lorg/apache/poi/hpsf/VersionedStream;
    invoke-virtual {v13, v1}, Lorg/apache/poi/hpsf/VersionedStream;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    .line 194
    iput-object v13, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 195
    goto/16 :goto_1

    .line 56
    .end local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    .end local v3    # "dec":Lorg/apache/poi/hpsf/Decimal;
    .end local v4    # "vb":Lorg/apache/poi/hpsf/VariantBool;
    .end local v5    # "cps":Lorg/apache/poi/hpsf/CodePageString;
    .end local v6    # "guid":Lorg/apache/poi/hpsf/GUID;
    .end local v7    # "ft":Lorg/apache/poi/hpsf/Filetime;
    .end local v8    # "blob":Lorg/apache/poi/hpsf/Blob;
    .end local v9    # "cd":Lorg/apache/poi/hpsf/ClipboardData;
    .end local v10    # "ipn":Lorg/apache/poi/hpsf/IndirectPropertyName;
    .end local v11    # "date":Lorg/apache/poi/hpsf/Date;
    .end local v12    # "us":Lorg/apache/poi/hpsf/UnicodeString;
    .end local v13    # "vs":Lorg/apache/poi/hpsf/VersionedStream;
    :sswitch_2
    move-object v2, v4

    .restart local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    move-object v3, v4

    .restart local v3    # "dec":Lorg/apache/poi/hpsf/Decimal;
    move-object v5, v4

    .restart local v5    # "cps":Lorg/apache/poi/hpsf/CodePageString;
    move-object v6, v4

    .local v6, "ft":Lorg/apache/poi/hpsf/Filetime;
    move-object v7, v4

    .local v7, "blob":Lorg/apache/poi/hpsf/Blob;
    move-object v8, v4

    .local v8, "cd":Lorg/apache/poi/hpsf/ClipboardData;
    move-object v9, v4

    .local v9, "ipn":Lorg/apache/poi/hpsf/IndirectPropertyName;
    move-object v10, v4

    .local v10, "date":Lorg/apache/poi/hpsf/Date;
    move-object v11, v4

    .line 186
    .restart local v4    # "vb":Lorg/apache/poi/hpsf/VariantBool;
    .local v11, "us":Lorg/apache/poi/hpsf/UnicodeString;
    new-instance v12, Lorg/apache/poi/hpsf/GUID;

    invoke-direct {v12}, Lorg/apache/poi/hpsf/GUID;-><init>()V

    .line 187
    .local v12, "guid":Lorg/apache/poi/hpsf/GUID;
    invoke-virtual {v12, v1}, Lorg/apache/poi/hpsf/GUID;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    .line 188
    iput-object v1, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 189
    goto/16 :goto_1

    .line 56
    .end local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    .end local v3    # "dec":Lorg/apache/poi/hpsf/Decimal;
    .end local v4    # "vb":Lorg/apache/poi/hpsf/VariantBool;
    .end local v5    # "cps":Lorg/apache/poi/hpsf/CodePageString;
    .end local v6    # "ft":Lorg/apache/poi/hpsf/Filetime;
    .end local v7    # "blob":Lorg/apache/poi/hpsf/Blob;
    .end local v8    # "cd":Lorg/apache/poi/hpsf/ClipboardData;
    .end local v9    # "ipn":Lorg/apache/poi/hpsf/IndirectPropertyName;
    .end local v10    # "date":Lorg/apache/poi/hpsf/Date;
    .end local v11    # "us":Lorg/apache/poi/hpsf/UnicodeString;
    .end local v12    # "guid":Lorg/apache/poi/hpsf/GUID;
    :sswitch_3
    move-object v2, v4

    .restart local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    move-object v3, v4

    .restart local v3    # "dec":Lorg/apache/poi/hpsf/Decimal;
    move-object v5, v4

    .restart local v5    # "cps":Lorg/apache/poi/hpsf/CodePageString;
    move-object v6, v4

    .restart local v6    # "ft":Lorg/apache/poi/hpsf/Filetime;
    move-object v7, v4

    .restart local v7    # "blob":Lorg/apache/poi/hpsf/Blob;
    move-object v8, v4

    .local v8, "ipn":Lorg/apache/poi/hpsf/IndirectPropertyName;
    move-object v9, v4

    .local v9, "date":Lorg/apache/poi/hpsf/Date;
    move-object v10, v4

    .line 180
    .restart local v4    # "vb":Lorg/apache/poi/hpsf/VariantBool;
    .local v10, "us":Lorg/apache/poi/hpsf/UnicodeString;
    new-instance v11, Lorg/apache/poi/hpsf/ClipboardData;

    invoke-direct {v11}, Lorg/apache/poi/hpsf/ClipboardData;-><init>()V

    .line 181
    .local v11, "cd":Lorg/apache/poi/hpsf/ClipboardData;
    invoke-virtual {v11, v1}, Lorg/apache/poi/hpsf/ClipboardData;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    .line 182
    iput-object v11, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 183
    goto/16 :goto_1

    .line 56
    .end local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    .end local v3    # "dec":Lorg/apache/poi/hpsf/Decimal;
    .end local v4    # "vb":Lorg/apache/poi/hpsf/VariantBool;
    .end local v5    # "cps":Lorg/apache/poi/hpsf/CodePageString;
    .end local v6    # "ft":Lorg/apache/poi/hpsf/Filetime;
    .end local v7    # "blob":Lorg/apache/poi/hpsf/Blob;
    .end local v8    # "ipn":Lorg/apache/poi/hpsf/IndirectPropertyName;
    .end local v9    # "date":Lorg/apache/poi/hpsf/Date;
    .end local v10    # "us":Lorg/apache/poi/hpsf/UnicodeString;
    .end local v11    # "cd":Lorg/apache/poi/hpsf/ClipboardData;
    :sswitch_4
    move-object v2, v4

    .restart local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    move-object v3, v4

    .restart local v3    # "dec":Lorg/apache/poi/hpsf/Decimal;
    move-object v5, v4

    .restart local v5    # "cps":Lorg/apache/poi/hpsf/CodePageString;
    move-object v6, v4

    .restart local v6    # "ft":Lorg/apache/poi/hpsf/Filetime;
    move-object v7, v4

    .restart local v7    # "blob":Lorg/apache/poi/hpsf/Blob;
    move-object v8, v4

    .local v8, "date":Lorg/apache/poi/hpsf/Date;
    move-object v9, v4

    .line 174
    .restart local v4    # "vb":Lorg/apache/poi/hpsf/VariantBool;
    .local v9, "us":Lorg/apache/poi/hpsf/UnicodeString;
    new-instance v10, Lorg/apache/poi/hpsf/IndirectPropertyName;

    invoke-direct {v10}, Lorg/apache/poi/hpsf/IndirectPropertyName;-><init>()V

    .line 175
    .local v10, "ipn":Lorg/apache/poi/hpsf/IndirectPropertyName;
    invoke-virtual {v10, v1}, Lorg/apache/poi/hpsf/IndirectPropertyName;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    .line 176
    iput-object v10, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 177
    goto/16 :goto_1

    .line 56
    .end local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    .end local v3    # "dec":Lorg/apache/poi/hpsf/Decimal;
    .end local v4    # "vb":Lorg/apache/poi/hpsf/VariantBool;
    .end local v5    # "cps":Lorg/apache/poi/hpsf/CodePageString;
    .end local v6    # "ft":Lorg/apache/poi/hpsf/Filetime;
    .end local v7    # "blob":Lorg/apache/poi/hpsf/Blob;
    .end local v8    # "date":Lorg/apache/poi/hpsf/Date;
    .end local v9    # "us":Lorg/apache/poi/hpsf/UnicodeString;
    .end local v10    # "ipn":Lorg/apache/poi/hpsf/IndirectPropertyName;
    :sswitch_5
    move-object v2, v4

    .restart local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    move-object v3, v4

    .restart local v3    # "dec":Lorg/apache/poi/hpsf/Decimal;
    move-object v5, v4

    .restart local v5    # "cps":Lorg/apache/poi/hpsf/CodePageString;
    move-object v6, v4

    .restart local v6    # "ft":Lorg/apache/poi/hpsf/Filetime;
    move-object v7, v4

    .local v7, "date":Lorg/apache/poi/hpsf/Date;
    move-object v8, v4

    .line 165
    .restart local v4    # "vb":Lorg/apache/poi/hpsf/VariantBool;
    .local v8, "us":Lorg/apache/poi/hpsf/UnicodeString;
    new-instance v9, Lorg/apache/poi/hpsf/Blob;

    invoke-direct {v9}, Lorg/apache/poi/hpsf/Blob;-><init>()V

    .line 166
    .local v9, "blob":Lorg/apache/poi/hpsf/Blob;
    invoke-virtual {v9, v1}, Lorg/apache/poi/hpsf/Blob;->read(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 167
    iput-object v9, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 168
    goto/16 :goto_1

    .line 56
    .end local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    .end local v3    # "dec":Lorg/apache/poi/hpsf/Decimal;
    .end local v4    # "vb":Lorg/apache/poi/hpsf/VariantBool;
    .end local v5    # "cps":Lorg/apache/poi/hpsf/CodePageString;
    .end local v6    # "ft":Lorg/apache/poi/hpsf/Filetime;
    .end local v7    # "date":Lorg/apache/poi/hpsf/Date;
    .end local v8    # "us":Lorg/apache/poi/hpsf/UnicodeString;
    .end local v9    # "blob":Lorg/apache/poi/hpsf/Blob;
    :sswitch_6
    move-object v2, v4

    .restart local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    move-object v3, v4

    .restart local v3    # "dec":Lorg/apache/poi/hpsf/Decimal;
    move-object v5, v4

    .restart local v5    # "cps":Lorg/apache/poi/hpsf/CodePageString;
    move-object v6, v4

    .local v6, "date":Lorg/apache/poi/hpsf/Date;
    move-object v7, v4

    .line 158
    .restart local v4    # "vb":Lorg/apache/poi/hpsf/VariantBool;
    .local v7, "us":Lorg/apache/poi/hpsf/UnicodeString;
    new-instance v8, Lorg/apache/poi/hpsf/Filetime;

    invoke-direct {v8}, Lorg/apache/poi/hpsf/Filetime;-><init>()V

    .line 159
    .local v8, "ft":Lorg/apache/poi/hpsf/Filetime;
    invoke-virtual {v8, v1}, Lorg/apache/poi/hpsf/Filetime;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    .line 160
    iput-object v8, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 161
    goto/16 :goto_1

    .line 56
    .end local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    .end local v3    # "dec":Lorg/apache/poi/hpsf/Decimal;
    .end local v4    # "vb":Lorg/apache/poi/hpsf/VariantBool;
    .end local v5    # "cps":Lorg/apache/poi/hpsf/CodePageString;
    .end local v6    # "date":Lorg/apache/poi/hpsf/Date;
    .end local v7    # "us":Lorg/apache/poi/hpsf/UnicodeString;
    .end local v8    # "ft":Lorg/apache/poi/hpsf/Filetime;
    :sswitch_7
    move-object v2, v4

    .restart local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    move-object v3, v4

    .local v3, "cps":Lorg/apache/poi/hpsf/CodePageString;
    move-object v5, v4

    .line 146
    .restart local v4    # "vb":Lorg/apache/poi/hpsf/VariantBool;
    .local v5, "date":Lorg/apache/poi/hpsf/Date;
    new-instance v6, Lorg/apache/poi/hpsf/Decimal;

    invoke-direct {v6}, Lorg/apache/poi/hpsf/Decimal;-><init>()V

    .line 147
    .local v6, "dec":Lorg/apache/poi/hpsf/Decimal;
    invoke-virtual {v6, v1}, Lorg/apache/poi/hpsf/Decimal;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    .line 148
    iput-object v6, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 149
    goto/16 :goto_1

    .line 56
    .end local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    .end local v3    # "cps":Lorg/apache/poi/hpsf/CodePageString;
    .end local v4    # "vb":Lorg/apache/poi/hpsf/VariantBool;
    .end local v5    # "date":Lorg/apache/poi/hpsf/Date;
    .end local v6    # "dec":Lorg/apache/poi/hpsf/Decimal;
    :pswitch_5
    move-object v2, v4

    .line 127
    .restart local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    new-instance v3, Lorg/apache/poi/hpsf/Date;

    invoke-direct {v3}, Lorg/apache/poi/hpsf/Date;-><init>()V

    .line 128
    .local v3, "date":Lorg/apache/poi/hpsf/Date;
    invoke-virtual {v3, v1}, Lorg/apache/poi/hpsf/Date;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    .line 129
    iput-object v3, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 130
    goto/16 :goto_1

    .line 120
    .end local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    .end local v3    # "date":Lorg/apache/poi/hpsf/Date;
    :pswitch_6
    new-instance v2, Lorg/apache/poi/hpsf/Currency;

    invoke-direct {v2}, Lorg/apache/poi/hpsf/Currency;-><init>()V

    .line 121
    .restart local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    invoke-virtual {v2, v1}, Lorg/apache/poi/hpsf/Currency;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    .line 122
    iput-object v2, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 123
    goto/16 :goto_1

    .line 116
    .end local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 117
    goto/16 :goto_1

    .line 112
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 113
    goto/16 :goto_1

    .line 80
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 81
    goto/16 :goto_1

    .line 71
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 72
    goto/16 :goto_1

    .line 59
    :pswitch_b
    iput-object v4, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 60
    goto/16 :goto_1

    .line 56
    :cond_2
    :pswitch_c
    :sswitch_8
    move-object v2, v4

    .restart local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    move-object v3, v4

    .local v3, "dec":Lorg/apache/poi/hpsf/Decimal;
    move-object v5, v4

    .local v5, "cps":Lorg/apache/poi/hpsf/CodePageString;
    move-object v6, v4

    .local v6, "guid":Lorg/apache/poi/hpsf/GUID;
    move-object v7, v4

    .local v7, "vs":Lorg/apache/poi/hpsf/VersionedStream;
    move-object v8, v4

    .restart local v8    # "ft":Lorg/apache/poi/hpsf/Filetime;
    move-object v9, v4

    .restart local v9    # "blob":Lorg/apache/poi/hpsf/Blob;
    move-object v10, v4

    .local v10, "cd":Lorg/apache/poi/hpsf/ClipboardData;
    move-object v11, v4

    .local v11, "ipn":Lorg/apache/poi/hpsf/IndirectPropertyName;
    move-object v12, v4

    .local v12, "date":Lorg/apache/poi/hpsf/Date;
    move-object v13, v4

    .line 218
    .restart local v4    # "vb":Lorg/apache/poi/hpsf/VariantBool;
    .local v13, "us":Lorg/apache/poi/hpsf/UnicodeString;
    new-instance v14, Lorg/apache/poi/hpsf/Vector;

    iget v15, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_type:I

    and-int/lit16 v15, v15, 0xfff

    int-to-short v15, v15

    invoke-direct {v14, v15}, Lorg/apache/poi/hpsf/Vector;-><init>(S)V

    .line 219
    .local v14, "vec":Lorg/apache/poi/hpsf/Vector;
    invoke-virtual {v14, v1}, Lorg/apache/poi/hpsf/Vector;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    .line 220
    iput-object v14, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 221
    goto :goto_1

    .line 56
    .end local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    .end local v3    # "dec":Lorg/apache/poi/hpsf/Decimal;
    .end local v4    # "vb":Lorg/apache/poi/hpsf/VariantBool;
    .end local v5    # "cps":Lorg/apache/poi/hpsf/CodePageString;
    .end local v6    # "guid":Lorg/apache/poi/hpsf/GUID;
    .end local v7    # "vs":Lorg/apache/poi/hpsf/VersionedStream;
    .end local v8    # "ft":Lorg/apache/poi/hpsf/Filetime;
    .end local v9    # "blob":Lorg/apache/poi/hpsf/Blob;
    .end local v10    # "cd":Lorg/apache/poi/hpsf/ClipboardData;
    .end local v11    # "ipn":Lorg/apache/poi/hpsf/IndirectPropertyName;
    .end local v12    # "date":Lorg/apache/poi/hpsf/Date;
    .end local v13    # "us":Lorg/apache/poi/hpsf/UnicodeString;
    .end local v14    # "vec":Lorg/apache/poi/hpsf/Vector;
    :cond_3
    move-object v2, v4

    .restart local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    move-object v3, v4

    .restart local v3    # "dec":Lorg/apache/poi/hpsf/Decimal;
    move-object v5, v4

    .restart local v5    # "cps":Lorg/apache/poi/hpsf/CodePageString;
    move-object v6, v4

    .line 152
    .restart local v4    # "vb":Lorg/apache/poi/hpsf/VariantBool;
    .local v6, "date":Lorg/apache/poi/hpsf/Date;
    new-instance v7, Lorg/apache/poi/hpsf/UnicodeString;

    invoke-direct {v7}, Lorg/apache/poi/hpsf/UnicodeString;-><init>()V

    .line 153
    .local v7, "us":Lorg/apache/poi/hpsf/UnicodeString;
    invoke-virtual {v7, v1}, Lorg/apache/poi/hpsf/UnicodeString;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    .line 154
    iput-object v7, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 155
    goto :goto_1

    .line 56
    .end local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    .end local v3    # "dec":Lorg/apache/poi/hpsf/Decimal;
    .end local v4    # "vb":Lorg/apache/poi/hpsf/VariantBool;
    .end local v5    # "cps":Lorg/apache/poi/hpsf/CodePageString;
    .end local v6    # "date":Lorg/apache/poi/hpsf/Date;
    .end local v7    # "us":Lorg/apache/poi/hpsf/UnicodeString;
    :cond_4
    :pswitch_d
    move-object v2, v4

    .restart local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    move-object v3, v4

    .line 134
    .local v3, "date":Lorg/apache/poi/hpsf/Date;
    new-instance v4, Lorg/apache/poi/hpsf/CodePageString;

    invoke-direct {v4}, Lorg/apache/poi/hpsf/CodePageString;-><init>()V

    .line 135
    .local v4, "cps":Lorg/apache/poi/hpsf/CodePageString;
    invoke-virtual {v4, v1}, Lorg/apache/poi/hpsf/CodePageString;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    .line 136
    iput-object v4, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 137
    goto :goto_1

    .line 56
    .end local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    .end local v3    # "date":Lorg/apache/poi/hpsf/Date;
    .end local v4    # "cps":Lorg/apache/poi/hpsf/CodePageString;
    :cond_5
    move-object v2, v4

    .restart local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    move-object v3, v4

    .line 140
    .local v3, "cps":Lorg/apache/poi/hpsf/CodePageString;
    .local v4, "date":Lorg/apache/poi/hpsf/Date;
    new-instance v5, Lorg/apache/poi/hpsf/VariantBool;

    invoke-direct {v5}, Lorg/apache/poi/hpsf/VariantBool;-><init>()V

    .line 141
    .local v5, "vb":Lorg/apache/poi/hpsf/VariantBool;
    invoke-virtual {v5, v1}, Lorg/apache/poi/hpsf/VariantBool;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    .line 142
    iput-object v5, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 143
    goto :goto_1

    .line 86
    .end local v2    # "cur":Lorg/apache/poi/hpsf/Currency;
    .end local v3    # "cps":Lorg/apache/poi/hpsf/CodePageString;
    .end local v4    # "date":Lorg/apache/poi/hpsf/Date;
    .end local v5    # "vb":Lorg/apache/poi/hpsf/VariantBool;
    :cond_6
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 87
    nop

    .line 249
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_d
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_7
        0x40 -> :sswitch_6
        0x41 -> :sswitch_5
        0x42 -> :sswitch_4
        0x43 -> :sswitch_4
        0x44 -> :sswitch_4
        0x45 -> :sswitch_4
        0x46 -> :sswitch_5
        0x47 -> :sswitch_3
        0x48 -> :sswitch_2
        0x49 -> :sswitch_1
        0x1040 -> :sswitch_8
        0x2002 -> :sswitch_0
        0x2003 -> :sswitch_0
        0x2004 -> :sswitch_0
        0x2005 -> :sswitch_0
        0x2006 -> :sswitch_0
        0x2007 -> :sswitch_0
        0x2008 -> :sswitch_0
        0x200a -> :sswitch_0
        0x200b -> :sswitch_0
        0x200c -> :sswitch_0
        0x200e -> :sswitch_0
        0x2010 -> :sswitch_0
        0x2011 -> :sswitch_0
        0x2012 -> :sswitch_0
        0x2013 -> :sswitch_0
        0x2016 -> :sswitch_0
        0x2017 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_e
        :pswitch_1
        :pswitch_0
        :pswitch_9
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1002
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x100a
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1010
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method
