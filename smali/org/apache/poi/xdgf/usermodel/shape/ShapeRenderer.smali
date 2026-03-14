.class public Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;
.super Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;
.source "ShapeRenderer.java"


# instance fields
.field protected _graphics:Ljava/awt/Graphics2D;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/awt/Graphics2D;)V
    .locals 0
    .param p1, "g"    # Ljava/awt/Graphics2D;

    .line 40
    invoke-direct {p0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    .line 42
    return-void
.end method


# virtual methods
.method protected drawPath(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Ljava/awt/geom/Path2D;
    .locals 3
    .param p1, "shape"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 63
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getPath()Ljava/awt/geom/Path2D$Double;

    move-result-object v0

    .line 64
    .local v0, "path":Ljava/awt/geom/Path2D$Double;
    if-eqz v0, :cond_0

    .line 68
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLineColor()Ljava/awt/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    .line 69
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getStroke()Ljava/awt/Stroke;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    .line 70
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {v1, v0}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    .line 73
    :cond_0
    return-object v0
.end method

.method protected drawText(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 4
    .param p1, "shape"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 77
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getText()Lorg/apache/poi/xdgf/usermodel/XDGFText;

    move-result-object v0

    .line 78
    .local v0, "text":Lorg/apache/poi/xdgf/usermodel/XDGFText;
    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFText;->getTextContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Header"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFText;->getTextBounds()Ljava/awt/geom/Rectangle2D$Double;

    .line 83
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {v1}, Ljava/awt/Graphics2D;->getFont()Ljava/awt/Font;

    move-result-object v1

    .line 85
    .local v1, "oldFont":Ljava/awt/Font;
    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFontSize()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/awt/Font;->deriveFont(F)Ljava/awt/Font;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/awt/Graphics2D;->setFont(Ljava/awt/Font;)V

    .line 87
    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFontColor()Ljava/awt/Color;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    .line 89
    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {v0, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFText;->draw(Ljava/awt/Graphics2D;)V

    .line 90
    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {v2, v1}, Ljava/awt/Graphics2D;->setFont(Ljava/awt/Font;)V

    .line 92
    .end local v1    # "oldFont":Ljava/awt/Font;
    :cond_1
    return-void
.end method

.method public setGraphics(Ljava/awt/Graphics2D;)V
    .locals 0
    .param p1, "g"    # Ljava/awt/Graphics2D;

    .line 45
    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    .line 46
    return-void
.end method

.method public visit(Lorg/apache/poi/xdgf/usermodel/XDGFShape;Ljava/awt/geom/AffineTransform;I)V
    .locals 2
    .param p1, "shape"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    .param p2, "globalTransform"    # Ljava/awt/geom/AffineTransform;
    .param p3, "level"    # I

    .line 52
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    .line 53
    .local v0, "savedTr":Ljava/awt/geom/AffineTransform;
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {v1, p2}, Ljava/awt/Graphics2D;->transform(Ljava/awt/geom/AffineTransform;)V

    .line 55
    invoke-virtual {p0, p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->drawPath(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Ljava/awt/geom/Path2D;

    .line 56
    invoke-virtual {p0, p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->drawText(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V

    .line 59
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {v1, v0}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 60
    return-void
.end method
