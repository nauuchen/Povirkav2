.class public Lorg/apache/poi/sl/draw/DrawPictureShape;
.super Lorg/apache/poi/sl/draw/DrawSimpleShape;
.source "DrawPictureShape.java"


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field private static final WMF_IMAGE_RENDERER:Ljava/lang/String; = "org.apache.poi.hwmf.draw.HwmfSLImageRenderer"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lorg/apache/poi/sl/draw/DrawPictureShape;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/draw/DrawPictureShape;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/usermodel/PictureShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/PictureShape<",
            "**>;)V"
        }
    .end annotation

    .line 39
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/PictureShape;, "Lorg/apache/poi/sl/usermodel/PictureShape<**>;"
    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawSimpleShape;-><init>(Lorg/apache/poi/sl/usermodel/SimpleShape;)V

    .line 40
    return-void
.end method

.method public static getImageRenderer(Ljava/awt/Graphics2D;Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;
    .locals 7
    .param p0, "graphics"    # Ljava/awt/Graphics2D;
    .param p1, "contentType"    # Ljava/lang/String;

    .line 66
    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->IMAGE_RENDERER:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p0, v0}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/draw/ImageRenderer;

    .line 67
    .local v0, "renderer":Lorg/apache/poi/sl/draw/ImageRenderer;
    if-eqz v0, :cond_0

    .line 68
    return-object v0

    .line 71
    :cond_0
    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v1, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "org.apache.poi.hwmf.draw.HwmfSLImageRenderer"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 76
    .local v1, "irc":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/sl/draw/ImageRenderer;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/sl/draw/ImageRenderer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 77
    .end local v1    # "irc":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/sl/draw/ImageRenderer;>;"
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/poi/sl/draw/DrawPictureShape;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x7

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "WMF image renderer is not on the classpath - include poi-scratchpad jar!"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 84
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lorg/apache/poi/sl/draw/BitmapImageRenderer;

    invoke-direct {v1}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;-><init>()V

    return-object v1
.end method


