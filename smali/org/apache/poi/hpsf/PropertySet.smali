.class public Lorg/apache/poi/hpsf/PropertySet;
.super Ljava/lang/Object;
.source "PropertySet.java"


# static fields
.field static final BYTE_ORDER_ASSERTION:I = 0xfffe

.field static final FORMAT_ASSERTION:I = 0x0

.field static final OFFSET_HEADER:I = 0x1c

.field public static final OS_MACINTOSH:I = 0x1

.field public static final OS_WIN16:I = 0x0

.field public static final OS_WIN32:I = 0x2


# instance fields
.field private byteOrder:I

.field private classID:Lorg/apache/poi/hpsf/ClassID;

.field private format:I

.field private osVersion:I

.field private final sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hpsf/Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    .line 147
    const v0, 0xfffe

    iput v0, p0, Lorg/apache/poi/hpsf/PropertySet;->byteOrder:I

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hpsf/PropertySet;->format:I

    .line 154
    const v0, 0x20a04

    iput v0, p0, Lorg/apache/poi/hpsf/PropertySet;->osVersion:I

    .line 157
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/ClassID;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->classID:Lorg/apache/poi/hpsf/ClassID;

    .line 161
    new-instance v0, Lorg/apache/poi/hpsf/MutableSection;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/MutableSection;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->addSection(Lorg/apache/poi/hpsf/Section;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoPropertySetStreamException;,
            Lorg/apache/poi/hpsf/MarkUnsupportedException;,
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    .line 191
    invoke-static {p1}, Lorg/apache/poi/hpsf/PropertySet;->isPropertySetStream(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 196
    .local v0, "buffer":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/hpsf/PropertySet;->init([BII)V

    .line 197
    return-void

    .line 192
    .end local v0    # "buffer":[B
    :cond_0
    new-instance v0, Lorg/apache/poi/hpsf/NoPropertySetStreamException;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/NoPropertySetStreamException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/PropertySet;)V
    .locals 4
    .param p1, "ps"    # Lorg/apache/poi/hpsf/PropertySet;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    .line 248
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->setByteOrder(I)V

    .line 249
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->setFormat(I)V

    .line 250
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->setOSVersion(I)V

    .line 251
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->setClassID(Lorg/apache/poi/hpsf/ClassID;)V

    .line 252
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/Section;

    .line 253
    .local v1, "section":Lorg/apache/poi/hpsf/Section;
    iget-object v2, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/hpsf/MutableSection;

    invoke-direct {v3, v1}, Lorg/apache/poi/hpsf/MutableSection;-><init>(Lorg/apache/poi/hpsf/Section;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "section":Lorg/apache/poi/hpsf/Section;
    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "stream"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoPropertySetStreamException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 236
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/poi/hpsf/PropertySet;-><init>([BII)V

    .line 237
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "stream"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoPropertySetStreamException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    .line 217
    invoke-static {p1, p2, p3}, Lorg/apache/poi/hpsf/PropertySet;->isPropertySetStream([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hpsf/PropertySet;->init([BII)V

    .line 221
    return-void

    .line 218
    :cond_0
    new-instance v0, Lorg/apache/poi/hpsf/NoPropertySetStreamException;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/NoPropertySetStreamException;-><init>()V

    throw v0
.end method

.method public static getPropertyStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "propertyValue"    # Ljava/lang/Object;

    .line 624
    if-nez p0, :cond_0

    .line 625
    const/4 v0, 0x0

    return-object v0

    .line 627
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 628
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 632
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_6

    .line 633
    move-object v0, p0

    check-cast v0, [B

    check-cast v0, [B

    .line 634
    .local v0, "b":[B
    array-length v1, v0

    const-string v2, ""

    if-eqz v1, :cond_5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    .line 646
    const/16 v1, 0x4e4

    :try_start_0
    invoke-static {v0, v1}, Lorg/apache/poi/util/CodePageUtil;->getStringFromCodePage([BI)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 647
    :catch_0
    move-exception v1

    .line 649
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    return-object v2

    .line 642
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([B)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 640
    :cond_3
    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 638
    :cond_4
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    invoke-static {v1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 636
    :cond_5
    return-object v2

    .line 653
    .end local v0    # "b":[B
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init([BII)V
    .locals 5
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 461
    move v0, p2

    .line 462
    .local v0, "o":I
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hpsf/PropertySet;->byteOrder:I

    .line 463
    add-int/lit8 v0, v0, 0x2

    .line 464
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hpsf/PropertySet;->format:I

    .line 465
    add-int/lit8 v0, v0, 0x2

    .line 466
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, p0, Lorg/apache/poi/hpsf/PropertySet;->osVersion:I

    .line 467
    add-int/lit8 v0, v0, 0x4

    .line 468
    new-instance v1, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v1, p1, v0}, Lorg/apache/poi/hpsf/ClassID;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/poi/hpsf/PropertySet;->classID:Lorg/apache/poi/hpsf/ClassID;

    .line 469
    add-int/lit8 v0, v0, 0x10

    .line 470
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    .line 471
    .local v1, "sectionCount":I
    add-int/lit8 v0, v0, 0x4

    .line 472
    if-ltz v1, :cond_1

    .line 493
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 494
    new-instance v3, Lorg/apache/poi/hpsf/MutableSection;

    invoke-direct {v3, p1, v0}, Lorg/apache/poi/hpsf/MutableSection;-><init>([BI)V

    .line 495
    .local v3, "s":Lorg/apache/poi/hpsf/Section;
    add-int/lit8 v0, v0, 0x14

    .line 496
    iget-object v4, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    .end local v3    # "s":Lorg/apache/poi/hpsf/Section;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 498
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 473
    :cond_1
    new-instance v2, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Section count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is negative."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static isPropertySetStream(Ljava/io/InputStream;)Z
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/MarkUnsupportedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    const/16 v0, 0x32

    .line 393
    .local v0, "BUFFER_SIZE":I
    const/16 v1, 0x32

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lorg/apache/poi/util/IOUtils;->peekFirstNBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    .line 394
    .local v1, "buffer":[B
    array-length v3, v1

    invoke-static {v1, v2, v3}, Lorg/apache/poi/hpsf/PropertySet;->isPropertySetStream([BII)Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/poi/EmptyFileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    .local v2, "isPropertySetStream":Z
    return v2

    .line 396
    .end local v1    # "buffer":[B
    .end local v2    # "isPropertySetStream":Z
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Lorg/apache/poi/EmptyFileException;
    return v2
.end method

.method public static isPropertySetStream([BII)Z
    .locals 9
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 420
    move v0, p1

    .line 421
    .local v0, "o":I
    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v1

    .line 422
    .local v1, "byteOrder":I
    add-int/lit8 v0, v0, 0x2

    .line 423
    const/4 v2, 0x0

    const v3, 0xfffe

    if-eq v1, v3, :cond_0

    .line 424
    return v2

    .line 426
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v3

    .line 427
    .local v3, "format":I
    add-int/lit8 v0, v0, 0x2

    .line 428
    if-eqz v3, :cond_1

    .line 429
    return v2

    .line 432
    :cond_1
    add-int/lit8 v0, v0, 0x4

    .line 434
    add-int/lit8 v0, v0, 0x10

    .line 435
    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v4

    .line 436
    .local v4, "sectionCount":J
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method static varargs matchesSummary(Lorg/apache/poi/hpsf/ClassID;[Lorg/apache/poi/hpsf/ClassID;)Z
    .locals 5
    .param p0, "actual"    # Lorg/apache/poi/hpsf/ClassID;
    .param p1, "expected"    # [Lorg/apache/poi/hpsf/ClassID;

    .line 677
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/poi/hpsf/ClassID;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 678
    .local v3, "sum":Lorg/apache/poi/hpsf/ClassID;
    invoke-virtual {v3, p0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, p0}, Lorg/apache/poi/hpsf/ClassID;->equalsInverted(Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 677
    .end local v3    # "sum":Lorg/apache/poi/hpsf/ClassID;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 679
    .restart local v3    # "sum":Lorg/apache/poi/hpsf/ClassID;
    :cond_1
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 682
    .end local v0    # "arr$":[Lorg/apache/poi/hpsf/ClassID;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    .end local v3    # "sum":Lorg/apache/poi/hpsf/ClassID;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static putClassId(Ljava/io/OutputStream;Lorg/apache/poi/hpsf/ClassID;)V
    .locals 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "n"    # Lorg/apache/poi/hpsf/ClassID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 903
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 904
    .local v0, "b":[B
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/hpsf/ClassID;->write([BI)V

    .line 905
    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 906
    return-void
.end method


# virtual methods
.method public addSection(Lorg/apache/poi/hpsf/Section;)V
    .locals 1
    .param p1, "section"    # Lorg/apache/poi/hpsf/Section;

    .line 347
    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    return-void
.end method

.method public clearSections()V
    .locals 1

    .line 354
    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 355
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 13
    .param p1, "o"    # Ljava/lang/Object;

    .line 814
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Lorg/apache/poi/hpsf/PropertySet;

    if-nez v1, :cond_0

    goto :goto_1

    .line 817
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hpsf/PropertySet;

    .line 818
    .local v1, "ps":Lorg/apache/poi/hpsf/PropertySet;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v2

    .line 819
    .local v2, "byteOrder1":I
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v3

    .line 820
    .local v3, "byteOrder2":I
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v4

    .line 821
    .local v4, "classID1":Lorg/apache/poi/hpsf/ClassID;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v5

    .line 822
    .local v5, "classID2":Lorg/apache/poi/hpsf/ClassID;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v6

    .line 823
    .local v6, "format1":I
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v7

    .line 824
    .local v7, "format2":I
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v8

    .line 825
    .local v8, "osVersion1":I
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v9

    .line 826
    .local v9, "osVersion2":I
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v10

    .line 827
    .local v10, "sectionCount1":I
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v11

    .line 828
    .local v11, "sectionCount2":I
    if-ne v2, v3, :cond_2

    invoke-virtual {v4, v5}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    if-ne v6, v7, :cond_2

    if-ne v8, v9, :cond_2

    if-eq v10, v11, :cond_1

    goto :goto_0

    .line 837
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 833
    :cond_2
    :goto_0
    return v0

    .line 815
    .end local v1    # "ps":Lorg/apache/poi/hpsf/PropertySet;
    .end local v2    # "byteOrder1":I
    .end local v3    # "byteOrder2":I
    .end local v4    # "classID1":Lorg/apache/poi/hpsf/ClassID;
    .end local v5    # "classID2":Lorg/apache/poi/hpsf/ClassID;
    .end local v6    # "format1":I
    .end local v7    # "format2":I
    .end local v8    # "osVersion1":I
    .end local v9    # "osVersion2":I
    .end local v10    # "sectionCount1":I
    .end local v11    # "sectionCount2":I
    :cond_3
    :goto_1
    return v0
.end method

.method public getByteOrder()I
    .locals 1

    .line 262
    iget v0, p0, Lorg/apache/poi/hpsf/PropertySet;->byteOrder:I

    return v0
.end method

.method public getClassID()Lorg/apache/poi/hpsf/ClassID;
    .locals 1

    .line 311
    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->classID:Lorg/apache/poi/hpsf/ClassID;

    return-object v0
.end method

.method public getFirstSection()Lorg/apache/poi/hpsf/Section;
    .locals 2

    .line 780
    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/Section;

    return-object v0

    .line 781
    :cond_0
    new-instance v0, Lorg/apache/poi/hpsf/MissingSectionException;

    const-string v1, "Property set does not contain any sections."

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/MissingSectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFormat()I
    .locals 1

    .line 278
    iget v0, p0, Lorg/apache/poi/hpsf/PropertySet;->format:I

    return v0
.end method

.method public getOSVersion()I
    .locals 1

    .line 294
    iget v0, p0, Lorg/apache/poi/hpsf/PropertySet;->osVersion:I

    return v0
.end method

.method public getProperties()[Lorg/apache/poi/hpsf/Property;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoSingleSectionException;
        }
    .end annotation

    .line 697
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v0

    return-object v0
.end method

.method protected getProperty(I)Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoSingleSectionException;
        }
    .end annotation

    .line 713
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getPropertyBooleanValue(I)Z
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoSingleSectionException;
        }
    .end annotation

    .line 730
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/Section;->getPropertyBooleanValue(I)Z

    move-result v0

    return v0
.end method

.method protected getPropertyIntValue(I)I
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoSingleSectionException;
        }
    .end annotation

    .line 748
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/Section;->getPropertyIntValue(J)I

    move-result v0

    return v0
.end method

.method public getPropertySetIDMap()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 1

    .line 363
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPropertyStringValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "propertyId"    # I

    .line 611
    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/PropertySet;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    .line 612
    .local v0, "propertyValue":Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSectionCount()I
    .locals 1

    .line 327
    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hpsf/Section;",
            ">;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSingleSection()Lorg/apache/poi/hpsf/Section;
    .locals 4

    .line 794
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v0

    .line 795
    .local v0, "sectionCount":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 798
    iget-object v1, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/Section;

    return-object v1

    .line 796
    :cond_0
    new-instance v1, Lorg/apache/poi/hpsf/NoSingleSectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property set contains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sections."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/hpsf/NoSingleSectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 848
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FIXME: Not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDocumentSummaryInformation()Z
    .locals 2

    .line 673
    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->DOCUMENT_SUMMARY_INFORMATION_ID:[Lorg/apache/poi/hpsf/ClassID;

    invoke-static {v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->matchesSummary(Lorg/apache/poi/hpsf/ClassID;[Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSummaryInformation()Z
    .locals 5

    .line 663
    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    new-array v3, v1, [Lorg/apache/poi/hpsf/ClassID;

    sget-object v4, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->SUMMARY_INFORMATION_ID:Lorg/apache/poi/hpsf/ClassID;

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lorg/apache/poi/hpsf/PropertySet;->matchesSummary(Lorg/apache/poi/hpsf/ClassID;[Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected remove1stProperty(J)V
    .locals 1
    .param p1, "id"    # J

    .line 883
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hpsf/Section;->removeProperty(J)V

    .line 884
    return-void
.end method

.method protected set1stProperty(JI)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "value"    # I

    .line 891
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    long-to-int v1, p1

    invoke-virtual {v0, v1, p3}, Lorg/apache/poi/hpsf/Section;->setProperty(II)V

    .line 892
    return-void
.end method

.method protected set1stProperty(JLjava/lang/String;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "value"    # Ljava/lang/String;

    .line 887
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    long-to-int v1, p1

    invoke-virtual {v0, v1, p3}, Lorg/apache/poi/hpsf/Section;->setProperty(ILjava/lang/String;)V

    .line 888
    return-void
.end method

.method protected set1stProperty(JZ)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "value"    # Z

    .line 895
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    long-to-int v1, p1

    invoke-virtual {v0, v1, p3}, Lorg/apache/poi/hpsf/Section;->setProperty(IZ)V

    .line 896
    return-void
.end method

.method protected set1stProperty(J[B)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "value"    # [B

    .line 899
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    long-to-int v1, p1

    invoke-virtual {v0, v1, p3}, Lorg/apache/poi/hpsf/Section;->setProperty(ILjava/lang/Object;)V

    .line 900
    return-void
.end method

.method public setByteOrder(I)V
    .locals 0
    .param p1, "byteOrder"    # I

    .line 271
    iput p1, p0, Lorg/apache/poi/hpsf/PropertySet;->byteOrder:I

    .line 272
    return-void
.end method

.method public setClassID(Lorg/apache/poi/hpsf/ClassID;)V
    .locals 0
    .param p1, "classID"    # Lorg/apache/poi/hpsf/ClassID;

    .line 320
    iput-object p1, p0, Lorg/apache/poi/hpsf/PropertySet;->classID:Lorg/apache/poi/hpsf/ClassID;

    .line 321
    return-void
.end method

.method public setFormat(I)V
    .locals 0
    .param p1, "format"    # I

    .line 287
    iput p1, p0, Lorg/apache/poi/hpsf/PropertySet;->format:I

    .line 288
    return-void
.end method

.method public setOSVersion(I)V
    .locals 0
    .param p1, "osVersion"    # I

    .line 303
    iput p1, p0, Lorg/apache/poi/hpsf/PropertySet;->osVersion:I

    .line 304
    return-void
.end method

.method public toInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/hpsf/WritingNotSupportedException;
        }
    .end annotation

    .line 592
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 594
    .local v0, "psStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 597
    nop

    .line 598
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 599
    .local v1, "streamData":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v2

    .line 596
    .end local v1    # "streamData":[B
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 859
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v1

    .line 860
    .local v1, "sectionCount":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 862
    const-string v2, "byteOrder: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 864
    const-string v2, ", classID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 866
    const-string v2, ", format: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 868
    const-string v2, ", OSVersion: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 870
    const-string v2, ", sectionCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 872
    const-string v2, ", sections: [\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hpsf/Section;

    .line 874
    .local v3, "section":Lorg/apache/poi/hpsf/Section;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertySetIDMap()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/hpsf/Section;->toString(Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 876
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "section":Lorg/apache/poi/hpsf/Section;
    :cond_0
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 877
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 878
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public wasNull()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoSingleSectionException;
        }
    .end annotation

    .line 769
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Section;->wasNull()Z

    move-result v0

    return v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/WritingNotSupportedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 512
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v0

    .line 515
    .local v0, "nrSections":I
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v1

    int-to-short v1, v1

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->putShort(Ljava/io/OutputStream;S)V

    .line 516
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v1

    int-to-short v1, v1

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->putShort(Ljava/io/OutputStream;S)V

    .line 517
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v1

    invoke-static {v1, p1}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    .line 518
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/poi/hpsf/PropertySet;->putClassId(Ljava/io/OutputStream;Lorg/apache/poi/hpsf/ClassID;)V

    .line 519
    invoke-static {v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    .line 520
    const/16 v1, 0x1c

    .line 525
    .local v1, "offset":I
    mul-int/lit8 v2, v0, 0x14

    add-int/2addr v1, v2

    .line 526
    move v2, v1

    .line 527
    .local v2, "sectionsBegin":I
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hpsf/Section;

    .line 528
    .local v4, "section":Lorg/apache/poi/hpsf/Section;
    invoke-virtual {v4}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v5

    .line 529
    .local v5, "formatID":Lorg/apache/poi/hpsf/ClassID;
    if-eqz v5, :cond_1

    .line 532
    invoke-static {p1, v5}, Lorg/apache/poi/hpsf/PropertySet;->putClassId(Ljava/io/OutputStream;Lorg/apache/poi/hpsf/ClassID;)V

    .line 533
    int-to-long v6, v1

    invoke-static {v6, v7, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    .line 535
    :try_start_0
    invoke-virtual {v4}, Lorg/apache/poi/hpsf/Section;->getSize()I

    move-result v6
    :try_end_0
    .catch Lorg/apache/poi/hpsf/HPSFRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v6

    .line 542
    nop

    .line 543
    .end local v4    # "section":Lorg/apache/poi/hpsf/Section;
    .end local v5    # "formatID":Lorg/apache/poi/hpsf/ClassID;
    goto :goto_0

    .line 536
    .restart local v4    # "section":Lorg/apache/poi/hpsf/Section;
    .restart local v5    # "formatID":Lorg/apache/poi/hpsf/ClassID;
    :catch_0
    move-exception v6

    .line 537
    .local v6, "ex":Lorg/apache/poi/hpsf/HPSFRuntimeException;
    invoke-virtual {v6}, Lorg/apache/poi/hpsf/HPSFRuntimeException;->getReason()Ljava/lang/Throwable;

    move-result-object v7

    .line 538
    .local v7, "cause":Ljava/lang/Throwable;
    instance-of v8, v7, Ljava/io/UnsupportedEncodingException;

    if-eqz v8, :cond_0

    .line 539
    new-instance v8, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;

    invoke-direct {v8, v7}, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 541
    :cond_0
    throw v6

    .line 530
    .end local v6    # "ex":Lorg/apache/poi/hpsf/HPSFRuntimeException;
    .end local v7    # "cause":Ljava/lang/Throwable;
    :cond_1
    new-instance v6, Lorg/apache/poi/hpsf/NoFormatIDException;

    invoke-direct {v6}, Lorg/apache/poi/hpsf/NoFormatIDException;-><init>()V

    throw v6

    .line 546
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "section":Lorg/apache/poi/hpsf/Section;
    .end local v5    # "formatID":Lorg/apache/poi/hpsf/ClassID;
    :cond_2
    move v1, v2

    .line 547
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hpsf/Section;

    .line 548
    .restart local v4    # "section":Lorg/apache/poi/hpsf/Section;
    invoke-virtual {v4, p1}, Lorg/apache/poi/hpsf/Section;->write(Ljava/io/OutputStream;)I

    move-result v5

    add-int/2addr v1, v5

    .end local v4    # "section":Lorg/apache/poi/hpsf/Section;
    goto :goto_1

    .line 552
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 553
    return-void
.end method

.method public write(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;)V
    .locals 1
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/WritingNotSupportedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    invoke-interface {p1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->hasEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    invoke-interface {p1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v0

    .line 570
    .local v0, "e":Lorg/apache/poi/poifs/filesystem/Entry;
    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/Entry;->delete()Z

    .line 574
    .end local v0    # "e":Lorg/apache/poi/poifs/filesystem/Entry;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->toInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 575
    return-void
.end method
