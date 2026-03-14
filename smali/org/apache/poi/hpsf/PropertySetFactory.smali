.class public Lorg/apache/poi/hpsf/PropertySetFactory;
.super Ljava/lang/Object;
.source "PropertySetFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/io/InputStream;)Lorg/apache/poi/hpsf/PropertySet;
    .locals 10
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoPropertySetStreamException;,
            Lorg/apache/poi/hpsf/MarkUnsupportedException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 93
    new-instance v0, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {v0, p0}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    .line 94
    .local v0, "leis":Lorg/apache/poi/util/LittleEndianInputStream;
    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v1

    .line 95
    .local v1, "byteOrder":I
    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v2

    .line 96
    .local v2, "format":I
    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v3

    long-to-int v4, v3

    .line 97
    .local v4, "osVersion":I
    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 98
    .local v3, "clsIdBuf":[B
    invoke-virtual {v0, v3}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([B)V

    .line 99
    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v5

    long-to-int v6, v5

    .line 101
    .local v6, "sectionCount":I
    const v5, 0xfffe

    if-ne v1, v5, :cond_3

    if-nez v2, :cond_3

    if-ltz v6, :cond_3

    .line 107
    if-lez v6, :cond_0

    .line 108
    invoke-virtual {v0, v3}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([B)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 112
    new-instance v5, Lorg/apache/poi/hpsf/ClassID;

    const/4 v7, 0x0

    invoke-direct {v5, v3, v7}, Lorg/apache/poi/hpsf/ClassID;-><init>([BI)V

    .line 113
    .local v5, "clsId":Lorg/apache/poi/hpsf/ClassID;
    if-lez v6, :cond_1

    const/4 v8, 0x1

    new-array v8, v8, [Lorg/apache/poi/hpsf/ClassID;

    sget-object v9, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->SUMMARY_INFORMATION_ID:Lorg/apache/poi/hpsf/ClassID;

    aput-object v9, v8, v7

    invoke-static {v5, v8}, Lorg/apache/poi/hpsf/PropertySet;->matchesSummary(Lorg/apache/poi/hpsf/ClassID;[Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 114
    new-instance v7, Lorg/apache/poi/hpsf/SummaryInformation;

    invoke-direct {v7, p0}, Lorg/apache/poi/hpsf/SummaryInformation;-><init>(Ljava/io/InputStream;)V

    return-object v7

    .line 115
    :cond_1
    if-lez v6, :cond_2

    sget-object v7, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->DOCUMENT_SUMMARY_INFORMATION_ID:[Lorg/apache/poi/hpsf/ClassID;

    invoke-static {v5, v7}, Lorg/apache/poi/hpsf/PropertySet;->matchesSummary(Lorg/apache/poi/hpsf/ClassID;[Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 116
    new-instance v7, Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    invoke-direct {v7, p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;-><init>(Ljava/io/InputStream;)V

    return-object v7

    .line 118
    :cond_2
    new-instance v7, Lorg/apache/poi/hpsf/PropertySet;

    invoke-direct {v7, p0}, Lorg/apache/poi/hpsf/PropertySet;-><init>(Ljava/io/InputStream;)V

    return-object v7

    .line 104
    .end local v5    # "clsId":Lorg/apache/poi/hpsf/ClassID;
    :cond_3
    new-instance v5, Lorg/apache/poi/hpsf/NoPropertySetStreamException;

    invoke-direct {v5}, Lorg/apache/poi/hpsf/NoPropertySetStreamException;-><init>()V

    throw v5
.end method

.method public static create(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;)Lorg/apache/poi/hpsf/PropertySet;
    .locals 4
    .param p0, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/apache/poi/hpsf/NoPropertySetStreamException;,
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "inp":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 59
    .local v1, "entry":Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    new-instance v2, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {v2, v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 61
    :try_start_1
    invoke-static {v0}, Lorg/apache/poi/hpsf/PropertySetFactory;->create(Ljava/io/InputStream;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object v2
    :try_end_1
    .catch Lorg/apache/poi/hpsf/MarkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    nop

    .line 67
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v2

    .line 62
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Lorg/apache/poi/hpsf/MarkUnsupportedException;
    const/4 v3, 0x0

    .line 66
    nop

    .line 67
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v3

    .line 66
    .end local v1    # "entry":Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .end local v2    # "e":Lorg/apache/poi/hpsf/MarkUnsupportedException;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v1
.end method

.method public static newDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    .locals 1

    .line 137
    new-instance v0, Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;-><init>()V

    return-object v0
.end method

.method public static newSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;
    .locals 1

    .line 128
    new-instance v0, Lorg/apache/poi/hpsf/SummaryInformation;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/SummaryInformation;-><init>()V

    return-object v0
.end method
