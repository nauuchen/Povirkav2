.class public Lorg/apache/poi/hssf/extractor/OldExcelExtractor;
.super Ljava/lang/Object;
.source "OldExcelExtractor.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final FILE_PASS_RECORD_SID:I = 0x2f


# instance fields
.field private biffVersion:I

.field private fileType:I

.field private ris:Lorg/apache/poi/hssf/record/RecordInputStream;

.field private toClose:Ljava/io/Closeable;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "poifs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :try_start_0
    new-instance v1, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v1, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 80
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    .line 81
    iput-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;
    :try_end_0
    .catch Lorg/apache/poi/hssf/OldExcelFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/poi/poifs/filesystem/NotOLE2FileException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    if-nez v0, :cond_0

    .line 95
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_0
    return-void

    .line 94
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 90
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/RuntimeException;
    nop

    .end local v0    # "poifs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .end local p1    # "f":Ljava/io/File;
    :try_start_1
    throw v1

    .line 87
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "poifs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .restart local p1    # "f":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 89
    .local v1, "e":Ljava/io/IOException;
    nop

    .end local v0    # "poifs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .end local p1    # "f":Ljava/io/File;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "poifs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .restart local p1    # "f":Ljava/io/File;
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    if-nez v2, :cond_1

    .line 95
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    throw v1

    .line 85
    :catch_2
    move-exception v1

    .line 94
    iget-object v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    if-nez v1, :cond_2

    .line 95
    :goto_1
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    .line 83
    :catch_3
    move-exception v1

    .line 94
    iget-object v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    if-nez v1, :cond_2

    .line 95
    goto :goto_1

    .line 100
    :cond_2
    :goto_2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 102
    .local v1, "biffStream":Ljava/io/FileInputStream;
    :try_start_2
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    .line 113
    nop

    .line 114
    return-void

    .line 108
    :catch_4
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 112
    throw v2

    .line 103
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_5
    move-exception v2

    .line 106
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 107
    throw v2
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Ljava/io/InputStream;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 0
    .param p1, "directory"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 0
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    .line 118
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 166
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Use:"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "   OldExcelExtractor <filename>"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 168
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 170
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;-><init>(Ljava/io/File;)V

    .line 171
    .local v0, "extractor":Lorg/apache/poi/hssf/extractor/OldExcelExtractor;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->close()V

    .line 173
    return-void
.end method

