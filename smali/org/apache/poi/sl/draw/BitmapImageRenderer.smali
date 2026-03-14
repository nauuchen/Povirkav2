.class public Lorg/apache/poi/sl/draw/BitmapImageRenderer;
.super Ljava/lang/Object;
.source "BitmapImageRenderer.java"

# interfaces
.implements Lorg/apache/poi/sl/draw/ImageRenderer;


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field protected img:Ljava/awt/image/BufferedImage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lorg/apache/poi/sl/draw/ImageRenderer;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findTruncatedBlackBox(Ljava/awt/image/BufferedImage;II)I
    .locals 4
    .param p0, "img"    # Ljava/awt/image/BufferedImage;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 211
    add-int/lit8 v0, p2, -0x1

    .line 212
    .local v0, "h":I
    :goto_0
    if-lez v0, :cond_2

    .line 213
    add-int/lit8 v1, p1, -0x1

    .local v1, "w":I
    :goto_1
    if-lez v1, :cond_1

    .line 214
    invoke-virtual {p0, v1, v0}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v2

    .line 215
    .local v2, "p":I
    const/high16 v3, -0x1000000

    if-eq v2, v3, :cond_0

    .line 216
    add-int/lit8 v3, v0, 0x1

    return v3

    .line 213
    .end local v2    # "p":I
    :cond_0
    div-int/lit8 v2, p1, 0xa

    sub-int/2addr v1, v2

    goto :goto_1

    .line 212
    .end local v1    # "w":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 220
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private static readImage(Ljava/io/InputStream;Ljava/lang/String;)Ljava/awt/image/BufferedImage;
    .locals 20
    .param p0, "data"    # Ljava/io/InputStream;
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 74
    .local v2, "lastException":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 75
    .local v3, "img":Ljava/awt/image/BufferedImage;
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 81
    :cond_0
    new-instance v0, Ljavax/imageio/stream/MemoryCacheImageInputStream;

    invoke-direct {v0, v1}, Ljavax/imageio/stream/MemoryCacheImageInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v0

    .line 83
    .local v4, "iis":Ljavax/imageio/stream/ImageInputStream;
    :try_start_0
    new-instance v0, Ljavax/imageio/stream/MemoryCacheImageInputStream;

    invoke-direct {v0, v1}, Ljavax/imageio/stream/MemoryCacheImageInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v0

    .line 84
    invoke-interface {v4}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    .line 86
    invoke-static {v4}, Ljavax/imageio/ImageIO;->getImageReaders(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    move-object v5, v0

    .line 87
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/imageio/ImageReader;>;"
    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-nez v3, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 88
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/imageio/ImageReader;

    move-object v10, v0

    .line 89
    .local v10, "reader":Ljavax/imageio/ImageReader;
    invoke-virtual {v10}, Ljavax/imageio/ImageReader;->getDefaultReadParam()Ljavax/imageio/ImageReadParam;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v11, v0

    .line 91
    .local v11, "param":Ljavax/imageio/ImageReadParam;
    const/4 v0, 0x0

    move-object/from16 v19, v2

    move v2, v0

    move-object/from16 v0, v19

    .local v0, "lastException":Ljava/io/IOException;
    .local v2, "mode":I
    :goto_1
    if-nez v3, :cond_d

    const/4 v12, 0x3

    if-ge v2, v12, :cond_d

    .line 92
    const/4 v12, 0x0

    .line 94
    .end local v0    # "lastException":Ljava/io/IOException;
    .local v12, "lastException":Ljava/io/IOException;
    :try_start_1
    invoke-interface {v4}, Ljavax/imageio/stream/ImageInputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    goto :goto_2

    .line 183
    .end local v2    # "mode":I
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/imageio/ImageReader;>;"
    .end local v10    # "reader":Ljavax/imageio/ImageReader;
    .end local v11    # "param":Ljavax/imageio/ImageReadParam;
    :catchall_0
    move-exception v0

    move-object/from16 v7, p1

    move-object v2, v12

    goto/16 :goto_9

    .line 95
    .restart local v2    # "mode":I
    .restart local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/imageio/ImageReader;>;"
    .restart local v10    # "reader":Ljavax/imageio/ImageReader;
    .restart local v11    # "param":Ljavax/imageio/ImageReadParam;
    :catch_0
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 96
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 97
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V

    .line 98
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->available()I

    move-result v13

    invoke-virtual {v1, v13}, Ljava/io/InputStream;->mark(I)V

    .line 99
    invoke-interface {v4}, Ljavax/imageio/stream/ImageInputStream;->close()V

    .line 100
    new-instance v13, Ljavax/imageio/stream/MemoryCacheImageInputStream;

    invoke-direct {v13, v1}, Ljavax/imageio/stream/MemoryCacheImageInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v13

    .line 107
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    invoke-interface {v4}, Ljavax/imageio/stream/ImageInputStream;->mark()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    if-eqz v2, :cond_8

    if-eq v2, v7, :cond_5

    if-eq v2, v8, :cond_1

    goto/16 :goto_5

    .line 136
    :cond_1
    :try_start_3
    invoke-virtual {v10, v4, v9, v7}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    .line 137
    invoke-virtual {v10, v9}, Ljavax/imageio/ImageReader;->getHeight(I)I

    move-result v0

    move v13, v0

    .line 138
    .local v13, "height":I
    invoke-virtual {v10, v9}, Ljavax/imageio/ImageReader;->getWidth(I)I

    move-result v0

    move v14, v0

    .line 140
    .local v14, "width":I
    invoke-virtual {v10, v9}, Ljavax/imageio/ImageReader;->getImageTypes(I)Ljava/util/Iterator;

    move-result-object v0

    move-object v15, v0

    .line 141
    .local v15, "imageTypes":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/imageio/ImageTypeSpecifier;>;"
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/imageio/ImageTypeSpecifier;

    .line 143
    .local v0, "imageTypeSpecifier":Ljavax/imageio/ImageTypeSpecifier;
    invoke-virtual {v0, v14, v13}, Ljavax/imageio/ImageTypeSpecifier;->createBufferedImage(II)Ljava/awt/image/BufferedImage;

    move-result-object v16

    move-object/from16 v3, v16

    .line 144
    invoke-virtual {v11, v3}, Ljavax/imageio/ImageReadParam;->setDestination(Ljava/awt/image/BufferedImage;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    .end local v0    # "imageTypeSpecifier":Ljavax/imageio/ImageTypeSpecifier;
    nop

    .line 151
    :try_start_4
    invoke-virtual {v10, v9, v11}, Ljavax/imageio/ImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 153
    :try_start_5
    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v0

    if-eq v0, v8, :cond_2

    .line 154
    invoke-static {v3, v14, v13}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->findTruncatedBlackBox(Ljava/awt/image/BufferedImage;II)I

    move-result v0

    .line 155
    .local v0, "y":I
    if-ge v0, v13, :cond_2

    .line 156
    new-instance v7, Ljava/awt/image/BufferedImage;

    invoke-direct {v7, v14, v13, v8}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 157
    .local v7, "argbImg":Ljava/awt/image/BufferedImage;
    invoke-virtual {v7}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v17

    move-object/from16 v18, v17

    .line 158
    .local v18, "g":Ljava/awt/Graphics2D;
    move-object/from16 v8, v18

    .end local v18    # "g":Ljava/awt/Graphics2D;
    .local v8, "g":Ljava/awt/Graphics2D;
    invoke-virtual {v8, v9, v9, v14, v0}, Ljava/awt/Graphics2D;->clipRect(IIII)V

    .line 159
    invoke-virtual {v8, v3, v9, v9, v6}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 160
    invoke-virtual {v8}, Ljava/awt/Graphics2D;->dispose()V

    .line 161
    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->flush()V

    .line 162
    move-object v3, v7

    .line 166
    .end local v0    # "y":I
    .end local v7    # "argbImg":Ljava/awt/image/BufferedImage;
    .end local v8    # "g":Ljava/awt/Graphics2D;
    :cond_2
    goto/16 :goto_5

    .line 153
    :catchall_1
    move-exception v0

    move-object v7, v0

    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v0

    const/4 v8, 0x2

    if-eq v0, v8, :cond_3

    .line 154
    invoke-static {v3, v14, v13}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->findTruncatedBlackBox(Ljava/awt/image/BufferedImage;II)I

    move-result v0

    .line 155
    .restart local v0    # "y":I
    if-ge v0, v13, :cond_3

    .line 156
    new-instance v8, Ljava/awt/image/BufferedImage;

    const/4 v6, 0x2

    invoke-direct {v8, v14, v13, v6}, Ljava/awt/image/BufferedImage;-><init>(III)V

    move-object v6, v8

    .line 157
    .local v6, "argbImg":Ljava/awt/image/BufferedImage;
    invoke-virtual {v6}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v8

    .line 158
    .restart local v8    # "g":Ljava/awt/Graphics2D;
    invoke-virtual {v8, v9, v9, v14, v0}, Ljava/awt/Graphics2D;->clipRect(IIII)V

    .line 159
    const/4 v1, 0x0

    invoke-virtual {v8, v3, v9, v9, v1}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 160
    invoke-virtual {v8}, Ljava/awt/Graphics2D;->dispose()V

    .line 161
    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->flush()V

    .line 162
    move-object v1, v6

    move-object v3, v1

    .line 164
    .end local v0    # "y":I
    .end local v6    # "argbImg":Ljava/awt/image/BufferedImage;
    .end local v8    # "g":Ljava/awt/Graphics2D;
    :cond_3
    nop

    .end local v2    # "mode":I
    .end local v3    # "img":Ljava/awt/image/BufferedImage;
    .end local v4    # "iis":Ljavax/imageio/stream/ImageInputStream;
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/imageio/ImageReader;>;"
    .end local v10    # "reader":Ljavax/imageio/ImageReader;
    .end local v11    # "param":Ljavax/imageio/ImageReadParam;
    .end local v12    # "lastException":Ljava/io/IOException;
    .end local p0    # "data":Ljava/io/InputStream;
    .end local p1    # "contentType":Ljava/lang/String;
    throw v7

    .line 146
    .restart local v2    # "mode":I
    .restart local v3    # "img":Ljava/awt/image/BufferedImage;
    .restart local v4    # "iis":Ljavax/imageio/stream/ImageInputStream;
    .restart local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/imageio/ImageReader;>;"
    .restart local v10    # "reader":Ljavax/imageio/ImageReader;
    .restart local v11    # "param":Ljavax/imageio/ImageReadParam;
    .restart local v12    # "lastException":Ljava/io/IOException;
    .restart local p0    # "data":Ljava/io/InputStream;
    .restart local p1    # "contentType":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unable to load even a truncated version of the image."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 147
    goto :goto_5

    .line 120
    .end local v13    # "height":I
    .end local v14    # "width":I
    .end local v15    # "imageTypes":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/imageio/ImageTypeSpecifier;>;"
    :cond_5
    invoke-virtual {v10, v9}, Ljavax/imageio/ImageReader;->getImageTypes(I)Ljava/util/Iterator;

    move-result-object v0

    .line 121
    .local v0, "imageTypes":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/imageio/ImageTypeSpecifier;>;"
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/imageio/ImageTypeSpecifier;

    .line 123
    .local v1, "imageTypeSpecifier":Ljavax/imageio/ImageTypeSpecifier;
    invoke-virtual {v1}, Ljavax/imageio/ImageTypeSpecifier;->getBufferedImageType()I

    move-result v6

    .line 124
    .local v6, "bufferedImageType":I
    const/16 v7, 0xa

    if-ne v6, v7, :cond_6

    .line 125
    invoke-virtual {v11, v1}, Ljavax/imageio/ImageReadParam;->setDestinationType(Ljavax/imageio/ImageTypeSpecifier;)V

    .line 126
    goto :goto_4

    .line 128
    .end local v1    # "imageTypeSpecifier":Ljavax/imageio/ImageTypeSpecifier;
    .end local v6    # "bufferedImageType":I
    :cond_6
    goto :goto_3

    .line 129
    :cond_7
    :goto_4
    const/4 v1, 0x1

    invoke-virtual {v10, v4, v9, v1}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    .line 130
    invoke-virtual {v10, v9, v11}, Ljavax/imageio/ImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    move-object v3, v1

    .line 131
    goto :goto_5

    .line 113
    .end local v0    # "imageTypes":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/imageio/ImageTypeSpecifier;>;"
    :cond_8
    const/4 v1, 0x1

    invoke-virtual {v10, v4, v9, v1}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    .line 114
    invoke-virtual {v10, v9, v11}, Ljavax/imageio/ImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v3, v0

    .line 115
    nop

    .line 178
    :cond_9
    :goto_5
    move-object v0, v12

    goto :goto_7

    .line 174
    :catch_1
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x2

    if-ge v2, v1, :cond_b

    .line 176
    :try_start_6
    new-instance v1, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ImageIO runtime exception - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v2, :cond_a

    const-string v7, "normal"

    goto :goto_6

    :cond_a
    const-string v7, "fallback"

    :goto_6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v1

    .end local v12    # "lastException":Ljava/io/IOException;
    .local v1, "lastException":Ljava/io/IOException;
    goto :goto_7

    .line 175
    .end local v1    # "lastException":Ljava/io/IOException;
    .restart local v12    # "lastException":Ljava/io/IOException;
    :cond_b
    move-object v0, v12

    goto :goto_7

    .line 170
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x2

    if-ge v2, v1, :cond_9

    .line 172
    move-object v12, v0

    goto :goto_5

    .line 91
    .end local v12    # "lastException":Ljava/io/IOException;
    .local v0, "lastException":Ljava/io/IOException;
    :goto_7
    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 103
    .local v0, "e":Ljava/io/IOException;
    .restart local v12    # "lastException":Ljava/io/IOException;
    :cond_c
    move-object v1, v0

    .line 104
    .end local v12    # "lastException":Ljava/io/IOException;
    .restart local v1    # "lastException":Ljava/io/IOException;
    move-object v2, v1

    goto :goto_8

    .line 180
    .end local v1    # "lastException":Ljava/io/IOException;
    .end local v2    # "mode":I
    .local v0, "lastException":Ljava/io/IOException;
    :cond_d
    move-object v2, v0

    .end local v0    # "lastException":Ljava/io/IOException;
    .local v2, "lastException":Ljava/io/IOException;
    :goto_8
    :try_start_7
    invoke-virtual {v10}, Ljavax/imageio/ImageReader;->dispose()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 181
    .end local v10    # "reader":Ljavax/imageio/ImageReader;
    .end local v11    # "param":Ljavax/imageio/ImageReadParam;
    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 183
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/imageio/ImageReader;>;"
    :cond_e
    invoke-interface {v4}, Ljavax/imageio/stream/ImageInputStream;->close()V

    .line 184
    nop

    .line 187
    if-nez v3, :cond_10

    .line 188
    if-nez v2, :cond_f

    .line 193
    sget-object v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Content-type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " is not support. Image ignored."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v0, v1, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 194
    const/4 v1, 0x0

    return-object v1

    .line 191
    :cond_f
    move-object/from16 v7, p1

    throw v2

    .line 198
    :cond_10
    move-object/from16 v7, p1

    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    .line 199
    new-instance v0, Ljava/awt/image/BufferedImage;

    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v6

    invoke-direct {v0, v5, v6, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 200
    .local v0, "argbImg":Ljava/awt/image/BufferedImage;
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getGraphics()Ljava/awt/Graphics;

    move-result-object v1

    .line 201
    .local v1, "g":Ljava/awt/Graphics;
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v9, v9, v5}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 202
    invoke-virtual {v1}, Ljava/awt/Graphics;->dispose()V

    .line 203
    return-object v0

    .line 206
    .end local v0    # "argbImg":Ljava/awt/image/BufferedImage;
    .end local v1    # "g":Ljava/awt/Graphics;
    :cond_11
    return-object v3

    .line 183
    :catchall_2
    move-exception v0

    move-object/from16 v7, p1

    :goto_9
    invoke-interface {v4}, Ljavax/imageio/stream/ImageInputStream;->close()V

    throw v0
.end method


# virtual methods
.method public drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Z
    .locals 1
    .param p1, "graphics"    # Ljava/awt/Graphics2D;
    .param p2, "anchor"    # Ljava/awt/geom/Rectangle2D;

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z

    move-result v0

    return v0
.end method

.method public drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z
    .locals 34
    .param p1, "graphics"    # Ljava/awt/Graphics2D;
    .param p2, "anchor"    # Ljava/awt/geom/Rectangle2D;
    .param p3, "clip"    # Ljava/awt/Insets;

    .line 277
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 279
    :cond_0
    const/4 v2, 0x1

    .line 280
    .local v2, "isClipped":Z
    if-nez p3, :cond_1

    .line 281
    const/4 v2, 0x0

    .line 282
    new-instance v4, Ljava/awt/Insets;

    invoke-direct {v4, v3, v3, v3, v3}, Ljava/awt/Insets;-><init>(IIII)V

    move-object v3, v4

    .end local p3    # "clip":Ljava/awt/Insets;
    .local v3, "clip":Ljava/awt/Insets;
    goto :goto_0

    .line 280
    .end local v3    # "clip":Ljava/awt/Insets;
    .restart local p3    # "clip":Ljava/awt/Insets;
    :cond_1
    move-object/from16 v3, p3

    .line 285
    .end local p3    # "clip":Ljava/awt/Insets;
    .restart local v3    # "clip":Ljava/awt/Insets;
    :goto_0
    iget-object v4, v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    invoke-virtual {v4}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    .line 286
    .local v4, "iw":I
    iget-object v5, v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    invoke-virtual {v5}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    .line 289
    .local v5, "ih":I
    iget v6, v3, Ljava/awt/Insets;->left:I

    const v7, 0x186a0

    sub-int v6, v7, v6

    iget v8, v3, Ljava/awt/Insets;->right:I

    sub-int/2addr v6, v8

    int-to-double v8, v6

    const-wide v10, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v8, v10

    .line 290
    .local v8, "cw":D
    iget v6, v3, Ljava/awt/Insets;->top:I

    sub-int/2addr v7, v6

    iget v6, v3, Ljava/awt/Insets;->bottom:I

    sub-int/2addr v7, v6

    int-to-double v6, v7

    div-double/2addr v6, v10

    .line 291
    .local v6, "ch":D
    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v12

    int-to-double v14, v4

    mul-double v14, v14, v8

    div-double/2addr v12, v14

    .line 292
    .local v12, "sx":D
    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v14

    int-to-double v10, v5

    mul-double v10, v10, v6

    div-double/2addr v14, v10

    .line 293
    .local v14, "sy":D
    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v10

    move-wide/from16 v29, v6

    .end local v6    # "ch":D
    .local v29, "ch":D
    int-to-double v6, v4

    mul-double v6, v6, v12

    move/from16 p3, v4

    .end local v4    # "iw":I
    .local p3, "iw":I
    iget v4, v3, Ljava/awt/Insets;->left:I

    move-wide/from16 v31, v8

    .end local v8    # "cw":D
    .local v31, "cw":D
    int-to-double v8, v4

    mul-double v6, v6, v8

    const-wide v8, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v6, v8

    sub-double/2addr v10, v6

    .line 294
    .local v10, "tx":D
    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v6

    int-to-double v8, v5

    mul-double v8, v8, v14

    iget v4, v3, Ljava/awt/Insets;->top:I

    move-object/from16 v33, v3

    .end local v3    # "clip":Ljava/awt/Insets;
    .local v33, "clip":Ljava/awt/Insets;
    int-to-double v3, v4

    mul-double v8, v8, v3

    const-wide v3, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v8, v3

    sub-double/2addr v6, v8

    .line 296
    .local v6, "ty":D
    new-instance v3, Ljava/awt/geom/AffineTransform;

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    move-object/from16 v16, v3

    move-wide/from16 v17, v12

    move-wide/from16 v23, v14

    move-wide/from16 v25, v10

    move-wide/from16 v27, v6

    invoke-direct/range {v16 .. v28}, Ljava/awt/geom/AffineTransform;-><init>(DDDDDD)V

    .line 298
    .local v3, "at":Ljava/awt/geom/AffineTransform;
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Graphics2D;->getClip()Ljava/awt/Shape;

    move-result-object v4

    .line 299
    .local v4, "clipOld":Ljava/awt/Shape;
    if-eqz v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Rectangle2D;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/awt/Graphics2D;->clip(Ljava/awt/Shape;)V

    .line 300
    :cond_2
    iget-object v8, v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    invoke-virtual {v1, v8, v3}, Ljava/awt/Graphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    .line 301
    invoke-virtual {v1, v4}, Ljava/awt/Graphics2D;->setClip(Ljava/awt/Shape;)V

    .line 303
    const/4 v8, 0x1

    return v8
.end method

.method public getDimension()Ljava/awt/Dimension;
    .locals 3

    .line 245
    iget-object v0, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    if-nez v0, :cond_0

    new-instance v0, Ljava/awt/Dimension;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/awt/Dimension;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/awt/Dimension;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    :goto_0
    return-object v0
.end method

.method public getImage()Ljava/awt/image/BufferedImage;
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    return-object v0
.end method

.method public getImage(Ljava/awt/Dimension;)Ljava/awt/image/BufferedImage;
    .locals 16
    .param p1, "dim"    # Ljava/awt/Dimension;

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    int-to-double v1, v1

    .line 232
    .local v1, "w_old":D
    iget-object v3, v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    int-to-double v3, v3

    .line 233
    .local v3, "h_old":D
    new-instance v5, Ljava/awt/image/BufferedImage;

    double-to-int v6, v1

    double-to-int v7, v3

    const/4 v8, 0x2

    invoke-direct {v5, v6, v7, v8}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 234
    .local v5, "scaled":Ljava/awt/image/BufferedImage;
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v6

    .line 235
    .local v6, "w_new":D
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v9

    .line 236
    .local v9, "h_new":D
    new-instance v11, Ljava/awt/geom/AffineTransform;

    invoke-direct {v11}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 237
    .local v11, "at":Ljava/awt/geom/AffineTransform;
    div-double v12, v6, v1

    div-double v14, v9, v3

    invoke-virtual {v11, v12, v13, v14, v15}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    .line 238
    new-instance v12, Ljava/awt/image/AffineTransformOp;

    invoke-direct {v12, v11, v8}, Ljava/awt/image/AffineTransformOp;-><init>(Ljava/awt/geom/AffineTransform;I)V

    move-object v8, v12

    .line 239
    .local v8, "scaleOp":Ljava/awt/image/AffineTransformOp;
    iget-object v12, v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    invoke-virtual {v8, v12, v5}, Ljava/awt/image/AffineTransformOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    .line 240
    return-object v5
.end method

.method public loadImage(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-static {p1, p2}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->readImage(Ljava/io/InputStream;Ljava/lang/String;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    .line 56
    return-void
.end method

.method public loadImage([BLjava/lang/String;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p2}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->readImage(Ljava/io/InputStream;Ljava/lang/String;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    .line 61
    return-void
.end method

.method public setAlpha(D)V
    .locals 10
    .param p1, "alpha"    # D

    .line 252
    iget-object v0, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->getDimension()Ljava/awt/Dimension;

    move-result-object v0

    .line 255
    .local v0, "dim":Ljava/awt/Dimension;
    new-instance v1, Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 256
    .local v1, "newImg":Ljava/awt/image/BufferedImage;
    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v2

    .line 257
    .local v2, "g":Ljava/awt/Graphics2D;
    new-instance v3, Ljava/awt/image/RescaleOp;

    const/4 v5, 0x4

    new-array v6, v5, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    const/4 v9, 0x1

    aput v8, v6, v9

    aput v8, v6, v4

    const/4 v4, 0x3

    double-to-float v8, p1

    aput v8, v6, v4

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    invoke-direct {v3, v6, v4, v5}, Ljava/awt/image/RescaleOp;-><init>([F[FLjava/awt/RenderingHints;)V

    .line 258
    .local v3, "op":Ljava/awt/image/RescaleOp;
    iget-object v4, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2, v4, v3, v7, v7}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImageOp;II)V

    .line 259
    invoke-virtual {v2}, Ljava/awt/Graphics2D;->dispose()V

    .line 261
    iput-object v1, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    .line 262
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
