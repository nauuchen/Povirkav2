.class public Lorg/apache/poi/hpsf/VariantSupport;
.super Lorg/apache/poi/hpsf/Variant;
.source "VariantSupport.java"


# static fields
.field public static final SUPPORTED_TYPES:[I

.field private static logUnsupportedTypes:Z

.field private static final logger:Lorg/apache/poi/util/POILogger;

.field private static final paddingBytes:[B

.field private static unsupportedMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/hpsf/VariantSupport;->SUPPORTED_TYPES:[I

    .line 62
    const-class v0, Lorg/apache/poi/hpsf/VariantSupport;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/VariantSupport;->logger:Lorg/apache/poi/util/POILogger;

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/hpsf/VariantSupport;->paddingBytes:[B

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x14
        0x5
        0x40
        0x1e
        0x1f
        0x47
        0xb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/apache/poi/hpsf/Variant;-><init>()V

    return-void
.end method

.method public static codepageToEncoding(I)Ljava/lang/String;
    .locals 1
    .param p0, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    .line 280
    invoke-static {p0}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isLogUnsupportedTypes()Z
    .locals 1

    .line 93
    sget-boolean v0, Lorg/apache/poi/hpsf/VariantSupport;->logUnsupportedTypes:Z

    return v0
.end method

.method public static read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;IJI)Ljava/lang/Object;
    .locals 10
    .param p0, "lei"    # Lorg/apache/poi/util/LittleEndianByteArrayInputStream;
    .param p1, "length"    # I
    .param p2, "type"    # J
    .param p4, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/ReadingNotSupportedException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->getReadIndex()I

    move-result v0

    .line 172
    .local v0, "offset":I
    new-instance v1, Lorg/apache/poi/hpsf/TypedPropertyValue;

    long-to-int v2, p2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/hpsf/TypedPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 174
    .local v1, "typedPropertyValue":Lorg/apache/poi/hpsf/TypedPropertyValue;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p0}, Lorg/apache/poi/hpsf/TypedPropertyValue;->readValue(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    nop

    .line 182
    long-to-int v4, p2

    if-eqz v4, :cond_6

    const/16 v5, 0xb

    if-eq v4, v5, :cond_5

    const/16 v5, 0x40

    if-eq v4, v5, :cond_4

    const/16 v5, 0x47

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6

    const/4 v5, 0x4

    if-eq v4, v5, :cond_6

    const/4 v5, 0x5

    if-eq v4, v5, :cond_6

    const/16 v5, 0x1e

    if-eq v4, v5, :cond_1

    const/16 v5, 0x1f

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_0

    move-object v4, v3

    .local v4, "cpString":Lorg/apache/poi/hpsf/CodePageString;
    move-object v5, v3

    .local v5, "uniString":Lorg/apache/poi/hpsf/UnicodeString;
    move-object v6, v3

    .local v6, "bool":Lorg/apache/poi/hpsf/VariantBool;
    move-object v7, v3

    .line 251
    .local v3, "filetime":Lorg/apache/poi/hpsf/Filetime;
    .local v7, "clipboardData":Lorg/apache/poi/hpsf/ClipboardData;
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->getReadIndex()I

    move-result v8

    sub-int/2addr v8, v0

    .line 252
    .local v8, "unpadded":I
    invoke-virtual {p0, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->setReadIndex(I)V

    .line 253
    new-array v9, v8, [B

    .line 254
    .local v9, "v":[B
    invoke-virtual {p0, v9, v2, v8}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([BII)V

    .line 255
    new-instance v2, Lorg/apache/poi/hpsf/ReadingNotSupportedException;

    invoke-direct {v2, p2, p3, v9}, Lorg/apache/poi/hpsf/ReadingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw v2

    .line 182
    .end local v3    # "filetime":Lorg/apache/poi/hpsf/Filetime;
    .end local v4    # "cpString":Lorg/apache/poi/hpsf/CodePageString;
    .end local v5    # "uniString":Lorg/apache/poi/hpsf/UnicodeString;
    .end local v6    # "bool":Lorg/apache/poi/hpsf/VariantBool;
    .end local v7    # "clipboardData":Lorg/apache/poi/hpsf/ClipboardData;
    .end local v8    # "unpadded":I
    .end local v9    # "v":[B
    :cond_0
    move-object v2, v3

    .line 217
    .local v2, "cpString":Lorg/apache/poi/hpsf/CodePageString;
    .restart local v3    # "filetime":Lorg/apache/poi/hpsf/Filetime;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hpsf/UnicodeString;

    .line 218
    .local v4, "uniString":Lorg/apache/poi/hpsf/UnicodeString;
    invoke-virtual {v4}, Lorg/apache/poi/hpsf/UnicodeString;->toJavaString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 182
    .end local v2    # "cpString":Lorg/apache/poi/hpsf/CodePageString;
    .end local v3    # "filetime":Lorg/apache/poi/hpsf/Filetime;
    .end local v4    # "uniString":Lorg/apache/poi/hpsf/UnicodeString;
    :cond_1
    move-object v2, v3

    .line 213
    .local v2, "filetime":Lorg/apache/poi/hpsf/Filetime;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hpsf/CodePageString;

    .line 214
    .local v3, "cpString":Lorg/apache/poi/hpsf/CodePageString;
    invoke-virtual {v3, p4}, Lorg/apache/poi/hpsf/CodePageString;->getJavaValue(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 206
    .end local v2    # "filetime":Lorg/apache/poi/hpsf/Filetime;
    .end local v3    # "cpString":Lorg/apache/poi/hpsf/CodePageString;
    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 182
    :cond_3
    move-object v2, v3

    .local v2, "cpString":Lorg/apache/poi/hpsf/CodePageString;
    move-object v4, v3

    .line 239
    .local v3, "filetime":Lorg/apache/poi/hpsf/Filetime;
    .restart local v4    # "uniString":Lorg/apache/poi/hpsf/UnicodeString;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hpsf/ClipboardData;

    .line 240
    .local v5, "clipboardData":Lorg/apache/poi/hpsf/ClipboardData;
    invoke-virtual {v5}, Lorg/apache/poi/hpsf/ClipboardData;->toByteArray()[B

    move-result-object v6

    return-object v6

    .line 209
    .end local v2    # "cpString":Lorg/apache/poi/hpsf/CodePageString;
    .end local v3    # "filetime":Lorg/apache/poi/hpsf/Filetime;
    .end local v4    # "uniString":Lorg/apache/poi/hpsf/UnicodeString;
    .end local v5    # "clipboardData":Lorg/apache/poi/hpsf/ClipboardData;
    :cond_4
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hpsf/Filetime;

    .line 210
    .local v2, "filetime":Lorg/apache/poi/hpsf/Filetime;
    invoke-virtual {v2}, Lorg/apache/poi/hpsf/Filetime;->getJavaValue()Ljava/util/Date;

    move-result-object v3

    return-object v3

    .line 182
    .end local v2    # "filetime":Lorg/apache/poi/hpsf/Filetime;
    :cond_5
    move-object v2, v3

    .local v2, "cpString":Lorg/apache/poi/hpsf/CodePageString;
    move-object v4, v3

    .restart local v4    # "uniString":Lorg/apache/poi/hpsf/UnicodeString;
    move-object v5, v3

    .line 243
    .restart local v3    # "filetime":Lorg/apache/poi/hpsf/Filetime;
    .restart local v5    # "clipboardData":Lorg/apache/poi/hpsf/ClipboardData;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/hpsf/VariantBool;

    .line 244
    .restart local v6    # "bool":Lorg/apache/poi/hpsf/VariantBool;
    invoke-virtual {v6}, Lorg/apache/poi/hpsf/VariantBool;->getValue()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    return-object v7

    .line 199
    .end local v2    # "cpString":Lorg/apache/poi/hpsf/CodePageString;
    .end local v3    # "filetime":Lorg/apache/poi/hpsf/Filetime;
    .end local v4    # "uniString":Lorg/apache/poi/hpsf/UnicodeString;
    .end local v5    # "clipboardData":Lorg/apache/poi/hpsf/ClipboardData;
    .end local v6    # "bool":Lorg/apache/poi/hpsf/VariantBool;
    :cond_6
    :pswitch_0
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 175
    :catch_0
    move-exception v3

    .line 176
    .local v3, "exc":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->available()I

    move-result v4

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 177
    .local v4, "propLength":I
    new-array v5, v4, [B

    .line 178
    .local v5, "v":[B
    invoke-virtual {p0, v5, v2, v4}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([BII)V

    .line 179
    new-instance v2, Lorg/apache/poi/hpsf/ReadingNotSupportedException;

    invoke-direct {v2, p2, p3, v5}, Lorg/apache/poi/hpsf/ReadingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static read([BIIJI)Ljava/lang/Object;
    .locals 2
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "type"    # J
    .param p5, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/ReadingNotSupportedException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 164
    new-instance v0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([BI)V

    .line 165
    .local v0, "lei":Lorg/apache/poi/util/LittleEndianByteArrayInputStream;
    invoke-static {v0, p2, p3, p4, p5}, Lorg/apache/poi/hpsf/VariantSupport;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;IJI)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static setLogUnsupportedTypes(Z)V
    .locals 0
    .param p0, "logUnsupportedTypes"    # Z

    .line 82
    sput-boolean p0, Lorg/apache/poi/hpsf/VariantSupport;->logUnsupportedTypes:Z

    .line 83
    return-void
.end method

.method public static write(Ljava/io/OutputStream;JLjava/lang/Object;I)I
    .locals 18
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "type"    # J
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/hpsf/WritingNotSupportedException;
        }
    .end annotation

    .line 301
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    const/4 v4, -0x1

    .line 302
    .local v4, "length":I
    long-to-int v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eqz v5, :cond_15

    const/16 v9, 0xb

    if-eq v5, v9, :cond_13

    const/16 v9, 0x40

    if-eq v5, v9, :cond_11

    const/16 v10, 0x47

    if-eq v5, v10, :cond_10

    const/4 v10, 0x2

    if-eq v5, v10, :cond_f

    if-eq v5, v8, :cond_e

    if-eq v5, v7, :cond_d

    const/4 v10, 0x5

    if-eq v5, v10, :cond_c

    const/16 v10, 0x1e

    if-eq v5, v10, :cond_a

    const/16 v10, 0x1f

    if-eq v5, v10, :cond_8

    packed-switch v5, :pswitch_data_0

    move/from16 v10, p4

    goto/16 :goto_4

    .line 378
    :pswitch_0
    instance-of v5, v3, Ljava/lang/Number;

    if-eqz v5, :cond_4

    .line 379
    instance-of v5, v3, Ljava/math/BigInteger;

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    move-object v5, v3

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 380
    .local v5, "bi":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    if-gt v10, v9, :cond_3

    .line 384
    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v9

    .local v9, "biBytesBE":[B
    const/16 v10, 0x8

    new-array v11, v10, [B

    .line 385
    .local v11, "biBytesLE":[B
    array-length v12, v9

    .line 386
    .local v12, "i":I
    move-object v13, v9

    .local v13, "arr$":[B
    array-length v14, v13

    .local v14, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_1
    if-ge v15, v14, :cond_2

    aget-byte v16, v13, v15

    .line 387
    .local v16, "b":B
    if-gt v12, v10, :cond_1

    .line 388
    add-int/lit8 v17, v12, -0x1

    aput-byte v16, v11, v17

    .line 390
    :cond_1
    nop

    .end local v16    # "b":B
    add-int/lit8 v12, v12, -0x1

    .line 386
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 393
    .end local v13    # "arr$":[B
    .end local v14    # "len$":I
    .end local v15    # "i$":I
    :cond_2
    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write([B)V

    .line 394
    const/16 v4, 0x8

    .line 395
    .end local v5    # "bi":Ljava/math/BigInteger;
    .end local v9    # "biBytesBE":[B
    .end local v11    # "biBytesLE":[B
    .end local v12    # "i":I
    move/from16 v10, p4

    goto/16 :goto_4

    .line 381
    .restart local v5    # "bi":Ljava/math/BigInteger;
    :cond_3
    new-instance v6, Lorg/apache/poi/hpsf/WritingNotSupportedException;

    invoke-direct {v6, v1, v2, v3}, Lorg/apache/poi/hpsf/WritingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw v6

    .line 378
    .end local v5    # "bi":Ljava/math/BigInteger;
    :cond_4
    move/from16 v10, p4

    goto/16 :goto_4

    .line 371
    :pswitch_1
    instance-of v5, v3, Ljava/lang/Number;

    if-eqz v5, :cond_5

    .line 372
    move-object v5, v3

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10, v0}, Lorg/apache/poi/util/LittleEndian;->putLong(JLjava/io/OutputStream;)V

    .line 373
    const/16 v4, 0x8

    move/from16 v10, p4

    goto/16 :goto_4

    .line 371
    :cond_5
    move/from16 v10, p4

    goto/16 :goto_4

    .line 364
    :pswitch_2
    instance-of v5, v3, Ljava/lang/Number;

    if-eqz v5, :cond_6

    .line 365
    move-object v5, v3

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10, v0}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    .line 366
    const/4 v4, 0x4

    move/from16 v10, p4

    goto/16 :goto_4

    .line 364
    :cond_6
    move/from16 v10, p4

    goto/16 :goto_4

    .line 350
    :pswitch_3
    instance-of v5, v3, Ljava/lang/Number;

    if-eqz v5, :cond_7

    .line 351
    move-object v5, v3

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5, v0}, Lorg/apache/poi/util/LittleEndian;->putUShort(ILjava/io/OutputStream;)V

    .line 352
    const/4 v4, 0x2

    move/from16 v10, p4

    goto/16 :goto_4

    .line 350
    :cond_7
    move/from16 v10, p4

    goto/16 :goto_4

    .line 322
    :cond_8
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 323
    new-instance v5, Lorg/apache/poi/hpsf/UnicodeString;

    invoke-direct {v5}, Lorg/apache/poi/hpsf/UnicodeString;-><init>()V

    .line 324
    .local v5, "uniString":Lorg/apache/poi/hpsf/UnicodeString;
    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v9}, Lorg/apache/poi/hpsf/UnicodeString;->setJavaValue(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v5, v0}, Lorg/apache/poi/hpsf/UnicodeString;->write(Ljava/io/OutputStream;)I

    move-result v4

    .line 326
    .end local v5    # "uniString":Lorg/apache/poi/hpsf/UnicodeString;
    move/from16 v10, p4

    goto/16 :goto_4

    .line 322
    :cond_9
    move/from16 v10, p4

    goto/16 :goto_4

    .line 314
    :cond_a
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 315
    new-instance v5, Lorg/apache/poi/hpsf/CodePageString;

    invoke-direct {v5}, Lorg/apache/poi/hpsf/CodePageString;-><init>()V

    .line 316
    .local v5, "codePageString":Lorg/apache/poi/hpsf/CodePageString;
    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    move/from16 v10, p4

    invoke-virtual {v5, v9, v10}, Lorg/apache/poi/hpsf/CodePageString;->setJavaValue(Ljava/lang/String;I)V

    .line 317
    invoke-virtual {v5, v0}, Lorg/apache/poi/hpsf/CodePageString;->write(Ljava/io/OutputStream;)I

    move-result v4

    .line 318
    .end local v5    # "codePageString":Lorg/apache/poi/hpsf/CodePageString;
    goto/16 :goto_4

    .line 314
    :cond_b
    move/from16 v10, p4

    goto/16 :goto_4

    .line 409
    :cond_c
    move/from16 v10, p4

    instance-of v5, v3, Ljava/lang/Number;

    if-eqz v5, :cond_16

    .line 410
    move-object v5, v3

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    invoke-static {v11, v12, v0}, Lorg/apache/poi/util/LittleEndian;->putDouble(DLjava/io/OutputStream;)V

    .line 411
    const/16 v4, 0x8

    goto/16 :goto_4

    .line 400
    :cond_d
    move/from16 v10, p4

    instance-of v5, v3, Ljava/lang/Number;

    if-eqz v5, :cond_16

    .line 401
    move-object v5, v3

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    .line 402
    .local v5, "floatBits":I
    invoke-static {v5, v0}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    .line 403
    const/4 v4, 0x4

    .line 404
    .end local v5    # "floatBits":I
    goto/16 :goto_4

    .line 357
    :cond_e
    move/from16 v10, p4

    instance-of v5, v3, Ljava/lang/Number;

    if-eqz v5, :cond_16

    .line 358
    move-object v5, v3

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5, v0}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    .line 359
    const/4 v4, 0x4

    goto :goto_4

    .line 343
    :cond_f
    move/from16 v10, p4

    instance-of v5, v3, Ljava/lang/Number;

    if-eqz v5, :cond_16

    .line 344
    move-object v5, v3

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->shortValue()S

    move-result v5

    invoke-static {v0, v5}, Lorg/apache/poi/util/LittleEndian;->putShort(Ljava/io/OutputStream;S)V

    .line 345
    const/4 v4, 0x2

    goto :goto_4

    .line 330
    :cond_10
    move/from16 v10, p4

    instance-of v5, v3, [B

    if-eqz v5, :cond_16

    .line 331
    move-object v5, v3

    check-cast v5, [B

    check-cast v5, [B

    .line 332
    .local v5, "cf":[B
    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 333
    array-length v4, v5

    .line 334
    .end local v5    # "cf":[B
    goto :goto_4

    .line 416
    :cond_11
    move/from16 v10, p4

    instance-of v5, v3, Ljava/util/Date;

    if-eqz v5, :cond_12

    new-instance v5, Lorg/apache/poi/hpsf/Filetime;

    move-object v9, v3

    check-cast v9, Ljava/util/Date;

    invoke-direct {v5, v9}, Lorg/apache/poi/hpsf/Filetime;-><init>(Ljava/util/Date;)V

    goto :goto_2

    :cond_12
    new-instance v5, Lorg/apache/poi/hpsf/Filetime;

    invoke-direct {v5}, Lorg/apache/poi/hpsf/Filetime;-><init>()V

    .line 417
    .local v5, "filetimeValue":Lorg/apache/poi/hpsf/Filetime;
    :goto_2
    invoke-virtual {v5, v0}, Lorg/apache/poi/hpsf/Filetime;->write(Ljava/io/OutputStream;)I

    move-result v4

    .line 418
    goto :goto_4

    .line 304
    .end local v5    # "filetimeValue":Lorg/apache/poi/hpsf/Filetime;
    :cond_13
    move/from16 v10, p4

    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_16

    .line 305
    move-object v5, v3

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_14

    const/16 v5, 0xff

    goto :goto_3

    :cond_14
    const/4 v5, 0x0

    .line 306
    .local v5, "bb":I
    :goto_3
    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write(I)V

    .line 307
    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write(I)V

    .line 308
    const/4 v4, 0x2

    .line 309
    .end local v5    # "bb":I
    goto :goto_4

    .line 338
    :cond_15
    move/from16 v10, p4

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v0}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    .line 339
    const/4 v4, 0x4

    .line 340
    nop

    .line 426
    :cond_16
    :goto_4
    const/4 v5, -0x1

    if-ne v4, v5, :cond_18

    .line 427
    instance-of v5, v3, [B

    if-eqz v5, :cond_17

    .line 428
    move-object v5, v3

    check-cast v5, [B

    check-cast v5, [B

    .line 429
    .local v5, "b":[B
    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 430
    array-length v4, v5

    .line 431
    new-instance v9, Lorg/apache/poi/hpsf/WritingNotSupportedException;

    invoke-direct {v9, v1, v2, v3}, Lorg/apache/poi/hpsf/WritingNotSupportedException;-><init>(JLjava/lang/Object;)V

    invoke-static {v9}, Lorg/apache/poi/hpsf/VariantSupport;->writeUnsupportedTypeMessage(Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;)V

    .line 432
    .end local v5    # "b":[B
    goto :goto_5

    .line 433
    :cond_17
    new-instance v5, Lorg/apache/poi/hpsf/WritingNotSupportedException;

    invoke-direct {v5, v1, v2, v3}, Lorg/apache/poi/hpsf/WritingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw v5

    .line 438
    :cond_18
    :goto_5
    and-int/lit8 v5, v4, 0x3

    sub-int/2addr v7, v5

    and-int/lit8 v5, v7, 0x3

    .line 439
    .local v5, "padding":I
    sget-object v7, Lorg/apache/poi/hpsf/VariantSupport;->paddingBytes:[B

    invoke-virtual {v0, v7, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 441
    add-int v6, v4, v5

    return v6

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static writeUnsupportedTypeMessage(Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;)V
    .locals 6
    .param p0, "ex"    # Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;

    .line 107
    invoke-static {}, Lorg/apache/poi/hpsf/VariantSupport;->isLogUnsupportedTypes()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    sget-object v0, Lorg/apache/poi/hpsf/VariantSupport;->unsupportedMessage:Ljava/util/List;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lorg/apache/poi/hpsf/VariantSupport;->unsupportedMessage:Ljava/util/List;

    .line 112
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;->getVariantType()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 113
    .local v0, "vt":Ljava/lang/Long;
    sget-object v1, Lorg/apache/poi/hpsf/VariantSupport;->unsupportedMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    sget-object v1, Lorg/apache/poi/hpsf/VariantSupport;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 116
    sget-object v1, Lorg/apache/poi/hpsf/VariantSupport;->unsupportedMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v0    # "vt":Ljava/lang/Long;
    :cond_1
    return-void
.end method


# virtual methods
.method public isSupportedType(I)Z
    .locals 5
    .param p1, "variantType"    # I

    .line 134
    sget-object v0, Lorg/apache/poi/hpsf/VariantSupport;->SUPPORTED_TYPES:[I

    .local v0, "arr$":[I
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 135
    .local v3, "st":I
    if-ne p1, v3, :cond_0

    .line 136
    const/4 v4, 0x1

    return v4

    .line 134
    .end local v3    # "st":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "arr$":[I
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
