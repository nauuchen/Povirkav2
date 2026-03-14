.class public Lorg/apache/poi/sl/draw/DrawMasterSheet;
.super Lorg/apache/poi/sl/draw/DrawSheet;
.source "DrawMasterSheet.java"


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/MasterSheet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/MasterSheet<",
            "**>;)V"
        }
    .end annotation

    .line 32
    .local p1, "sheet":Lorg/apache/poi/sl/usermodel/MasterSheet;, "Lorg/apache/poi/sl/usermodel/MasterSheet<**>;"
    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawSheet;-><init>(Lorg/apache/poi/sl/usermodel/Sheet;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected canDraw(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/Shape;)Z
    .locals 3
    .param p1, "graphics"    # Ljava/awt/Graphics2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;)Z"
        }
    .end annotation

    .line 43
    .local p2, "shape":Lorg/apache/poi/sl/usermodel/Shape;, "Lorg/apache/poi/sl/usermodel/Shape<**>;"
    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->CURRENT_SLIDE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/Slide;

    .line 44
    .local v0, "slide":Lorg/apache/poi/sl/usermodel/Slide;, "Lorg/apache/poi/sl/usermodel/Slide<**>;"
    instance-of v1, p2, Lorg/apache/poi/sl/usermodel/SimpleShape;

    if-eqz v1, :cond_0

    .line 46
    move-object v1, p2

    check-cast v1, Lorg/apache/poi/sl/usermodel/SimpleShape;

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v1

    .line 47
    .local v1, "ph":Lorg/apache/poi/sl/usermodel/Placeholder;
    if-eqz v1, :cond_0

    .line 48
    invoke-interface {v0, v1}, Lorg/apache/poi/sl/usermodel/Slide;->getDisplayPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)Z

    move-result v2

    return v2

    .line 51
    .end local v1    # "ph":Lorg/apache/poi/sl/usermodel/Placeholder;
    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/Slide;->getFollowMasterGraphics()Z

    move-result v1

    return v1
.end method
