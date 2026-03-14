.class public Lorg/apache/poi/sl/draw/DrawGroupShape;
.super Lorg/apache/poi/sl/draw/DrawShape;
.source "DrawGroupShape.java"


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/GroupShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/GroupShape<",
            "**>;)V"
        }
    .end annotation

    .line 30
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/GroupShape;, "Lorg/apache/poi/sl/usermodel/GroupShape<**>;"
    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawShape;-><init>(Lorg/apache/poi/sl/usermodel/Shape;)V

    .line 31
    return-void
.end method


# virtual methods
.method public draw(Ljava/awt/Graphics2D;)V
    .locals 17
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 36
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawGroupShape;->getShape()Lorg/apache/poi/sl/usermodel/GroupShape;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/GroupShape;->getInteriorAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    .line 38
    .local v1, "interior":Ljava/awt/geom/Rectangle2D;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawGroupShape;->getShape()Lorg/apache/poi/sl/usermodel/GroupShape;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/GroupShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v2

    .line 40
    .local v2, "exterior":Ljava/awt/geom/Rectangle2D;
    sget-object v3, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {v0, v3}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/awt/geom/AffineTransform;

    .line 41
    .local v3, "tx":Ljava/awt/geom/AffineTransform;
    new-instance v4, Ljava/awt/geom/AffineTransform;

    invoke-direct {v4, v3}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    .line 43
    .local v4, "tx0":Ljava/awt/geom/AffineTransform;
    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/16 v9, 0x0

    cmpl-double v11, v5, v9

    if-nez v11, :cond_0

    move-wide v5, v7

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v11

    div-double/2addr v5, v11

    .line 44
    .local v5, "scaleX":D
    :goto_0
    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v11

    cmpl-double v13, v11, v9

    if-nez v13, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v9

    div-double/2addr v7, v9

    .line 46
    .local v7, "scaleY":D
    :goto_1
    invoke-virtual {v2}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v9

    invoke-virtual {v2}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v11

    invoke-virtual {v3, v9, v10, v11, v12}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 47
    invoke-virtual {v3, v5, v6, v7, v8}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    .line 48
    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v9

    neg-double v9, v9

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v11

    neg-double v11, v11

    invoke-virtual {v3, v9, v10, v11, v12}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 50
    invoke-static/range {p1 .. p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v9

    .line 51
    .local v9, "drawFact":Lorg/apache/poi/sl/draw/DrawFactory;
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v10

    .line 53
    .local v10, "at2":Ljava/awt/geom/AffineTransform;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawGroupShape;->getShape()Lorg/apache/poi/sl/usermodel/GroupShape;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/poi/sl/usermodel/GroupShape;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/poi/sl/usermodel/Shape;

    .line 55
    .local v12, "child":Lorg/apache/poi/sl/usermodel/Shape;, "Lorg/apache/poi/sl/usermodel/Shape<**>;"
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v13

    .line 56
    .local v13, "at":Ljava/awt/geom/AffineTransform;
    sget-object v14, Lorg/apache/poi/sl/draw/Drawable;->GSAVE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    const/4 v15, 0x1

    move-object/from16 v16, v1

    .end local v1    # "interior":Ljava/awt/geom/Rectangle2D;
    .local v16, "interior":Ljava/awt/geom/Rectangle2D;
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v9, v12}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Shape;)Lorg/apache/poi/sl/draw/Drawable;

    move-result-object v1

    .line 59
    .local v1, "draw":Lorg/apache/poi/sl/draw/Drawable;
    invoke-interface {v1, v0}, Lorg/apache/poi/sl/draw/Drawable;->applyTransform(Ljava/awt/Graphics2D;)V

    .line 60
    invoke-interface {v1, v0}, Lorg/apache/poi/sl/draw/Drawable;->draw(Ljava/awt/Graphics2D;)V

    .line 63
    invoke-virtual {v0, v13}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 64
    sget-object v14, Lorg/apache/poi/sl/draw/Drawable;->GRESTORE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v0, v14, v15}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 65
    .end local v1    # "draw":Lorg/apache/poi/sl/draw/Drawable;
    .end local v12    # "child":Lorg/apache/poi/sl/usermodel/Shape;, "Lorg/apache/poi/sl/usermodel/Shape<**>;"
    .end local v13    # "at":Ljava/awt/geom/AffineTransform;
    move-object/from16 v1, v16

    goto :goto_2

    .line 53
    .end local v16    # "interior":Ljava/awt/geom/Rectangle2D;
    .local v1, "interior":Ljava/awt/geom/Rectangle2D;
    :cond_2
    move-object/from16 v16, v1

    .line 67
    .end local v1    # "interior":Ljava/awt/geom/Rectangle2D;
    .end local v11    # "i$":Ljava/util/Iterator;
    .restart local v16    # "interior":Ljava/awt/geom/Rectangle2D;
    invoke-virtual {v0, v10}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 68
    sget-object v1, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {v0, v1, v4}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method protected getShape()Lorg/apache/poi/sl/usermodel/GroupShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/GroupShape<",
            "**>;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawGroupShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    check-cast v0, Lorg/apache/poi/sl/usermodel/GroupShape;

    return-object v0
.end method

.method protected bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawGroupShape;->getShape()Lorg/apache/poi/sl/usermodel/GroupShape;

    move-result-object v0

    return-object v0
.end method
