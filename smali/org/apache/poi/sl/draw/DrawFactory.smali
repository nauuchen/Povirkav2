.class public Lorg/apache/poi/sl/draw/DrawFactory;
.super Ljava/lang/Object;
.source "DrawFactory.java"


# static fields
.field protected static final defaultFactory:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/poi/sl/draw/DrawFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/sl/draw/DrawFactory;->defaultFactory:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;
    .locals 3
    .param p0, "graphics"    # Ljava/awt/Graphics2D;

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "factory":Lorg/apache/poi/sl/draw/DrawFactory;
    const/4 v1, 0x0

    .line 71
    .local v1, "isHint":Z
    if-eqz p0, :cond_1

    .line 72
    sget-object v2, Lorg/apache/poi/sl/draw/Drawable;->DRAW_FACTORY:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p0, v2}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/poi/sl/draw/DrawFactory;

    .line 73
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 76
    :cond_1
    if-nez v0, :cond_2

    .line 77
    sget-object v2, Lorg/apache/poi/sl/draw/DrawFactory;->defaultFactory:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/poi/sl/draw/DrawFactory;

    .line 80
    :cond_2
    if-nez v0, :cond_3

    .line 81
    new-instance v2, Lorg/apache/poi/sl/draw/DrawFactory;

    invoke-direct {v2}, Lorg/apache/poi/sl/draw/DrawFactory;-><init>()V

    move-object v0, v2

    .line 83
    :cond_3
    if-eqz p0, :cond_4

    if-nez v1, :cond_4

    .line 84
    sget-object v2, Lorg/apache/poi/sl/draw/Drawable;->DRAW_FACTORY:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p0, v2, v0}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 86
    :cond_4
    return-object v0
.end method

.method public static setDefaultFactory(Lorg/apache/poi/sl/draw/DrawFactory;)V
    .locals 1
    .param p0, "factory"    # Lorg/apache/poi/sl/draw/DrawFactory;

    .line 56
    sget-object v0, Lorg/apache/poi/sl/draw/DrawFactory;->defaultFactory:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 57
    return-void
.end method


# virtual methods
.method public drawShape(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/Shape;Ljava/awt/geom/Rectangle2D;)V
    .locals 11
    .param p1, "graphics"    # Ljava/awt/Graphics2D;
    .param p3, "bounds"    # Ljava/awt/geom/Rectangle2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;",
            "Ljava/awt/geom/Rectangle2D;",
            ")V"
        }
    .end annotation

    .line 190
    .local p2, "shape":Lorg/apache/poi/sl/usermodel/Shape;, "Lorg/apache/poi/sl/usermodel/Shape<**>;"
    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/Shape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    .line 191
    .local v0, "shapeBounds":Ljava/awt/geom/Rectangle2D;
    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/awt/geom/Rectangle2D;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    sget-object v1, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v1}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/geom/AffineTransform;

    .line 196
    .local v1, "txg":Ljava/awt/geom/AffineTransform;
    new-instance v2, Ljava/awt/geom/AffineTransform;

    invoke-direct {v2}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 198
    .local v2, "tx":Ljava/awt/geom/AffineTransform;
    if-eqz p3, :cond_1

    .line 199
    :try_start_0
    invoke-virtual {p3}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v3

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    div-double/2addr v3, v5

    .line 200
    .local v3, "scaleX":D
    invoke-virtual {p3}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v5

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    div-double/2addr v5, v7

    .line 201
    .local v5, "scaleY":D
    invoke-virtual {p3}, Ljava/awt/geom/Rectangle2D;->getCenterX()D

    move-result-wide v7

    invoke-virtual {p3}, Ljava/awt/geom/Rectangle2D;->getCenterY()D

    move-result-wide v9

    invoke-virtual {v2, v7, v8, v9, v10}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 202
    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    .line 203
    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getCenterX()D

    move-result-wide v7

    neg-double v7, v7

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getCenterY()D

    move-result-wide v9

    neg-double v9, v9

    invoke-virtual {v2, v7, v8, v9, v10}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 205
    .end local v3    # "scaleX":D
    .end local v5    # "scaleY":D
    :cond_1
    sget-object v3, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v3, v2}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 207
    invoke-virtual {p0, p2}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Shape;)Lorg/apache/poi/sl/draw/Drawable;

    move-result-object v3

    .line 208
    .local v3, "d":Lorg/apache/poi/sl/draw/Drawable;
    invoke-interface {v3, p1}, Lorg/apache/poi/sl/draw/Drawable;->applyTransform(Ljava/awt/Graphics2D;)V

    .line 209
    invoke-interface {v3, p1}, Lorg/apache/poi/sl/draw/Drawable;->draw(Ljava/awt/Graphics2D;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .end local v3    # "d":Lorg/apache/poi/sl/draw/Drawable;
    sget-object v3, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v3, v1}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 212
    nop

    .line 213
    return-void

    .line 211
    :catchall_0
    move-exception v3

    sget-object v4, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v4, v1}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    throw v3

    .line 192
    .end local v1    # "txg":Ljava/awt/geom/AffineTransform;
    .end local v2    # "tx":Ljava/awt/geom/AffineTransform;
    :cond_2
    :goto_0
    return-void
