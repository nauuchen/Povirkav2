.class public Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;
.super Ljava/lang/Object;
.source "POIFSReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/eventfilesystem/POIFSReader$SampleListener;
    }
.end annotation


# instance fields
.field private notifyEmptyDirectories:Z

.field private final registry:Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;

.field private registryClosed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->notifyEmptyDirectories:Z

    .line 62
    new-instance v1, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;

    invoke-direct {v1}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registry:Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;

    .line 63
    iput-boolean v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registryClosed:Z

    .line 64
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    array-length v0, p0

    if-nez v0, :cond_0

    .line 209
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "at least one argument required: input filename(s)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 214
    :cond_0
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 216
    .local v3, "arg":Ljava/lang/String;
    new-instance v4, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;

    invoke-direct {v4}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;-><init>()V

    .line 217
    .local v4, "reader":Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;
    new-instance v5, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader$SampleListener;

    invoke-direct {v5}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader$SampleListener;-><init>()V

    .line 219
    .local v5, "listener":Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;
    invoke-virtual {v4, v5}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;)V

    .line 220
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 223
    .local v6, "istream":Ljava/io/FileInputStream;
    invoke-virtual {v4, v6}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->read(Ljava/io/InputStream;)V

    .line 224
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 214
    .end local v3    # "arg":Ljava/lang/String;
    .end local v4    # "reader":Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;
    .end local v5    # "listener":Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;
    .end local v6    # "istream":Ljava/io/FileInputStream;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return-void
.end method

