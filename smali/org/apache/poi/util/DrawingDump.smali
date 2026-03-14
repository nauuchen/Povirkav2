.class public Lorg/apache/poi/util/DrawingDump;
.super Ljava/lang/Object;
.source "DrawingDump.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 39
    .local v0, "osw":Ljava/io/OutputStreamWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 40
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v2, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    new-instance v3, Ljava/io/File;

    const/4 v4, 0x0

    aget-object v4, p0, v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;)V

    .line 41
    .local v2, "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v3, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    .line 43
    .local v3, "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    :try_start_0
    const-string v4, "Drawing group:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 44
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->dumpDrawingGroupRecords(Z)V

    .line 46
    const/4 v5, 0x1

    .line 47
    .local v5, "i":I
    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/ss/usermodel/Sheet;

    .line 49
    .local v7, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sheet "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    move-object v8, v7

    check-cast v8, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v8, v4, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->dumpDrawingRecords(ZLjava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v7    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    goto :goto_0

    .line 53
    .end local v5    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->close()V

    .line 54
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    .line 55
    nop

    .line 56
    return-void

    .line 53
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->close()V

    .line 54
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    throw v4
.end method
