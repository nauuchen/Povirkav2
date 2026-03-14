.class public Lorg/apache/poi/xslf/util/PPTX2PNG;
.super Ljava/lang/Object;
.source "PPTX2PNG.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 26
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    move-object/from16 v1, p0

    array-length v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 63
    invoke-static {v2}, Lorg/apache/poi/xslf/util/PPTX2PNG;->usage(Ljava/lang/String;)V

    .line 64
    return-void

    .line 67
    :cond_0
    const-string v0, "-1"

    .line 68
    .local v0, "slidenumStr":Ljava/lang/String;
    const/high16 v3, 0x3f800000    # 1.0f

    .line 69
    .local v3, "scale":F
    const/4 v4, 0x0

    .line 70
    .local v4, "file":Ljava/io/File;
    const-string v5, "png"

    .line 71
    .local v5, "format":Ljava/lang/String;
    const/4 v6, 0x0

    .line 72
    .local v6, "outdir":Ljava/io/File;
    const/4 v7, 0x0

    .line 74
    .local v7, "quiet":Z
    const/4 v8, 0x0

    move/from16 v25, v3

    move-object v3, v0

    move-object v0, v6

    move-object v6, v5

    move-object v5, v4

    move/from16 v4, v25

    .local v0, "outdir":Ljava/io/File;
    .local v3, "slidenumStr":Ljava/lang/String;
    .local v4, "scale":F
    .local v5, "file":Ljava/io/File;
    .local v6, "format":Ljava/lang/String;
    .local v8, "i":I
    :goto_0
    array-length v9, v1

    const/4 v10, 0x1

    if-ge v8, v9, :cond_7

    .line 75
    aget-object v9, v1, v8

    const-string v11, "-"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 76
    aget-object v9, v1, v8

    const-string v11, "-scale"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 77
    add-int/lit8 v8, v8, 0x1

    aget-object v9, v1, v8

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    goto :goto_1

    .line 78
    :cond_1
    aget-object v9, v1, v8

    const-string v11, "-slide"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 79
    add-int/lit8 v8, v8, 0x1

    aget-object v3, v1, v8

    goto :goto_1

    .line 80
    :cond_2
    aget-object v9, v1, v8

    const-string v11, "-format"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 81
    add-int/lit8 v8, v8, 0x1

    aget-object v6, v1, v8

    goto :goto_1

    .line 82
    :cond_3
    aget-object v9, v1, v8

    const-string v11, "-outdir"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 83
    new-instance v9, Ljava/io/File;

    add-int/lit8 v8, v8, 0x1

    aget-object v11, v1, v8

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v9

    goto :goto_1

    .line 84
    :cond_4
    aget-object v9, v1, v8

    const-string v11, "-quiet"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 85
    const/4 v7, 0x1

    goto :goto_1

    .line 88
    :cond_5
    new-instance v9, Ljava/io/File;

    aget-object v11, v1, v8

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v9

    .line 74
    :cond_6
    :goto_1
    add-int/2addr v8, v10

    goto :goto_0

    .line 92
    .end local v8    # "i":I
    :cond_7
    if-eqz v5, :cond_16

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_8

    move-object/from16 v18, v3

    move/from16 v22, v7

    goto/16 :goto_9

    .line 97
    :cond_8
    if-eqz v6, :cond_15

    const-string v8, "^(png|gif|jpg|null)$"

    invoke-virtual {v6, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    move-object/from16 v18, v3

    move/from16 v22, v7

    goto/16 :goto_8

    .line 102
    :cond_9
    if-nez v0, :cond_a

    .line 103
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    move-object v8, v0

    goto :goto_2

    .line 102
    :cond_a
    move-object v8, v0

    .line 106
    .end local v0    # "outdir":Ljava/io/File;
    .local v8, "outdir":Ljava/io/File;
    :goto_2
    const-string v0, "null"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_c

    .line 107
    :cond_b
    const-string v0, "Output directory doesn\'t exist"

    invoke-static {v0}, Lorg/apache/poi/xslf/util/PPTX2PNG;->usage(Ljava/lang/String;)V

    .line 108
    return-void

    .line 111
    :cond_c
    const/4 v9, 0x0

    cmpg-float v9, v4, v9

    if-gez v9, :cond_d

    .line 112
    const-string v0, "Invalid scale given"

    invoke-static {v0}, Lorg/apache/poi/xslf/util/PPTX2PNG;->usage(Ljava/lang/String;)V

    .line 113
    return-void

    .line 116
    :cond_d
    if-nez v7, :cond_e

    .line 117
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Processing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    :cond_e
    invoke-static {v5, v2, v10}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object v2

    .line 121
    .local v2, "ss":Lorg/apache/poi/sl/usermodel/SlideShow;, "Lorg/apache/poi/sl/usermodel/SlideShow<**>;"
    :try_start_0
    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/SlideShow;->getSlides()Ljava/util/List;

    move-result-object v9

    .line 123
    .local v9, "slides":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/poi/sl/usermodel/Slide<**>;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11, v3}, Lorg/apache/poi/xslf/util/PPTX2PNG;->slideIndexes(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v11

    .line 125
    .local v11, "slidenum":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v12, :cond_f

    .line 126
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "slidenum must be either -1 (for all) or within range: [1.."

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "] for "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/util/PPTX2PNG;->usage(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/SlideShow;->close()V

    return-void

    .end local v9    # "slides":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/poi/sl/usermodel/Slide<**>;>;"
    .end local v11    # "slidenum":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v22, v7

    goto/16 :goto_7

    .line 130
    .restart local v9    # "slides":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/poi/sl/usermodel/Slide<**>;>;"
    .restart local v11    # "slidenum":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_f
    :try_start_2
    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/SlideShow;->getPageSize()Ljava/awt/Dimension;

    move-result-object v12

    .line 131
    .local v12, "pgsize":Ljava/awt/Dimension;
    iget v13, v12, Ljava/awt/Dimension;->width:I

    int-to-float v13, v13

    mul-float v13, v13, v4

    float-to-int v13, v13

    .line 132
    .local v13, "width":I
    iget v14, v12, Ljava/awt/Dimension;->height:I

    int-to-float v14, v14

    mul-float v14, v14, v4

    float-to-int v14, v14

    .line 134
    .local v14, "height":I
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_13

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move-object/from16 v17, v16

    .line 135
    .local v17, "slideNo":Ljava/lang/Integer;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/poi/sl/usermodel/Slide;

    .line 136
    .local v10, "slide":Lorg/apache/poi/sl/usermodel/Slide;, "Lorg/apache/poi/sl/usermodel/Slide<**>;"
    invoke-interface {v10}, Lorg/apache/poi/sl/usermodel/Slide;->getTitle()Ljava/lang/String;

    move-result-object v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v19, v18

    .line 137
    .local v19, "title":Ljava/lang/String;
    const-string v1, ""

    if-nez v7, :cond_11

    .line 138
    move-object/from16 v18, v3

    .end local v3    # "slidenumStr":Ljava/lang/String;
    .local v18, "slidenumStr":Ljava/lang/String;
    :try_start_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v20, v9

    .end local v9    # "slides":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/poi/sl/usermodel/Slide<**>;>;"
    .local v20, "slides":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/poi/sl/usermodel/Slide<**>;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v11

    .end local v11    # "slidenum":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v21, "slidenum":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const-string v11, "Rendering slide "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v11, v17

    .end local v17    # "slideNo":Ljava/lang/Integer;
    .local v11, "slideNo":Ljava/lang/Integer;
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v17, v12

    move-object/from16 v12, v19

    .end local v19    # "title":Ljava/lang/String;
    .local v12, "title":Ljava/lang/String;
    .local v17, "pgsize":Ljava/awt/Dimension;
    if-nez v12, :cond_10

    move/from16 v22, v7

    move-object/from16 v19, v15

    move-object v7, v1

    goto :goto_4

    :cond_10
    move-object/from16 v19, v15

    .end local v15    # "i$":Ljava/util/Iterator;
    .local v19, "i$":Ljava/util/Iterator;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v22, v7

    .end local v7    # "quiet":Z
    .local v22, "quiet":Z
    :try_start_4
    const-string v7, ": "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 168
    .end local v10    # "slide":Lorg/apache/poi/sl/usermodel/Slide;, "Lorg/apache/poi/sl/usermodel/Slide<**>;"
    .end local v11    # "slideNo":Ljava/lang/Integer;
    .end local v12    # "title":Ljava/lang/String;
    .end local v13    # "width":I
    .end local v14    # "height":I
    .end local v17    # "pgsize":Ljava/awt/Dimension;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "slides":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/poi/sl/usermodel/Slide<**>;>;"
    .end local v21    # "slidenum":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v22    # "quiet":Z
    .restart local v7    # "quiet":Z
    :catchall_1
    move-exception v0

    move/from16 v22, v7

    .end local v7    # "quiet":Z
    .restart local v22    # "quiet":Z
    goto/16 :goto_7

    .line 137
    .end local v18    # "slidenumStr":Ljava/lang/String;
    .end local v22    # "quiet":Z
    .restart local v3    # "slidenumStr":Ljava/lang/String;
    .restart local v7    # "quiet":Z
    .restart local v9    # "slides":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/poi/sl/usermodel/Slide<**>;>;"
    .restart local v10    # "slide":Lorg/apache/poi/sl/usermodel/Slide;, "Lorg/apache/poi/sl/usermodel/Slide<**>;"
    .local v11, "slidenum":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v12, "pgsize":Ljava/awt/Dimension;
    .restart local v13    # "width":I
    .restart local v14    # "height":I
    .restart local v15    # "i$":Ljava/util/Iterator;
    .local v17, "slideNo":Ljava/lang/Integer;
    .local v19, "title":Ljava/lang/String;
    :cond_11
    move-object/from16 v18, v3

    move/from16 v22, v7

    move-object/from16 v20, v9

    move-object/from16 v21, v11

    move-object/from16 v11, v17

    move-object/from16 v17, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v15

    .line 141
    .end local v3    # "slidenumStr":Ljava/lang/String;
    .end local v7    # "quiet":Z
    .end local v9    # "slides":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/poi/sl/usermodel/Slide<**>;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    .local v11, "slideNo":Ljava/lang/Integer;
    .local v12, "title":Ljava/lang/String;
    .local v17, "pgsize":Ljava/awt/Dimension;
    .restart local v18    # "slidenumStr":Ljava/lang/String;
    .local v19, "i$":Ljava/util/Iterator;
    .restart local v20    # "slides":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/poi/sl/usermodel/Slide<**>;>;"
    .restart local v21    # "slidenum":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v22    # "quiet":Z
    :goto_5
    new-instance v3, Ljava/awt/image/BufferedImage;

    const/4 v7, 0x2

    invoke-direct {v3, v13, v14, v7}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 142
    .local v3, "img":Ljava/awt/image/BufferedImage;
    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v9

    .line 143
    .local v9, "graphics":Ljava/awt/Graphics2D;
    invoke-static {v9}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v15

    invoke-virtual {v15, v9}, Lorg/apache/poi/sl/draw/DrawFactory;->fixFonts(Ljava/awt/Graphics2D;)V

    .line 146
    sget-object v15, Ljava/awt/RenderingHints;->KEY_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    sget-object v7, Ljava/awt/RenderingHints;->VALUE_ANTIALIAS_ON:Ljava/lang/Object;

    invoke-virtual {v9, v15, v7}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 147
    sget-object v7, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v15, Ljava/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    invoke-virtual {v9, v7, v15}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 148
    sget-object v7, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    sget-object v15, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BICUBIC:Ljava/lang/Object;

    invoke-virtual {v9, v7, v15}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 149
    sget-object v7, Ljava/awt/RenderingHints;->KEY_FRACTIONALMETRICS:Ljava/awt/RenderingHints$Key;

    sget-object v15, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

    invoke-virtual {v9, v7, v15}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 151
    move-object v15, v12

    move v7, v13

    .end local v12    # "title":Ljava/lang/String;
    .end local v13    # "width":I
    .local v7, "width":I
    .local v15, "title":Ljava/lang/String;
    float-to-double v12, v4

    move/from16 v23, v14

    move-object/from16 v24, v15

    .end local v14    # "height":I
    .end local v15    # "title":Ljava/lang/String;
    .local v23, "height":I
    .local v24, "title":Ljava/lang/String;
    float-to-double v14, v4

    invoke-virtual {v9, v12, v13, v14, v15}, Ljava/awt/Graphics2D;->scale(DD)V

    .line 154
    invoke-interface {v10, v9}, Lorg/apache/poi/sl/usermodel/Slide;->draw(Ljava/awt/Graphics2D;)V

    .line 157
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 158
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, ".pptx?"

    invoke-virtual {v12, v13, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "outname":Ljava/lang/String;
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v13, "%1$s-%2$04d.%3$s"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    const/4 v15, 0x1

    aput-object v11, v14, v15

    const/16 v16, 0x2

    aput-object v6, v14, v16

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v1, v12

    .line 160
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v8, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    .local v12, "outfile":Ljava/io/File;
    invoke-static {v3, v6, v12}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/File;)Z

    goto :goto_6

    .line 157
    .end local v1    # "outname":Ljava/lang/String;
    .end local v12    # "outfile":Ljava/io/File;
    :cond_12
    const/4 v15, 0x1

    .line 164
    :goto_6
    invoke-virtual {v9}, Ljava/awt/Graphics2D;->dispose()V

    .line 165
    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 166
    .end local v3    # "img":Ljava/awt/image/BufferedImage;
    .end local v9    # "graphics":Ljava/awt/Graphics2D;
    .end local v10    # "slide":Lorg/apache/poi/sl/usermodel/Slide;, "Lorg/apache/poi/sl/usermodel/Slide<**>;"
    .end local v11    # "slideNo":Ljava/lang/Integer;
    .end local v24    # "title":Ljava/lang/String;
    move-object/from16 v1, p0

    move v13, v7

    move-object/from16 v12, v17

    move-object/from16 v3, v18

    move-object/from16 v15, v19

    move-object/from16 v9, v20

    move-object/from16 v11, v21

    move/from16 v7, v22

    move/from16 v14, v23

    const/4 v10, 0x1

    goto/16 :goto_3

    .line 168
    .end local v7    # "width":I
    .end local v17    # "pgsize":Ljava/awt/Dimension;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "slides":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/poi/sl/usermodel/Slide<**>;>;"
    .end local v21    # "slidenum":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v23    # "height":I
    :catchall_2
    move-exception v0

    goto :goto_7

    .line 134
    .end local v18    # "slidenumStr":Ljava/lang/String;
    .end local v22    # "quiet":Z
    .local v3, "slidenumStr":Ljava/lang/String;
    .local v7, "quiet":Z
    .local v9, "slides":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/poi/sl/usermodel/Slide<**>;>;"
    .local v11, "slidenum":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v12, "pgsize":Ljava/awt/Dimension;
    .restart local v13    # "width":I
    .restart local v14    # "height":I
    .local v15, "i$":Ljava/util/Iterator;
    :cond_13
    move-object/from16 v18, v3

    move/from16 v22, v7

    move-object/from16 v20, v9

    move-object/from16 v21, v11

    move-object/from16 v17, v12

    move v7, v13

    move/from16 v23, v14

    move-object/from16 v19, v15

    .line 168
    .end local v3    # "slidenumStr":Ljava/lang/String;
    .end local v7    # "quiet":Z
    .end local v9    # "slides":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/poi/sl/usermodel/Slide<**>;>;"
    .end local v11    # "slidenum":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v12    # "pgsize":Ljava/awt/Dimension;
    .end local v13    # "width":I
    .end local v14    # "height":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .restart local v18    # "slidenumStr":Ljava/lang/String;
    .restart local v22    # "quiet":Z
    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/SlideShow;->close()V

    .line 169
    nop

    .line 171
    if-nez v22, :cond_14

    .line 172
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Done"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 174
    :cond_14
    return-void

    .line 168
    .end local v18    # "slidenumStr":Ljava/lang/String;
    .end local v22    # "quiet":Z
    .restart local v3    # "slidenumStr":Ljava/lang/String;
    .restart local v7    # "quiet":Z
    :catchall_3
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v22, v7

    .end local v3    # "slidenumStr":Ljava/lang/String;
    .end local v7    # "quiet":Z
    .restart local v18    # "slidenumStr":Ljava/lang/String;
    .restart local v22    # "quiet":Z
    :goto_7
    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/SlideShow;->close()V

    throw v0

    .line 97
    .end local v2    # "ss":Lorg/apache/poi/sl/usermodel/SlideShow;, "Lorg/apache/poi/sl/usermodel/SlideShow<**>;"
    .end local v8    # "outdir":Ljava/io/File;
    .end local v18    # "slidenumStr":Ljava/lang/String;
    .end local v22    # "quiet":Z
    .restart local v0    # "outdir":Ljava/io/File;
    .restart local v3    # "slidenumStr":Ljava/lang/String;
    .restart local v7    # "quiet":Z
    :cond_15
    move-object/from16 v18, v3

    move/from16 v22, v7

    .line 98
    .end local v3    # "slidenumStr":Ljava/lang/String;
    .end local v7    # "quiet":Z
    .restart local v18    # "slidenumStr":Ljava/lang/String;
    .restart local v22    # "quiet":Z
    :goto_8
    const-string v1, "Invalid format given"

    invoke-static {v1}, Lorg/apache/poi/xslf/util/PPTX2PNG;->usage(Ljava/lang/String;)V

    .line 99
    return-void

    .line 92
    .end local v18    # "slidenumStr":Ljava/lang/String;
    .end local v22    # "quiet":Z
    .restart local v3    # "slidenumStr":Ljava/lang/String;
    .restart local v7    # "quiet":Z
    :cond_16
    move-object/from16 v18, v3

    move/from16 v22, v7

    .line 93
    .end local v3    # "slidenumStr":Ljava/lang/String;
    .end local v7    # "quiet":Z
    .restart local v18    # "slidenumStr":Ljava/lang/String;
    .restart local v22    # "quiet":Z
    :goto_9
    const-string v1, "File not specified or it doesn\'t exist"

    invoke-static {v1}, Lorg/apache/poi/xslf/util/PPTX2PNG;->usage(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private static slideIndexes(ILjava/lang/String;)Ljava/util/Set;
    .locals 11
    .param p0, "slideCount"    # I
    .param p1, "range"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 178
    .local v0, "slideIdx":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const-string v1, "-1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto/16 :goto_7

    .line 183
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v2, :cond_9

    aget-object v4, v1, v3

    .line 184
    .local v4, "subrange":Ljava/lang/String;
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "idx":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v7, v9, :cond_4

    const/4 v5, 0x2

    if-eq v7, v5, :cond_2

    .line 187
    goto :goto_6

    .line 202
    :cond_2
    aget-object v5, v6, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, p0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 203
    .local v5, "startIdx":I
    aget-object v7, v6, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7, p0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 204
    .local v7, "endIdx":I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .local v8, "i":I
    :goto_2
    if-ge v8, v7, :cond_3

    .line 205
    add-int/lit8 v9, v8, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 207
    .end local v8    # "i":I
    :cond_3
    goto :goto_6

    .line 189
    .end local v5    # "startIdx":I
    .end local v7    # "endIdx":I
    :cond_4
    aget-object v7, v6, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 190
    .local v7, "subidx":I
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 191
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_3

    :cond_5
    move v8, v7

    .line 192
    .local v8, "startIdx":I
    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, p0

    goto :goto_4

    :cond_6
    invoke-static {v7, p0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 193
    .local v5, "endIdx":I
    :goto_4
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .local v9, "i":I
    :goto_5
    if-ge v9, v5, :cond_7

    .line 194
    add-int/lit8 v10, v9, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 196
    .end local v5    # "endIdx":I
    .end local v8    # "startIdx":I
    .end local v9    # "i":I
    :cond_7
    goto :goto_6

    .line 197
    :cond_8
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    nop

    .line 183
    .end local v4    # "subrange":Ljava/lang/String;
    .end local v6    # "idx":[Ljava/lang/String;
    .end local v7    # "subidx":I
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 212
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_9
    :goto_7
    return-object v0
.end method

.method static usage(Ljava/lang/String;)V
    .locals 3
    .param p0, "error"    # Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Usage: PPTX2PNG [options] <ppt or pptx file>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Options:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    -scale <float>   scale factor\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    -slide <integer> 1-based index of a slide to render\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    -format <type>   png,gif,jpg (,null for testing)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    -outdir <dir>    output directory, defaults to origin of the ppt/pptx file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    -quiet           do not write to console (for normal processing)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    return-void
.end method
