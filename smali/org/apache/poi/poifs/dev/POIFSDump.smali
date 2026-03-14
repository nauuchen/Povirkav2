.class public Lorg/apache/poi/poifs/dev/POIFSDump;
.super Ljava/lang/Object;
.source "POIFSDump.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/io/File;)V
    .locals 8
    .param p0, "root"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .param p1, "parent"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntries()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/filesystem/Entry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 105
    .local v1, "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    instance-of v2, v1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-eqz v2, :cond_0

    .line 106
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    .line 107
    .local v2, "node":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    new-instance v3, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {v3, v2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    .line 108
    .local v3, "is":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    invoke-static {v3}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 109
    .local v4, "bytes":[B
    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    .line 111
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 113
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 116
    nop

    .line 117
    .end local v2    # "node":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .end local v3    # "is":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .end local v4    # "bytes":[B
    .end local v5    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 115
    .restart local v2    # "node":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .restart local v3    # "is":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .restart local v4    # "bytes":[B
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    throw v6

    .line 117
    .end local v2    # "node":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .end local v3    # "is":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .end local v4    # "bytes":[B
    .end local v5    # "out":Ljava/io/OutputStream;
    :cond_0
    instance-of v2, v1, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    if-eqz v2, :cond_3

    .line 118
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    .line 119
    .local v2, "dir":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    new-instance v3, Ljava/io/File;

    invoke-interface {v1}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 121
    :cond_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not create directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 123
    :cond_2
    :goto_1
    invoke-static {v2, v3}, Lorg/apache/poi/poifs/dev/POIFSDump;->dump(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/io/File;)V

    .line 124
    .end local v2    # "dir":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .end local v3    # "file":Ljava/io/File;
    goto :goto_2

    .line 125
    :cond_3
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping unsupported POIFS entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    .end local v1    # "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    :goto_2
    goto/16 :goto_0

    .line 128
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/filesystem/Entry;>;"
    :cond_4
    return-void
.end method

.method public static dump(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;ILjava/lang/String;Ljava/io/File;)V
    .locals 8
    .param p0, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .param p1, "startBlock"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 133
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-direct {v2, p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V

    .line 135
    .local v2, "stream":Lorg/apache/poi/poifs/filesystem/NPOIFSStream;
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBigBlockSize()I

    move-result v3

    new-array v3, v3, [B

    .line 136
    .local v3, "b":[B
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 137
    .local v5, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .line 138
    .local v6, "len":I
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 139
    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .end local v5    # "bb":Ljava/nio/ByteBuffer;
    .end local v6    # "len":I
    goto :goto_0

    .line 142
    .end local v2    # "stream":Lorg/apache/poi/poifs/filesystem/NPOIFSStream;
    .end local v3    # "b":[B
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 143
    nop

    .line 144
    return-void

    .line 142
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 17
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    move-object/from16 v1, p0

    array-length v0, v1

    if-nez v0, :cond_0

    .line 44
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Must specify at least one file to dump"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 48
    :cond_0
    const/4 v0, 0x0

    .local v0, "dumpProps":Z
    const/4 v2, 0x0

    .line 49
    .local v2, "dumpMini":Z
    move-object/from16 v3, p0

    .local v3, "arr$":[Ljava/lang/String;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    const/4 v6, 0x0

    move-object v7, v6

    move v6, v5

    move v5, v2

    move v2, v0

    .end local v0    # "dumpProps":Z
    .local v2, "dumpProps":Z
    .local v5, "dumpMini":Z
    .local v6, "i$":I
    :goto_0
    if-ge v6, v4, :cond_a

    aget-object v8, v3, v6

    .line 50
    .local v8, "filename":Ljava/lang/String;
    const-string v0, "-dumprops"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "-dump-props"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "-dump-properties"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 56
    :cond_1
    const-string v0, "-dumpmini"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "-dump-mini"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "-dump-ministream"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "-dump-mini-stream"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    .line 64
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dumping "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 68
    .local v9, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v0, v9}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v7, v0

    .line 70
    .local v7, "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 71
    nop

    .line 73
    :try_start_1
    invoke-virtual {v7}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    .line 74
    .local v0, "root":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 75
    .local v10, "filenameWithoutPath":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_dump"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .local v11, "dumpDir":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v11, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_1

    .line 78
    :cond_3
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not create directory "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "dumpProps":Z
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "dumpMini":Z
    .end local v6    # "i$":I
    .end local v7    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .end local v8    # "filename":Ljava/lang/String;
    .end local v9    # "is":Ljava/io/FileInputStream;
    .end local p0    # "args":[Ljava/lang/String;
    throw v13

    .line 81
    .restart local v2    # "dumpProps":Z
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v4    # "len$":I
    .restart local v5    # "dumpMini":Z
    .restart local v6    # "i$":I
    .restart local v7    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .restart local v8    # "filename":Ljava/lang/String;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    .restart local p0    # "args":[Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-static {v0, v12}, Lorg/apache/poi/poifs/dev/POIFSDump;->dump(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/io/File;)V

    .line 83
    if-eqz v2, :cond_5

    .line 84
    invoke-virtual {v7}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getHeaderBlock()Lorg/apache/poi/poifs/storage/HeaderBlock;

    move-result-object v13

    .line 85
    .local v13, "header":Lorg/apache/poi/poifs/storage/HeaderBlock;
    invoke-virtual {v13}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getPropertyStart()I

    move-result v14

    const-string v15, "properties"

    invoke-static {v7, v14, v15, v12}, Lorg/apache/poi/poifs/dev/POIFSDump;->dump(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;ILjava/lang/String;Ljava/io/File;)V

    .line 87
    .end local v13    # "header":Lorg/apache/poi/poifs/storage/HeaderBlock;
    :cond_5
    if-eqz v5, :cond_7

    .line 88
    invoke-virtual {v7}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getPropertyTable()Lorg/apache/poi/poifs/property/NPropertyTable;

    move-result-object v13

    .line 89
    .local v13, "props":Lorg/apache/poi/poifs/property/NPropertyTable;
    invoke-virtual {v13}, Lorg/apache/poi/poifs/property/NPropertyTable;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/poi/poifs/property/RootProperty;->getStartBlock()I

    move-result v14

    .line 90
    .local v14, "startBlock":I
    const/4 v15, -0x2

    if-ne v14, v15, :cond_6

    .line 91
    sget-object v15, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v16, v0

    .end local v0    # "root":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .local v16, "root":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    const-string v0, "No Mini Stream in file"

    invoke-virtual {v15, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 93
    .end local v16    # "root":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .restart local v0    # "root":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    :cond_6
    move-object/from16 v16, v0

    .end local v0    # "root":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .restart local v16    # "root":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    const-string v0, "mini-stream"

    invoke-static {v7, v14, v0, v12}, Lorg/apache/poi/poifs/dev/POIFSDump;->dump(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;ILjava/lang/String;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 87
    .end local v13    # "props":Lorg/apache/poi/poifs/property/NPropertyTable;
    .end local v14    # "startBlock":I
    .end local v16    # "root":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .restart local v0    # "root":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    :cond_7
    move-object/from16 v16, v0

    .line 97
    .end local v0    # "root":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .end local v10    # "filenameWithoutPath":Ljava/lang/String;
    .end local v11    # "dumpDir":Ljava/io/File;
    .end local v12    # "file":Ljava/io/File;
    :goto_2
    invoke-virtual {v7}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    .line 98
    goto :goto_5

    .line 97
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    throw v0

    .line 70
    .end local v7    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :catchall_1
    move-exception v0

    .restart local v7    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    throw v0

    .line 60
    .end local v7    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .end local v9    # "is":Ljava/io/FileInputStream;
    :cond_8
    :goto_3
    const/4 v0, 0x1

    .line 61
    .end local v5    # "dumpMini":Z
    .local v0, "dumpMini":Z
    move v5, v0

    goto :goto_5

    .line 53
    .end local v0    # "dumpMini":Z
    .restart local v5    # "dumpMini":Z
    :cond_9
    :goto_4
    const/4 v0, 0x1

    .line 54
    .end local v2    # "dumpProps":Z
    .local v0, "dumpProps":Z
    move v2, v0

    .line 49
    .end local v0    # "dumpProps":Z
    .end local v8    # "filename":Ljava/lang/String;
    .restart local v2    # "dumpProps":Z
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 100
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v6    # "i$":I
    :cond_a
    return-void
.end method
