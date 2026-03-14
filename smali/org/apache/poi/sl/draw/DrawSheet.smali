.class public Lorg/apache/poi/sl/draw/DrawSheet;
.super Ljava/lang/Object;
.source "DrawSheet.java"

# interfaces
.implements Lorg/apache/poi/sl/draw/Drawable;


# instance fields
.field protected final sheet:Lorg/apache/poi/sl/usermodel/Sheet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/sl/usermodel/Sheet<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/Sheet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Sheet<",
            "**>;)V"
        }
    .end annotation

    .line 34
    .local p1, "sheet":Lorg/apache/poi/sl/usermodel/Sheet;, "Lorg/apache/poi/sl/usermodel/Sheet<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawSheet;->sheet:Lorg/apache/poi/sl/usermodel/Sheet;

    .line 36
    return-void
.end method


# virtual methods
.method public applyTransform(Ljava/awt/Graphics2D;)V
    .locals 0
    .param p1, "context"    # Ljava/awt/Graphics2D;

    .line 82
    return-void
.end method

.method protected canDraw(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/Shape;)Z
    .locals 1
    .param p1, "graphics"    # Ljava/awt/Graphics2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;)Z"
        }
    .end annotation

    .line 95
    .local p2, "shape":Lorg/apache/poi/sl/usermodel/Shape;, "Lorg/apache/poi/sl/usermodel/Shape<**>;"
    const/4 v0, 0x1

    return v0
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 10
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 40
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawSheet;->sheet:Lorg/apache/poi/sl/usermodel/Sheet;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/Sheet;->getSlideShow()Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/SlideShow;->getPageSize()Ljava/awt/Dimension;

    move-result-object v0

    .line 41
    .local v0, "dim":Ljava/awt/Dimension;
    new-instance v1, Ljava/awt/Color;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v2, v2, v3}, Ljava/awt/Color;-><init>(FFFF)V

    .line 42
    .local v1, "whiteTrans":Ljava/awt/Color;
    invoke-virtual {p1, v1}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    .line 43
    invoke-virtual {v0}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    .line 45
    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v2

    .line 46
    .local v2, "drawFact":Lorg/apache/poi/sl/draw/DrawFactory;
    iget-object v3, p0, Lorg/apache/poi/sl/draw/DrawSheet;->sheet:Lorg/apache/poi/sl/usermodel/Sheet;

    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/Sheet;->getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;

    move-result-object v3

    .line 48
    .local v3, "master":Lorg/apache/poi/sl/usermodel/MasterSheet;, "Lorg/apache/poi/sl/usermodel/MasterSheet<**>;"
    iget-object v4, p0, Lorg/apache/poi/sl/draw/DrawSheet;->sheet:Lorg/apache/poi/sl/usermodel/Sheet;

    invoke-interface {v4}, Lorg/apache/poi/sl/usermodel/Sheet;->getFollowMasterGraphics()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 49
    invoke-virtual {v2, v3}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/MasterSheet;)Lorg/apache/poi/sl/draw/DrawMasterSheet;

    move-result-object v4

    .line 50
    .local v4, "drawer":Lorg/apache/poi/sl/draw/Drawable;
    invoke-interface {v4, p1}, Lorg/apache/poi/sl/draw/Drawable;->draw(Ljava/awt/Graphics2D;)V

    .line 53
    .end local v4    # "drawer":Lorg/apache/poi/sl/draw/Drawable;
    :cond_0
    sget-object v4, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    new-instance v5, Ljava/awt/geom/AffineTransform;

    invoke-direct {v5}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {p1, v4, v5}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 55
    iget-object v4, p0, Lorg/apache/poi/sl/draw/DrawSheet;->sheet:Lorg/apache/poi/sl/usermodel/Sheet;

    invoke-interface {v4}, Lorg/apache/poi/sl/usermodel/Sheet;->getShapes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/sl/usermodel/Shape;

    .line 56
    .local v5, "shape":Lorg/apache/poi/sl/usermodel/Shape;, "Lorg/apache/poi/sl/usermodel/Shape<**>;"
    invoke-virtual {p0, p1, v5}, Lorg/apache/poi/sl/draw/DrawSheet;->canDraw(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/Shape;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 57
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v6

    .line 65
    .local v6, "at":Ljava/awt/geom/AffineTransform;
    sget-object v7, Lorg/apache/poi/sl/draw/Drawable;->GSAVE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p1, v7, v9}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 68
    invoke-virtual {v2, v5}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Shape;)Lorg/apache/poi/sl/draw/Drawable;

    move-result-object v7

    .line 69
    .local v7, "drawer":Lorg/apache/poi/sl/draw/Drawable;
    invoke-interface {v7, p1}, Lorg/apache/poi/sl/draw/Drawable;->applyTransform(Ljava/awt/Graphics2D;)V

    .line 71
    invoke-interface {v7, p1}, Lorg/apache/poi/sl/draw/Drawable;->draw(Ljava/awt/Graphics2D;)V

    .line 74
    invoke-virtual {p1, v6}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 76
    sget-object v9, Lorg/apache/poi/sl/draw/Drawable;->GRESTORE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p1, v9, v8}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 77
    .end local v5    # "shape":Lorg/apache/poi/sl/usermodel/Shape;, "Lorg/apache/poi/sl/usermodel/Shape<**>;"
    .end local v6    # "at":Ljava/awt/geom/AffineTransform;
    .end local v7    # "drawer":Lorg/apache/poi/sl/draw/Drawable;
    goto :goto_0

    .line 78
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public drawContent(Ljava/awt/Graphics2D;)V
    .locals 0
    .param p1, "context"    # Ljava/awt/Graphics2D;

    .line 86
    return-void
.end method
