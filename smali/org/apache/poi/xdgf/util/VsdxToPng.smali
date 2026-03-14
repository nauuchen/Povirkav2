.class public Lorg/apache/poi/xdgf/util/VsdxToPng;
.super Ljava/lang/Object;
.source "VsdxToPng.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    .line 115
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Usage: [--debug] in.vsdx outdir"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 119
    :cond_0
    new-instance v0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;

    invoke-direct {v0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;-><init>()V

    .line 121
    .local v0, "renderer":Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;
    const/4 v3, 0x0

    aget-object v4, p0, v3

    .line 122
    .local v4, "inFilename":Ljava/lang/String;
    aget-object v5, p0, v2

    .line 124
    .local v5, "pngDir":Ljava/lang/String;
    aget-object v3, p0, v3

    const-string v6, "--debug"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    aget-object v4, p0, v2

    .line 126
    aget-object v5, p0, v1

    .line 127
    new-instance v1, Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;

    invoke-direct {v1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;-><init>()V

    move-object v0, v1

    .line 130
    :cond_1
    new-instance v1, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;-><init>(Ljava/io/InputStream;)V

    .line 132
    .local v1, "doc":Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;
    const-wide v2, 0x4066ba2e8ba2e8baL    # 181.8181818181818

    invoke-static {v1, v5, v2, v3, v0}, Lorg/apache/poi/xdgf/util/VsdxToPng;->renderToPng(Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;Ljava/lang/String;DLorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;)V

    .line 133
    return-void
.end method

.method public static renderToPng(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/io/File;DLorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;)V
    .locals 7
    .param p0, "page"    # Lorg/apache/poi/xdgf/usermodel/XDGFPage;
    .param p1, "outFile"    # Ljava/io/File;
    .param p2, "scale"    # D
    .param p4, "renderer"    # Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getPageSize()Lorg/apache/poi/xdgf/geom/Dimension2dDouble;

    move-result-object v0

    .line 63
    .local v0, "sz":Lorg/apache/poi/xdgf/geom/Dimension2dDouble;
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;->getWidth()D

    move-result-wide v1

    mul-double v1, v1, p2

    double-to-int v1, v1

    .line 64
    .local v1, "width":I
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;->getHeight()D

    move-result-wide v2

    mul-double v2, v2, p2

    double-to-int v2, v2

    .line 66
    .local v2, "height":I
    new-instance v3, Ljava/awt/image/BufferedImage;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v2, v4}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 68
    .local v3, "img":Ljava/awt/image/BufferedImage;
    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v4

    .line 71
    .local v4, "graphics":Ljava/awt/Graphics2D;
    sget-object v5, Ljava/awt/RenderingHints;->KEY_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    sget-object v6, Ljava/awt/RenderingHints;->VALUE_ANTIALIAS_ON:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 73
    sget-object v5, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v6, Ljava/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 75
    sget-object v5, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    sget-object v6, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BICUBIC:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 77
    sget-object v5, Ljava/awt/RenderingHints;->KEY_FRACTIONALMETRICS:Ljava/awt/RenderingHints$Key;

    sget-object v6, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 80
    sget-object v5, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-virtual {v4, v5}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    .line 81
    sget-object v5, Ljava/awt/Color;->white:Ljava/awt/Color;

    invoke-virtual {v4, v5}, Ljava/awt/Graphics2D;->setBackground(Ljava/awt/Color;)V

    .line 82
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v1, v2}, Ljava/awt/Graphics2D;->clearRect(IIII)V

    .line 85
    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/awt/Graphics2D;->translate(II)V

    .line 86
    neg-double v5, p2

    invoke-virtual {v4, p2, p3, v5, v6}, Ljava/awt/Graphics2D;->scale(DD)V

    .line 89
    invoke-virtual {p4, v4}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->setGraphics(Ljava/awt/Graphics2D;)V

    .line 90
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getContent()Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;

    move-result-object v5

    invoke-virtual {v5, p4}, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;->visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;)V

    .line 92
    invoke-virtual {v4}, Ljava/awt/Graphics2D;->dispose()V

    .line 94
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 96
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_0
    const-string v6, "png"

    invoke-static {v3, v6, v5}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 99
    nop

    .line 100
    return-void

    .line 98
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    throw v6
.end method

.method public static renderToPng(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/lang/String;DLorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;)V
    .locals 1
    .param p0, "page"    # Lorg/apache/poi/xdgf/usermodel/XDGFPage;
    .param p1, "outFilename"    # Ljava/lang/String;
    .param p2, "scale"    # D
    .param p4, "renderer"    # Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2, p3, p4}, Lorg/apache/poi/xdgf/util/VsdxToPng;->renderToPng(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/io/File;DLorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;)V

    .line 45
    return-void
.end method

.method public static renderToPng(Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;Ljava/lang/String;DLorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;)V
    .locals 3
    .param p0, "document"    # Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;
    .param p1, "outDirname"    # Ljava/lang/String;
    .param p2, "scale"    # D
    .param p4, "renderer"    # Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "outDir":Ljava/io/File;
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->getPages()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xdgf/usermodel/XDGFPage;

    .line 109
    .local v2, "page":Lorg/apache/poi/xdgf/usermodel/XDGFPage;
    invoke-static {v2, v0, p2, p3, p4}, Lorg/apache/poi/xdgf/util/VsdxToPng;->renderToPngDir(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/io/File;DLorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;)V

    .end local v2    # "page":Lorg/apache/poi/xdgf/usermodel/XDGFPage;
    goto :goto_0

    .line 111
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public static renderToPngDir(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/io/File;DLorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;)V
    .locals 4
    .param p0, "page"    # Lorg/apache/poi/xdgf/usermodel/XDGFPage;
    .param p1, "outDir"    # Ljava/io/File;
    .param p2, "scale"    # D
    .param p4, "renderer"    # Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getPageNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/xdgf/util/Util;->sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    .local v0, "pageFile":Ljava/io/File;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** Writing image to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    invoke-static {p0, v0, p2, p3, p4}, Lorg/apache/poi/xdgf/util/VsdxToPng;->renderToPng(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/io/File;DLorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;)V

    .line 56
    return-void
.end method
