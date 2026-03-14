.class public Lorg/apache/poi/sl/draw/DrawTextFragment;
.super Ljava/lang/Object;
.source "DrawTextFragment.java"

# interfaces
.implements Lorg/apache/poi/sl/draw/Drawable;


# instance fields
.field final layout:Ljava/awt/font/TextLayout;

.field final str:Ljava/text/AttributedString;

.field x:D

.field y:D


# direct methods
.method public constructor <init>(Ljava/awt/font/TextLayout;Ljava/text/AttributedString;)V
    .locals 0
    .param p1, "layout"    # Ljava/awt/font/TextLayout;
    .param p2, "str"    # Ljava/text/AttributedString;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->layout:Ljava/awt/font/TextLayout;

    .line 31
    iput-object p2, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->str:Ljava/text/AttributedString;

    .line 32
    return-void
.end method


# virtual methods
.method public applyTransform(Ljava/awt/Graphics2D;)V
    .locals 0
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 56
    return-void
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 6
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 41
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->str:Ljava/text/AttributedString;

    if-nez v0, :cond_0

    .line 42
    return-void

    .line 45
    :cond_0
    iget-wide v0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->y:D

    iget-object v2, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->layout:Ljava/awt/font/TextLayout;

    invoke-virtual {v2}, Ljava/awt/font/TextLayout;->getAscent()F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v0, v2

    .line 47
    .local v0, "yBaseline":D
    sget-object v2, Lorg/apache/poi/sl/draw/Drawable;->TEXT_RENDERING_MODE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v2}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 48
    .local v2, "textMode":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 49
    iget-object v3, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->layout:Ljava/awt/font/TextLayout;

    iget-wide v4, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->x:D

    double-to-float v4, v4

    double-to-float v5, v0

    invoke-virtual {v3, p1, v4, v5}, Ljava/awt/font/TextLayout;->draw(Ljava/awt/Graphics2D;FF)V

    goto :goto_0

    .line 51
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->str:Ljava/text/AttributedString;

    invoke-virtual {v3}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->x:D

    double-to-float v4, v4

    double-to-float v5, v0

    invoke-virtual {p1, v3, v4, v5}, Ljava/awt/Graphics2D;->drawString(Ljava/text/AttributedCharacterIterator;FF)V

    .line 53
    :goto_0
    return-void
.end method

.method public drawContent(Ljava/awt/Graphics2D;)V
    .locals 0
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 59
    return-void
.end method

.method public getAttributedString()Ljava/text/AttributedString;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->str:Ljava/text/AttributedString;

    return-object v0
.end method

.method public getHeight()F
    .locals 3

    .line 73
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->layout:Ljava/awt/font/TextLayout;

    invoke-virtual {v0}, Ljava/awt/font/TextLayout;->getAscent()F

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->layout:Ljava/awt/font/TextLayout;

    invoke-virtual {v1}, Ljava/awt/font/TextLayout;->getDescent()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getLeading()F

    move-result v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 74
    .local v0, "h":D
    double-to-float v2, v0

    return v2
.end method

.method public getLayout()Ljava/awt/font/TextLayout;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->layout:Ljava/awt/font/TextLayout;

    return-object v0
.end method

.method public getLeading()F
    .locals 6

    .line 82
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->layout:Ljava/awt/font/TextLayout;

    invoke-virtual {v0}, Ljava/awt/font/TextLayout;->getLeading()F

    move-result v0

    float-to-double v0, v0

    .line 83
    .local v0, "l":D
    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 86
    iget-object v2, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->layout:Ljava/awt/font/TextLayout;

    invoke-virtual {v2}, Ljava/awt/font/TextLayout;->getAscent()F

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->layout:Ljava/awt/font/TextLayout;

    invoke-virtual {v3}, Ljava/awt/font/TextLayout;->getDescent()F

    move-result v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x3fc3333333333333L    # 0.15

    mul-double v0, v2, v4

    .line 88
    :cond_0
    double-to-float v2, v0

    return v2
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    .line 104
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->str:Ljava/text/AttributedString;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    .line 107
    .local v0, "it":Ljava/text/AttributedCharacterIterator;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/text/AttributedCharacterIterator;->first()C

    move-result v2

    .local v2, "c":C
    :goto_0
    const v3, 0xffff

    if-eq v2, v3, :cond_1

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    invoke-interface {v0}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v2

    goto :goto_0

    .line 111
    .end local v2    # "c":C
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getWidth()F
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->layout:Ljava/awt/font/TextLayout;

    invoke-virtual {v0}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result v0

    return v0
.end method

.method public setPosition(DD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 36
    iput-wide p1, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->x:D

    .line 37
    iput-wide p3, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->y:D

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