.method private open(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "biffStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/io/BufferedInputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 129
    .local v0, "bis":Ljava/io/BufferedInputStream;
    :goto_0
    invoke-static {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->hasPOIFSHeader(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    new-instance v1, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v1, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    .line 132
    .local v1, "poifs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    .line 135
    nop

    .line 136
    .end local v1    # "poifs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    goto :goto_1

    .line 134
    .restart local v1    # "poifs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    throw v2

    .line 137
    .end local v1    # "poifs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :cond_1
    new-instance v1, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 138
    iput-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    .line 139
    invoke-direct {p0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->prepare()V

    .line 141
    :goto_1
    return-void
.end method

.method private open(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 4
    .param p1, "directory"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Book"

    invoke-virtual {p1, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DocumentNode;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 154
    .local v0, "book":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    goto :goto_0

    .line 151
    .end local v0    # "book":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    :catch_0
    move-exception v1

    .line 153
    .restart local v0    # "book":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lorg/apache/poi/hssf/model/InternalWorkbook;->WORKBOOK_DIR_ENTRY_NAMES:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    .line 156
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    if-eqz v0, :cond_0

    .line 160
    new-instance v1, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 161
    invoke-direct {p0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->prepare()V

    .line 162
    return-void

    .line 157
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No Excel 5/95 Book stream found"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private open(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 145
    return-void
.end method

.method private prepare()V
    .locals 4

    .line 176
    iget-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    iget-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 182
    iget-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v0

    .line 183
    .local v0, "bofSid":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0x209

    if-eq v0, v1, :cond_2

    const/16 v1, 0x409

    if-eq v0, v1, :cond_1

    const/16 v1, 0x809

    if-ne v0, v1, :cond_0

    .line 194
    const/4 v1, 0x5

    iput v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    .line 195
    goto :goto_0

    .line 197
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File does not begin with a BOF, found sid of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    .line 192
    goto :goto_0

    .line 188
    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    .line 189
    goto :goto_0

    .line 185
    :cond_3
    const/4 v1, 0x2

    iput v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    .line 186
    nop

    .line 201
    :goto_0
    new-instance v1, Lorg/apache/poi/hssf/record/BOFRecord;

    iget-object v2, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/BOFRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 202
    .local v1, "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/BOFRecord;->getType()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->fileType:I

    .line 203
    return-void

    .line 177
    .end local v0    # "bofSid":I
    .end local v1    # "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File contains no records!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 314
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    .line 317
    :cond_0
    return-void
.end method

.method public getBiffVersion()I
    .locals 1

    .line 211
    iget v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    return v0
.end method

.method public getFileType()I
    .locals 1

    .line 222
    iget v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->fileType:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 11

    .line 232
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 235
    .local v0, "text":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "codepage":Lorg/apache/poi/hssf/record/CodepageRecord;
    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    .line 239
    :goto_0
    iget-object v8, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v8}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 240
    iget-object v8, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v8}, Lorg/apache/poi/hssf/record/RecordInputStream;->getNextSid()I

    move-result v8

    .line 241
    .local v8, "sid":I
    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v9}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 243
    const/4 v9, 0x4

    const/16 v10, 0xa

    if-eq v8, v9, :cond_a

    const/16 v9, 0x2f

    if-eq v8, v9, :cond_9

    const/16 v9, 0x42

    if-eq v8, v9, :cond_8

    const/16 v9, 0x85

    if-eq v8, v9, :cond_7

    const/16 v9, 0x27e

    if-eq v8, v9, :cond_6

    const/16 v9, 0x406

    if-eq v8, v9, :cond_2

    const/4 v9, 0x6

    if-eq v8, v9, :cond_2

    const/4 v9, 0x7

    if-eq v8, v9, :cond_1

    const/16 v9, 0x203

    if-eq v8, v9, :cond_0

    const/16 v9, 0x204

    if-eq v8, v9, :cond_a

    const/16 v9, 0x206

    if-eq v8, v9, :cond_2

    const/16 v9, 0x207

    if-eq v8, v9, :cond_1

    .line 300
    .local v3, "shr":Lorg/apache/poi/hssf/record/OldSheetRecord;
    .local v4, "sr":Lorg/apache/poi/hssf/record/OldStringRecord;
    .local v5, "nr":Lorg/apache/poi/hssf/record/NumberRecord;
    .local v6, "lr":Lorg/apache/poi/hssf/record/OldLabelRecord;
    .local v7, "rr":Lorg/apache/poi/hssf/record/RKRecord;
    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v9}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v10

    new-array v10, v10, [B

    invoke-virtual {v9, v10}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    goto/16 :goto_1

    .line 271
    .end local v5    # "nr":Lorg/apache/poi/hssf/record/NumberRecord;
    .end local v7    # "rr":Lorg/apache/poi/hssf/record/RKRecord;
    :cond_0
    new-instance v5, Lorg/apache/poi/hssf/record/NumberRecord;

    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v5, v9}, Lorg/apache/poi/hssf/record/NumberRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 272
    .restart local v5    # "nr":Lorg/apache/poi/hssf/record/NumberRecord;
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/NumberRecord;->getValue()D

    move-result-wide v9

    invoke-virtual {p0, v0, v9, v10}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->handleNumericCell(Ljava/lang/StringBuffer;D)V

    .line 273
    goto/16 :goto_1

    .line 264
    .end local v4    # "sr":Lorg/apache/poi/hssf/record/OldStringRecord;
    .end local v5    # "nr":Lorg/apache/poi/hssf/record/NumberRecord;
    :cond_1
    new-instance v4, Lorg/apache/poi/hssf/record/OldStringRecord;

    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v4, v9}, Lorg/apache/poi/hssf/record/OldStringRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 265
    .restart local v4    # "sr":Lorg/apache/poi/hssf/record/OldStringRecord;
    invoke-virtual {v4, v1}, Lorg/apache/poi/hssf/record/OldStringRecord;->setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V

    .line 266
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/OldStringRecord;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 268
    goto/16 :goto_1

    .line 278
    .restart local v5    # "nr":Lorg/apache/poi/hssf/record/NumberRecord;
    :cond_2
    iget v7, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    const/4 v9, 0x5

    if-ne v7, v9, :cond_4

    .line 279
    new-instance v7, Lorg/apache/poi/hssf/record/FormulaRecord;

    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v7, v9}, Lorg/apache/poi/hssf/record/FormulaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 280
    .local v7, "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedResultType()I

    move-result v9

    sget-object v10, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v10}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result v10

    if-ne v9, v10, :cond_3

    .line 281
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/FormulaRecord;->getValue()D

    move-result-wide v9

    invoke-virtual {p0, v0, v9, v10}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->handleNumericCell(Ljava/lang/StringBuffer;D)V

    .line 283
    .end local v7    # "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    :cond_3
    goto :goto_1

    .line 284
    :cond_4
    new-instance v7, Lorg/apache/poi/hssf/record/OldFormulaRecord;

    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v7, v9}, Lorg/apache/poi/hssf/record/OldFormulaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 285
    .local v7, "fr":Lorg/apache/poi/hssf/record/OldFormulaRecord;
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/OldFormulaRecord;->getCachedResultType()I

    move-result v9

    sget-object v10, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v10}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result v10

    if-ne v9, v10, :cond_5

    .line 286
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/OldFormulaRecord;->getValue()D

    move-result-wide v9

    invoke-virtual {p0, v0, v9, v10}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->handleNumericCell(Ljava/lang/StringBuffer;D)V

    .line 289
    .end local v7    # "fr":Lorg/apache/poi/hssf/record/OldFormulaRecord;
    :cond_5
    goto :goto_1

    .line 291
    :cond_6
    new-instance v7, Lorg/apache/poi/hssf/record/RKRecord;

    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v7, v9}, Lorg/apache/poi/hssf/record/RKRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 292
    .local v7, "rr":Lorg/apache/poi/hssf/record/RKRecord;
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/RKRecord;->getRKNumber()D

    move-result-wide v9

    invoke-virtual {p0, v0, v9, v10}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->handleNumericCell(Ljava/lang/StringBuffer;D)V

    .line 293
    goto :goto_1

    .line 248
    .end local v3    # "shr":Lorg/apache/poi/hssf/record/OldSheetRecord;
    .end local v4    # "sr":Lorg/apache/poi/hssf/record/OldStringRecord;
    .end local v5    # "nr":Lorg/apache/poi/hssf/record/NumberRecord;
    .end local v6    # "lr":Lorg/apache/poi/hssf/record/OldLabelRecord;
    .end local v7    # "rr":Lorg/apache/poi/hssf/record/RKRecord;
    :cond_7
    new-instance v3, Lorg/apache/poi/hssf/record/OldSheetRecord;

    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v9}, Lorg/apache/poi/hssf/record/OldSheetRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 249
    .restart local v3    # "shr":Lorg/apache/poi/hssf/record/OldSheetRecord;
    invoke-virtual {v3, v1}, Lorg/apache/poi/hssf/record/OldSheetRecord;->setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V

    .line 250
    const-string v9, "Sheet: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/OldSheetRecord;->getSheetname()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 253
    goto :goto_1

    .line 296
    .restart local v4    # "sr":Lorg/apache/poi/hssf/record/OldStringRecord;
    .restart local v5    # "nr":Lorg/apache/poi/hssf/record/NumberRecord;
    .restart local v6    # "lr":Lorg/apache/poi/hssf/record/OldLabelRecord;
    .restart local v7    # "rr":Lorg/apache/poi/hssf/record/RKRecord;
    :cond_8
    new-instance v9, Lorg/apache/poi/hssf/record/CodepageRecord;

    iget-object v10, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v9, v10}, Lorg/apache/poi/hssf/record/CodepageRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    move-object v1, v9

    .line 297
    goto :goto_1

    .line 245
    .end local v3    # "shr":Lorg/apache/poi/hssf/record/OldSheetRecord;
    .end local v4    # "sr":Lorg/apache/poi/hssf/record/OldStringRecord;
    .end local v5    # "nr":Lorg/apache/poi/hssf/record/NumberRecord;
    .end local v6    # "lr":Lorg/apache/poi/hssf/record/OldLabelRecord;
    .end local v7    # "rr":Lorg/apache/poi/hssf/record/RKRecord;
    :cond_9
    new-instance v2, Lorg/apache/poi/EncryptedDocumentException;

    const-string v3, "Encryption not supported for Old Excel files"

    invoke-direct {v2, v3}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 257
    .restart local v3    # "shr":Lorg/apache/poi/hssf/record/OldSheetRecord;
    :cond_a
    new-instance v6, Lorg/apache/poi/hssf/record/OldLabelRecord;

    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v6, v9}, Lorg/apache/poi/hssf/record/OldLabelRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 258
    .restart local v6    # "lr":Lorg/apache/poi/hssf/record/OldLabelRecord;
    invoke-virtual {v6, v1}, Lorg/apache/poi/hssf/record/OldLabelRecord;->setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V

    .line 259
    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/OldLabelRecord;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 261
    nop

    .line 302
    .end local v3    # "shr":Lorg/apache/poi/hssf/record/OldSheetRecord;
    .end local v6    # "lr":Lorg/apache/poi/hssf/record/OldLabelRecord;
    .end local v8    # "sid":I
    :goto_1
    goto/16 :goto_0

    .line 304
    :cond_b
    invoke-virtual {p0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->close()V

    .line 305
    iput-object v2, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected handleNumericCell(Ljava/lang/StringBuffer;D)V
    .locals 1
    .param p1, "text"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # D

    .line 321
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 322
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 323
    return-void
.end method
