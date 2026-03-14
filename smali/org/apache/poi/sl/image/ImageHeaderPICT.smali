.class public Lorg/apache/poi/sl/image/ImageHeaderPICT;
.super Ljava/lang/Object;
.source "ImageHeaderPICT.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final DEFAULT_RESOLUTION:D = 72.0

.field public static final PICT_HEADER_OFFSET:I = 0x200

.field private static final V2_HEADER:[B


# instance fields
.field private final bounds:Ljava/awt/Rectangle;

.field private final hRes:D

.field private final vRes:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/sl/image/ImageHeaderPICT;->V2_HEADER:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x11t
        0x2t
        -0x1t
        0xct
        0x0t
        -0x1t
        -0x2t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>([BI)V
    .locals 11
    .param p1, "data"    # [B
    .param p2, "off"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    move v0, p2

    .line 49
    .local v0, "offset":I
    add-int/lit8 v0, v0, 0x2

    .line 52
    invoke-static {p1, v0}, Lorg/apache/poi/sl/image/ImageHeaderPICT;->readUnsignedShort([BI)I

    move-result v1

    .local v1, "y1":I
    add-int/lit8 v0, v0, 0x2

    .line 53
    invoke-static {p1, v0}, Lorg/apache/poi/sl/image/ImageHeaderPICT;->readUnsignedShort([BI)I

    move-result v2

    .local v2, "x1":I
    add-int/lit8 v0, v0, 0x2

    .line 54
    invoke-static {p1, v0}, Lorg/apache/poi/sl/image/ImageHeaderPICT;->readUnsignedShort([BI)I

    move-result v3

    .local v3, "y2":I
    add-int/lit8 v0, v0, 0x2

    .line 55
    invoke-static {p1, v0}, Lorg/apache/poi/sl/image/ImageHeaderPICT;->readUnsignedShort([BI)I

    move-result v4

    .local v4, "x2":I
    add-int/lit8 v0, v0, 0x2

    .line 58
    const/4 v5, 0x1

    .line 59
    .local v5, "isV2":Z
    sget-object v6, Lorg/apache/poi/sl/image/ImageHeaderPICT;->V2_HEADER:[B

    .local v6, "arr$":[B
    array-length v7, v6

    .local v7, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v7, :cond_1

    aget-byte v9, v6, v8

    .line 60
    .local v9, "b":B
    add-int/lit8 v10, v0, 0x1

    .end local v0    # "offset":I
    .local v10, "offset":I
    aget-byte v0, p1, v0

    if-eq v9, v0, :cond_0

    .line 61
    const/4 v5, 0x0

    .line 62
    move v0, v10

    goto :goto_1

    .line 59
    .end local v9    # "b":B
    :cond_0
    add-int/lit8 v8, v8, 0x1

    move v0, v10

    goto :goto_0

    .line 66
    .end local v6    # "arr$":[B
    .end local v7    # "len$":I
    .end local v8    # "i$":I
    .end local v10    # "offset":I
    .restart local v0    # "offset":I
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    .line 68
    invoke-static {p1, v0}, Lorg/apache/poi/sl/image/ImageHeaderPICT;->readFixedPoint([BI)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/apache/poi/sl/image/ImageHeaderPICT;->hRes:D

    add-int/lit8 v0, v0, 0x4

    .line 70
    invoke-static {p1, v0}, Lorg/apache/poi/sl/image/ImageHeaderPICT;->readFixedPoint([BI)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/apache/poi/sl/image/ImageHeaderPICT;->vRes:D

    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    .line 72
    :cond_2
    const-wide/high16 v6, 0x4052000000000000L    # 72.0

    iput-wide v6, p0, Lorg/apache/poi/sl/image/ImageHeaderPICT;->hRes:D

    .line 73
    iput-wide v6, p0, Lorg/apache/poi/sl/image/ImageHeaderPICT;->vRes:D

    .line 76
    :goto_2
    new-instance v6, Ljava/awt/Rectangle;

    sub-int v7, v4, v2

    sub-int v8, v3, v1

    invoke-direct {v6, v2, v1, v7, v8}, Ljava/awt/Rectangle;-><init>(IIII)V

    iput-object v6, p0, Lorg/apache/poi/sl/image/ImageHeaderPICT;->bounds:Ljava/awt/Rectangle;

    .line 77
    return-void
.end method

.method private static readFixedPoint([BI)D
    .locals 9
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 96
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 97
    .local v0, "b0":I
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 98
    .local v1, "b1":I
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 99
    .local v2, "b2":I
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 100
    .local v3, "b3":I
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    .line 101
    .local v4, "i":I
    int-to-double v5, v4

    const-wide/high16 v7, 0x40f0000000000000L    # 65536.0

    div-double/2addr v5, v7

    return-wide v5
.end method

.method private static readUnsignedShort([BI)I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 90
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 91
    .local v0, "b0":I
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 92
    .local v1, "b1":I
    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v2, v1

    return v2
.end method


# virtual methods
.method public getBounds()Ljava/awt/Rectangle;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/poi/sl/image/ImageHeaderPICT;->bounds:Ljava/awt/Rectangle;

    return-object v0
.end method

.method public getSize()Ljava/awt/Dimension;
    .locals 6

    .line 80
    iget-object v0, p0, Lorg/apache/poi/sl/image/ImageHeaderPICT;->bounds:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->height:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4052000000000000L    # 72.0

    mul-double v0, v0, v2

    iget-wide v4, p0, Lorg/apache/poi/sl/image/ImageHeaderPICT;->vRes:D

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    .line 81
    .local v1, "height":I
    iget-object v0, p0, Lorg/apache/poi/sl/image/ImageHeaderPICT;->bounds:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->width:I

    int-to-double v4, v0

    mul-double v4, v4, v2

    iget-wide v2, p0, Lorg/apache/poi/sl/image/ImageHeaderPICT;->hRes:D

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 82
    .local v0, "width":I
    new-instance v2, Ljava/awt/Dimension;

    invoke-direct {v2, v0, v1}, Ljava/awt/Dimension;-><init>(II)V

    return-object v2
.end method
