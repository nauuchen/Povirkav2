.class public final Lorg/apache/poi/ddf/EscherPictBlip;
.super Lorg/apache/poi/ddf/EscherBlipRecord;
.source "EscherPictBlip.java"


# static fields
.field private static final HEADER_SIZE:I = 0x8

.field public static final RECORD_ID_EMF:S = -0xfe6s

.field public static final RECORD_ID_PICT:S = -0xfe4s

.field public static final RECORD_ID_WMF:S = -0xfe5s

.field private static final log:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final field_1_UID:[B

.field private field_2_cb:I

.field private field_3_rcBounds_x1:I

.field private field_3_rcBounds_x2:I

.field private field_3_rcBounds_y1:I

.field private field_3_rcBounds_y2:I

.field private field_4_ptSize_h:I

.field private field_4_ptSize_w:I

.field private field_5_cbSave:I

.field private field_6_fCompression:B

.field private field_7_fFilter:B

.field private raw_pictureData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lorg/apache/poi/ddf/EscherPictBlip;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ddf/EscherPictBlip;->log:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;-><init>()V

    .line 40
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_1_UID:[B

    return-void
.end method

.method private static inflatePictureData([B)[B
    .locals 6
    .param p0, "data"    # [B

    .line 123
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 124
    .local v1, "in":Ljava/util/zip/InflaterInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 125
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 127
    .local v3, "buf":[B
    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/zip/InflaterInputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "readBytes":I
    if-lez v4, :cond_0

    .line 128
    invoke-virtual {v2, v3, v0, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 131
    .end local v1    # "in":Ljava/util/zip/InflaterInputStream;
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "buf":[B
    .end local v5    # "readBytes":I
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/apache/poi/ddf/EscherPictBlip;->log:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Possibly corrupt compression or non-compressed data"

    aput-object v5, v4, v0

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 133
    return-object p0
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "recordFactory"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .line 56
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherPictBlip;->readHeader([BI)I

    move-result v0

    .line 57
    .local v0, "bytesAfterHeader":I
    add-int/lit8 v1, p2, 0x8

    .line 59
    .local v1, "pos":I
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_1_UID:[B

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v4

    .line 60
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_2_cb:I

    add-int/lit8 v1, v1, 0x4

    .line 61
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_x1:I

    add-int/lit8 v1, v1, 0x4

    .line 62
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_y1:I

    add-int/lit8 v1, v1, 0x4

    .line 63
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_x2:I

    add-int/lit8 v1, v1, 0x4

    .line 64
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_y2:I

    add-int/lit8 v1, v1, 0x4

    .line 65
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_4_ptSize_w:I

    add-int/lit8 v1, v1, 0x4

    .line 66
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_4_ptSize_h:I

    add-int/lit8 v1, v1, 0x4

    .line 67
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_5_cbSave:I

    add-int/lit8 v1, v1, 0x4

    .line 68
    aget-byte v4, p1, v1

    iput-byte v4, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_6_fCompression:B

    add-int/lit8 v1, v1, 0x1

    .line 69
    aget-byte v4, p1, v1

    iput-byte v4, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_7_fFilter:B

    add-int/lit8 v1, v1, 0x1

    .line 71
    new-array v4, v2, [B

    iput-object v4, p0, Lorg/apache/poi/ddf/EscherPictBlip;->raw_pictureData:[B

    .line 72
    invoke-static {p1, v1, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget-byte v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_6_fCompression:B

    if-nez v2, :cond_0

    .line 78
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->raw_pictureData:[B

    invoke-static {v2}, Lorg/apache/poi/ddf/EscherPictBlip;->inflatePictureData([B)[B

    move-result-object v2

    invoke-super {p0, v2}, Lorg/apache/poi/ddf/EscherBlipRecord;->setPictureData([B)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->raw_pictureData:[B

    invoke-super {p0, v2}, Lorg/apache/poi/ddf/EscherBlipRecord;->setPictureData([B)V

    .line 85
    :goto_0
    add-int/lit8 v2, v0, 0x8

    return v2
.end method

.method protected getAttributeMap()[[Ljava/lang/Object;
    .locals 6

    .line 282
    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "UID"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_1_UID:[B

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Uncompressed Size"

    aput-object v3, v2, v4

    iget v3, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_2_cb:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Bounds"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getBounds()Ljava/awt/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/Rectangle;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Size in EMU"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getSizeEMU()Ljava/awt/Dimension;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/Dimension;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Compressed Size"

    aput-object v3, v2, v4

    iget v3, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_5_cbSave:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Compression"

    aput-object v3, v2, v4

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_6_fCompression:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Filter"

    aput-object v3, v2, v4

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_7_fFilter:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Extra Data"

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getPicturedata()[B

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getBounds()Ljava/awt/Rectangle;
    .locals 5

    .line 189
    new-instance v0, Ljava/awt/Rectangle;

    iget v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_x1:I

    iget v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_y1:I

    iget v3, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_x2:I

    sub-int/2addr v3, v1

    iget v4, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_y2:I

    sub-int/2addr v4, v2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public getCompressedSize()I
    .locals 1

    .line 232
    iget v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_5_cbSave:I

    return v0
.end method

.method public getFilter()B
    .locals 1

    .line 268
    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_7_fFilter:B

    return v0
.end method

.method public getRecordSize()I
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->raw_pictureData:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3a

    return v0
.end method

.method public getSizeEMU()Ljava/awt/Dimension;
    .locals 3

    .line 213
    new-instance v0, Ljava/awt/Dimension;

    iget v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_4_ptSize_w:I

    iget v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_4_ptSize_h:I

    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    return-object v0
.end method

.method public getUID()[B
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_1_UID:[B

    return-object v0
.end method

.method public getUncompressedSize()I
    .locals 1

    .line 171
    iget v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_2_cb:I

    return v0
.end method

.method public isCompressed()Z
    .locals 1

    .line 250
    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_6_fCompression:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 4
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "listener"    # Lorg/apache/poi/ddf/EscherSerializationListener;

    .line 90
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    .line 92
    move v0, p1

    .line 93
    .local v0, "pos":I
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getOptions()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, v0, 0x2

    .line 94
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, v0, 0x2

    .line 95
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getRecordSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    const/4 v2, 0x0

    invoke-static {p2, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 97
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_1_UID:[B

    const/16 v3, 0x10

    invoke-static {v1, v2, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    .line 98
    iget v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_2_cb:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 99
    iget v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_x1:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 100
    iget v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_y1:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 101
    iget v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_x2:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 102
    iget v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_y2:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 103
    iget v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_4_ptSize_w:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 104
    iget v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_4_ptSize_h:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 105
    iget v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_5_cbSave:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 106
    iget-byte v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_6_fCompression:B

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 107
    iget-byte v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_7_fFilter:B

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 109
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->raw_pictureData:[B

    array-length v3, v1

    invoke-static {v1, v2, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getRecordSize()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getRecordId()S

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getRecordSize()I

    move-result v3

    invoke-interface {p3, v1, v2, v3, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    .line 112
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->raw_pictureData:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x19

    return v1
.end method

.method public setBounds(Ljava/awt/Rectangle;)V
    .locals 2
    .param p1, "bounds"    # Ljava/awt/Rectangle;

    .line 201
    iget v0, p1, Ljava/awt/Rectangle;->x:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_x1:I

    .line 202
    iget v0, p1, Ljava/awt/Rectangle;->y:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_y1:I

    .line 203
    iget v0, p1, Ljava/awt/Rectangle;->x:I

    iget v1, p1, Ljava/awt/Rectangle;->width:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_x2:I

    .line 204
    iget v0, p1, Ljava/awt/Rectangle;->y:I

    iget v1, p1, Ljava/awt/Rectangle;->height:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_y2:I

    .line 205
    return-void
.end method

.method public setCompressed(Z)V
    .locals 1
    .param p1, "compressed"    # Z

    .line 259
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    iput-byte v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_6_fCompression:B

    .line 260
    return-void
.end method

.method public setCompressedSize(I)V
    .locals 0
    .param p1, "compressedSize"    # I

    .line 241
    iput p1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_5_cbSave:I

    .line 242
    return-void
.end method

.method public setFilter(B)V
    .locals 0
    .param p1, "filter"    # B

    .line 277
    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_7_fFilter:B

    .line 278
    return-void
.end method

.method public setSizeEMU(Ljava/awt/Dimension;)V
    .locals 1
    .param p1, "sizeEMU"    # Ljava/awt/Dimension;

    .line 222
    iget v0, p1, Ljava/awt/Dimension;->width:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_4_ptSize_w:I

    .line 223
    iget v0, p1, Ljava/awt/Dimension;->height:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_4_ptSize_h:I

    .line 224
    return-void
.end method

.method public setUID([B)V
    .locals 3
    .param p1, "uid"    # [B

    .line 159
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_1_UID:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    return-void

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uid must be byte[16]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUncompressedSize(I)V
    .locals 0
    .param p1, "uncompressedSize"    # I

    .line 180
    iput p1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_2_cb:I

    .line 181
    return-void
.end method
