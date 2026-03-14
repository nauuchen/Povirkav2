.class public Lorg/apache/poi/poifs/macros/VBAMacroExtractor;
.super Ljava/lang/Object;
.source "VBAMacroExtractor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    array-length v0, p0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Use:"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "   VBAMacroExtractor <office.doc> [output]"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "If an output directory is given, macros are written there"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Otherwise they are output to the screen"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 47
    :cond_0
    new-instance v0, Ljava/io/File;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "input":Ljava/io/File;
    const/4 v2, 0x0

    .line 49
    .local v2, "output":Ljava/io/File;
    array-length v3, p0

    if-le v3, v1, :cond_1

    .line 50
    new-instance v3, Ljava/io/File;

    aget-object v1, p0, v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 53
    :cond_1
    new-instance v1, Lorg/apache/poi/poifs/macros/VBAMacroExtractor;

    invoke-direct {v1}, Lorg/apache/poi/poifs/macros/VBAMacroExtractor;-><init>()V

    .line 54
    .local v1, "extractor":Lorg/apache/poi/poifs/macros/VBAMacroExtractor;
    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/poifs/macros/VBAMacroExtractor;->extract(Ljava/io/File;Ljava/io/File;)V

    .line 55
    return-void
.end method


# virtual methods
.method public extract(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p1, "input"    # Ljava/io/File;
    .param p2, "outputDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    const-string v0, ".vba"

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/poifs/macros/VBAMacroExtractor;->extract(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public extract(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 16
    .param p1, "input"    # Ljava/io/File;
    .param p2, "outputDir"    # Ljava/io/File;
    .param p3, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 72
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Extracting VBA Macros from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 73
    if-eqz v1, :cond_2

    .line 74
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Output directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " could not be created"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_1
    :goto_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 79
    :cond_2
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "STDOUT"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    :goto_1
    new-instance v2, Lorg/apache/poi/poifs/macros/VBAMacroReader;

    invoke-direct {v2, v0}, Lorg/apache/poi/poifs/macros/VBAMacroReader;-><init>(Ljava/io/File;)V

    .line 83
    .local v2, "reader":Lorg/apache/poi/poifs/macros/VBAMacroReader;
    invoke-virtual {v2}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readMacros()Ljava/util/Map;

    move-result-object v3

    .line 84
    .local v3, "macros":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->close()V

    .line 86
    const-string v4, "---------------------------------------"

    .line 87
    .local v4, "divider":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "---------------------------------------"

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 88
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 89
    .local v8, "moduleName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 90
    .local v9, "moduleCode":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 91
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v11, p3

    goto :goto_3

    .line 96
    :cond_3
    new-instance v7, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v11, p3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    .local v7, "out":Ljava/io/File;
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 98
    .local v10, "fout":Ljava/io/FileOutputStream;
    new-instance v12, Ljava/io/OutputStreamWriter;

    sget-object v13, Lorg/apache/poi/util/StringUtil;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v12, v10, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 99
    .local v12, "fwriter":Ljava/io/OutputStreamWriter;
    invoke-virtual {v12, v9}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v12}, Ljava/io/OutputStreamWriter;->close()V

    .line 101
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 102
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Extracted "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "out":Ljava/io/File;
    .end local v8    # "moduleName":Ljava/lang/String;
    .end local v9    # "moduleCode":Ljava/lang/String;
    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .end local v12    # "fwriter":Ljava/io/OutputStreamWriter;
    :goto_3
    goto :goto_2

    .line 87
    :cond_4
    move-object/from16 v11, p3

    .line 105
    .end local v5    # "i$":Ljava/util/Iterator;
    if-nez v1, :cond_5

    .line 106
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    :cond_5
    return-void

    .line 71
    .end local v2    # "reader":Lorg/apache/poi/poifs/macros/VBAMacroReader;
    .end local v3    # "macros":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "divider":Ljava/lang/String;
    :cond_6
    move-object/from16 v11, p3

    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
