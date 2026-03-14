.class public final Lorg/apache/poi/poifs/storage/SmallBlockTableReader;
.super Ljava/lang/Object;
.source "SmallBlockTableReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _getSmallDocumentBlockReader(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/storage/RawDataBlockList;Lorg/apache/poi/poifs/property/RootProperty;I)Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;
    .locals 2
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p1, "blockList"    # Lorg/apache/poi/poifs/storage/RawDataBlockList;
    .param p2, "root"    # Lorg/apache/poi/poifs/property/RootProperty;
    .param p3, "sbatStart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/poifs/storage/SmallBlockTableReader;->prepareSmallDocumentBlocks(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/storage/RawDataBlockList;Lorg/apache/poi/poifs/property/RootProperty;I)Lorg/apache/poi/poifs/storage/BlockList;

    move-result-object v0

    .line 82
    .local v0, "list":Lorg/apache/poi/poifs/storage/BlockList;
    invoke-static {p0, p1, v0, p2, p3}, Lorg/apache/poi/poifs/storage/SmallBlockTableReader;->prepareReader(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/storage/RawDataBlockList;Lorg/apache/poi/poifs/storage/BlockList;Lorg/apache/poi/poifs/property/RootProperty;I)Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;

    move-result-object v1

    return-object v1
.end method

.method public static getSmallDocumentBlocks(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/storage/RawDataBlockList;Lorg/apache/poi/poifs/property/RootProperty;I)Lorg/apache/poi/poifs/storage/BlockList;
    .locals 1
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p1, "blockList"    # Lorg/apache/poi/poifs/storage/RawDataBlockList;
    .param p2, "root"    # Lorg/apache/poi/poifs/property/RootProperty;
    .param p3, "sbatStart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/poifs/storage/SmallBlockTableReader;->prepareSmallDocumentBlocks(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/storage/RawDataBlockList;Lorg/apache/poi/poifs/property/RootProperty;I)Lorg/apache/poi/poifs/storage/BlockList;

    move-result-object v0

    .line 107
    .local v0, "list":Lorg/apache/poi/poifs/storage/BlockList;
    invoke-static {p0, p1, v0, p2, p3}, Lorg/apache/poi/poifs/storage/SmallBlockTableReader;->prepareReader(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/storage/RawDataBlockList;Lorg/apache/poi/poifs/storage/BlockList;Lorg/apache/poi/poifs/property/RootProperty;I)Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;

    .line 108
    return-object v0
.end method

.method private static prepareReader(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/storage/RawDataBlockList;Lorg/apache/poi/poifs/storage/BlockList;Lorg/apache/poi/poifs/property/RootProperty;I)Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;
    .locals 2
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p1, "blockList"    # Lorg/apache/poi/poifs/storage/RawDataBlockList;
    .param p2, "list"    # Lorg/apache/poi/poifs/storage/BlockList;
    .param p3, "root"    # Lorg/apache/poi/poifs/property/RootProperty;
    .param p4, "sbatStart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;

    const/4 v1, -0x1

    invoke-virtual {p1, p4, v1}, Lorg/apache/poi/poifs/storage/RawDataBlockList;->fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/ListManagedBlock;Lorg/apache/poi/poifs/storage/BlockList;)V

    return-object v0
.end method

.method private static prepareSmallDocumentBlocks(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/storage/RawDataBlockList;Lorg/apache/poi/poifs/property/RootProperty;I)Lorg/apache/poi/poifs/storage/BlockList;
    .locals 3
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p1, "blockList"    # Lorg/apache/poi/poifs/storage/RawDataBlockList;
    .param p2, "root"    # Lorg/apache/poi/poifs/property/RootProperty;
    .param p3, "sbatStart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-virtual {p2}, Lorg/apache/poi/poifs/property/RootProperty;->getStartBlock()I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/poifs/storage/RawDataBlockList;->fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v0

    .line 41
    .local v0, "smallBlockBlocks":[Lorg/apache/poi/poifs/storage/ListManagedBlock;
    new-instance v1, Lorg/apache/poi/poifs/storage/SmallDocumentBlockList;

    invoke-static {p0, v0}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->extract(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/ListManagedBlock;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/poifs/storage/SmallDocumentBlockList;-><init>(Ljava/util/List;)V

    .line 44
    .local v1, "list":Lorg/apache/poi/poifs/storage/BlockList;
    return-object v1
.end method