.end method

.method public fixFonts(Ljava/awt/Graphics2D;)V
    .locals 10
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 223
    invoke-static {}, Lorg/apache/poi/util/JvmBugs;->hasLineBreakMeasurerBug()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->FONT_MAP:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 226
    .local v0, "fontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 227
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 228
    sget-object v1, Lorg/apache/poi/sl/draw/Drawable;->FONT_MAP:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v1, v0}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 231
    :cond_1
    const/4 v1, 0x4

    new-array v1, v1, [[Ljava/lang/String;

    const-string v2, "Calibri"

    const-string v3, "Lucida Sans"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Cambria"

    const-string v4, "Lucida Bright"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v6, "Times New Roman"

    filled-new-array {v6, v4}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x3

    const-string v6, "serif"

    filled-new-array {v6, v4}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 238
    .local v1, "fonts":[[Ljava/lang/String;
    move-object v2, v1

    .local v2, "arr$":[[Ljava/lang/String;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v4, :cond_3

    aget-object v7, v2, v6

    .line 239
    .local v7, "f":[Ljava/lang/String;
    aget-object v8, v7, v3

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 240
    aget-object v8, v7, v3

    aget-object v9, v7, v5

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .end local v7    # "f":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 243
    .end local v2    # "arr$":[[Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v6    # "i$":I
    :cond_3
    return-void
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/Background;)Lorg/apache/poi/sl/draw/DrawBackground;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Background<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawBackground;"
        }
    .end annotation

    .line 170
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/Background;, "Lorg/apache/poi/sl/usermodel/Background<**>;"
    new-instance v0, Lorg/apache/poi/sl/draw/DrawBackground;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawBackground;-><init>(Lorg/apache/poi/sl/usermodel/Background;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/ConnectorShape;)Lorg/apache/poi/sl/draw/DrawConnectorShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/ConnectorShape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawConnectorShape;"
        }
    .end annotation

    .line 142
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/ConnectorShape;, "Lorg/apache/poi/sl/usermodel/ConnectorShape<**>;"
    new-instance v0, Lorg/apache/poi/sl/draw/DrawConnectorShape;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawConnectorShape;-><init>(Lorg/apache/poi/sl/usermodel/ConnectorShape;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/FreeformShape;)Lorg/apache/poi/sl/draw/DrawFreeformShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/FreeformShape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawFreeformShape;"
        }
    .end annotation

    .line 138
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/FreeformShape;, "Lorg/apache/poi/sl/usermodel/FreeformShape<**>;"
    new-instance v0, Lorg/apache/poi/sl/draw/DrawFreeformShape;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawFreeformShape;-><init>(Lorg/apache/poi/sl/usermodel/FreeformShape;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/GraphicalFrame;)Lorg/apache/poi/sl/draw/DrawGraphicalFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/GraphicalFrame<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawGraphicalFrame;"
        }
    .end annotation

    .line 162
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/GraphicalFrame;, "Lorg/apache/poi/sl/usermodel/GraphicalFrame<**>;"
    new-instance v0, Lorg/apache/poi/sl/draw/DrawGraphicalFrame;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawGraphicalFrame;-><init>(Lorg/apache/poi/sl/usermodel/GraphicalFrame;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/GroupShape;)Lorg/apache/poi/sl/draw/DrawGroupShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/GroupShape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawGroupShape;"
        }
    .end annotation

    .line 154
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/GroupShape;, "Lorg/apache/poi/sl/usermodel/GroupShape<**>;"
    new-instance v0, Lorg/apache/poi/sl/draw/DrawGroupShape;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawGroupShape;-><init>(Lorg/apache/poi/sl/usermodel/GroupShape;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/MasterSheet;)Lorg/apache/poi/sl/draw/DrawMasterSheet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/MasterSheet<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawMasterSheet;"
        }
    .end annotation

    .line 130
    .local p1, "sheet":Lorg/apache/poi/sl/usermodel/MasterSheet;, "Lorg/apache/poi/sl/usermodel/MasterSheet<**>;"
    new-instance v0, Lorg/apache/poi/sl/draw/DrawMasterSheet;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawMasterSheet;-><init>(Lorg/apache/poi/sl/usermodel/MasterSheet;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/PictureShape;)Lorg/apache/poi/sl/draw/DrawPictureShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/PictureShape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawPictureShape;"
        }
    .end annotation

    .line 158
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/PictureShape;, "Lorg/apache/poi/sl/usermodel/PictureShape<**>;"
    new-instance v0, Lorg/apache/poi/sl/draw/DrawPictureShape;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawPictureShape;-><init>(Lorg/apache/poi/sl/usermodel/PictureShape;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/Sheet;)Lorg/apache/poi/sl/draw/DrawSheet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Sheet<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawSheet;"
        }
    .end annotation

    .line 126
    .local p1, "sheet":Lorg/apache/poi/sl/usermodel/Sheet;, "Lorg/apache/poi/sl/usermodel/Sheet<**>;"
    new-instance v0, Lorg/apache/poi/sl/draw/DrawSheet;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawSheet;-><init>(Lorg/apache/poi/sl/usermodel/Sheet;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/Slide;)Lorg/apache/poi/sl/draw/DrawSlide;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Slide<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawSlide;"
        }
    .end annotation

    .line 122
    .local p1, "sheet":Lorg/apache/poi/sl/usermodel/Slide;, "Lorg/apache/poi/sl/usermodel/Slide<**>;"
    new-instance v0, Lorg/apache/poi/sl/draw/DrawSlide;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawSlide;-><init>(Lorg/apache/poi/sl/usermodel/Slide;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/TableShape;)Lorg/apache/poi/sl/draw/DrawTableShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TableShape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawTableShape;"
        }
    .end annotation

    .line 146
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/TableShape;, "Lorg/apache/poi/sl/usermodel/TableShape<**>;"
    new-instance v0, Lorg/apache/poi/sl/draw/DrawTableShape;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawTableShape;-><init>(Lorg/apache/poi/sl/usermodel/TableShape;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/TextBox;)Lorg/apache/poi/sl/draw/DrawTextBox;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TextBox<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawTextBox;"
        }
    .end annotation

    .line 134
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/TextBox;, "Lorg/apache/poi/sl/usermodel/TextBox<**>;"
    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextBox;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawTextBox;-><init>(Lorg/apache/poi/sl/usermodel/TextBox;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/TextParagraph;)Lorg/apache/poi/sl/draw/DrawTextParagraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TextParagraph<",
            "***>;)",
            "Lorg/apache/poi/sl/draw/DrawTextParagraph;"
        }
    .end annotation

    .line 166
    .local p1, "paragraph":Lorg/apache/poi/sl/usermodel/TextParagraph;, "Lorg/apache/poi/sl/usermodel/TextParagraph<***>;"
    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawTextParagraph;-><init>(Lorg/apache/poi/sl/usermodel/TextParagraph;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/TextShape;)Lorg/apache/poi/sl/draw/DrawTextShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TextShape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawTextShape;"
        }
    .end annotation

    .line 150
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/TextShape;, "Lorg/apache/poi/sl/usermodel/TextShape<**>;"
    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextShape;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawTextShape;-><init>(Lorg/apache/poi/sl/usermodel/TextShape;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/Shape;)Lorg/apache/poi/sl/draw/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/Drawable;"
        }
    .end annotation

    .line 90
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/Shape;, "Lorg/apache/poi/sl/usermodel/Shape<**>;"
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/TextBox;

    if-eqz v0, :cond_0

    .line 91
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/sl/usermodel/TextBox;

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/TextBox;)Lorg/apache/poi/sl/draw/DrawTextBox;

    move-result-object v0

    return-object v0

    .line 92
    :cond_0
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/FreeformShape;

    if-eqz v0, :cond_1

    .line 93
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/sl/usermodel/FreeformShape;

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/FreeformShape;)Lorg/apache/poi/sl/draw/DrawFreeformShape;

    move-result-object v0

    return-object v0

    .line 94
    :cond_1
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/TextShape;

    if-eqz v0, :cond_2

    .line 95
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/sl/usermodel/TextShape;

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/TextShape;)Lorg/apache/poi/sl/draw/DrawTextShape;

    move-result-object v0

    return-object v0

    .line 96
    :cond_2
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/TableShape;

    if-eqz v0, :cond_3

    .line 97
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/sl/usermodel/TableShape;

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/TableShape;)Lorg/apache/poi/sl/draw/DrawTableShape;

    move-result-object v0

    return-object v0

    .line 98
    :cond_3
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/GroupShape;

    if-eqz v0, :cond_4

    .line 99
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/sl/usermodel/GroupShape;

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/GroupShape;)Lorg/apache/poi/sl/draw/DrawGroupShape;

    move-result-object v0

    return-object v0

    .line 100
    :cond_4
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/PictureShape;

    if-eqz v0, :cond_5

    .line 101
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/sl/usermodel/PictureShape;

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/PictureShape;)Lorg/apache/poi/sl/draw/DrawPictureShape;

    move-result-object v0

    return-object v0

    .line 102
    :cond_5
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/GraphicalFrame;

    if-eqz v0, :cond_6

    .line 103
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/sl/usermodel/GraphicalFrame;

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/GraphicalFrame;)Lorg/apache/poi/sl/draw/DrawGraphicalFrame;

    move-result-object v0

    return-object v0

    .line 104
    :cond_6
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/Background;

    if-eqz v0, :cond_7

    .line 105
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/sl/usermodel/Background;

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Background;)Lorg/apache/poi/sl/draw/DrawBackground;

    move-result-object v0

    return-object v0

    .line 106
    :cond_7
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/ConnectorShape;

    if-eqz v0, :cond_8

    .line 107
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/sl/usermodel/ConnectorShape;

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/ConnectorShape;)Lorg/apache/poi/sl/draw/DrawConnectorShape;

    move-result-object v0

    return-object v0

    .line 108
    :cond_8
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/Slide;

    if-eqz v0, :cond_9

    .line 109
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/sl/usermodel/Slide;

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Slide;)Lorg/apache/poi/sl/draw/DrawSlide;

    move-result-object v0

    return-object v0

    .line 110
    :cond_9
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/MasterSheet;

    if-eqz v0, :cond_a

    .line 111
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/sl/usermodel/MasterSheet;

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/MasterSheet;)Lorg/apache/poi/sl/draw/DrawMasterSheet;

    move-result-object v0

    return-object v0

    .line 112
    :cond_a
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/Sheet;

    if-eqz v0, :cond_b

    .line 113
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/sl/usermodel/Sheet;

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Sheet;)Lorg/apache/poi/sl/draw/DrawSheet;

    move-result-object v0

    return-object v0

    .line 114
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/poi/sl/draw/DrawNotImplemented;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 115
    new-instance v0, Lorg/apache/poi/sl/draw/DrawNothing;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawNothing;-><init>(Lorg/apache/poi/sl/usermodel/Shape;)V

    return-object v0

    .line 118
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported shape type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontManager(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFontManager;
    .locals 2
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 252
    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->FONT_HANDLER:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/draw/DrawFontManager;

    .line 253
    .local v0, "fontHandler":Lorg/apache/poi/sl/draw/DrawFontManager;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/poi/sl/draw/DrawFontManagerDefault;

    invoke-direct {v1}, Lorg/apache/poi/sl/draw/DrawFontManagerDefault;-><init>()V

    :goto_0
    return-object v1
.end method

.method public getPaint(Lorg/apache/poi/sl/usermodel/PlaceableShape;)Lorg/apache/poi/sl/draw/DrawPaint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/PlaceableShape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawPaint;"
        }
    .end annotation

    .line 178
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/PlaceableShape;, "Lorg/apache/poi/sl/usermodel/PlaceableShape<**>;"
    new-instance v0, Lorg/apache/poi/sl/draw/DrawPaint;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawPaint;-><init>(Lorg/apache/poi/sl/usermodel/PlaceableShape;)V

    return-object v0
.end method

.method public getTextFragment(Ljava/awt/font/TextLayout;Ljava/text/AttributedString;)Lorg/apache/poi/sl/draw/DrawTextFragment;
    .locals 1
    .param p1, "layout"    # Ljava/awt/font/TextLayout;
    .param p2, "str"    # Ljava/text/AttributedString;

    .line 174
    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/sl/draw/DrawTextFragment;-><init>(Ljava/awt/font/TextLayout;Ljava/text/AttributedString;)V

    return-object v0
.end method
