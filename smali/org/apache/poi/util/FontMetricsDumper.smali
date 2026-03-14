.class public Lorg/apache/poi/util/FontMetricsDumper;
.super Ljava/lang/Object;
.source "FontMetricsDumper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 18
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object v1, v0

    .line 36
    .local v1, "props":Ljava/util/Properties;
    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/GraphicsEnvironment;->getAllFonts()[Ljava/awt/Font;

    move-result-object v2

    .line 37
    .local v2, "allFonts":[Ljava/awt/Font;
    move-object v0, v2

    .local v0, "arr$":[Ljava/awt/Font;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_6

    aget-object v5, v0, v4

    .line 38
    .local v5, "allFont":Ljava/awt/Font;
    invoke-virtual {v5}, Ljava/awt/Font;->getFontName()Ljava/lang/String;

    move-result-object v6

    .line 40
    .local v6, "fontName":Ljava/lang/String;
    new-instance v7, Ljava/awt/Font;

    const/16 v8, 0xa

    const/4 v9, 0x1

    invoke-direct {v7, v6, v9, v8}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 41
    .local v7, "font":Ljava/awt/Font;
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/awt/Toolkit;->getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;

    move-result-object v8

    .line 42
    .local v8, "fontMetrics":Ljava/awt/FontMetrics;
    invoke-virtual {v8}, Ljava/awt/FontMetrics;->getHeight()I

    move-result v9

    .line 44
    .local v9, "fontHeight":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "font."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ".height"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v10, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v10, "characters":Ljava/lang/StringBuilder;
    const/16 v12, 0x61

    .local v12, "c":C
    :goto_1
    const/16 v13, 0x7a

    const-string v14, ", "

    if-gt v12, v13, :cond_0

    .line 47
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    add-int/lit8 v13, v12, 0x1

    int-to-char v12, v13

    goto :goto_1

    .line 49
    .end local v12    # "c":C
    :cond_0
    const/16 v12, 0x41

    .restart local v12    # "c":C
    :goto_2
    const/16 v15, 0x5a

    if-gt v12, v15, :cond_1

    .line 50
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    add-int/lit8 v15, v12, 0x1

    int-to-char v12, v15

    goto :goto_2

    .line 52
    .end local v12    # "c":C
    :cond_1
    const/16 v12, 0x30

    .restart local v12    # "c":C
    :goto_3
    const/16 v15, 0x39

    if-gt v12, v15, :cond_2

    .line 53
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    add-int/lit8 v15, v12, 0x1

    int-to-char v12, v15

    const/16 v15, 0x5a

    goto :goto_3

    .line 55
    .end local v12    # "c":C
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v12, "widths":Ljava/lang/StringBuilder;
    const/16 v17, 0x61

    move/from16 v15, v17

    .local v15, "c":C
    :goto_4
    if-gt v15, v13, :cond_3

    .line 57
    invoke-virtual {v8}, Ljava/awt/FontMetrics;->getWidths()[I

    move-result-object v17

    aget v13, v17, v15

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    add-int/lit8 v13, v15, 0x1

    int-to-char v15, v13

    const/16 v13, 0x7a

    goto :goto_4

    .line 59
    .end local v15    # "c":C
    :cond_3
    const/16 v13, 0x41

    .local v13, "c":C
    :goto_5
    const/16 v15, 0x5a

    if-gt v13, v15, :cond_4

    .line 60
    invoke-virtual {v8}, Ljava/awt/FontMetrics;->getWidths()[I

    move-result-object v16

    aget v15, v16, v13

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    add-int/lit8 v15, v13, 0x1

    int-to-char v13, v15

    goto :goto_5

    .line 62
    .end local v13    # "c":C
    :cond_4
    const/16 v13, 0x30

    .restart local v13    # "c":C
    :goto_6
    const/16 v15, 0x39

    if-gt v13, v15, :cond_5

    .line 63
    invoke-virtual {v8}, Ljava/awt/FontMetrics;->getWidths()[I

    move-result-object v16

    aget v15, v16, v13

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    add-int/lit8 v15, v13, 0x1

    int-to-char v13, v15

    goto :goto_6

    .line 65
    .end local v13    # "c":C
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".characters"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ".widths"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v11, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .end local v5    # "allFont":Ljava/awt/Font;
    .end local v6    # "fontName":Ljava/lang/String;
    .end local v7    # "font":Ljava/awt/Font;
    .end local v8    # "fontMetrics":Ljava/awt/FontMetrics;
    .end local v9    # "fontHeight":I
    .end local v10    # "characters":Ljava/lang/StringBuilder;
    .end local v12    # "widths":Ljava/lang/StringBuilder;
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 69
    .end local v0    # "arr$":[Ljava/awt/Font;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_6
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v3, "font_metrics.properties"

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 71
    .local v3, "fileOut":Ljava/io/OutputStream;
    :try_start_0
    const-string v0, "Font Metrics"

    invoke-virtual {v1, v3, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 74
    nop

    .line 75
    return-void

    .line 73
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    throw v0
.end method
