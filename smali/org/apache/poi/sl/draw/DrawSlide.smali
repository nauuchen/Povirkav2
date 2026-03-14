.class public Lorg/apache/poi/sl/draw/DrawSlide;
.super Lorg/apache/poi/sl/draw/DrawSheet;
.source "DrawSlide.java"


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/Slide;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Slide<",
            "**>;)V"
        }
    .end annotation

    .line 28
    .local p1, "slide":Lorg/apache/poi/sl/usermodel/Slide;, "Lorg/apache/poi/sl/usermodel/Slide<**>;"
    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawSheet;-><init>(Lorg/apache/poi/sl/usermodel/Sheet;)V

    .line 29
    return-void
.end method


# virtual methods
.method public draw(Ljava/awt/Graphics2D;)V
    .locals 3
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 32
    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->CURRENT_SLIDE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/DrawSlide;->sheet:Lorg/apache/poi/sl/usermodel/Sheet;

    invoke-virtual {p1, v0, v1}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawSlide;->sheet:Lorg/apache/poi/sl/usermodel/Sheet;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/Sheet;->getBackground()Lorg/apache/poi/sl/usermodel/Background;

    move-result-object v0

    .line 35
    .local v0, "bg":Lorg/apache/poi/sl/usermodel/Background;, "Lorg/apache/poi/sl/usermodel/Background<**>;"
    if-eqz v0, :cond_0

    .line 36
    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v1

    .line 37
    .local v1, "drawFact":Lorg/apache/poi/sl/draw/DrawFactory;
    invoke-virtual {v1, v0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Background;)Lorg/apache/poi/sl/draw/DrawBackground;

    move-result-object v2

    .line 38
    .local v2, "db":Lorg/apache/poi/sl/draw/Drawable;
    invoke-interface {v2, p1}, Lorg/apache/poi/sl/draw/Drawable;->draw(Ljava/awt/Graphics2D;)V

    .line 41
    .end local v1    # "drawFact":Lorg/apache/poi/sl/draw/DrawFactory;
    .end local v2    # "db":Lorg/apache/poi/sl/draw/Drawable;
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/sl/draw/DrawSheet;->draw(Ljava/awt/Graphics2D;)V

    .line 42
    sget-object v1, Lorg/apache/poi/sl/draw/Drawable;->CURRENT_SLIDE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 43
    return-void
.end method
