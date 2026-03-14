.class public Lorg/apache/poi/extractor/CommandLineTextExtractor;
.super Ljava/lang/Object;
.source "CommandLineTextExtractor.java"


# static fields
.field public static final DIVIDER:Ljava/lang/String; = "======================="


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    const-string v0, "   ======================="

    array-length v1, p0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 32
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Use:"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "   CommandLineTextExtractor <filename> [filename] [filename]"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 34
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 37
    :cond_0
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 38
    .local v4, "arg":Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "======================="

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v5, "f":Ljava/io/File;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 43
    invoke-static {v5}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Ljava/io/File;)Lorg/apache/poi/POITextExtractor;

    move-result-object v7

    .line 46
    .local v7, "extractor":Lorg/apache/poi/POITextExtractor;
    :try_start_0
    invoke-virtual {v7}, Lorg/apache/poi/POITextExtractor;->getMetadataTextExtractor()Lorg/apache/poi/POITextExtractor;

    move-result-object v8

    .line 49
    .local v8, "metadataExtractor":Lorg/apache/poi/POITextExtractor;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v8}, Lorg/apache/poi/POITextExtractor;->getText()Ljava/lang/String;

    move-result-object v9

    .line 51
    .local v9, "metaData":Ljava/lang/String;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 52
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v7}, Lorg/apache/poi/POITextExtractor;->getText()Ljava/lang/String;

    move-result-object v10

    .line 54
    .local v10, "text":Ljava/lang/String;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 55
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Had "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " characters of metadata and "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " characters of text"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .end local v8    # "metadataExtractor":Lorg/apache/poi/POITextExtractor;
    .end local v9    # "metaData":Ljava/lang/String;
    .end local v10    # "text":Ljava/lang/String;
    invoke-virtual {v7}, Lorg/apache/poi/POITextExtractor;->close()V

    .line 59
    nop

    .line 37
    .end local v4    # "arg":Ljava/lang/String;
    .end local v5    # "f":Ljava/io/File;
    .end local v7    # "extractor":Lorg/apache/poi/POITextExtractor;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    .restart local v4    # "arg":Ljava/lang/String;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v7    # "extractor":Lorg/apache/poi/POITextExtractor;
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lorg/apache/poi/POITextExtractor;->close()V

    throw v0

    .line 61
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    .end local v4    # "arg":Ljava/lang/String;
    .end local v5    # "f":Ljava/io/File;
    .end local v7    # "extractor":Lorg/apache/poi/POITextExtractor;
    :cond_1
    return-void
.end method
