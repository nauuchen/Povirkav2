.class public final Lorg/apache/poi/sl/draw/SLGraphics;
.super Ljava/awt/Graphics2D;
.source "SLGraphics.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private _background:Ljava/awt/Color;

.field private _font:Ljava/awt/Font;

.field private _foreground:Ljava/awt/Color;

.field private _group:Lorg/apache/poi/sl/usermodel/GroupShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/sl/usermodel/GroupShape<",
            "**>;"
        }
    .end annotation
.end field

.field private _hints:Ljava/awt/RenderingHints;

.field private _paint:Ljava/awt/Paint;

.field private _stroke:Ljava/awt/Stroke;

.field private _transform:Ljava/awt/geom/AffineTransform;

.field protected log:Lorg/apache/poi/util/POILogger;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/GroupShape;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/GroupShape<",
            "**>;)V"
        }
    .end annotation

    .line 93
    .local p1, "group":Lorg/apache/poi/sl/usermodel/GroupShape;, "Lorg/apache/poi/sl/usermodel/GroupShape<**>;"
    invoke-direct {p0}, Ljava/awt/Graphics2D;-><init>()V

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    .line 94
    iput-object p1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_group:Lorg/apache/poi/sl/usermodel/GroupShape;

    .line 96
    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_transform:Ljava/awt/geom/AffineTransform;

    .line 97
    new-instance v0, Ljava/awt/BasicStroke;

    invoke-direct {v0}, Ljava/awt/BasicStroke;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_stroke:Ljava/awt/Stroke;

    .line 98
    sget-object v0, Ljava/awt/Color;->black:Ljava/awt/Color;

    iput-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_paint:Ljava/awt/Paint;

    .line 99
    new-instance v0, Ljava/awt/Font;

    const-string v1, "Arial"

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_font:Ljava/awt/Font;

    .line 100
    sget-object v0, Ljava/awt/Color;->black:Ljava/awt/Color;

    iput-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_background:Ljava/awt/Color;

    .line 101
    sget-object v0, Ljava/awt/Color;->white:Ljava/awt/Color;

    iput-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_foreground:Ljava/awt/Color;

    .line 102
    new-instance v0, Ljava/awt/RenderingHints;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/awt/RenderingHints;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_hints:Ljava/awt/RenderingHints;

    .line 103
    return-void
.end method