# virtual methods
.method public drawContent(Ljava/awt/Graphics2D;)V
    .locals 9
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 44
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PictureShape;->getPictureData()Lorg/apache/poi/sl/usermodel/PictureData;

    move-result-object v0

    .line 45
    .local v0, "data":Lorg/apache/poi/sl/usermodel/PictureData;
    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    .line 48
    .local v1, "anchor":Ljava/awt/geom/Rectangle2D;
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/PictureShape;->getClipping()Ljava/awt/Insets;

    move-result-object v2

    .line 51
    .local v2, "insets":Ljava/awt/Insets;
    :try_start_0
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PictureData;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getImageRenderer(Ljava/awt/Graphics2D;Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;

    move-result-object v3

    .line 52
    .local v3, "renderer":Lorg/apache/poi/sl/draw/ImageRenderer;
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PictureData;->getData()[B

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PictureData;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/poi/sl/draw/ImageRenderer;->loadImage([BLjava/lang/String;)V

    .line 53
    invoke-interface {v3, p1, v1, v2}, Lorg/apache/poi/sl/draw/ImageRenderer;->drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    nop

    .end local v3    # "renderer":Lorg/apache/poi/sl/draw/ImageRenderer;
    goto :goto_0

    .line 54
    :catch_0
    move-exception v3

    .line 55
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lorg/apache/poi/sl/draw/DrawPictureShape;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v5, 0x7

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "image can\'t be loaded/rendered."

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 57
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method protected getShape()Lorg/apache/poi/sl/usermodel/PictureShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/PictureShape<",
            "**>;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPictureShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    check-cast v0, Lorg/apache/poi/sl/usermodel/PictureShape;

    return-object v0
.end method

.method protected bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object v0

    return-object v0
.end method

.method public resize()V
    .locals 21

    .line 99
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object v0

    .line 100
    .local v0, "ps":Lorg/apache/poi/sl/usermodel/PictureShape;, "Lorg/apache/poi/sl/usermodel/PictureShape<**>;"
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PictureShape;->getPictureData()Lorg/apache/poi/sl/usermodel/PictureData;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/PictureData;->getImageDimension()Ljava/awt/Dimension;

    move-result-object v1

    .line 102
    .local v1, "dim":Ljava/awt/Dimension;
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PictureShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v2

    .line 103
    .local v2, "origRect":Ljava/awt/geom/Rectangle2D;
    invoke-virtual {v2}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v12

    .line 104
    .local v12, "x":D
    invoke-virtual {v2}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v14

    .line 105
    .local v14, "y":D
    invoke-virtual {v1}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v16

    .line 106
    .local v16, "w":D
    invoke-virtual {v1}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v18

    .line 107
    .local v18, "h":D
    new-instance v10, Ljava/awt/geom/Rectangle2D$Double;

    move-object v3, v10

    move-wide v4, v12

    move-wide v6, v14

    move-wide/from16 v8, v16

    move-object/from16 v20, v1

    move-object v1, v10

    .end local v1    # "dim":Ljava/awt/Dimension;
    .local v20, "dim":Ljava/awt/Dimension;
    move-wide/from16 v10, v18

    invoke-direct/range {v3 .. v11}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-interface {v0, v1}, Lorg/apache/poi/sl/usermodel/PictureShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 108
    return-void
.end method

.method public resize(Ljava/awt/geom/Rectangle2D;)V
    .locals 1
    .param p1, "target"    # Ljava/awt/geom/Rectangle2D;

    .line 118
    sget-object v0, Lorg/apache/poi/sl/usermodel/RectAlign;->CENTER:Lorg/apache/poi/sl/usermodel/RectAlign;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->resize(Ljava/awt/geom/Rectangle2D;Lorg/apache/poi/sl/usermodel/RectAlign;)V

    .line 119
    return-void
.end method

.method public resize(Ljava/awt/geom/Rectangle2D;Lorg/apache/poi/sl/usermodel/RectAlign;)V
    .locals 30
    .param p1, "target"    # Ljava/awt/geom/Rectangle2D;
    .param p2, "align"    # Lorg/apache/poi/sl/usermodel/RectAlign;

    .line 133
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object v1

    .line 134
    .local v1, "ps":Lorg/apache/poi/sl/usermodel/PictureShape;, "Lorg/apache/poi/sl/usermodel/PictureShape<**>;"
    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/PictureShape;->getPictureData()Lorg/apache/poi/sl/usermodel/PictureData;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/PictureData;->getImageDimension()Ljava/awt/Dimension;

    move-result-object v2

    .line 135
    .local v2, "dim":Ljava/awt/Dimension;
    iget v3, v2, Ljava/awt/Dimension;->width:I

    if-lez v3, :cond_3

    iget v3, v2, Ljava/awt/Dimension;->height:I

    if-gtz v3, :cond_0

    move-object/from16 v29, v2

    goto/16 :goto_2

    .line 141
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v3

    .line 142
    .local v3, "w":D
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v5

    .line 145
    .local v5, "h":D
    iget v7, v2, Ljava/awt/Dimension;->width:I

    int-to-double v7, v7

    div-double v7, v3, v7

    .line 146
    .local v7, "sx":D
    iget v9, v2, Ljava/awt/Dimension;->height:I

    int-to-double v9, v9

    div-double v9, v5, v9

    .line 149
    .local v9, "sy":D
    const-wide/16 v11, 0x0

    .local v11, "dx":D
    const-wide/16 v13, 0x0

    .line 151
    .local v13, "dy":D
    cmpl-double v15, v7, v9

    if-lez v15, :cond_1

    .line 153
    iget v15, v2, Ljava/awt/Dimension;->width:I

    move-wide/from16 v16, v3

    .end local v3    # "w":D
    .local v16, "w":D
    int-to-double v3, v15

    mul-double v3, v3, v9

    .line 154
    .end local v16    # "w":D
    .restart local v3    # "w":D
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v15

    sub-double v11, v15, v3

    goto :goto_0

    .line 155
    :cond_1
    move-wide/from16 v16, v3

    .end local v3    # "w":D
    .restart local v16    # "w":D
    cmpl-double v3, v9, v7

    if-lez v3, :cond_2

    .line 157
    iget v3, v2, Ljava/awt/Dimension;->height:I

    int-to-double v3, v3

    mul-double v5, v7, v3

    .line 158
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v3

    sub-double v13, v3, v5

    move-wide/from16 v3, v16

    .line 166
    .end local v16    # "w":D
    .restart local v3    # "w":D
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v15

    .line 167
    .local v15, "x":D
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v17

    .line 168
    .local v17, "y":D
    sget-object v19, Lorg/apache/poi/sl/draw/DrawPictureShape$1;->$SwitchMap$org$apache$poi$sl$usermodel$RectAlign:[I

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/sl/usermodel/RectAlign;->ordinal()I

    move-result v20

    aget v19, v19, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    packed-switch v19, :pswitch_data_0

    .line 197
    div-double v22, v11, v20

    add-double v15, v15, v22

    .line 198
    div-double v19, v13, v20

    add-double v17, v17, v19

    move-wide/from16 v27, v17

    goto :goto_1

    .line 195
    :pswitch_0
    move-wide/from16 v27, v17

    goto :goto_1

    .line 191
    :pswitch_1
    div-double v19, v13, v20

    add-double v17, v17, v19

    .line 192
    move-wide/from16 v27, v17

    goto :goto_1

    .line 188
    :pswitch_2
    add-double v17, v17, v13

    .line 189
    move-wide/from16 v27, v17

    goto :goto_1

    .line 184
    :pswitch_3
    div-double v19, v11, v20

    add-double v15, v15, v19

    .line 185
    add-double v17, v17, v13

    .line 186
    move-wide/from16 v27, v17

    goto :goto_1

    .line 180
    :pswitch_4
    add-double/2addr v15, v11

    .line 181
    add-double v17, v17, v13

    .line 182
    move-wide/from16 v27, v17

    goto :goto_1

    .line 176
    :pswitch_5
    add-double/2addr v15, v11

    .line 177
    div-double v19, v13, v20

    add-double v17, v17, v19

    .line 178
    move-wide/from16 v27, v17

    goto :goto_1

    .line 173
    :pswitch_6
    add-double/2addr v15, v11

    .line 174
    move-wide/from16 v27, v17

    goto :goto_1

    .line 170
    :pswitch_7
    div-double v19, v11, v20

    add-double v15, v15, v19

    .line 171
    move-wide/from16 v27, v17

    .line 202
    .end local v17    # "y":D
    .local v27, "y":D
    :goto_1
    move-object/from16 v29, v2

    .end local v2    # "dim":Ljava/awt/Dimension;
    .local v29, "dim":Ljava/awt/Dimension;
    new-instance v2, Ljava/awt/geom/Rectangle2D$Double;

    move-object/from16 v18, v2

    move-wide/from16 v19, v15

    move-wide/from16 v21, v27

    move-wide/from16 v23, v3

    move-wide/from16 v25, v5

    invoke-direct/range {v18 .. v26}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-interface {v1, v2}, Lorg/apache/poi/sl/usermodel/PictureShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 203
    return-void

    .line 161
    .end local v3    # "w":D
    .end local v15    # "x":D
    .end local v27    # "y":D
    .end local v29    # "dim":Ljava/awt/Dimension;
    .restart local v2    # "dim":Ljava/awt/Dimension;
    .restart local v16    # "w":D
    :cond_2
    invoke-interface {v1, v0}, Lorg/apache/poi/sl/usermodel/PictureShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 162
    return-void

    .line 135
    .end local v5    # "h":D
    .end local v7    # "sx":D
    .end local v9    # "sy":D
    .end local v11    # "dx":D
    .end local v13    # "dy":D
    .end local v16    # "w":D
    :cond_3
    move-object/from16 v29, v2

    .line 137
    .end local v2    # "dim":Ljava/awt/Dimension;
    .restart local v29    # "dim":Ljava/awt/Dimension;
    :goto_2
    invoke-interface {v1, v0}, Lorg/apache/poi/sl/usermodel/PictureShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 138
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
