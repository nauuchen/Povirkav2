.class public Lorg/apache/poi/xssf/binary/XSSFBUtils;
.super Ljava/lang/Object;
.source "XSSFBUtils.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static castToInt(J)I
    .locals 3
    .param p0, "val"    # J

    .line 89
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const-wide/32 v0, -0x80000000

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    .line 90
    long-to-int v0, p0

    return v0

    .line 92
    :cond_0
    new-instance v0, Lorg/apache/poi/POIXMLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "val ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") can\'t be cast to int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static castToShort(I)S
    .locals 3
    .param p0, "val"    # I

    .line 96
    const/16 v0, 0x7fff

    if-ge p0, v0, :cond_0

    const/16 v0, -0x8000

    if-le p0, v0, :cond_0

    .line 97
    int-to-short v0, p0

    return v0

    .line 99
    :cond_0
    new-instance v0, Lorg/apache/poi/POIXMLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "val ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") can\'t be cast to short"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static get24BitInt([BI)I
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 105
    move v0, p1

    .line 106
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 107
    .local v0, "b0":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 108
    .local v1, "b1":I
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 109
    .local v3, "b2":I
    shl-int/lit8 v4, v3, 0x10

    shl-int/lit8 v5, v1, 0x8

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    return v4
.end method

.method static readXLNullableWideString([BILjava/lang/StringBuilder;)I
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/xssf/binary/XSSFBParseException;
        }
    .end annotation

    .line 42
    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    .line 43
    .local v0, "numChars":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    .line 45
    const-wide v2, 0xffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 46
    const/4 v2, 0x0

    return v2

    .line 47
    :cond_0
    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 51
    long-to-int v2, v0

    mul-int/lit8 v2, v2, 0x2

    .line 52
    .local v2, "numBytes":I
    add-int/lit8 p1, p1, 0x4

    .line 53
    add-int v3, p1, v2

    array-length v4, p0

    if-gt v3, v4, :cond_1

    .line 57
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-16LE"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, p0, p1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    add-int/lit8 v2, v2, 0x4

    .line 59
    return v2

    .line 54
    :cond_1
    new-instance v3, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "trying to read beyond data length:offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", numBytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data.length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 48
    .end local v2    # "numBytes":I
    :cond_2
    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    const-string/jumbo v3, "too many chars to read"

    invoke-direct {v2, v3}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 44
    :cond_3
    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    const-string/jumbo v3, "too few chars to read"

    invoke-direct {v2, v3}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static readXLWideString([BILjava/lang/StringBuilder;)I
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/xssf/binary/XSSFBParseException;
        }
    .end annotation

    .line 72
    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    .line 73
    .local v0, "numChars":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 75
    const-wide v2, 0xffffffffL

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 78
    long-to-int v2, v0

    mul-int/lit8 v2, v2, 0x2

    .line 79
    .local v2, "numBytes":I
    add-int/lit8 p1, p1, 0x4

    .line 80
    add-int v3, p1, v2

    array-length v4, p0

    if-gt v3, v4, :cond_0

    .line 83
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-16LE"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, p0, p1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    add-int/lit8 v2, v2, 0x4

    .line 85
    return v2

    .line 81
    :cond_0
    new-instance v3, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    const-string/jumbo v4, "trying to read beyond data length"

    invoke-direct {v3, v4}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    .end local v2    # "numBytes":I
    :cond_1
    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    const-string/jumbo v3, "too many chars to read"

    invoke-direct {v2, v3}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_2
    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    const-string/jumbo v3, "too few chars to read"

    invoke-direct {v2, v3}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
