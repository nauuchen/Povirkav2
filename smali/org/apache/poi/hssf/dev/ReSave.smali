.class public Lorg/apache/poi/hssf/dev/ReSave;
.super Ljava/lang/Object;
.source "ReSave.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 15
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    const-string v0, "done"

    const/4 v1, 0x0

    .line 39
    .local v1, "initDrawing":Z
    const/4 v2, 0x0

    .line 40
    .local v2, "saveToMemory":Z
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 41
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    move-object v4, p0

    .local v4, "arr$":[Ljava/lang/String;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 42
    .local v7, "filename":Ljava/lang/String;
    const-string v8, "-dg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 43
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 44
    :cond_0
    const-string v8, "-bos"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 45
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 47
    :cond_1
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reading "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 48
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 49
    .local v8, "is":Ljava/io/FileInputStream;
    new-instance v9, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v9, v8}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Ljava/io/InputStream;)V

    .line 51
    .local v9, "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    :try_start_0
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual {v9}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v12

    if-ge v11, v12, :cond_3

    .line 54
    invoke-virtual {v9, v11}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v12

    .line 55
    .local v12, "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    if-eqz v1, :cond_2

    .line 56
    invoke-virtual {v12}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 53
    .end local v12    # "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 61
    .end local v11    # "i":I
    :cond_3
    if-eqz v2, :cond_4

    .line 62
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 63
    move-object v10, v3

    .local v10, "os":Ljava/io/OutputStream;
    goto :goto_2

    .line 65
    .end local v10    # "os":Ljava/io/OutputStream;
    :cond_4
    const-string v11, ".xls"

    const-string v12, "-saved.xls"

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 66
    .local v11, "outputFile":Ljava/lang/String;
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "saving to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 67
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71
    .end local v11    # "outputFile":Ljava/lang/String;
    .restart local v10    # "os":Ljava/io/OutputStream;
    :goto_2
    :try_start_1
    invoke-virtual {v9, v10}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->write(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :try_start_2
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 74
    nop

    .line 75
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    .end local v10    # "os":Ljava/io/OutputStream;
    invoke-virtual {v9}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->close()V

    .line 78
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 79
    nop

    .line 41
    .end local v7    # "filename":Ljava/lang/String;
    .end local v8    # "is":Ljava/io/FileInputStream;
    .end local v9    # "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 73
    .restart local v7    # "filename":Ljava/lang/String;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .restart local v10    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .end local v1    # "initDrawing":Z
    .end local v2    # "saveToMemory":Z
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    .end local v7    # "filename":Ljava/lang/String;
    .end local v8    # "is":Ljava/io/FileInputStream;
    .end local v9    # "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .end local p0    # "args":[Ljava/lang/String;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    .end local v10    # "os":Ljava/io/OutputStream;
    .restart local v1    # "initDrawing":Z
    .restart local v2    # "saveToMemory":Z
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v5    # "len$":I
    .restart local v6    # "i$":I
    .restart local v7    # "filename":Ljava/lang/String;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .restart local p0    # "args":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    invoke-virtual {v9}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->close()V

    .line 78
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    throw v0

    .line 82
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    .end local v7    # "filename":Ljava/lang/String;
    .end local v8    # "is":Ljava/io/FileInputStream;
    .end local v9    # "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    :cond_5
    return-void
.end method
