.class public final Lorg/apache/poi/poifs/storage/SmallDocumentBlock;
.super Ljava/lang/Object;
.source "SmallDocumentBlock.java"

# interfaces
.implements Lorg/apache/poi/poifs/storage/BlockWritable;
.implements Lorg/apache/poi/poifs/storage/ListManagedBlock;


# static fields
.field private static final BLOCK_MASK:I = 0x3f

.field private static final BLOCK_SHIFT:I = 0x6

.field private static final _block_size:I = 0x40

.field private static final _default_fill:B = -0x1t


# instance fields
.field private final _bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

.field private final _blocks_per_big_block:I

.field private _data:[B


# direct methods
.method protected constructor <init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V
    .locals 1
    .param p1, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 53
    invoke-static {p1}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->getBlocksPerBigBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_blocks_per_big_block:I

    .line 54
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_data:[B

    .line 55
    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[BI)V
    .locals 4
    .param p1, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p2, "data"    # [B
    .param p3, "index"    # I

    .line 46
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    .line 47
    mul-int/lit8 v0, p3, 0x40

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_data:[B

    const/4 v2, 0x0

    const/16 v3, 0x40

    invoke-static {p2, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    return-void
.end method

.method public static calcSize(I)I
    .locals 1
    .param p0, "size"    # I

    .line 203
    mul-int/lit8 v0, p0, 0x40

    return v0
.end method

.method public static convert(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[BI)[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;
    .locals 8
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p1, "array"    # [B
    .param p2, "size"    # I

    .line 76
    add-int/lit8 v0, p2, 0x40

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x40

    div-int/2addr v0, v1

    new-array v0, v0, [Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    .line 78
    .local v0, "rval":[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;
    const/4 v2, 0x0

    .line 80
    .local v2, "offset":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 82
    new-instance v4, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    invoke-direct {v4, p0}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    aput-object v4, v0, v3

    .line 83
    array-length v4, p1

    const/4 v5, -0x1

    if-ge v2, v4, :cond_1

    .line 85
    array-length v4, p1

    sub-int/2addr v4, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 87
    .local v4, "length":I
    aget-object v6, v0, v3

    iget-object v6, v6, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_data:[B

    const/4 v7, 0x0

    invoke-static {p1, v2, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    if-eq v4, v1, :cond_0

    .line 90
    aget-object v6, v0, v3

    iget-object v6, v6, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_data:[B

    invoke-static {v6, v4, v1, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 93
    .end local v4    # "length":I
    :cond_0
    goto :goto_1

    .line 96
    :cond_1
    aget-object v4, v0, v3

    iget-object v4, v4, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_data:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 98
    :goto_1
    add-int/lit8 v2, v2, 0x40

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    .end local v3    # "k":I
    :cond_2
    return-object v0
.end method

.method public static convert(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/BlockWritable;I)[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;
    .locals 5
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p1, "store"    # [Lorg/apache/poi/poifs/storage/BlockWritable;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 146
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 148
    aget-object v2, p1, v1

    invoke-interface {v2, v0}, Lorg/apache/poi/poifs/storage/BlockWritable;->writeBlocks(Ljava/io/OutputStream;)V

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "j":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 151
    .local v1, "data":[B
    invoke-static {p2}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->convertToBlockCount(I)I

    move-result v2

    new-array v2, v2, [Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    .line 154
    .local v2, "rval":[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 156
    new-instance v4, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    invoke-direct {v4, p0, v1, v3}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[BI)V

    aput-object v4, v2, v3

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 158
    .end local v3    # "index":I
    :cond_1
    return-object v2
.end method

.method private static convertToBlockCount(I)I
    .locals 1
    .param p0, "size"    # I

    .line 221
    add-int/lit8 v0, p0, 0x40

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x40

    return v0
.end method

.method public static extract(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/ListManagedBlock;)Ljava/util/List;
    .locals 6
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p1, "blocks"    # [Lorg/apache/poi/poifs/storage/ListManagedBlock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/common/POIFSBigBlockSize;",
            "[",
            "Lorg/apache/poi/poifs/storage/ListManagedBlock;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/storage/SmallDocumentBlock;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-static {p0}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->getBlocksPerBigBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)I

    move-result v0

    .line 174
    .local v0, "_blocks_per_big_block":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v1, "sdbs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/storage/SmallDocumentBlock;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 178
    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/apache/poi/poifs/storage/ListManagedBlock;->getData()[B

    move-result-object v3

    .line 180
    .local v3, "data":[B
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    if-ge v4, v0, :cond_0

    .line 182
    new-instance v5, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    invoke-direct {v5, p0, v3, v4}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[BI)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 176
    .end local v3    # "data":[B
    .end local v4    # "k":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    .end local v2    # "j":I
    :cond_1
    return-object v1
.end method

.method public static fill(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/util/List;)I
    .locals 5
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/common/POIFSBigBlockSize;",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/storage/SmallDocumentBlock;",
            ">;)I"
        }
    .end annotation

    .line 113
    .local p1, "blocks":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/storage/SmallDocumentBlock;>;"
    invoke-static {p0}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->getBlocksPerBigBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)I

    move-result v0

    .line 115
    .local v0, "_blocks_per_big_block":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 116
    .local v1, "count":I
    add-int v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, v0

    .line 118
    .local v2, "big_block_count":I
    mul-int v3, v2, v0

    .line 120
    .local v3, "full_count":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 122
    invoke-static {p0}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->makeEmptySmallDocumentBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_0
    return v2
.end method

.method private static getBlocksPerBigBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)I
    .locals 1
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 59
    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x40

    return v0
.end method

.method public static getDataInputBlock([Lorg/apache/poi/poifs/storage/SmallDocumentBlock;I)Lorg/apache/poi/poifs/storage/DataInputBlock;
    .locals 4
    .param p0, "blocks"    # [Lorg/apache/poi/poifs/storage/SmallDocumentBlock;
    .param p1, "offset"    # I

    .line 189
    shr-int/lit8 v0, p1, 0x6

    .line 190
    .local v0, "firstBlockIndex":I
    and-int/lit8 v1, p1, 0x3f

    .line 191
    .local v1, "firstBlockOffset":I
    new-instance v2, Lorg/apache/poi/poifs/storage/DataInputBlock;

    aget-object v3, p0, v0

    iget-object v3, v3, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_data:[B

    invoke-direct {v2, v3, v1}, Lorg/apache/poi/poifs/storage/DataInputBlock;-><init>([BI)V

    return-object v2
.end method

.method private static makeEmptySmallDocumentBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)Lorg/apache/poi/poifs/storage/SmallDocumentBlock;
    .locals 3
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 213
    new-instance v0, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    .line 215
    .local v0, "block":Lorg/apache/poi/poifs/storage/SmallDocumentBlock;
    iget-object v1, v0, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_data:[B

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 216
    return-object v0
.end method


# virtual methods
.method public getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .locals 1

    .line 251
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_data:[B

    return-object v0
.end method

.method protected getSmallBlocksPerBigBlock()I
    .locals 1

    .line 208
    iget v0, p0, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_blocks_per_big_block:I

    return v0
.end method

.method public writeBlocks(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 237
    return-void
.end method
