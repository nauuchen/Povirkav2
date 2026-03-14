.class public Lorg/apache/poi/sl/draw/DrawFreeformShape;
.super Lorg/apache/poi/sl/draw/DrawAutoShape;
.source "DrawFreeformShape.java"


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/FreeformShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/FreeformShape<",
            "**>;)V"
        }
    .end annotation

    .line 33
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/FreeformShape;, "Lorg/apache/poi/sl/usermodel/FreeformShape<**>;"
    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawAutoShape;-><init>(Lorg/apache/poi/sl/usermodel/AutoShape;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected computeOutlines(Ljava/awt/Graphics2D;)Ljava/util/Collection;
    .locals 11
    .param p1, "graphics"    # Ljava/awt/Graphics2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/sl/draw/geom/Outline;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "lst":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/sl/draw/geom/Outline;>;"
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawFreeformShape;->getShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/usermodel/FreeformShape;

    .line 39
    .local v1, "fsh":Lorg/apache/poi/sl/usermodel/FreeformShape;, "Lorg/apache/poi/sl/usermodel/FreeformShape<**>;"
    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/FreeformShape;->getPath()Ljava/awt/geom/Path2D$Double;

    move-result-object v2

    .line 41
    .local v2, "sh":Ljava/awt/geom/Path2D;
    sget-object v3, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v3}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/awt/geom/AffineTransform;

    .line 42
    .local v3, "tx":Ljava/awt/geom/AffineTransform;
    if-nez v3, :cond_0

    .line 43
    new-instance v4, Ljava/awt/geom/AffineTransform;

    invoke-direct {v4}, Ljava/awt/geom/AffineTransform;-><init>()V

    move-object v3, v4

    .line 46
    :cond_0
    invoke-virtual {v3, v2}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v4

    .line 48
    .local v4, "canvasShape":Ljava/awt/Shape;
    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/FreeformShape;->getFillStyle()Lorg/apache/poi/sl/usermodel/FillStyle;

    move-result-object v5

    .line 49
    .local v5, "fs":Lorg/apache/poi/sl/usermodel/FillStyle;
    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/FreeformShape;->getStrokeStyle()Lorg/apache/poi/sl/usermodel/StrokeStyle;

    move-result-object v6

    .line 50
    .local v6, "ss":Lorg/apache/poi/sl/usermodel/StrokeStyle;
    new-instance v7, Lorg/apache/poi/sl/draw/geom/Path;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    invoke-direct {v7, v10, v8}, Lorg/apache/poi/sl/draw/geom/Path;-><init>(ZZ)V

    .line 51
    .local v7, "path":Lorg/apache/poi/sl/draw/geom/Path;
    new-instance v8, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-direct {v8, v4, v7}, Lorg/apache/poi/sl/draw/geom/Outline;-><init>(Ljava/awt/Shape;Lorg/apache/poi/sl/draw/geom/Path;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-object v0
.end method

.method protected bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawFreeformShape;->getShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawFreeformShape;->getShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v0

    return-object v0
.end method

.method protected getShape()Lorg/apache/poi/sl/usermodel/TextShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/TextShape<",
            "*+",
            "Lorg/apache/poi/sl/usermodel/TextParagraph<",
            "**+",
            "Lorg/apache/poi/sl/usermodel/TextRun;",
            ">;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawFreeformShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    check-cast v0, Lorg/apache/poi/sl/usermodel/TextShape;

    return-object v0
.end method
