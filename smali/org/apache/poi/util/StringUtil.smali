.class public Lorg/apache/poi/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/util/StringUtil$StringsIterator;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final BIG5:Ljava/nio/charset/Charset;

.field protected static final ISO_8859_1:Ljava/nio/charset/Charset;

.field public static final UTF16LE:Ljava/nio/charset/Charset;

.field public static final UTF8:Ljava/nio/charset/Charset;

.field public static final WIN_1252:Ljava/nio/charset/Charset;

.field private static final logger:Lorg/apache/poi/util/POILogger;

.field private static msCodepointToUnicode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final symbolMap_f020:[I

.field private static final symbolMap_f0a0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-class v0, Lorg/apache/poi/util/StringUtil;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/StringUtil;->logger:Lorg/apache/poi/util/POILogger;

    .line 33
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/StringUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 34
    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/StringUtil;->UTF16LE:Ljava/nio/charset/Charset;

    .line 35
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/StringUtil;->UTF8:Ljava/nio/charset/Charset;

    .line 36
    const-string v0, "cp1252"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/StringUtil;->WIN_1252:Ljava/nio/charset/Charset;

    .line 37
    const-string v0, "Big5"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/StringUtil;->BIG5:Ljava/nio/charset/Charset;

    .line 384
    const/16 v0, 0x60

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/poi/util/StringUtil;->symbolMap_f020:[I

    .line 483
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/poi/util/StringUtil;->symbolMap_f0a0:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x21
        0x2200
        0x23
        0x2203
        0x25
        0x26
        0x220d
        0x28
        0x29
        0x2217
        0x2b
        0x2c
        0x2212
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x2245
        0x391
        0x392
        0x3a7
        0x394
        0x395
        0x3a6
        0x393
        0x397
        0x399
        0x3d1
        0x39a
        0x39b
        0x39c
        0x39d
        0x39f
        0x3a0
        0x398
        0x3a1
        0x3a3
        0x3a4
        0x3a5
        0x3c2
        0x3a9
        0x39e
        0x3a8
        0x396
        0x5b
        0x223d
        0x5d
        0x22a5
        0x5f
        0x20
        0x3b1
        0x3b2
        0x3c7
        0x3b4
        0x3b5
        0x3c6
        0x3b3
        0x3b7
        0x3b9
        0x3d5
        0x3ba
        0x3bb
        0x3bc
        0x3bd
        0x3bf
        0x3c0
        0x3b8
        0x3c1
        0x3c3
        0x3c4
        0x3c5
        0x3d6
        0x3c9
        0x3be
        0x3c8
        0x3b6
        0x7b
        0x7c
        0x7d
        0x223c
        0x20
    .end array-data

    :array_1
    .array-data 4
        0x20ac
        0x3d2
        0x2032
        0x2264
        0x2044
        0x221e
        0x192
        0x2663
        0x2666
        0x2665
        0x2660
        0x2194
        0x218f
        0x2191
        0x2192
        0x2193
        0xb0
        0xb1
        0x2033
        0x2265
        0xd7
        0xb5
        0x2202
        0x2219
        0xf7
        0x2260
        0x2261
        0x2248
        0x2026
        0x23d0
        0x23af
        0x21b5
        0x2135
        0x211b
        0x211c
        0x2118
        0x2297
        0x2295
        0x2205
        0x2229
        0x222a
        0x2283
        0x2287
        0x2284
        0x2282
        0x2286
        0x2208
        0x2209
        0x2220
        0x2207
        0xae
        0xa9
        0x2122
        0x220f
        0x221a
        0x22c5
        0xac
        0x2227
        0x2228
        0x21d4
        0x21d0
        0x21d1
        0x21d2
        0x21d3
        0x25ca
        0x2329
        0xae
        0xa9
        0x2122
        0x2211
        0x239b
        0x239c
        0x239d
        0x23a1
        0x23a2
        0x23a3
        0x23a7
        0x23a8
        0x23a9
        0x23aa
        0x20
        0x232a
        0x222b
        0x2320
        0x23ae
        0x2321
        0x239e
        0x239f
        0x23a0
        0x23a4
        0x23a5
        0x23a6
        0x23ab
        0x23ac
        0x23ad
        0x20
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static countMatches(Ljava/lang/CharSequence;C)I
    .locals 4
    .param p0, "haystack"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # C

    .line 619
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 620
    :cond_0
    const/4 v0, 0x0

    .line 621
    .local v0, "count":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 622
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 623
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_1

    .line 624
    add-int/lit8 v0, v0, 0x1

    .line 622
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 627
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method public static endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "haystack"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 309
    .local v6, "length":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v7, v0, v6

    .line 310
    .local v7, "start":I
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, v7

    move-object v3, p1

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static getEncodedSize(Ljava/lang/String;)I
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .line 214
    const/4 v0, 0x3

    .line 215
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    mul-int v1, v1, v2

    add-int/2addr v0, v1

    .line 216
    return v0
.end method

.method public static getFromCompressedUnicode([BII)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .line 119
    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 120
    .local v0, "len_to_use":I
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/poi/util/StringUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static getFromUnicodeLE([B)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # [B

    .line 91
    array-length v0, p0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 92
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-static {p0, v0, v1}, Lorg/apache/poi/util/StringUtil;->getFromUnicodeLE([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFromUnicodeLE([BII)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 70
    if-ltz p1, :cond_1

    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 73
    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    if-lt v0, p2, :cond_0

    .line 77
    new-instance v0, Ljava/lang/String;

    mul-int/lit8 v1, p2, 0x2

    sget-object v2, Lorg/apache/poi/util/StringUtil;->UTF16LE:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (String data is of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPreferredEncoding()Ljava/lang/String;
    .locals 1

    .line 267
    sget-object v0, Lorg/apache/poi/util/StringUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getToUnicodeLE(Ljava/lang/String;)[B
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 102
    sget-object v0, Lorg/apache/poi/util/StringUtil;->UTF16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hasMultibyte(Ljava/lang/String;)Z
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .line 277
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 278
    return v0

    .line 279
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .local v1, "arr$":[C
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, v1, v3

    .line 280
    .local v4, "c":C
    const/16 v5, 0xff

    if-le v4, v5, :cond_1

    .line 281
    const/4 v0, 0x1

    return v0

    .line 279
    .end local v4    # "c":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 284
    .end local v1    # "arr$":[C
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_2
    return v0
.end method

.method private static declared-synchronized initMsCodepointMap()V
    .locals 9

    const-class v0, Lorg/apache/poi/util/StringUtil;

    monitor-enter v0

    .line 372
    :try_start_0
    sget-object v1, Lorg/apache/poi/util/StringUtil;->msCodepointToUnicode:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 373
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/apache/poi/util/StringUtil;->msCodepointToUnicode:Ljava/util/Map;

    .line 374
    const v1, 0xf020

    .line 375
    .local v1, "i":I
    sget-object v2, Lorg/apache/poi/util/StringUtil;->symbolMap_f020:[I

    .local v2, "arr$":[I
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    .line 376
    .local v5, "ch":I
    sget-object v6, Lorg/apache/poi/util/StringUtil;->msCodepointToUnicode:Ljava/util/Map;

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "i":I
    .local v7, "i":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    nop

    .end local v5    # "ch":I
    add-int/lit8 v4, v4, 0x1

    move v1, v7

    goto :goto_0

    .line 378
    .end local v2    # "arr$":[I
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    .end local v7    # "i":I
    .restart local v1    # "i":I
    :cond_1
    const v1, 0xf0a0

    .line 379
    sget-object v2, Lorg/apache/poi/util/StringUtil;->symbolMap_f0a0:[I

    .restart local v2    # "arr$":[I
    array-length v3, v2

    .restart local v3    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v3, :cond_2

    aget v5, v2, v4

    .line 380
    .restart local v5    # "ch":I
    sget-object v6, Lorg/apache/poi/util/StringUtil;->msCodepointToUnicode:Ljava/util/Map;

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "i":I
    .restart local v7    # "i":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    nop

    .end local v5    # "ch":I
    add-int/lit8 v4, v4, 0x1

    move v1, v7

    goto :goto_1

    .line 382
    .end local v2    # "arr$":[I
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    .end local v7    # "i":I
    .restart local v1    # "i":I
    :cond_2
    monitor-exit v0

    return-void

    .line 371
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isUnicodeString(Ljava/lang/String;)Z
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .line 294
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/apache/poi/util/StringUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [Ljava/lang/Object;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 607
    invoke-static {p1, p0}, Lorg/apache/poi/util/StringUtil;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "array"    # [Ljava/lang/Object;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 597
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 598
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    .local v0, "sb":Ljava/lang/StringBuilder;
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 600
    .local v4, "o":Ljava/lang/Object;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 599
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 602
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # Ljava/lang/String;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 586
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 587
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 589
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 590
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 589
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 592
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 586
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method public static declared-synchronized mapMsCodepoint(II)V
    .locals 4
    .param p0, "msCodepoint"    # I
    .param p1, "unicodeCodepoint"    # I

    const-class v0, Lorg/apache/poi/util/StringUtil;

    monitor-enter v0

    .line 367
    :try_start_0
    invoke-static {}, Lorg/apache/poi/util/StringUtil;->initMsCodepointMap()V

    .line 368
    sget-object v1, Lorg/apache/poi/util/StringUtil;->msCodepointToUnicode:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    monitor-exit v0

    return-void

    .line 366
    .end local p0    # "msCodepoint":I
    .end local p1    # "unicodeCodepoint":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static mapMsCodepointString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;

    .line 351
    if-eqz p0, :cond_3

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 352
    :cond_0
    invoke-static {}, Lorg/apache/poi/util/StringUtil;->initMsCodepointMap()V

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 356
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "offset":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 357
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 358
    .local v3, "msCodepoint":Ljava/lang/Integer;
    sget-object v4, Lorg/apache/poi/util/StringUtil;->msCodepointToUnicode:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 359
    .local v4, "uniCodepoint":Ljava/lang/Integer;
    if-nez v4, :cond_1

    move-object v5, v3

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 361
    .end local v3    # "msCodepoint":Ljava/lang/Integer;
    .end local v4    # "uniCodepoint":Ljava/lang/Integer;
    goto :goto_0

    .line 363
    .end local v2    # "offset":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 351
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "length":I
    :cond_3
    :goto_2
    return-object p0
.end method

.method public static putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 235
    sget-object v0, Lorg/apache/poi/util/StringUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 236
    .local v0, "bytes":[B
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 237
    return-void
.end method

.method public static putCompressedUnicode(Ljava/lang/String;[BI)V
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "output"    # [B
    .param p2, "offset"    # I

    .line 230
    sget-object v0, Lorg/apache/poi/util/StringUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 231
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    return-void
.end method

.method public static putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 253
    sget-object v0, Lorg/apache/poi/util/StringUtil;->UTF16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 254
    .local v0, "bytes":[B
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 255
    return-void
.end method

.method public static putUnicodeLE(Ljava/lang/String;[BI)V
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "output"    # [B
    .param p2, "offset"    # I

    .line 249
    sget-object v0, Lorg/apache/poi/util/StringUtil;->UTF16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 250
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    return-void
.end method

.method public static readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p1, "nChars"    # I

    .line 124
    new-array v0, p1, [B

    .line 125
    .local v0, "buf":[B
    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 126
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/poi/util/StringUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p1, "nChars"    # I

    .line 258
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [B

    .line 259
    .local v0, "bytes":[B
    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 260
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/poi/util/StringUtil;->UTF16LE:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static readUnicodeString(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 142
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    .line 143
    .local v0, "nChars":I
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v1

    .line 144
    .local v1, "flag":B
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_0

    .line 145
    invoke-static {p0, v0}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 147
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static readUnicodeString(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p1, "nChars"    # I

    .line 162
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    .line 163
    .local v0, "is16Bit":B
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    .line 164
    invoke-static {p0, p1}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 166
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "haystack"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 301
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static writeUnicodeString(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V
    .locals 2
    .param p0, "out"    # Lorg/apache/poi/util/LittleEndianOutput;
    .param p1, "value"    # Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 179
    .local v0, "nChars":I
    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 180
    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v1

    .line 181
    .local v1, "is16Bit":Z
    invoke-interface {p0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 182
    if-eqz v1, :cond_0

    .line 183
    invoke-static {p1, p0}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-static {p1, p0}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 187
    :goto_0
    return-void
.end method

.method public static writeUnicodeStringFlagAndData(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Lorg/apache/poi/util/LittleEndianOutput;
    .param p1, "value"    # Ljava/lang/String;

    .line 201
    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    .line 202
    .local v0, "is16Bit":Z
    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-static {p1, p0}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-static {p1, p0}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 208
    :goto_0
    return-void
.end method
