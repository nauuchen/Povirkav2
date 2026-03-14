.class public Lorg/apache/poi/sl/draw/DrawGraphicalFrame;
.super Lorg/apache/poi/sl/draw/DrawShape;
.source "DrawGraphicalFrame.java"


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/GraphicalFrame;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/GraphicalFrame<",
            "**>;)V"
        }
    .end annotation

    .line 29
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/GraphicalFrame;, "Lorg/apache/poi/sl/usermodel/GraphicalFrame<**>;"
    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawShape;-><init>(Lorg/apache/poi/sl/usermodel/Shape;)V

    .line 30
    return-void
.end method


# virtual methods
.method public draw(Ljava/awt/Graphics2D;)V
    .locals 2
    .param p1, "context"    # Ljava/awt/Graphics2D;

    .line 33
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawGraphicalFrame;->getShape()Lorg/apache/poi/sl/usermodel/Shape;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/GraphicalFrame;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/GraphicalFrame;->getFallbackPicture()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object v0

    .line 34
    .local v0, "ps":Lorg/apache/poi/sl/usermodel/PictureShape;, "Lorg/apache/poi/sl/usermodel/PictureShape<**>;"
    if-nez v0, :cond_0

    .line 35
    return-void

    .line 37
    :cond_0
    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/PictureShape;)Lorg/apache/poi/sl/draw/DrawPictureShape;

    move-result-object v1

    .line 38
    .local v1, "dps":Lorg/apache/poi/sl/draw/DrawPictureShape;
    invoke-virtual {v1, p1}, Lorg/apache/poi/sl/draw/DrawPictureShape;->draw(Ljava/awt/Graphics2D;)V

    .line 39
    return-void
.end method