.method private processProperties(Lorg/apache/poi/poifs/storage/BlockList;Lorg/apache/poi/poifs/storage/BlockList;Ljava/util/Iterator;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;)V
    .locals 9
    .param p1, "small_blocks"    # Lorg/apache/poi/poifs/storage/BlockList;
    .param p2, "big_blocks"    # Lorg/apache/poi/poifs/storage/BlockList;
    .param p4, "path"    # Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/storage/BlockList;",
            "Lorg/apache/poi/poifs/storage/BlockList;",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/poifs/property/Property;",
            ">;",
            "Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    .local p3, "properties":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/property/Property;>;"
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->notifyEmptyDirectories:Z

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registry:Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;

    const-string v1, "."

    invoke-virtual {v0, p4, v1}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->getListeners(Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    .line 235
    .local v0, "listeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;

    .line 237
    .local v1, "pl":Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;
    new-instance v2, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p4, v3}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentInputStream;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)V

    .line 238
    .local v2, "pe":Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;
    invoke-interface {v1, v2}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;->processPOIFSReaderEvent(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;)V

    .line 239
    .end local v1    # "pl":Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;
    .end local v2    # "pe":Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;
    goto :goto_0

    .line 240
    :cond_0
    return-void

    .line 243
    .end local v0    # "listeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;>;"
    :cond_1
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 245
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/property/Property;

    .line 246
    .local v0, "property":Lorg/apache/poi/poifs/property/Property;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    new-instance v2, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-direct {v2, p4, v3}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;[Ljava/lang/String;)V

    .line 250
    .local v2, "new_path":Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    move-object v3, v0

    check-cast v3, Lorg/apache/poi/poifs/property/DirectoryProperty;

    .line 251
    .local v3, "dp":Lorg/apache/poi/poifs/property/DirectoryProperty;
    invoke-virtual {v3}, Lorg/apache/poi/poifs/property/DirectoryProperty;->getChildren()Ljava/util/Iterator;

    move-result-object v4

    invoke-direct {p0, p1, p2, v4, v2}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->processProperties(Lorg/apache/poi/poifs/storage/BlockList;Lorg/apache/poi/poifs/storage/BlockList;Ljava/util/Iterator;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;)V

    .line 252
    .end local v2    # "new_path":Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .end local v3    # "dp":Lorg/apache/poi/poifs/property/DirectoryProperty;
    goto :goto_3

    .line 253
    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getStartBlock()I

    move-result v2

    .line 254
    .local v2, "startBlock":I
    iget-object v3, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registry:Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;

    invoke-virtual {v3, p4, v1}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->getListeners(Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v3

    .line 256
    .local v3, "listeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_5

    .line 258
    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getSize()I

    move-result v4

    .line 259
    .local v4, "size":I
    const/4 v6, 0x0

    .line 261
    .local v6, "document":Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->shouldUseSmallBlocks()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 263
    new-instance v7, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;

    invoke-interface {p1, v2, v5}, Lorg/apache/poi/poifs/storage/BlockList;->fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v5

    invoke-direct {v7, v1, v5, v4}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;-><init>(Ljava/lang/String;[Lorg/apache/poi/poifs/storage/ListManagedBlock;I)V

    move-object v5, v7

    .end local v6    # "document":Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;
    .local v5, "document":Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;
    goto :goto_2

    .line 269
    .end local v5    # "document":Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;
    .restart local v6    # "document":Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;
    :cond_3
    new-instance v7, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;

    invoke-interface {p2, v2, v5}, Lorg/apache/poi/poifs/storage/BlockList;->fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v5

    invoke-direct {v7, v1, v5, v4}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;-><init>(Ljava/lang/String;[Lorg/apache/poi/poifs/storage/ListManagedBlock;I)V

    move-object v5, v7

    .line 273
    .end local v6    # "document":Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;
    .restart local v5    # "document":Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 275
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;

    .line 277
    .local v6, "listener":Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;
    new-instance v7, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;

    new-instance v8, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {v8, v5}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;)V

    invoke-direct {v7, v8, p4, v1}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentInputStream;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;->processPOIFSReaderEvent(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;)V

    .line 281
    .end local v6    # "listener":Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;
    goto :goto_2

    .line 282
    .end local v4    # "size":I
    .end local v5    # "document":Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;
    :cond_4
    goto :goto_3

    .line 287
    :cond_5
    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->shouldUseSmallBlocks()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 289
    invoke-interface {p1, v2, v5}, Lorg/apache/poi/poifs/storage/BlockList;->fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    goto :goto_3

    .line 293
    :cond_6
    invoke-interface {p2, v2, v5}, Lorg/apache/poi/poifs/storage/BlockList;->fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    .line 297
    .end local v0    # "property":Lorg/apache/poi/poifs/property/Property;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "startBlock":I
    .end local v3    # "listeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;>;"
    :goto_3
    goto/16 :goto_1

    .line 298
    :cond_7
    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)V
    .locals 10
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registryClosed:Z

    .line 80
    new-instance v0, Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>(Ljava/io/InputStream;)V

    .line 83
    .local v0, "header_block":Lorg/apache/poi/poifs/storage/HeaderBlock;
    new-instance v1, Lorg/apache/poi/poifs/storage/RawDataBlockList;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/apache/poi/poifs/storage/RawDataBlockList;-><init>(Ljava/io/InputStream;Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    .line 87
    .local v1, "data_blocks":Lorg/apache/poi/poifs/storage/RawDataBlockList;
    new-instance v3, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATCount()I

    move-result v5

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATArray()[I

    move-result-object v6

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getXBATCount()I

    move-result v7

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getXBATIndex()I

    move-result v8

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;I[IIILorg/apache/poi/poifs/storage/BlockList;)V

    .line 95
    new-instance v2, Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/poifs/property/PropertyTable;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;Lorg/apache/poi/poifs/storage/RawDataBlockList;)V

    .line 99
    .local v2, "properties":Lorg/apache/poi/poifs/property/PropertyTable;
    invoke-virtual {v2}, Lorg/apache/poi/poifs/property/PropertyTable;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v3

    .line 100
    .local v3, "root":Lorg/apache/poi/poifs/property/RootProperty;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getSBATStart()I

    move-result v5

    invoke-static {v4, v1, v3, v5}, Lorg/apache/poi/poifs/storage/SmallBlockTableReader;->getSmallDocumentBlocks(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/storage/RawDataBlockList;Lorg/apache/poi/poifs/property/RootProperty;I)Lorg/apache/poi/poifs/storage/BlockList;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/poi/poifs/property/RootProperty;->getChildren()Ljava/util/Iterator;

    move-result-object v5

    new-instance v6, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    invoke-direct {v6}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;-><init>()V

    invoke-direct {p0, v4, v1, v5, v6}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->processProperties(Lorg/apache/poi/poifs/storage/BlockList;Lorg/apache/poi/poifs/storage/BlockList;Ljava/util/Iterator;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;)V

    .line 108
    return-void
.end method

.method public registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;

    .line 122
    if-eqz p1, :cond_1

    .line 126
    iget-boolean v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registryClosed:Z

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registry:Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;)V

    .line 131
    return-void

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;
    .param p2, "name"    # Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;
    .param p2, "path"    # Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .param p3, "name"    # Ljava/lang/String;

    .line 171
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iget-boolean v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registryClosed:Z

    if-nez v0, :cond_1

    .line 179
    iget-object v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registry:Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;

    if-nez p2, :cond_0

    new-instance v1, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    invoke-direct {v1}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-virtual {v0, p1, v1, p3}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)V

    .line 182
    return-void

    .line 177
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 173
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setNotifyEmptyDirectories(Z)V
    .locals 0
    .param p1, "notifyEmptyDirectories"    # Z

    .line 192
    iput-boolean p1, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->notifyEmptyDirectories:Z

    .line 193
    return-void
.end method