# virtual methods
.method public addRenderingHints(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 1490
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_hints:Ljava/awt/RenderingHints;

    invoke-virtual {v0, p1}, Ljava/awt/RenderingHints;->putAll(Ljava/util/Map;)V

    .line 1491
    return-void
.end method

.method protected applyPaint(Lorg/apache/poi/sl/usermodel/SimpleShape;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/SimpleShape<",
            "**>;)V"
        }
    .end annotation

    .line 1842
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/SimpleShape;, "Lorg/apache/poi/sl/usermodel/SimpleShape<**>;"
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_paint:Ljava/awt/Paint;

    instance-of v1, v0, Ljava/awt/Color;

    if-eqz v1, :cond_0

    .line 1843
    check-cast v0, Ljava/awt/Color;

    invoke-interface {p1, v0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->setFillColor(Ljava/awt/Color;)V

    .line 1845
    :cond_0
    return-void
.end method

.method protected applyStroke(Lorg/apache/poi/sl/usermodel/SimpleShape;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/SimpleShape<",
            "**>;)V"
        }
    .end annotation

    .line 1830
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/SimpleShape;, "Lorg/apache/poi/sl/usermodel/SimpleShape<**>;"
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_stroke:Ljava/awt/Stroke;

    instance-of v1, v0, Ljava/awt/BasicStroke;

    if-eqz v1, :cond_0

    .line 1831
    check-cast v0, Ljava/awt/BasicStroke;

    .line 1832
    .local v0, "bs":Ljava/awt/BasicStroke;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {p1, v2}, Lorg/apache/poi/sl/usermodel/SimpleShape;->setStrokeStyle([Ljava/lang/Object;)V

    .line 1833
    invoke-virtual {v0}, Ljava/awt/BasicStroke;->getDashArray()[F

    move-result-object v2

    .line 1834
    .local v2, "dash":[F
    if-eqz v2, :cond_0

    .line 1836
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->DASH:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    aput-object v3, v1, v4

    invoke-interface {p1, v1}, Lorg/apache/poi/sl/usermodel/SimpleShape;->setStrokeStyle([Ljava/lang/Object;)V

    .line 1839
    .end local v0    # "bs":Ljava/awt/BasicStroke;
    .end local v2    # "dash":[F
    :cond_0
    return-void
.end method

.method public clearRect(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 1149
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->getPaint()Ljava/awt/Paint;

    move-result-object v0

    .line 1150
    .local v0, "paint":Ljava/awt/Paint;
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->getBackground()Ljava/awt/Color;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/sl/draw/SLGraphics;->setColor(Ljava/awt/Color;)V

    .line 1151
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/sl/draw/SLGraphics;->fillRect(IIII)V

    .line 1152
    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->setPaint(Ljava/awt/Paint;)V

    .line 1153
    return-void
.end method

.method public clip(Ljava/awt/Shape;)V
    .locals 5
    .param p1, "s"    # Ljava/awt/Shape;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 387
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Not implemented"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 390
    :cond_0
    return-void
.end method

.method public clipRect(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 1061
    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->clip(Ljava/awt/Shape;)V

    .line 1062
    return-void
.end method

.method public copyArea(IIIIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "dx"    # I
    .param p6, "dy"    # I

    .line 1156
    return-void
.end method

.method public create()Ljava/awt/Graphics;
    .locals 2

    .line 1707
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/Graphics;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1708
    :catch_0
    move-exception v0

    .line 1709
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public dispose()V
    .locals 0

    .line 929
    return-void
.end method

.method public draw(Ljava/awt/Shape;)V
    .locals 5
    .param p1, "shape"    # Ljava/awt/Shape;

    .line 248
    new-instance v0, Ljava/awt/geom/Path2D$Double;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v1, p1}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/awt/geom/Path2D$Double;-><init>(Ljava/awt/Shape;)V

    .line 249
    .local v0, "path":Ljava/awt/geom/Path2D$Double;
    iget-object v1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_group:Lorg/apache/poi/sl/usermodel/GroupShape;

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/GroupShape;->createFreeform()Lorg/apache/poi/sl/usermodel/FreeformShape;

    move-result-object v1

    .line 250
    .local v1, "p":Lorg/apache/poi/sl/usermodel/FreeformShape;, "Lorg/apache/poi/sl/usermodel/FreeformShape<**>;"
    invoke-interface {v1, v0}, Lorg/apache/poi/sl/usermodel/FreeformShape;->setPath(Ljava/awt/geom/Path2D$Double;)I

    .line 251
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/apache/poi/sl/usermodel/FreeformShape;->setFillColor(Ljava/awt/Color;)V

    .line 252
    invoke-virtual {p0, v1}, Lorg/apache/poi/sl/draw/SLGraphics;->applyStroke(Lorg/apache/poi/sl/usermodel/SimpleShape;)V

    .line 253
    iget-object v2, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_paint:Ljava/awt/Paint;

    instance-of v3, v2, Ljava/awt/Color;

    if-eqz v3, :cond_0

    .line 254
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    check-cast v2, Ljava/awt/Color;

    aput-object v2, v3, v4

    invoke-interface {v1, v3}, Lorg/apache/poi/sl/usermodel/FreeformShape;->setStrokeStyle([Ljava/lang/Object;)V

    .line 256
    :cond_0
    return-void
.end method

.method public drawArc(IIIIII)V
    .locals 17
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "startAngle"    # I
    .param p6, "arcAngle"    # I

    .line 594
    new-instance v14, Ljava/awt/geom/Arc2D$Double;

    move/from16 v15, p1

    int-to-double v1, v15

    move/from16 v13, p2

    int-to-double v3, v13

    move/from16 v11, p3

    int-to-double v5, v11

    move/from16 v12, p4

    int-to-double v7, v12

    move/from16 v9, p5

    int-to-double v10, v9

    move/from16 v0, p6

    int-to-double v12, v0

    const/16 v16, 0x0

    move-object v0, v14

    move-wide v9, v10

    move-wide v11, v12

    move/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Ljava/awt/geom/Arc2D$Double;-><init>(DDDDDDI)V

    .line 595
    .local v0, "arc":Ljava/awt/geom/Arc2D;
    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->draw(Ljava/awt/Shape;)V

    .line 596
    return-void
.end method

.method public drawGlyphVector(Ljava/awt/font/GlyphVector;FF)V
    .locals 1
    .param p1, "g"    # Ljava/awt/font/GlyphVector;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 1461
    invoke-virtual {p1, p2, p3}, Ljava/awt/font/GlyphVector;->getOutline(FF)Ljava/awt/Shape;

    move-result-object v0

    .line 1462
    .local v0, "glyphOutline":Ljava/awt/Shape;
    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->fill(Ljava/awt/Shape;)V

    .line 1463
    return-void
.end method

.method public drawImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImageOp;II)V
    .locals 1
    .param p1, "img"    # Ljava/awt/image/BufferedImage;
    .param p2, "op"    # Ljava/awt/image/BufferedImageOp;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 1318
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Ljava/awt/image/BufferedImageOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    .line 1319
    invoke-virtual {p0, p1, p3, p4, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 1320
    return-void
.end method

.method public drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 6
    .param p1, "img"    # Ljava/awt/Image;
    .param p2, "dx1"    # I
    .param p3, "dy1"    # I
    .param p4, "dx2"    # I
    .param p5, "dy2"    # I
    .param p6, "sx1"    # I
    .param p7, "sy1"    # I
    .param p8, "sx2"    # I
    .param p9, "sy2"    # I
    .param p10, "bgcolor"    # Ljava/awt/Color;
    .param p11, "observer"    # Ljava/awt/image/ImageObserver;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 854
    move-object v0, p0

    iget-object v1, v0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 855
    iget-object v1, v0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Not implemented"

    aput-object v5, v4, v3

    invoke-virtual {v1, v2, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 857
    :cond_0
    return v3
.end method

.method public drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z
    .locals 5
    .param p1, "img"    # Ljava/awt/Image;
    .param p2, "dx1"    # I
    .param p3, "dy1"    # I
    .param p4, "dx2"    # I
    .param p5, "dy2"    # I
    .param p6, "sx1"    # I
    .param p7, "sy1"    # I
    .param p8, "sx2"    # I
    .param p9, "sy2"    # I
    .param p10, "observer"    # Ljava/awt/image/ImageObserver;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 789
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Not implemented"

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 792
    :cond_0
    return v2
.end method

.method public drawImage(Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 5
    .param p1, "img"    # Ljava/awt/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "bgcolor"    # Ljava/awt/Color;
    .param p7, "observer"    # Ljava/awt/image/ImageObserver;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 729
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Not implemented"

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 733
    :cond_0
    return v2
.end method

.method public drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z
    .locals 5
    .param p1, "img"    # Ljava/awt/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "observer"    # Ljava/awt/image/ImageObserver;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 1693
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1694
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Not implemented"

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 1696
    :cond_0
    return v2
.end method

.method public drawImage(Ljava/awt/Image;IILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 5
    .param p1, "img"    # Ljava/awt/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "bgcolor"    # Ljava/awt/Color;
    .param p5, "observer"    # Ljava/awt/image/ImageObserver;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 679
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Not implemented"

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 683
    :cond_0
    return v2
.end method

.method public drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
    .locals 5
    .param p1, "img"    # Ljava/awt/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "observer"    # Ljava/awt/image/ImageObserver;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 895
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Not implemented"

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 898
    :cond_0
    return v2
.end method

.method public drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z
    .locals 5
    .param p1, "img"    # Ljava/awt/Image;
    .param p2, "xform"    # Ljava/awt/geom/AffineTransform;
    .param p3, "obs"    # Ljava/awt/image/ImageObserver;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 1647
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1648
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Not implemented"

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 1650
    :cond_0
    return v2
.end method

.method public drawLine(IIII)V
    .locals 10
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .line 941
    new-instance v9, Ljava/awt/geom/Line2D$Double;

    int-to-double v1, p1

    int-to-double v3, p2

    int-to-double v5, p3

    int-to-double v7, p4

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Line2D$Double;-><init>(DDDD)V

    .line 942
    .local v0, "line":Ljava/awt/geom/Line2D;
    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->draw(Ljava/awt/Shape;)V

    .line 943
    return-void
.end method

.method public drawOval(IIII)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 641
    new-instance v9, Ljava/awt/geom/Ellipse2D$Double;

    int-to-double v1, p1

    int-to-double v3, p2

    int-to-double v5, p3

    int-to-double v7, p4

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Ellipse2D$Double;-><init>(DDDD)V

    .line 642
    .local v0, "oval":Ljava/awt/geom/Ellipse2D;
    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->draw(Ljava/awt/Shape;)V

    .line 643
    return-void
.end method

.method public drawPolygon([I[II)V
    .locals 1
    .param p1, "xPoints"    # [I
    .param p2, "yPoints"    # [I
    .param p3, "nPoints"    # I

    .line 1037
    new-instance v0, Ljava/awt/Polygon;

    invoke-direct {v0, p1, p2, p3}, Ljava/awt/Polygon;-><init>([I[II)V

    .line 1038
    .local v0, "polygon":Ljava/awt/Polygon;
    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->draw(Ljava/awt/Shape;)V

    .line 1039
    return-void
.end method

.method public drawPolyline([I[II)V
    .locals 4
    .param p1, "xPoints"    # [I
    .param p2, "yPoints"    # [I
    .param p3, "nPoints"    # I

    .line 613
    if-lez p3, :cond_1

    .line 614
    new-instance v0, Ljava/awt/geom/GeneralPath;

    invoke-direct {v0}, Ljava/awt/geom/GeneralPath;-><init>()V

    .line 615
    .local v0, "path":Ljava/awt/geom/GeneralPath;
    const/4 v1, 0x0

    aget v2, p1, v1

    int-to-float v2, v2

    aget v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Ljava/awt/geom/GeneralPath;->moveTo(FF)V

    .line 616
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 617
    aget v2, p1, v1

    int-to-float v2, v2

    aget v3, p2, v1

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Ljava/awt/geom/GeneralPath;->lineTo(FF)V

    .line 616
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 619
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->draw(Ljava/awt/Shape;)V

    .line 621
    .end local v0    # "path":Ljava/awt/geom/GeneralPath;
    :cond_1
    return-void
.end method

.method public drawRect(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 1012
    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 1013
    .local v0, "rect":Ljava/awt/Rectangle;
    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->draw(Ljava/awt/Shape;)V

    .line 1014
    return-void
.end method

.method public drawRenderableImage(Ljava/awt/image/renderable/RenderableImage;Ljava/awt/geom/AffineTransform;)V
    .locals 5
    .param p1, "img"    # Ljava/awt/image/renderable/RenderableImage;
    .param p2, "xform"    # Ljava/awt/geom/AffineTransform;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 1824
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1825
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Not implemented"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 1827
    :cond_0
    return-void
.end method

.method public drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V
    .locals 5
    .param p1, "img"    # Ljava/awt/image/RenderedImage;
    .param p2, "xform"    # Ljava/awt/geom/AffineTransform;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 1796
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1797
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Not implemented"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 1799
    :cond_0
    return-void
.end method

.method public drawRoundRect(IIIIII)V
    .locals 16
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "arcWidth"    # I
    .param p6, "arcHeight"    # I

    .line 457
    new-instance v13, Ljava/awt/geom/RoundRectangle2D$Double;

    move/from16 v14, p1

    int-to-double v1, v14

    move/from16 v15, p2

    int-to-double v3, v15

    move/from16 v11, p3

    int-to-double v5, v11

    move/from16 v12, p4

    int-to-double v7, v12

    move/from16 v9, p5

    int-to-double v10, v9

    move/from16 v0, p6

    int-to-double v14, v0

    move-object v0, v13

    move-wide v9, v10

    move-wide v11, v14

    invoke-direct/range {v0 .. v12}, Ljava/awt/geom/RoundRectangle2D$Double;-><init>(DDDDDD)V

    .line 458
    .local v0, "rect":Ljava/awt/geom/RoundRectangle2D;
    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->draw(Ljava/awt/Shape;)V

    .line 459
    return-void
.end method

.method public drawString(Ljava/lang/String;FF)V
    .locals 16
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/poi/sl/draw/SLGraphics;->_group:Lorg/apache/poi/sl/usermodel/GroupShape;

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/GroupShape;->createTextBox()Lorg/apache/poi/sl/usermodel/TextBox;

    move-result-object v2

    .line 286
    .local v2, "txt":Lorg/apache/poi/sl/usermodel/TextBox;, "Lorg/apache/poi/sl/usermodel/TextBox<**>;"
    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/TextBox;->getTextParagraphs()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/sl/usermodel/TextRun;

    .line 287
    .local v3, "rt":Lorg/apache/poi/sl/usermodel/TextRun;
    iget-object v5, v0, Lorg/apache/poi/sl/draw/SLGraphics;->_font:Ljava/awt/Font;

    invoke-virtual {v5}, Ljava/awt/Font;->getSize()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/poi/sl/usermodel/TextRun;->setFontSize(Ljava/lang/Double;)V

    .line 288
    iget-object v5, v0, Lorg/apache/poi/sl/draw/SLGraphics;->_font:Ljava/awt/Font;

    invoke-virtual {v5}, Ljava/awt/Font;->getFamily()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/poi/sl/usermodel/TextRun;->setFontFamily(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/SLGraphics;->getColor()Ljava/awt/Color;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/SLGraphics;->getColor()Ljava/awt/Color;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/poi/sl/usermodel/TextRun;->setFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V

    .line 291
    :cond_0
    iget-object v5, v0, Lorg/apache/poi/sl/draw/SLGraphics;->_font:Ljava/awt/Font;

    invoke-virtual {v5}, Ljava/awt/Font;->isBold()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v3, v6}, Lorg/apache/poi/sl/usermodel/TextRun;->setBold(Z)V

    .line 292
    :cond_1
    iget-object v5, v0, Lorg/apache/poi/sl/draw/SLGraphics;->_font:Ljava/awt/Font;

    invoke-virtual {v5}, Ljava/awt/Font;->isItalic()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3, v6}, Lorg/apache/poi/sl/usermodel/TextRun;->setItalic(Z)V

    .line 294
    :cond_2
    invoke-interface {v2, v1}, Lorg/apache/poi/sl/usermodel/TextBox;->setText(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/TextRun;

    .line 296
    new-instance v5, Lorg/apache/poi/sl/usermodel/Insets2D;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object v7, v5

    invoke-direct/range {v7 .. v15}, Lorg/apache/poi/sl/usermodel/Insets2D;-><init>(DDDD)V

    invoke-interface {v2, v5}, Lorg/apache/poi/sl/usermodel/TextBox;->setInsets(Lorg/apache/poi/sl/usermodel/Insets2D;)V

    .line 297
    invoke-interface {v2, v4}, Lorg/apache/poi/sl/usermodel/TextBox;->setWordWrap(Z)V

    .line 298
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/poi/sl/usermodel/TextBox;->setHorizontalCentered(Ljava/lang/Boolean;)V

    .line 299
    sget-object v4, Lorg/apache/poi/sl/usermodel/VerticalAlignment;->MIDDLE:Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    invoke-interface {v2, v4}, Lorg/apache/poi/sl/usermodel/TextBox;->setVerticalAlignment(Lorg/apache/poi/sl/usermodel/VerticalAlignment;)V

    .line 302
    new-instance v4, Ljava/awt/font/TextLayout;

    iget-object v5, v0, Lorg/apache/poi/sl/draw/SLGraphics;->_font:Ljava/awt/Font;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/SLGraphics;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v6

    invoke-direct {v4, v1, v5, v6}, Ljava/awt/font/TextLayout;-><init>(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    .line 303
    .local v4, "layout":Ljava/awt/font/TextLayout;
    invoke-virtual {v4}, Ljava/awt/font/TextLayout;->getAscent()F

    move-result v5

    .line 305
    .local v5, "ascent":F
    invoke-virtual {v4}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 312
    .local v6, "width":F
    const/high16 v7, 0x40000000    # 2.0f

    mul-float v8, v5, v7

    .line 319
    .local v8, "height":F
    div-float v9, v8, v7

    div-float v7, v5, v7

    add-float/2addr v9, v7

    sub-float v7, p3, v9

    .line 326
    .end local p3    # "y":F
    .local v7, "y":F
    new-instance v9, Ljava/awt/Rectangle;

    move/from16 v10, p2

    float-to-int v11, v10

    float-to-int v12, v7

    float-to-int v13, v6

    float-to-int v14, v8

    invoke-direct {v9, v11, v12, v13, v14}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-interface {v2, v9}, Lorg/apache/poi/sl/usermodel/TextBox;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 327
    return-void
.end method

.method public drawString(Ljava/lang/String;II)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 473
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/sl/draw/SLGraphics;->drawString(Ljava/lang/String;FF)V

    .line 474
    return-void
.end method

.method public drawString(Ljava/text/AttributedCharacterIterator;FF)V
    .locals 5
    .param p1, "iterator"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 1540
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1541
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Not implemented"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 1543
    :cond_0
    return-void
.end method

.method public drawString(Ljava/text/AttributedCharacterIterator;II)V
    .locals 2
    .param p1, "iterator"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 1126
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/sl/draw/SLGraphics;->drawString(Ljava/text/AttributedCharacterIterator;FF)V

    .line 1127
    return-void
.end method

.method public fill(Ljava/awt/Shape;)V
    .locals 3
    .param p1, "shape"    # Ljava/awt/Shape;

    .line 344
    new-instance v0, Ljava/awt/geom/Path2D$Double;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v1, p1}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/awt/geom/Path2D$Double;-><init>(Ljava/awt/Shape;)V

    .line 345
    .local v0, "path":Ljava/awt/geom/Path2D$Double;
    iget-object v1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_group:Lorg/apache/poi/sl/usermodel/GroupShape;

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/GroupShape;->createFreeform()Lorg/apache/poi/sl/usermodel/FreeformShape;

    move-result-object v1

    .line 346
    .local v1, "p":Lorg/apache/poi/sl/usermodel/FreeformShape;, "Lorg/apache/poi/sl/usermodel/FreeformShape<**>;"
    invoke-interface {v1, v0}, Lorg/apache/poi/sl/usermodel/FreeformShape;->setPath(Ljava/awt/geom/Path2D$Double;)I

    .line 347
    invoke-virtual {p0, v1}, Lorg/apache/poi/sl/draw/SLGraphics;->applyPaint(Lorg/apache/poi/sl/usermodel/SimpleShape;)V

    .line 348
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v2}, Lorg/apache/poi/sl/usermodel/FreeformShape;->setStrokeStyle([Ljava/lang/Object;)V

    .line 349
    return-void
.end method

.method public fillArc(IIIIII)V
    .locals 17
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "startAngle"    # I
    .param p6, "arcAngle"    # I

    .line 552
    new-instance v14, Ljava/awt/geom/Arc2D$Double;

    move/from16 v15, p1

    int-to-double v1, v15

    move/from16 v13, p2

    int-to-double v3, v13

    move/from16 v11, p3

    int-to-double v5, v11

    move/from16 v12, p4

    int-to-double v7, v12

    move/from16 v9, p5

    int-to-double v10, v9

    move/from16 v0, p6

    int-to-double v12, v0

    const/16 v16, 0x2

    move-object v0, v14

    move-wide v9, v10

    move-wide v11, v12

    move/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Ljava/awt/geom/Arc2D$Double;-><init>(DDDDDDI)V

    .line 553
    .local v0, "arc":Ljava/awt/geom/Arc2D;
    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->fill(Ljava/awt/Shape;)V

    .line 554
    return-void
.end method

.method public fillOval(IIII)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 488
    new-instance v9, Ljava/awt/geom/Ellipse2D$Double;

    int-to-double v1, p1

    int-to-double v3, p2

    int-to-double v5, p3

    int-to-double v7, p4

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Ellipse2D$Double;-><init>(DDDD)V

    .line 489
    .local v0, "oval":Ljava/awt/geom/Ellipse2D;
    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->fill(Ljava/awt/Shape;)V

    .line 490
    return-void
.end method

.method public fillPolygon([I[II)V
    .locals 1
    .param p1, "xPoints"    # [I
    .param p2, "yPoints"    # [I
    .param p3, "nPoints"    # I

    .line 967
    new-instance v0, Ljava/awt/Polygon;

    invoke-direct {v0, p1, p2, p3}, Ljava/awt/Polygon;-><init>([I[II)V

    .line 968
    .local v0, "polygon":Ljava/awt/Polygon;
    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->fill(Ljava/awt/Shape;)V

    .line 969
    return-void
.end method

.method public fillRect(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 991
    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 992
    .local v0, "rect":Ljava/awt/Rectangle;
    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->fill(Ljava/awt/Shape;)V

    .line 993
    return-void
.end method

.method public fillRoundRect(IIIIII)V
    .locals 16
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "arcWidth"    # I
    .param p6, "arcHeight"    # I

    .line 511
    new-instance v13, Ljava/awt/geom/RoundRectangle2D$Double;

    move/from16 v14, p1

    int-to-double v1, v14

    move/from16 v15, p2

    int-to-double v3, v15

    move/from16 v11, p3

    int-to-double v5, v11

    move/from16 v12, p4

    int-to-double v7, v12

    move/from16 v9, p5

    int-to-double v10, v9

    move/from16 v0, p6

    int-to-double v14, v0

    move-object v0, v13

    move-wide v9, v10

    move-wide v11, v14

    invoke-direct/range {v0 .. v12}, Ljava/awt/geom/RoundRectangle2D$Double;-><init>(DDDDDD)V

    .line 512
    .local v0, "rect":Ljava/awt/geom/RoundRectangle2D;
    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->fill(Ljava/awt/Shape;)V

    .line 513
    return-void
.end method

.method public getBackground()Ljava/awt/Color;
    .locals 1

    .line 1352
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_background:Ljava/awt/Color;

    return-object v0
.end method

.method public getClip()Ljava/awt/Shape;
    .locals 5
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 410
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Not implemented"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 413
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClipBounds()Ljava/awt/Rectangle;
    .locals 2

    .line 1105
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->getClip()Ljava/awt/Shape;

    move-result-object v0

    .line 1106
    .local v0, "c":Ljava/awt/Shape;
    if-nez v0, :cond_0

    .line 1107
    const/4 v1, 0x0

    return-object v1

    .line 1109
    :cond_0
    invoke-interface {v0}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object v1

    return-object v1
.end method

.method public getColor()Ljava/awt/Color;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_foreground:Ljava/awt/Color;

    return-object v0
.end method

.method public getComposite()Ljava/awt/Composite;
    .locals 5
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 1396
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1397
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Not implemented"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 1399
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceConfiguration()Ljava/awt/GraphicsConfiguration;
    .locals 1

    .line 1471
    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/GraphicsEnvironment;->getDefaultScreenDevice()Ljava/awt/GraphicsDevice;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/GraphicsDevice;->getDefaultConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getFont()Ljava/awt/Font;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_font:Ljava/awt/Font;

    return-object v0
.end method

.method public getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;
    .locals 1
    .param p1, "f"    # Ljava/awt/Font;

    .line 1724
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/awt/Toolkit;->getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getFontRenderContext()Ljava/awt/font/FontRenderContext;
    .locals 4

    .line 1263
    sget-object v0, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_ON:Ljava/lang/Object;

    sget-object v1, Ljava/awt/RenderingHints;->KEY_TEXT_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    invoke-virtual {p0, v1}, Lorg/apache/poi/sl/draw/SLGraphics;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1265
    .local v0, "isAntiAliased":Z
    sget-object v1, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

    sget-object v2, Ljava/awt/RenderingHints;->KEY_FRACTIONALMETRICS:Ljava/awt/RenderingHints$Key;

    invoke-virtual {p0, v2}, Lorg/apache/poi/sl/draw/SLGraphics;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1269
    .local v1, "usesFractionalMetrics":Z
    new-instance v2, Ljava/awt/font/FontRenderContext;

    new-instance v3, Ljava/awt/geom/AffineTransform;

    invoke-direct {v3}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-direct {v2, v3, v0, v1}, Ljava/awt/font/FontRenderContext;-><init>(Ljava/awt/geom/AffineTransform;ZZ)V

    return-object v2
.end method

.method public getPaint()Ljava/awt/Paint;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_paint:Ljava/awt/Paint;

    return-object v0
.end method

.method public getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;
    .locals 1
    .param p1, "hintKey"    # Ljava/awt/RenderingHints$Key;

    .line 1415
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_hints:Ljava/awt/RenderingHints;

    invoke-virtual {v0, p1}, Ljava/awt/RenderingHints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRenderingHints()Ljava/awt/RenderingHints;
    .locals 1

    .line 1599
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_hints:Ljava/awt/RenderingHints;

    return-object v0
.end method

.method public getShapeGroup()Lorg/apache/poi/sl/usermodel/GroupShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/GroupShape<",
            "**>;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_group:Lorg/apache/poi/sl/usermodel/GroupShape;

    return-object v0
.end method

.method public getStroke()Ljava/awt/Stroke;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_stroke:Ljava/awt/Stroke;

    return-object v0
.end method

.method public getTransform()Ljava/awt/geom/AffineTransform;
    .locals 2

    .line 216
    new-instance v0, Ljava/awt/geom/AffineTransform;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_transform:Ljava/awt/geom/AffineTransform;

    invoke-direct {v0, v1}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public hit(Ljava/awt/Rectangle;Ljava/awt/Shape;Z)Z
    .locals 1
    .param p1, "rect"    # Ljava/awt/Rectangle;
    .param p2, "s"    # Ljava/awt/Shape;
    .param p3, "onStroke"    # Z

    .line 1577
    if-eqz p3, :cond_0

    .line 1578
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->getStroke()Ljava/awt/Stroke;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/awt/Stroke;->createStrokedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p2

    .line 1581
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p2

    .line 1583
    invoke-interface {p2, p1}, Ljava/awt/Shape;->intersects(Ljava/awt/geom/Rectangle2D;)Z

    move-result v0

    return v0
.end method

.method public rotate(D)V
    .locals 1
    .param p1, "theta"    # D

    .line 1193
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p1, p2}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    .line 1194
    return-void
.end method

.method public rotate(DDD)V
    .locals 7
    .param p1, "theta"    # D
    .param p3, "x"    # D
    .param p5, "y"    # D

    .line 1216
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_transform:Ljava/awt/geom/AffineTransform;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Ljava/awt/geom/AffineTransform;->rotate(DDD)V

    .line 1217
    return-void
.end method

.method public scale(DD)V
    .locals 1
    .param p1, "sx"    # D
    .param p3, "sy"    # D

    .line 436
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    .line 437
    return-void
.end method

.method public setBackground(Ljava/awt/Color;)V
    .locals 0
    .param p1, "color"    # Ljava/awt/Color;

    .line 1339
    if-nez p1, :cond_0

    .line 1340
    return-void

    .line 1342
    :cond_0
    iput-object p1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_background:Ljava/awt/Color;

    .line 1343
    return-void
.end method

.method public setClip(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 1173
    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->setClip(Ljava/awt/Shape;)V

    .line 1174
    return-void
.end method

.method public setClip(Ljava/awt/Shape;)V
    .locals 5
    .param p1, "clip"    # Ljava/awt/Shape;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 1082
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Not implemented"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 1085
    :cond_0
    return-void
.end method

.method public setColor(Ljava/awt/Color;)V
    .locals 0
    .param p1, "c"    # Ljava/awt/Color;

    .line 155
    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/SLGraphics;->setPaint(Ljava/awt/Paint;)V

    .line 156
    return-void
.end method

.method public setComposite(Ljava/awt/Composite;)V
    .locals 5
    .param p1, "comp"    # Ljava/awt/Composite;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 1382
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Not implemented"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 1385
    :cond_0
    return-void
.end method

.method public setFont(Ljava/awt/Font;)V
    .locals 0
    .param p1, "font"    # Ljava/awt/Font;

    .line 133
    iput-object p1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_font:Ljava/awt/Font;

    .line 134
    return-void
.end method

.method public setPaint(Ljava/awt/Paint;)V
    .locals 1
    .param p1, "paint"    # Ljava/awt/Paint;

    .line 201
    if-nez p1, :cond_0

    return-void

    .line 203
    :cond_0
    iput-object p1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_paint:Ljava/awt/Paint;

    .line 204
    instance-of v0, p1, Ljava/awt/Color;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/awt/Color;

    iput-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_foreground:Ljava/awt/Color;

    .line 205
    :cond_1
    return-void
.end method

.method public setPaintMode()V
    .locals 5
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 1758
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1759
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Not implemented"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 1761
    :cond_0
    return-void
.end method

.method public setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V
    .locals 1
    .param p1, "hintKey"    # Ljava/awt/RenderingHints$Key;
    .param p2, "hintValue"    # Ljava/lang/Object;

    .line 1430
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_hints:Ljava/awt/RenderingHints;

    invoke-virtual {v0, p1, p2}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    return-void
.end method

.method public setRenderingHints(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 1616
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v0, Ljava/awt/RenderingHints;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/awt/RenderingHints;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_hints:Ljava/awt/RenderingHints;

    .line 1617
    invoke-virtual {v0, p1}, Ljava/awt/RenderingHints;->putAll(Ljava/util/Map;)V

    .line 1618
    return-void
.end method

.method public setStroke(Ljava/awt/Stroke;)V
    .locals 0
    .param p1, "s"    # Ljava/awt/Stroke;

    .line 175
    iput-object p1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_stroke:Ljava/awt/Stroke;

    .line 176
    return-void
.end method

.method public setTransform(Ljava/awt/geom/AffineTransform;)V
    .locals 1
    .param p1, "Tx"    # Ljava/awt/geom/AffineTransform;

    .line 228
    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0, p1}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_transform:Ljava/awt/geom/AffineTransform;

    .line 229
    return-void
.end method

.method public setXORMode(Ljava/awt/Color;)V
    .locals 5
    .param p1, "c1"    # Ljava/awt/Color;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 1744
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1745
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->log:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Not implemented"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 1747
    :cond_0
    return-void
.end method

.method public shear(DD)V
    .locals 1
    .param p1, "shx"    # D
    .param p3, "shy"    # D

    .line 1238
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/geom/AffineTransform;->shear(DD)V

    .line 1239
    return-void
.end method

.method public transform(Ljava/awt/geom/AffineTransform;)V
    .locals 1
    .param p1, "Tx"    # Ljava/awt/geom/AffineTransform;

    .line 1290
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p1}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 1291
    return-void
.end method

.method public translate(DD)V
    .locals 1
    .param p1, "tx"    # D
    .param p3, "ty"    # D

    .line 1510
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 1511
    return-void
.end method

.method public translate(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 363
    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_transform:Ljava/awt/geom/AffineTransform;

    int-to-double v1, p1

    int-to-double v3, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 364
    return-void
.end method
