.class public Lorg/apache/poi/hpsf/Section;
.super Ljava/lang/Object;
.source "Section.java"


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final _offset:J

.field private dictionary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private formatID:Lorg/apache/poi/hpsf/ClassID;

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/hpsf/Property;",
            ">;"
        }
    .end annotation
.end field

.field private final sectionBytes:Ljava/io/ByteArrayOutputStream;

.field private wasNull:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lorg/apache/poi/hpsf/Section;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/Section;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    .line 74
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    .line 87
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/hpsf/Section;->_offset:J

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/Section;)V
    .locals 5
    .param p1, "s"    # Lorg/apache/poi/hpsf/Section;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    .line 74
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    .line 99
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/hpsf/Section;->_offset:J

    .line 100
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/Section;->setFormatID(Lorg/apache/poi/hpsf/ClassID;)V

    .line 101
    iget-object v0, p1, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/Property;

    .line 102
    .local v1, "p":Lorg/apache/poi/hpsf/Property;
    iget-object v2, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lorg/apache/poi/hpsf/MutableProperty;

    invoke-direct {v4, v1}, Lorg/apache/poi/hpsf/MutableProperty;-><init>(Lorg/apache/poi/hpsf/Property;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lorg/apache/poi/hpsf/Property;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Section;->getDictionary()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/Section;->setDictionary(Ljava/util/Map;)V

    .line 105
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 27
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 119
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, v1, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    .line 74
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, v1, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    .line 123
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v0, v2, v3}, Lorg/apache/poi/hpsf/ClassID;-><init>([BI)V

    iput-object v0, v1, Lorg/apache/poi/hpsf/Section;->formatID:Lorg/apache/poi/hpsf/ClassID;

    .line 129
    add-int/lit8 v0, v3, 0x10

    invoke-static {v2, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v4

    long-to-int v0, v4

    .line 133
    .local v0, "offFix":I
    aget-byte v4, v2, v0

    const/4 v5, 0x3

    if-nez v4, :cond_3

    .line 134
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-byte v6, v2, v0

    if-nez v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v4    # "i":I
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v5, :cond_2

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, v2, v6

    if-nez v6, :cond_1

    add-int/lit8 v6, v0, 0x7

    aget-byte v6, v2, v6

    if-nez v6, :cond_1

    add-int/lit8 v6, v0, 0xb

    aget-byte v6, v2, v6

    if-eqz v6, :cond_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 139
    .end local v4    # "i":I
    :cond_2
    move v4, v0

    goto :goto_2

    .line 133
    :cond_3
    move v4, v0

    .line 139
    .end local v0    # "offFix":I
    .local v4, "offFix":I
    :goto_2
    int-to-long v6, v4

    iput-wide v6, v1, Lorg/apache/poi/hpsf/Section;->_offset:J

    .line 141
    new-instance v0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    invoke-direct {v0, v2, v4}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([BI)V

    move-object v14, v0

    .line 146
    .local v14, "leis":Lorg/apache/poi/util/LittleEndianByteArrayInputStream;
    invoke-virtual {v14}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v8

    array-length v0, v2

    int-to-long v10, v0

    sub-long/2addr v10, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    .line 151
    .local v7, "size":I
    invoke-virtual {v14}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v8

    long-to-int v6, v8

    .line 178
    .local v6, "propertyCount":I
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;-><init>()V

    move-object v15, v0

    .line 179
    .local v15, "offset2Id":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v6, :cond_4

    .line 181
    invoke-virtual {v14}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v8

    long-to-int v9, v8

    int-to-long v8, v9

    .line 184
    .local v8, "id":J
    invoke-virtual {v14}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v10

    long-to-int v11, v10

    int-to-long v10, v11

    .line 186
    .local v10, "off":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v15, v12, v13}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->put(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 179
    .end local v8    # "id":J
    .end local v10    # "off":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 189
    .end local v0    # "i":I
    :cond_4
    const-wide/16 v16, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Long;

    .line 192
    .local v18, "cpOffset":Ljava/lang/Long;
    const/4 v0, -0x1

    .line 193
    .local v0, "codepage":I
    if-eqz v18, :cond_6

    .line 195
    iget-wide v8, v1, Lorg/apache/poi/hpsf/Section;->_offset:J

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-int v9, v8

    invoke-virtual {v14, v9}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->setReadIndex(I)V

    .line 196
    invoke-virtual {v14}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v8

    .line 198
    .local v8, "type":J
    const-wide/16 v10, 0x2

    cmp-long v12, v8, v10

    if-nez v12, :cond_5

    .line 204
    invoke-virtual {v14}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUShort()I

    move-result v0

    .line 205
    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/Section;->setCodepage(I)V

    move v13, v0

    goto :goto_4

    .line 199
    :cond_5
    new-instance v5, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Value type of property ID 1 is not VT_I2 but "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 193
    .end local v8    # "type":J
    :cond_6
    move v13, v0

    .line 211
    .end local v0    # "codepage":I
    .local v13, "codepage":I
    :goto_4
    invoke-virtual {v15}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Ljava/util/Map$Entry;

    .line 212
    .local v20, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 213
    .local v21, "off":J
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    .line 215
    .local v23, "id":J
    cmp-long v0, v23, v16

    if-nez v0, :cond_7

    .line 216
    goto :goto_5

    .line 219
    :cond_7
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    int-to-long v8, v7

    invoke-static {v15, v0, v8, v9}, Lorg/apache/poi/hpsf/Section;->propLen(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Long;J)I

    move-result v12

    .line 220
    .local v12, "pLen":I
    iget-wide v8, v1, Lorg/apache/poi/hpsf/Section;->_offset:J

    add-long v8, v8, v21

    long-to-int v0, v8

    invoke-virtual {v14, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->setReadIndex(I)V

    .line 222
    const-wide/16 v8, 0x0

    cmp-long v0, v23, v8

    if-nez v0, :cond_9

    .line 223
    const v0, 0x186a0

    invoke-virtual {v14, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->mark(I)V

    .line 224
    invoke-direct {v1, v14, v12, v13}, Lorg/apache/poi/hpsf/Section;->readDictionary(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 227
    invoke-virtual {v14}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->reset()V

    .line 230
    const-wide/16 v8, 0x1f

    :try_start_0
    invoke-virtual {v15}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedBidiMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long v23, v8, v16

    .line 231
    new-instance v0, Lorg/apache/poi/hpsf/MutableProperty;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v8, v0

    move-wide/from16 v9, v23

    move-object v11, v14

    move/from16 v25, v12

    .end local v12    # "pLen":I
    .local v25, "pLen":I
    move/from16 v26, v13

    .end local v13    # "codepage":I
    .local v26, "codepage":I
    :try_start_1
    invoke-direct/range {v8 .. v13}, Lorg/apache/poi/hpsf/MutableProperty;-><init>(JLorg/apache/poi/util/LittleEndianByteArrayInputStream;II)V

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/Section;->setProperty(Lorg/apache/poi/hpsf/Property;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 232
    :catch_0
    move-exception v0

    goto :goto_6

    .end local v25    # "pLen":I
    .end local v26    # "codepage":I
    .restart local v12    # "pLen":I
    .restart local v13    # "codepage":I
    :catch_1
    move-exception v0

    move/from16 v25, v12

    move/from16 v26, v13

    .line 233
    .end local v12    # "pLen":I
    .end local v13    # "codepage":I
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v25    # "pLen":I
    .restart local v26    # "codepage":I
    :goto_6
    sget-object v8, Lorg/apache/poi/hpsf/Section;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "Dictionary fallback failed - ignoring property"

    aput-object v11, v9, v10

    invoke-virtual {v8, v5, v9}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 234
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_7
    goto :goto_8

    .line 224
    .end local v25    # "pLen":I
    .end local v26    # "codepage":I
    .restart local v12    # "pLen":I
    .restart local v13    # "codepage":I
    :cond_8
    move/from16 v25, v12

    move/from16 v26, v13

    .end local v12    # "pLen":I
    .end local v13    # "codepage":I
    .restart local v25    # "pLen":I
    .restart local v26    # "codepage":I
    goto :goto_8

    .line 237
    .end local v25    # "pLen":I
    .end local v26    # "codepage":I
    .restart local v12    # "pLen":I
    .restart local v13    # "codepage":I
    :cond_9
    move/from16 v25, v12

    move/from16 v26, v13

    .end local v12    # "pLen":I
    .end local v13    # "codepage":I
    .restart local v25    # "pLen":I
    .restart local v26    # "codepage":I
    new-instance v0, Lorg/apache/poi/hpsf/MutableProperty;

    move-object v8, v0

    move-wide/from16 v9, v23

    move-object v11, v14

    invoke-direct/range {v8 .. v13}, Lorg/apache/poi/hpsf/MutableProperty;-><init>(JLorg/apache/poi/util/LittleEndianByteArrayInputStream;II)V

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/Section;->setProperty(Lorg/apache/poi/hpsf/Property;)V

    .line 239
    .end local v20    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v21    # "off":J
    .end local v23    # "id":J
    .end local v25    # "pLen":I
    :goto_8
    move/from16 v13, v26

    goto/16 :goto_5

    .line 241
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v26    # "codepage":I
    .restart local v13    # "codepage":I
    :cond_a
    iget-object v0, v1, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    iget-wide v8, v1, Lorg/apache/poi/hpsf/Section;->_offset:J

    long-to-int v5, v8

    invoke-virtual {v0, v2, v5, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 242
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/hpsf/Section;->padSectionBytes()V

    .line 243
    return-void
.end method

.method private calcSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/WritingNotSupportedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 564
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/Section;->write(Ljava/io/OutputStream;)I

    .line 565
    invoke-direct {p0}, Lorg/apache/poi/hpsf/Section;->padSectionBytes()V

    .line 566
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method private padSectionBytes()V
    .locals 4

    .line 570
    const/4 v0, 0x3

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 573
    .local v1, "padArray":[B
    iget-object v2, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    and-int/2addr v2, v0

    rsub-int/lit8 v2, v2, 0x4

    and-int/2addr v0, v2

    .line 574
    .local v0, "pad":I
    iget-object v2, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 575
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static propLen(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Long;J)I
    .locals 7
    .param p1, "entryOffset"    # Ljava/lang/Long;
    .param p2, "maxSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            "J)I"
        }
    .end annotation

    .line 257
    .local p0, "offset2Id":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nextKey(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 258
    .local v0, "nextKey":Ljava/lang/Long;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 259
    .local v1, "begin":J
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, p2

    .line 260
    .local v3, "end":J
    :goto_0
    sub-long v5, v3, v1

    long-to-int v6, v5

    return v6
.end method

.method private readDictionary(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;II)Z
    .locals 22
    .param p1, "leis"    # Lorg/apache/poi/util/LittleEndianByteArrayInputStream;
    .param p2, "length"    # I
    .param p3, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 803
    move-object/from16 v1, p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 808
    .local v2, "dic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v3

    .line 810
    .local v3, "nrEntries":J
    const-wide/16 v5, -0x1

    .line 811
    .local v5, "id":J
    const/4 v7, 0x0

    .line 812
    .local v7, "isCorrupted":Z
    const/4 v0, 0x0

    move-wide v8, v5

    move v5, v0

    .local v5, "i":I
    .local v8, "id":J
    :goto_0
    int-to-long v10, v5

    cmp-long v0, v10, v3

    if-gez v0, :cond_4

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The property set\'s dictionary contains bogus data. All dictionary entries starting with the one with ID "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " will be ignored."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 819
    .local v6, "errMsg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v8

    .line 826
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v10

    .line 829
    .local v10, "sLength":J
    const/4 v0, -0x1

    move/from16 v12, p3

    if-ne v12, v0, :cond_0

    const/16 v0, 0x4e4

    goto :goto_1

    :cond_0
    move v0, v12

    :goto_1
    move v13, v0

    .line 830
    .local v13, "cp":I
    const-wide/16 v14, 0x1

    sub-long v14, v10, v14

    const/16 v0, 0x4b0

    move-wide/from16 v16, v3

    .end local v3    # "nrEntries":J
    .local v16, "nrEntries":J
    const/4 v4, 0x1

    if-ne v13, v0, :cond_1

    const/4 v3, 0x2

    goto :goto_2

    :cond_1
    const/4 v3, 0x1

    :goto_2
    int-to-long v0, v3

    mul-long v14, v14, v0

    long-to-int v1, v14

    .line 831
    .local v1, "nrBytes":I
    const v0, 0xffffff

    const/4 v3, 0x5

    const/4 v14, 0x0

    if-le v1, v0, :cond_2

    .line 832
    sget-object v0, Lorg/apache/poi/hpsf/Section;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v14

    invoke-virtual {v0, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 833
    const/4 v7, 0x1

    .line 834
    move-object/from16 v15, p1

    goto :goto_6

    .line 838
    :cond_2
    :try_start_0
    new-array v0, v1, [B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 839
    .local v0, "buf":[B
    move-object/from16 v15, p1

    :try_start_1
    invoke-virtual {v15, v0, v14, v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([BII)V

    .line 840
    invoke-static {v0, v14, v1, v13}, Lorg/apache/poi/util/CodePageUtil;->getStringFromCodePage([BIII)Ljava/lang/String;

    move-result-object v20
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v21, v20

    .line 842
    .local v21, "str":Ljava/lang/String;
    const/16 v20, 0x1

    .line 843
    .local v20, "pad":I
    const/16 v3, 0x4b0

    if-ne v13, v3, :cond_3

    .line 844
    add-int/lit8 v3, v1, 0x2

    and-int/lit8 v3, v3, 0x3

    rsub-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3

    const/16 v18, 0x2

    add-int/lit8 v20, v3, 0x2

    move/from16 v3, v20

    goto :goto_3

    .line 843
    :cond_3
    move/from16 v3, v20

    .line 846
    .end local v20    # "pad":I
    .local v3, "pad":I
    :goto_3
    move/from16 v19, v5

    .end local v5    # "i":I
    .local v19, "i":I
    int-to-long v4, v3

    :try_start_2
    invoke-virtual {v15, v4, v5}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->skip(J)J

    .line 848
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v5, v21

    .end local v21    # "str":Ljava/lang/String;
    .local v5, "str":Ljava/lang/String;
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 853
    nop

    .line 812
    .end local v0    # "buf":[B
    .end local v1    # "nrBytes":I
    .end local v3    # "pad":I
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "errMsg":Ljava/lang/String;
    .end local v10    # "sLength":J
    .end local v13    # "cp":I
    add-int/lit8 v5, v19, 0x1

    move-object v1, v15

    move-wide/from16 v3, v16

    .end local v19    # "i":I
    .local v5, "i":I
    goto/16 :goto_0

    .line 849
    .end local v5    # "i":I
    .restart local v1    # "nrBytes":I
    .restart local v6    # "errMsg":Ljava/lang/String;
    .restart local v10    # "sLength":J
    .restart local v13    # "cp":I
    .restart local v19    # "i":I
    :catch_0
    move-exception v0

    goto :goto_5

    .end local v19    # "i":I
    .restart local v5    # "i":I
    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v15, p1

    :goto_4
    move/from16 v19, v5

    .line 850
    .end local v5    # "i":I
    .local v0, "ex":Ljava/lang/RuntimeException;
    .restart local v19    # "i":I
    :goto_5
    sget-object v3, Lorg/apache/poi/hpsf/Section;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v14

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x5

    invoke-virtual {v3, v5, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 851
    const/4 v7, 0x1

    .line 852
    goto :goto_6

    .line 812
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "nrBytes":I
    .end local v6    # "errMsg":Ljava/lang/String;
    .end local v10    # "sLength":J
    .end local v13    # "cp":I
    .end local v16    # "nrEntries":J
    .end local v19    # "i":I
    .local v3, "nrEntries":J
    .restart local v5    # "i":I
    :cond_4
    move/from16 v12, p3

    move-object v15, v1

    move-wide/from16 v16, v3

    move/from16 v19, v5

    .line 855
    .end local v3    # "nrEntries":J
    .end local v5    # "i":I
    .restart local v16    # "nrEntries":J
    :goto_6
    move-object/from16 v1, p0

    invoke-virtual {v1, v2}, Lorg/apache/poi/hpsf/Section;->setDictionary(Ljava/util/Map;)V

    .line 856
    xor-int/lit8 v0, v7, 0x1

    return v0
.end method

.method private writeDictionary(Ljava/io/OutputStream;I)I
    .locals 10
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 871
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 872
    .local v1, "padding":[B
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getDictionary()Ljava/util/Map;

    move-result-object v2

    .line 874
    .local v2, "dic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    .line 875
    const/4 v3, 0x4

    .line 876
    .local v3, "length":I
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 878
    .local v5, "ls":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    .line 879
    add-int/lit8 v3, v3, 0x4

    .line 881
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u0000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 882
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v8, v9, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    .line 883
    add-int/2addr v3, v0

    .line 885
    invoke-static {v7, p2}, Lorg/apache/poi/util/CodePageUtil;->getBytesInCodePage(Ljava/lang/String;I)[B

    move-result-object v8

    .line 886
    .local v8, "bytes":[B
    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    .line 887
    array-length v9, v8

    add-int/2addr v3, v9

    .line 889
    const/16 v9, 0x4b0

    if-ne p2, v9, :cond_0

    .line 890
    and-int/lit8 v9, v3, 0x3

    rsub-int/lit8 v9, v9, 0x4

    and-int/lit8 v9, v9, 0x3

    .line 891
    .local v9, "pad":I
    invoke-virtual {p1, v1, v6, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 892
    add-int/2addr v3, v9

    .line 894
    .end local v5    # "ls":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "bytes":[B
    .end local v9    # "pad":I
    :cond_0
    goto :goto_0

    .line 896
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    and-int/lit8 v4, v3, 0x3

    sub-int/2addr v0, v4

    and-int/lit8 v0, v0, 0x3

    .line 897
    .local v0, "pad":I
    invoke-virtual {p1, v1, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 898
    add-int/2addr v3, v0

    .line 900
    return v3
.end method


# virtual methods
.method public clear()V
    .locals 6

    .line 624
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/hpsf/Property;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 625
    .local v3, "p":Lorg/apache/poi/hpsf/Property;
    invoke-virtual {v3}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/apache/poi/hpsf/Section;->removeProperty(J)V

    .line 624
    .end local v3    # "p":Lorg/apache/poi/hpsf/Property;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 627
    .end local v0    # "arr$":[Lorg/apache/poi/hpsf/Property;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 655
    instance-of v0, p1, Lorg/apache/poi/hpsf/Section;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 656
    return v1

    .line 658
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hpsf/Section;

    .line 659
    .local v0, "s":Lorg/apache/poi/hpsf/Section;
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 660
    return v1

    .line 665
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 666
    .local v2, "propIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v3, v0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 667
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 668
    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 670
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 671
    .local v4, "id":Ljava/lang/Long;
    iget-object v5, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hpsf/Property;

    .line 672
    .local v5, "p1":Lorg/apache/poi/hpsf/Property;
    iget-object v6, v0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/hpsf/Property;

    .line 673
    .local v6, "p2":Lorg/apache/poi/hpsf/Property;
    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v5, v6}, Lorg/apache/poi/hpsf/Property;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    .line 676
    .end local v4    # "id":Ljava/lang/Long;
    .end local v5    # "p1":Lorg/apache/poi/hpsf/Property;
    .end local v6    # "p2":Lorg/apache/poi/hpsf/Property;
    :cond_2
    goto :goto_0

    .line 674
    .restart local v4    # "id":Ljava/lang/Long;
    .restart local v5    # "p1":Lorg/apache/poi/hpsf/Property;
    .restart local v6    # "p2":Lorg/apache/poi/hpsf/Property;
    :cond_3
    :goto_1
    return v1

    .line 679
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "id":Ljava/lang/Long;
    .end local v5    # "p1":Lorg/apache/poi/hpsf/Property;
    .end local v6    # "p2":Lorg/apache/poi/hpsf/Property;
    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getDictionary()Ljava/util/Map;

    move-result-object v3

    .line 680
    .local v3, "d1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Section;->getDictionary()Ljava/util/Map;

    move-result-object v4

    .line 682
    .local v4, "d2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v3, :cond_5

    if-eqz v4, :cond_6

    :cond_5
    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method public getCodepage()I
    .locals 2

    .line 1029
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1030
    .local v0, "codepage":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getDictionary()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1014
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1015
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    .line 1018
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    return-object v0
.end method

.method public getFormatID()Lorg/apache/poi/hpsf/ClassID;
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->formatID:Lorg/apache/poi/hpsf/ClassID;

    return-object v0
.end method

.method public getOffset()J
    .locals 2

    .line 307
    iget-wide v0, p0, Lorg/apache/poi/hpsf/Section;->_offset:J

    return-wide v0
.end method

.method public getPIDString(J)Ljava/lang/String;
    .locals 3
    .param p1, "pid"    # J

    .line 608
    const/4 v0, 0x0

    .line 609
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getDictionary()Ljava/util/Map;

    move-result-object v1

    .line 610
    .local v1, "dic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 611
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 613
    :cond_0
    if-nez v0, :cond_1

    .line 614
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->getPIDString(Lorg/apache/poi/hpsf/ClassID;J)Ljava/lang/String;

    move-result-object v0

    .line 616
    :cond_1
    return-object v0
.end method

.method public getProperties()[Lorg/apache/poi/hpsf/Property;
    .locals 2

    .line 325
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/hpsf/Property;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hpsf/Property;

    return-object v0
.end method

.method public getProperty(J)Ljava/lang/Object;
    .locals 2
    .param p1, "id"    # J

    .line 351
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/Section;->wasNull:Z

    .line 352
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/Property;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getPropertyBooleanValue(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 514
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 515
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 516
    const/4 v1, 0x0

    return v1

    .line 518
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getPropertyCount()I
    .locals 1

    .line 316
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected getPropertyIntValue(J)I
    .locals 4
    .param p1, "id"    # J

    .line 489
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object v0

    .line 490
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 491
    const/4 v1, 0x0

    return v1

    .line 493
    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 494
    :cond_1
    new-instance v1, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This property is not an integer type, but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 498
    :cond_2
    :goto_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    .line 499
    .local v1, "i":Ljava/lang/Number;
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    return v2
.end method

.method public getSize()I
    .locals 3

    .line 540
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 541
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 542
    return v0

    .line 545
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/hpsf/Section;->calcSize()I

    move-result v1
    :try_end_0
    .catch Lorg/apache/poi/hpsf/HPSFRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 548
    :catch_0
    move-exception v1

    .line 549
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    invoke-direct {v2, v1}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 546
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 547
    .local v1, "ex":Lorg/apache/poi/hpsf/HPSFRuntimeException;
    throw v1
.end method

.method public hashCode()I
    .locals 6

    .line 952
    const-wide/16 v0, 0x0

    .line 953
    .local v0, "hashCode":J
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hpsf/ClassID;->hashCode()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 954
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v2

    .line 955
    .local v2, "pa":[Lorg/apache/poi/hpsf/Property;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 956
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lorg/apache/poi/hpsf/Property;->hashCode()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 955
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 958
    .end local v3    # "i":I
    :cond_0
    const-wide v3, 0xffffffffL

    and-long/2addr v3, v0

    long-to-int v4, v3

    .line 959
    .local v4, "returnHashCode":I
    return v4
.end method

.method public removeProperty(J)V
    .locals 2
    .param p1, "id"    # J

    .line 691
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 694
    :cond_0
    return-void
.end method

.method public setCodepage(I)V
    .locals 4
    .param p1, "codepage"    # I

    .line 1039
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x2

    invoke-virtual {p0, v1, v2, v3, v0}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    .line 1040
    return-void
.end method

.method public setDictionary(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/IllegalPropertySetDataException;
        }
    .end annotation

    .line 920
    .local p1, "dictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 921
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 922
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    .line 924
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 928
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getCodepage()I

    move-result v0

    .line 929
    .local v0, "cp":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 930
    const/16 v1, 0x4e4

    invoke-virtual {p0, v1}, Lorg/apache/poi/hpsf/Section;->setCodepage(I)V

    .line 936
    :cond_1
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v1, v2, v3, p1}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    .line 937
    .end local v0    # "cp":I
    goto :goto_0

    .line 940
    :cond_2
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/Section;->removeProperty(J)V

    .line 941
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    .line 943
    :goto_0
    return-void
.end method

.method public setFormatID(Lorg/apache/poi/hpsf/ClassID;)V
    .locals 0
    .param p1, "formatID"    # Lorg/apache/poi/hpsf/ClassID;

    .line 283
    iput-object p1, p0, Lorg/apache/poi/hpsf/Section;->formatID:Lorg/apache/poi/hpsf/ClassID;

    .line 284
    return-void
.end method

.method public setFormatID([B)V
    .locals 2
    .param p1, "formatID"    # [B

    .line 293
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    .line 294
    .local v0, "fid":Lorg/apache/poi/hpsf/ClassID;
    if-nez v0, :cond_0

    .line 295
    new-instance v1, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v1}, Lorg/apache/poi/hpsf/ClassID;-><init>()V

    move-object v0, v1

    .line 296
    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/Section;->setFormatID(Lorg/apache/poi/hpsf/ClassID;)V

    .line 298
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/ClassID;->setBytes([B)V

    .line 299
    return-void
.end method

.method public setProperties([Lorg/apache/poi/hpsf/Property;)V
    .locals 4
    .param p1, "properties"    # [Lorg/apache/poi/hpsf/Property;

    .line 334
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 335
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/poi/hpsf/Property;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 336
    .local v3, "p":Lorg/apache/poi/hpsf/Property;
    invoke-virtual {p0, v3}, Lorg/apache/poi/hpsf/Section;->setProperty(Lorg/apache/poi/hpsf/Property;)V

    .line 335
    .end local v3    # "p":Lorg/apache/poi/hpsf/Property;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    .end local v0    # "arr$":[Lorg/apache/poi/hpsf/Property;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method public setProperty(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "value"    # I

    .line 375
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-wide/16 v1, 0x3

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    .line 376
    return-void
.end method

.method public setProperty(IJ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "value"    # J

    .line 390
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, 0x14

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    .line 391
    return-void
.end method

.method public setProperty(IJLjava/lang/Object;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "variantType"    # J
    .param p4, "value"    # Ljava/lang/Object;

    .line 427
    new-instance v6, Lorg/apache/poi/hpsf/MutableProperty;

    int-to-long v1, p1

    move-object v0, v6

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hpsf/MutableProperty;-><init>(JJLjava/lang/Object;)V

    invoke-virtual {p0, v6}, Lorg/apache/poi/hpsf/Section;->setProperty(Lorg/apache/poi/hpsf/Property;)V

    .line 428
    return-void
.end method

.method public setProperty(ILjava/lang/Object;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 457
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 458
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hpsf/Section;->setProperty(ILjava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 460
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/hpsf/Section;->setProperty(IJ)V

    goto :goto_0

    .line 461
    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 462
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hpsf/Section;->setProperty(II)V

    goto :goto_0

    .line 463
    :cond_2
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 464
    move-object v0, p2

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hpsf/Section;->setProperty(II)V

    goto :goto_0

    .line 465
    :cond_3
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 466
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hpsf/Section;->setProperty(IZ)V

    goto :goto_0

    .line 467
    :cond_4
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_5

    .line 468
    const-wide/16 v0, 0x40

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    .line 474
    :goto_0
    return-void

    .line 470
    :cond_5
    new-instance v0, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HPSF does not support properties of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 362
    const-wide/16 v0, 0x1e

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    .line 363
    return-void
.end method

.method public setProperty(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "value"    # Z

    .line 405
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-wide/16 v1, 0xb

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    .line 406
    return-void
.end method

.method public setProperty(Lorg/apache/poi/hpsf/Property;)V
    .locals 4
    .param p1, "p"    # Lorg/apache/poi/hpsf/Property;

    .line 442
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/Property;

    .line 443
    .local v0, "old":Lorg/apache/poi/hpsf/Property;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/Property;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 444
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v1, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 447
    :cond_1
    return-void
.end method

.method protected setPropertyBooleanValue(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "value"    # Z

    .line 533
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-wide/16 v1, 0xb

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    .line 534
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 969
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/Section;->toString(Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Ljava/lang/String;
    .locals 8
    .param p1, "idMap"    # Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    .line 973
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 974
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v1

    .line 975
    .local v1, "pa":[Lorg/apache/poi/hpsf/Property;
    const-string v2, "\n\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 976
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 977
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 978
    const-string v2, "formatID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 979
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 980
    const-string v2, ", offset: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 981
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getOffset()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 982
    const-string v2, ", propertyCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 983
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getPropertyCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 984
    const-string v2, ", size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 985
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 986
    const-string v2, ", properties: [\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 987
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getCodepage()I

    move-result v2

    .line 988
    .local v2, "codepage":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 989
    const/16 v2, 0x4e4

    .line 991
    :cond_0
    move-object v3, v1

    .local v3, "arr$":[Lorg/apache/poi/hpsf/Property;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 992
    .local v6, "p":Lorg/apache/poi/hpsf/Property;
    invoke-virtual {v6, v2, p1}, Lorg/apache/poi/hpsf/Property;->toString(ILorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 993
    const-string v7, ",\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 991
    .end local v6    # "p":Lorg/apache/poi/hpsf/Property;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 995
    .end local v3    # "arr$":[Lorg/apache/poi/hpsf/Property;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_1
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 996
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 997
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public wasNull()Z
    .locals 1

    .line 592
    iget-boolean v0, p0, Lorg/apache/poi/hpsf/Section;->wasNull:Z

    return v0
.end method

.method public write(Ljava/io/OutputStream;)I
    .locals 12
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/WritingNotSupportedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 715
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 716
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0

    .line 721
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getCodepage()I

    move-result v0

    .line 722
    .local v0, "codepage":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 723
    const-string v2, "The codepage property is not set although a dictionary is present. Defaulting to ISO-8859-1."

    .line 726
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lorg/apache/poi/hpsf/Section;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 727
    const/16 v0, 0x4e4

    .line 731
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 736
    .local v2, "propertyStream":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 739
    .local v3, "propertyListStream":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 744
    .local v4, "position":I
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getPropertyCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    .line 748
    iget-object v5, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/hpsf/Property;

    .line 749
    .local v6, "p":Lorg/apache/poi/hpsf/Property;
    invoke-virtual {v6}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v7

    .line 752
    .local v7, "id":J
    invoke-static {v7, v8, v3}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    .line 753
    int-to-long v9, v4

    invoke-static {v9, v10, v3}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    .line 759
    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_2

    .line 762
    invoke-virtual {v6, v2, v0}, Lorg/apache/poi/hpsf/Property;->write(Ljava/io/OutputStream;I)I

    move-result v9

    add-int/2addr v4, v9

    goto :goto_1

    .line 764
    :cond_2
    if-eq v0, v1, :cond_3

    .line 767
    invoke-direct {p0, v2, v0}, Lorg/apache/poi/hpsf/Section;->writeDictionary(Ljava/io/OutputStream;I)I

    move-result v9

    add-int/2addr v4, v9

    .line 769
    .end local v6    # "p":Lorg/apache/poi/hpsf/Property;
    .end local v7    # "id":J
    :goto_1
    goto :goto_0

    .line 765
    .restart local v6    # "p":Lorg/apache/poi/hpsf/Property;
    .restart local v7    # "id":J
    :cond_3
    new-instance v1, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;

    const-string v9, "Codepage (property 1) is undefined."

    invoke-direct {v1, v9}, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 772
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "p":Lorg/apache/poi/hpsf/Property;
    .end local v7    # "id":J
    :cond_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    add-int/2addr v1, v5

    .line 775
    .local v1, "streamLength":I
    invoke-static {v1, p1}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    .line 778
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getPropertyCount()I

    move-result v5

    invoke-static {v5, p1}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    .line 781
    invoke-virtual {v3, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 784
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 786
    return v1
.end method
