.class Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;
.super Ljava/lang/Object;
.source "PathGradientPaint.java"

# interfaces
.implements Ljava/awt/PaintContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/draw/PathGradientPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PathGradientContext"
.end annotation


# instance fields
.field protected final deviceBounds:Ljava/awt/Rectangle;

.field protected final gradientSteps:I

.field protected final hints:Ljava/awt/RenderingHints;

.field protected final pCtx:Ljava/awt/PaintContext;

.field raster:Ljava/awt/image/WritableRaster;

.field protected final shape:Ljava/awt/Shape;

.field final synthetic this$0:Lorg/apache/poi/sl/draw/PathGradientPaint;

.field protected final userBounds:Ljava/awt/geom/Rectangle2D;

.field protected final xform:Ljava/awt/geom/AffineTransform;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/draw/PathGradientPaint;Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)V
    .locals 19
    .param p2, "cm"    # Ljava/awt/image/ColorModel;
    .param p3, "deviceBounds"    # Ljava/awt/Rectangle;
    .param p4, "userBounds"    # Ljava/awt/geom/Rectangle2D;
    .param p5, "xform"    # Ljava/awt/geom/AffineTransform;
    .param p6, "hints"    # Ljava/awt/RenderingHints;

    .line 89
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p6

    iput-object v1, v0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->this$0:Lorg/apache/poi/sl/draw/PathGradientPaint;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    sget-object v2, Lorg/apache/poi/sl/draw/Drawable;->GRADIENT_SHAPE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {v7, v2}, Ljava/awt/RenderingHints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/Shape;

    iput-object v2, v0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->shape:Ljava/awt/Shape;

    .line 91
    if-eqz v2, :cond_0

    .line 95
    move-object/from16 v8, p3

    iput-object v8, v0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->deviceBounds:Ljava/awt/Rectangle;

    .line 96
    move-object/from16 v9, p4

    iput-object v9, v0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->userBounds:Ljava/awt/geom/Rectangle2D;

    .line 97
    move-object/from16 v10, p5

    iput-object v10, v0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->xform:Ljava/awt/geom/AffineTransform;

    .line 98
    iput-object v7, v0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->hints:Ljava/awt/RenderingHints;

    .line 100
    invoke-virtual {v0, v2}, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->getGradientSteps(Ljava/awt/Shape;)I

    move-result v2

    iput v2, v0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->gradientSteps:I

    .line 102
    new-instance v12, Ljava/awt/geom/Point2D$Double;

    const-wide/16 v3, 0x0

    invoke-direct {v12, v3, v4, v3, v4}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    .line 103
    .local v12, "start":Ljava/awt/geom/Point2D;
    new-instance v13, Ljava/awt/geom/Point2D$Double;

    int-to-double v5, v2

    invoke-direct {v13, v5, v6, v3, v4}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    .line 104
    .local v13, "end":Ljava/awt/geom/Point2D;
    new-instance v3, Ljava/awt/LinearGradientPaint;

    iget-object v14, v1, Lorg/apache/poi/sl/draw/PathGradientPaint;->fractions:[F

    iget-object v15, v1, Lorg/apache/poi/sl/draw/PathGradientPaint;->colors:[Ljava/awt/Color;

    sget-object v16, Ljava/awt/MultipleGradientPaint$CycleMethod;->NO_CYCLE:Ljava/awt/MultipleGradientPaint$CycleMethod;

    sget-object v17, Ljava/awt/MultipleGradientPaint$ColorSpaceType;->SRGB:Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    new-instance v18, Ljava/awt/geom/AffineTransform;

    invoke-direct/range {v18 .. v18}, Ljava/awt/geom/AffineTransform;-><init>()V

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Ljava/awt/LinearGradientPaint;-><init>(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;Ljava/awt/MultipleGradientPaint$ColorSpaceType;Ljava/awt/geom/AffineTransform;)V

    move-object v1, v3

    .line 106
    .local v1, "gradientPaint":Ljava/awt/LinearGradientPaint;
    new-instance v3, Ljava/awt/Rectangle;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v2, v4}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 107
    .local v3, "bounds":Ljava/awt/Rectangle;
    new-instance v5, Ljava/awt/geom/AffineTransform;

    invoke-direct {v5}, Ljava/awt/geom/AffineTransform;-><init>()V

    move-object/from16 v2, p2

    move-object v4, v3

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Ljava/awt/LinearGradientPaint;->createContext(Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)Ljava/awt/PaintContext;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->pCtx:Ljava/awt/PaintContext;

    .line 108
    return-void

    .line 92
    .end local v1    # "gradientPaint":Ljava/awt/LinearGradientPaint;
    .end local v3    # "bounds":Ljava/awt/Rectangle;
    .end local v12    # "start":Ljava/awt/geom/Point2D;
    .end local v13    # "end":Ljava/awt/geom/Point2D;
    :cond_0
    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    new-instance v1, Ljava/awt/geom/IllegalPathStateException;

    const-string v2, "PathGradientPaint needs a shape to be set via the rendering hint Drawable.GRADIANT_SHAPE."

    invoke-direct {v1, v2}, Ljava/awt/geom/IllegalPathStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected createRaster()V
    .locals 13

    .line 162
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    .line 163
    .local v0, "cm":Ljava/awt/image/ColorModel;
    iget-object v1, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->deviceBounds:Ljava/awt/Rectangle;

    invoke-virtual {v1}, Ljava/awt/Rectangle;->getWidth()D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->deviceBounds:Ljava/awt/Rectangle;

    invoke-virtual {v2}, Ljava/awt/Rectangle;->getHeight()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->raster:Ljava/awt/image/WritableRaster;

    .line 164
    new-instance v1, Ljava/awt/image/BufferedImage;

    iget-object v2, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->raster:Ljava/awt/image/WritableRaster;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    .line 165
    .local v1, "img":Ljava/awt/image/BufferedImage;
    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v2

    .line 166
    .local v2, "graphics":Ljava/awt/Graphics2D;
    iget-object v4, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->hints:Ljava/awt/RenderingHints;

    invoke-virtual {v2, v4}, Ljava/awt/Graphics2D;->setRenderingHints(Ljava/util/Map;)V

    .line 167
    iget-object v4, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->deviceBounds:Ljava/awt/Rectangle;

    invoke-virtual {v4}, Ljava/awt/Rectangle;->getX()D

    move-result-wide v4

    neg-double v4, v4

    iget-object v6, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->deviceBounds:Ljava/awt/Rectangle;

    invoke-virtual {v6}, Ljava/awt/Rectangle;->getY()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v2, v4, v5, v6, v7}, Ljava/awt/Graphics2D;->translate(DD)V

    .line 168
    iget-object v4, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->xform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v2, v4}, Ljava/awt/Graphics2D;->transform(Ljava/awt/geom/AffineTransform;)V

    .line 170
    iget-object v4, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->pCtx:Ljava/awt/PaintContext;

    iget v5, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->gradientSteps:I

    const/4 v6, 0x1

    invoke-interface {v4, v3, v3, v5, v6}, Ljava/awt/PaintContext;->getRaster(IIII)Ljava/awt/image/Raster;

    move-result-object v4

    .line 171
    .local v4, "img2":Ljava/awt/image/Raster;
    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getNumComponents()I

    move-result v5

    new-array v5, v5, [I

    .line 173
    .local v5, "rgb":[I
    iget v7, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->gradientSteps:I

    sub-int/2addr v7, v6

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_1

    .line 174
    invoke-virtual {v4, v7, v3, v5}, Ljava/awt/image/Raster;->getPixel(II[I)[I

    .line 175
    new-instance v8, Ljava/awt/Color;

    aget v9, v5, v3

    aget v10, v5, v6

    const/4 v11, 0x2

    aget v12, v5, v11

    invoke-direct {v8, v9, v10, v12}, Ljava/awt/Color;-><init>(III)V

    .line 176
    .local v8, "c":Ljava/awt/Color;
    array-length v9, v5

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    .line 178
    const/4 v9, 0x3

    aget v9, v5, v9

    int-to-float v9, v9

    const/high16 v10, 0x437f0000    # 255.0f

    div-float/2addr v9, v10

    invoke-static {v11, v9}, Ljava/awt/AlphaComposite;->getInstance(IF)Ljava/awt/AlphaComposite;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    .line 180
    :cond_0
    new-instance v9, Ljava/awt/BasicStroke;

    add-int/lit8 v10, v7, 0x1

    int-to-float v10, v10

    iget-object v11, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->this$0:Lorg/apache/poi/sl/draw/PathGradientPaint;

    iget v11, v11, Lorg/apache/poi/sl/draw/PathGradientPaint;->capStyle:I

    iget-object v12, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->this$0:Lorg/apache/poi/sl/draw/PathGradientPaint;

    iget v12, v12, Lorg/apache/poi/sl/draw/PathGradientPaint;->joinStyle:I

    invoke-direct {v9, v10, v11, v12}, Ljava/awt/BasicStroke;-><init>(FII)V

    invoke-virtual {v2, v9}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    .line 181
    invoke-virtual {v2, v8}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    .line 182
    iget-object v9, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->shape:Ljava/awt/Shape;

    invoke-virtual {v2, v9}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    .line 173
    .end local v8    # "c":Ljava/awt/Color;
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 185
    .end local v7    # "i":I
    :cond_1
    invoke-virtual {v2}, Ljava/awt/Graphics2D;->dispose()V

    .line 186
    return-void
.end method

.method public dispose()V
    .locals 0

    .line 110
    return-void
.end method

.method public getColorModel()Ljava/awt/image/ColorModel;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->pCtx:Ljava/awt/PaintContext;

    invoke-interface {v0}, Ljava/awt/PaintContext;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    return-object v0
.end method

.method protected getGradientSteps(Ljava/awt/Shape;)I
    .locals 8
    .param p1, "gradientShape"    # Ljava/awt/Shape;

    .line 143
    invoke-interface {p1}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object v0

    .line 144
    .local v0, "rect":Ljava/awt/Rectangle;
    const/4 v1, 0x1

    .line 145
    .local v1, "lower":I
    invoke-virtual {v0}, Ljava/awt/Rectangle;->getWidth()D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/awt/Rectangle;->getHeight()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 146
    .local v2, "upper":I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_1

    .line 147
    sub-int v3, v2, v1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    .line 148
    .local v3, "mid":I
    new-instance v4, Ljava/awt/BasicStroke;

    int-to-float v5, v3

    iget-object v6, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->this$0:Lorg/apache/poi/sl/draw/PathGradientPaint;

    iget v6, v6, Lorg/apache/poi/sl/draw/PathGradientPaint;->capStyle:I

    iget-object v7, p0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->this$0:Lorg/apache/poi/sl/draw/PathGradientPaint;

    iget v7, v7, Lorg/apache/poi/sl/draw/PathGradientPaint;->joinStyle:I

    invoke-direct {v4, v5, v6, v7}, Ljava/awt/BasicStroke;-><init>(FII)V

    .line 149
    .local v4, "bs":Ljava/awt/BasicStroke;
    new-instance v5, Ljava/awt/geom/Area;

    invoke-virtual {v4, p1}, Ljava/awt/BasicStroke;->createStrokedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    .line 150
    .local v5, "area":Ljava/awt/geom/Area;
    invoke-virtual {v5}, Ljava/awt/geom/Area;->isSingular()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 151
    move v2, v3

    goto :goto_1

    .line 153
    :cond_0
    move v1, v3

    .line 155
    .end local v3    # "mid":I
    .end local v4    # "bs":Ljava/awt/BasicStroke;
    .end local v5    # "area":Ljava/awt/geom/Area;
    :goto_1
    goto :goto_0

    .line 156
    :cond_1
    return v2
.end method

.method public getRaster(IIII)Ljava/awt/image/Raster;
    .locals 22
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 117
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v3

    .line 118
    .local v3, "cm":Ljava/awt/image/ColorModel;
    iget-object v4, v0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->raster:Ljava/awt/image/WritableRaster;

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->createRaster()V

    .line 121
    :cond_0
    invoke-virtual {v3, v1, v2}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v4

    .line 122
    .local v4, "childRaster":Ljava/awt/image/WritableRaster;
    new-instance v14, Ljava/awt/geom/Rectangle2D$Double;

    move/from16 v15, p1

    int-to-double v6, v15

    move/from16 v12, p2

    int-to-double v8, v12

    int-to-double v10, v1

    int-to-double v12, v2

    move-object v5, v14

    invoke-direct/range {v5 .. v13}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    move-object v11, v14

    .line 123
    .local v11, "childRect":Ljava/awt/geom/Rectangle2D;
    iget-object v5, v0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->deviceBounds:Ljava/awt/Rectangle;

    invoke-virtual {v11, v5}, Ljava/awt/geom/Rectangle2D;->intersects(Ljava/awt/geom/Rectangle2D;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 125
    return-object v4

    .line 128
    :cond_1
    new-instance v5, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v5}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    move-object v12, v5

    .line 129
    .local v12, "destRect":Ljava/awt/geom/Rectangle2D;
    iget-object v5, v0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->deviceBounds:Ljava/awt/Rectangle;

    invoke-static {v11, v5, v12}, Ljava/awt/geom/Rectangle2D;->intersect(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V

    .line 130
    invoke-virtual {v12}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v5

    iget-object v7, v0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->deviceBounds:Ljava/awt/Rectangle;

    invoke-virtual {v7}, Ljava/awt/Rectangle;->getX()D

    move-result-wide v7

    sub-double/2addr v5, v7

    double-to-int v5, v5

    .line 131
    .local v5, "dx":I
    invoke-virtual {v12}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v6

    iget-object v8, v0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->deviceBounds:Ljava/awt/Rectangle;

    invoke-virtual {v8}, Ljava/awt/Rectangle;->getY()D

    move-result-wide v8

    sub-double/2addr v6, v8

    double-to-int v6, v6

    .line 132
    .local v6, "dy":I
    invoke-virtual {v12}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v7

    double-to-int v13, v7

    .line 133
    .local v13, "dw":I
    invoke-virtual {v12}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    double-to-int v14, v7

    .line 134
    .local v14, "dh":I
    iget-object v7, v0, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->raster:Ljava/awt/image/WritableRaster;

    const/16 v21, 0x0

    move-object/from16 v16, v7

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v13

    move/from16 v20, v14

    invoke-virtual/range {v16 .. v21}, Ljava/awt/image/WritableRaster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 135
    .local v16, "data":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v7

    invoke-virtual {v11}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v9

    sub-double/2addr v7, v9

    double-to-int v10, v7

    .line 136
    .end local v5    # "dx":I
    .local v10, "dx":I
    invoke-virtual {v12}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v7

    invoke-virtual {v11}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v17

    sub-double v7, v7, v17

    double-to-int v9, v7

    .line 137
    .end local v6    # "dy":I
    .local v9, "dy":I
    move-object v5, v4

    move v6, v10

    move v7, v9

    move v8, v13

    move/from16 v17, v9

    .end local v9    # "dy":I
    .local v17, "dy":I
    move v9, v14

    move/from16 v18, v10

    .end local v10    # "dx":I
    .local v18, "dx":I
    move-object/from16 v10, v16

    invoke-virtual/range {v5 .. v10}, Ljava/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    .line 139
    return-object v4
.end method
