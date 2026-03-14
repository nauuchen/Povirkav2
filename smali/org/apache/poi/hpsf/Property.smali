.class public Lorg/apache/poi/hpsf/Property;
.super Ljava/lang/Object;
.source "Property.java"


# static fields
.field public static final DEFAULT_CODEPAGE:I = 0x4e4

.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private id:J

.field private type:J

.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const-class v0, Lorg/apache/poi/hpsf/Property;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/Property;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method public constructor <init>(JJLjava/lang/Object;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "type"    # J
    .param p5, "value"    # Ljava/lang/Object;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-wide p1, p0, Lorg/apache/poi/hpsf/Property;->id:J

    .line 110
    iput-wide p3, p0, Lorg/apache/poi/hpsf/Property;->type:J

    .line 111
    iput-object p5, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public constructor <init>(JLorg/apache/poi/util/LittleEndianByteArrayInputStream;II)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "leis"    # Lorg/apache/poi/util/LittleEndianByteArrayInputStream;
    .param p4, "length"    # I
    .param p5, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-wide p1, p0, Lorg/apache/poi/hpsf/Property;->id:J

    .line 172
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {p3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hpsf/Property;->type:J

    .line 179
    long-to-int v1, v0

    int-to-long v0, v1

    :try_start_0
    invoke-static {p3, p4, v0, v1, p5}, Lorg/apache/poi/hpsf/VariantSupport;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;IJI)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/poi/hpsf/UnsupportedVariantTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "ex":Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;
    invoke-static {v0}, Lorg/apache/poi/hpsf/VariantSupport;->writeUnsupportedTypeMessage(Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;)V

    .line 182
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;->getValue()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    .line 184
    .end local v0    # "ex":Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;
    :goto_0
    return-void

    .line 173
    :cond_0
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    const-string v1, "Dictionary not allowed here"

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(J[BJII)V
    .locals 14
    .param p1, "id"    # J
    .param p3, "src"    # [B
    .param p4, "offset"    # J
    .param p6, "length"    # I
    .param p7, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 129
    move-object v1, p0

    move-wide v2, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-wide v2, v1, Lorg/apache/poi/hpsf/Property;->id:J

    .line 136
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 140
    move-wide/from16 v4, p4

    long-to-int v0, v4

    .line 141
    .local v0, "o":I
    move-object/from16 v12, p3

    invoke-static {v12, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v6

    iput-wide v6, v1, Lorg/apache/poi/hpsf/Property;->type:J

    .line 142
    add-int/lit8 v13, v0, 0x4

    .line 145
    .end local v0    # "o":I
    .local v13, "o":I
    long-to-int v0, v6

    int-to-long v9, v0

    move-object/from16 v6, p3

    move v7, v13

    move/from16 v8, p6

    move/from16 v11, p7

    :try_start_0
    invoke-static/range {v6 .. v11}, Lorg/apache/poi/hpsf/VariantSupport;->read([BIIJI)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/poi/hpsf/UnsupportedVariantTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "ex":Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;
    invoke-static {v0}, Lorg/apache/poi/hpsf/VariantSupport;->writeUnsupportedTypeMessage(Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;)V

    .line 148
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;->getValue()Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    .line 150
    .end local v0    # "ex":Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;
    :goto_0
    return-void

    .line 137
    .end local v13    # "o":I
    :cond_0
    move-object/from16 v12, p3

    move-wide/from16 v4, p4

    new-instance v0, Ljava/io/UnsupportedEncodingException;

    const-string v6, "Dictionary not allowed here"

    invoke-direct {v0, v6}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/Property;)V
    .locals 6
    .param p1, "p"    # Lorg/apache/poi/hpsf/Property;

    .line 97
    iget-wide v1, p1, Lorg/apache/poi/hpsf/Property;->id:J

    iget-wide v3, p1, Lorg/apache/poi/hpsf/Property;->type:J

    iget-object v5, p1, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hpsf/Property;-><init>(JJLjava/lang/Object;)V

    .line 98
    return-void
.end method

.method private decodeValueFromID()Ljava/lang/String;
    .locals 8

    .line 480
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v1

    long-to-int v2, v1

    const/high16 v1, -0x80000000

    if-eq v2, v1, :cond_1

    if-eq v2, v0, :cond_0

    .line 488
    goto :goto_0

    .line 482
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 484
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/LocaleUtil;->getLocaleFromLCID(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 486
    :catch_0
    move-exception v1

    .line 487
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/poi/hpsf/Property;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t decode id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-virtual {v2, v3, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 489
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getVariantName()Ljava/lang/String;
    .locals 5

    .line 472
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 473
    const-string v0, "dictionary"

    return-object v0

    .line 475
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getType()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/hpsf/Variant;->getVariantName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private typesAreEqual(JJ)Z
    .locals 5
    .param p1, "t1"    # J
    .param p3, "t2"    # J

    .line 355
    cmp-long v0, p1, p3

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1f

    const-wide/16 v2, 0x1e

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    cmp-long v4, p3, v0

    if-eqz v4, :cond_2

    :cond_0
    cmp-long v4, p3, v2

    if-nez v4, :cond_1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static unpaddedLength([B)I
    .locals 2
    .param p0, "buf"    # [B

    .line 349
    array-length v0, p0

    .local v0, "len":I
    :goto_0
    if-lez v0, :cond_0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x4

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 350
    :cond_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 298
    instance-of v0, p1, Lorg/apache/poi/hpsf/Property;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 299
    return v1

    .line 301
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hpsf/Property;

    .line 302
    .local v0, "p":Lorg/apache/poi/hpsf/Property;
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 303
    .local v2, "pValue":Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v3

    .line 304
    .local v3, "pId":J
    iget-wide v5, p0, Lorg/apache/poi/hpsf/Property;->id:J

    cmp-long v7, v5, v3

    if-nez v7, :cond_a

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    iget-wide v5, p0, Lorg/apache/poi/hpsf/Property;->type:J

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Property;->getType()J

    move-result-wide v7

    invoke-direct {p0, v5, v6, v7, v8}, Lorg/apache/poi/hpsf/Property;->typesAreEqual(JJ)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 307
    :cond_1
    iget-object v5, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    const/4 v6, 0x1

    if-nez v5, :cond_2

    if-nez v2, :cond_2

    .line 308
    return v6

    .line 310
    :cond_2
    if-eqz v5, :cond_9

    if-nez v2, :cond_3

    goto :goto_1

    .line 315
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 316
    .local v5, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 317
    .local v7, "pValueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v7, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 319
    return v1

    .line 322
    :cond_4
    iget-object v8, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    instance-of v9, v8, [B

    if-eqz v9, :cond_8

    .line 324
    check-cast v8, [B

    check-cast v8, [B

    .local v8, "thisVal":[B
    move-object v9, v2

    check-cast v9, [B

    check-cast v9, [B

    .line 325
    .local v9, "otherVal":[B
    invoke-static {v8}, Lorg/apache/poi/hpsf/Property;->unpaddedLength([B)I

    move-result v10

    .line 326
    .local v10, "len":I
    invoke-static {v9}, Lorg/apache/poi/hpsf/Property;->unpaddedLength([B)I

    move-result v11

    if-eq v10, v11, :cond_5

    .line 327
    return v1

    .line 329
    :cond_5
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_7

    .line 330
    aget-byte v12, v8, v11

    aget-byte v13, v9, v11

    if-eq v12, v13, :cond_6

    .line 331
    return v1

    .line 329
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 334
    .end local v11    # "i":I
    :cond_7
    return v6

    .line 337
    .end local v8    # "thisVal":[B
    .end local v9    # "otherVal":[B
    .end local v10    # "len":I
    :cond_8
    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 311
    .end local v5    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "pValueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    :goto_1
    return v1

    .line 305
    :cond_a
    :goto_2
    return v1
.end method

.method public getID()J
    .locals 2

    .line 193
    iget-wide v0, p0, Lorg/apache/poi/hpsf/Property;->id:J

    return-wide v0
.end method

.method protected getSize(I)I
    .locals 7
    .param p1, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/WritingNotSupportedException;
        }
    .end annotation

    .line 258
    iget-wide v0, p0, Lorg/apache/poi/hpsf/Property;->type:J

    invoke-static {v0, v1}, Lorg/apache/poi/hpsf/Variant;->getVariantLength(J)I

    move-result v0

    .line 259
    .local v0, "length":I
    if-gez v0, :cond_4

    iget-wide v1, p0, Lorg/apache/poi/hpsf/Property;->type:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_1

    .line 263
    :cond_0
    const/4 v3, -0x2

    if-eq v0, v3, :cond_3

    .line 269
    const-wide/16 v3, 0x1e

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const-wide/16 v3, 0x1f

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    .line 281
    :cond_1
    new-instance v1, Lorg/apache/poi/hpsf/WritingNotSupportedException;

    iget-wide v2, p0, Lorg/apache/poi/hpsf/Property;->type:J

    iget-object v4, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/poi/hpsf/WritingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw v1

    .line 270
    :cond_2
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 272
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lorg/apache/poi/hpsf/Property;->write(Ljava/io/OutputStream;I)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, -0x8

    .line 274
    .end local v0    # "length":I
    .local v2, "length":I
    and-int/lit8 v0, v2, 0x3

    rsub-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x3

    add-int/2addr v2, v0

    .line 275
    return v2

    .line 276
    .end local v2    # "length":I
    .restart local v0    # "length":I
    :catch_0
    move-exception v2

    .line 277
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/apache/poi/hpsf/WritingNotSupportedException;

    iget-wide v4, p0, Lorg/apache/poi/hpsf/Property;->type:J

    iget-object v6, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/poi/hpsf/WritingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw v3

    .line 265
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    new-instance v1, Lorg/apache/poi/hpsf/WritingNotSupportedException;

    iget-wide v2, p0, Lorg/apache/poi/hpsf/Property;->type:J

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/poi/hpsf/WritingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw v1

    .line 261
    :cond_4
    :goto_1
    return v0
.end method

.method public getType()J
    .locals 2

    .line 211
    iget-wide v0, p0, Lorg/apache/poi/hpsf/Property;->type:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 367
    const-wide/16 v0, 0x0

    .line 368
    .local v0, "hashCode":J
    iget-wide v2, p0, Lorg/apache/poi/hpsf/Property;->id:J

    add-long/2addr v0, v2

    .line 369
    iget-wide v2, p0, Lorg/apache/poi/hpsf/Property;->type:J

    add-long/2addr v0, v2

    .line 370
    iget-object v2, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 371
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 373
    :cond_0
    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    long-to-int v3, v2

    return v3
.end method

.method public setID(J)V
    .locals 0
    .param p1, "id"    # J

    .line 202
    iput-wide p1, p0, Lorg/apache/poi/hpsf/Property;->id:J

    .line 203
    return-void
.end method

.method public setType(J)V
    .locals 0
    .param p1, "type"    # J

    .line 220
    iput-wide p1, p0, Lorg/apache/poi/hpsf/Property;->type:J

    .line 221
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .line 238
    iput-object p1, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    .line 239
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 384
    const/16 v0, 0x4e4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/Property;->toString(ILorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(ILorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Ljava/lang/String;
    .locals 26
    .param p1, "codepage"    # I
    .param p2, "idMap"    # Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    .line 388
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    .line 389
    .local v3, "b":Ljava/lang/StringBuilder;
    const-string v0, "Property["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    const-string v0, "id: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    iget-wide v4, v1, Lorg/apache/poi/hpsf/Property;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 392
    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v4, v1, Lorg/apache/poi/hpsf/Property;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "idName":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 394
    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->getFallbackProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v4

    iget-wide v5, v1, Lorg/apache/poi/hpsf/Property;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    .line 393
    :cond_1
    move-object v4, v0

    .line 396
    .end local v0    # "idName":Ljava/lang/String;
    .local v4, "idName":Ljava/lang/String;
    :goto_1
    const-string v0, ")"

    const-string v5, " ("

    if-eqz v4, :cond_2

    .line 397
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :cond_2
    const-string v6, ", type: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hpsf/Property;->getType()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/hpsf/Property;->getVariantName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v6, ") "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 407
    .local v6, "value":Ljava/lang/Object;
    const-string v7, ", value: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    instance-of v7, v6, Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v9, 0x2

    const-string v10, "\n"

    const/4 v11, 0x0

    if-eqz v7, :cond_4

    .line 409
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v5, v0

    .line 413
    .local v5, "bos":Ljava/io/ByteArrayOutputStream;
    move/from16 v7, p1

    :try_start_0
    invoke-virtual {v1, v5, v7}, Lorg/apache/poi/hpsf/Property;->write(Ljava/io/OutputStream;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    goto :goto_2

    .line 414
    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    sget-object v10, Lorg/apache/poi/hpsf/Property;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v12, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const-string v13, "can\'t serialize string"

    aput-object v13, v9, v11

    aput-object v0, v9, v8

    invoke-virtual {v10, v12, v9}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 419
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/16 v8, 0x8

    if-le v0, v8, :cond_3

    .line 420
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-wide/16 v9, -0x8

    invoke-static {v0, v9, v10, v8}, Lorg/apache/poi/util/HexDump;->dump([BJI)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "hex":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .end local v0    # "hex":Ljava/lang/String;
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_3
    goto/16 :goto_5

    :cond_4
    move/from16 v7, p1

    instance-of v12, v6, [B

    const-wide/16 v13, 0x0

    if-eqz v12, :cond_6

    .line 424
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    move-object v0, v6

    check-cast v0, [B

    check-cast v0, [B

    .line 426
    .local v0, "bytes":[B
    array-length v5, v0

    if-lez v5, :cond_5

    .line 427
    invoke-static {v0, v13, v14, v11}, Lorg/apache/poi/util/HexDump;->dump([BJI)Ljava/lang/String;

    move-result-object v5

    .line 428
    .local v5, "hex":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .end local v0    # "bytes":[B
    .end local v5    # "hex":Ljava/lang/String;
    :cond_5
    goto/16 :goto_5

    :cond_6
    instance-of v10, v6, Ljava/util/Date;

    if-eqz v10, :cond_9

    .line 431
    move-object v0, v6

    check-cast v0, Ljava/util/Date;

    .line 432
    .local v0, "d":Ljava/util/Date;
    invoke-static {v0}, Lorg/apache/poi/hpsf/Filetime;->dateToFileTime(Ljava/util/Date;)J

    move-result-wide v15

    .line 433
    .local v15, "filetime":J
    invoke-static {v0}, Lorg/apache/poi/hpsf/Filetime;->isUndefined(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 434
    const-string v5, "<undefined>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 435
    :cond_7
    const/16 v5, 0x20

    ushr-long v17, v15, v5

    cmp-long v5, v17, v13

    if-nez v5, :cond_8

    .line 437
    const-wide/16 v12, 0x64

    mul-long v12, v12, v15

    .line 438
    .local v12, "l":J
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 439
    .local v5, "tu":Ljava/util/concurrent/TimeUnit;
    invoke-virtual {v5, v12, v13}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v9

    .line 440
    .local v9, "hr":J
    sget-object v14, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v14, v9, v10}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v18

    sub-long v12, v12, v18

    .line 441
    move-wide/from16 v19, v9

    .end local v9    # "hr":J
    .local v19, "hr":J
    invoke-virtual {v5, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v8

    .line 442
    .local v8, "min":J
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v21

    sub-long v12, v12, v21

    .line 443
    move-wide/from16 v21, v15

    .end local v15    # "filetime":J
    .local v21, "filetime":J
    invoke-virtual {v5, v12, v13}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v14

    .line 444
    .local v14, "sec":J
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v14, v15}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v23

    sub-long v12, v12, v23

    .line 445
    invoke-virtual {v5, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v23

    .line 447
    .local v23, "ms":J
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const/16 v16, 0x0

    aput-object v25, v11, v16

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v18, 0x1

    aput-object v16, v11, v18

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x2

    aput-object v16, v11, v17

    const/16 v16, 0x3

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v11, v16

    const-string v2, "%02d:%02d:%02d.%03d"

    invoke-static {v10, v2, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .end local v2    # "str":Ljava/lang/String;
    .end local v5    # "tu":Ljava/util/concurrent/TimeUnit;
    .end local v8    # "min":J
    .end local v12    # "l":J
    .end local v14    # "sec":J
    .end local v19    # "hr":J
    .end local v23    # "ms":J
    goto :goto_3

    .line 450
    .end local v21    # "filetime":J
    .restart local v15    # "filetime":J
    :cond_8
    move-wide/from16 v21, v15

    .end local v15    # "filetime":J
    .restart local v21    # "filetime":J
    sget-object v2, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v2, v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 451
    .local v2, "cal":Ljava/util/Calendar;
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 453
    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverter;->printDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .end local v0    # "d":Ljava/util/Date;
    .end local v2    # "cal":Ljava/util/Calendar;
    .end local v21    # "filetime":J
    :goto_3
    goto :goto_5

    :cond_9
    iget-wide v8, v1, Lorg/apache/poi/hpsf/Property;->type:J

    cmp-long v2, v8, v13

    if-eqz v2, :cond_b

    const-wide/16 v10, 0x1

    cmp-long v2, v8, v10

    if-eqz v2, :cond_b

    if-nez v6, :cond_a

    goto :goto_4

    .line 458
    :cond_a
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/hpsf/Property;->decodeValueFromID()Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "decoded":Ljava/lang/String;
    if-eqz v2, :cond_c

    .line 462
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 456
    .end local v2    # "decoded":Ljava/lang/String;
    :cond_b
    :goto_4
    const-string v0, "null"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    :cond_c
    :goto_5
    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;I)I
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/hpsf/WritingNotSupportedException;
        }
    .end annotation

    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, "length":I
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getType()J

    move-result-wide v1

    .line 513
    .local v1, "variantType":J
    const-wide/16 v3, 0x1e

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    const/16 v3, 0x4b0

    if-eq p2, v3, :cond_1

    .line 514
    if-lez p2, :cond_0

    move v3, p2

    goto :goto_0

    :cond_0
    const/16 v3, 0x4e4

    :goto_0
    invoke-static {v3}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(I)Ljava/lang/String;

    move-result-object v3

    .line 515
    .local v3, "csStr":Ljava/lang/String;
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 516
    const-wide/16 v1, 0x1f

    .line 520
    .end local v3    # "csStr":Ljava/lang/String;
    :cond_1
    invoke-static {v1, v2, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    .line 521
    add-int/lit8 v0, v0, 0x4

    .line 522
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3, p2}, Lorg/apache/poi/hpsf/VariantSupport;->write(Ljava/io/OutputStream;JLjava/lang/Object;I)I

    move-result v3

    add-int/2addr v0, v3

    .line 523
    return v0
.end method
