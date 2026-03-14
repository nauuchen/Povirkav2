.class public Lorg/apache/poi/sl/draw/DrawFontManagerDefault;
.super Ljava/lang/Object;
.source "DrawFontManagerDefault.java"

# interfaces
.implements Lorg/apache/poi/sl/draw/DrawFontManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFontWithFallback(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/draw/Drawable$DrawableHint;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .locals 5
    .param p1, "graphics"    # Ljava/awt/Graphics2D;
    .param p2, "hint"    # Lorg/apache/poi/sl/draw/Drawable$DrawableHint;
    .param p3, "fontInfo"    # Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    .line 86
    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 87
    .local v0, "fontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 88
    return-object p3

    .line 91
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getTypeface()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 92
    .local v1, "f":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .line 93
    .local v2, "mappedTypeface":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    .line 95
    :cond_2
    const-string v3, "*"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 96
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    .line 99
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    new-instance v3, Lorg/apache/poi/sl/draw/DrawFontInfo;

    invoke-direct {v3, v2}, Lorg/apache/poi/sl/draw/DrawFontInfo;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v3, p3

    :goto_2
    return-object v3
.end method


# virtual methods
.method public createAWTFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;DZZ)Ljava/awt/Font;
    .locals 5
    .param p1, "graphics"    # Ljava/awt/Graphics2D;
    .param p2, "fontInfo"    # Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .param p3, "fontSize"    # D
    .param p5, "bold"    # Z
    .param p6, "italic"    # Z

    .line 75
    if-eqz p6, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr v0, p5

    .line 76
    .local v0, "style":I
    new-instance v1, Ljava/awt/Font;

    invoke-interface {p2}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getTypeface()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    invoke-direct {v1, v2, v0, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 77
    .local v1, "font":Ljava/awt/Font;
    invoke-virtual {v1}, Ljava/awt/Font;->getFamily()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Dialog"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    new-instance v2, Ljava/awt/Font;

    const-string v4, "SansSerif"

    invoke-direct {v2, v4, v0, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    move-object v1, v2

    .line 81
    :cond_1
    double-to-float v2, p3

    invoke-virtual {v1, v2}, Ljava/awt/Font;->deriveFont(F)Ljava/awt/Font;

    move-result-object v2

    return-object v2
.end method

.method public getFallbackFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .locals 3
    .param p1, "graphics"    # Ljava/awt/Graphics2D;
    .param p2, "fontInfo"    # Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    .line 43
    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->FONT_FALLBACK:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/poi/sl/draw/DrawFontManagerDefault;->getFontWithFallback(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/draw/Drawable$DrawableHint;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object v0

    .line 44
    .local v0, "fi":Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    if-nez v0, :cond_0

    .line 45
    new-instance v1, Lorg/apache/poi/sl/draw/DrawFontInfo;

    const-string v2, "SansSerif"

    invoke-direct {v1, v2}, Lorg/apache/poi/sl/draw/DrawFontInfo;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 47
    :cond_0
    return-object v0
.end method

.method public getMappedFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .locals 1
    .param p1, "graphics"    # Ljava/awt/Graphics2D;
    .param p2, "fontInfo"    # Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    .line 38
    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->FONT_MAP:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/poi/sl/draw/DrawFontManagerDefault;->getFontWithFallback(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/draw/Drawable$DrawableHint;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object v0

    return-object v0
.end method

.method public mapFontCharset(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "graphics"    # Ljava/awt/Graphics2D;
    .param p2, "fontInfo"    # Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .param p3, "text"    # Ljava/lang/String;

    .line 52
    move-object v0, p3

    .line 53
    .local v0, "attStr":Ljava/lang/String;
    if-eqz p2, :cond_4

    invoke-interface {p2}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getTypeface()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wingdings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, "changed":Z
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 57
    .local v2, "chrs":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 59
    const/16 v4, 0x20

    aget-char v5, v2, v3

    if-gt v4, v5, :cond_0

    aget-char v4, v2, v3

    const/16 v5, 0x7f

    if-le v4, v5, :cond_1

    :cond_0
    const/16 v4, 0xa0

    aget-char v5, v2, v3

    if-gt v4, v5, :cond_2

    aget-char v4, v2, v3

    const/16 v5, 0xff

    if-gt v4, v5, :cond_2

    .line 61
    :cond_1
    aget-char v4, v2, v3

    const v5, 0xf000

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 62
    const/4 v1, 0x1

    .line 57
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    .end local v3    # "i":I
    :cond_3
    if-eqz v1, :cond_4

    .line 67
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    move-object v0, v3

    .line 70
    .end local v1    # "changed":Z
    .end local v2    # "chrs":[C
    :cond_4
    return-object v0
.end method
