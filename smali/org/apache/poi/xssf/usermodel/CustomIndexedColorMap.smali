.class public Lorg/apache/poi/xssf/usermodel/CustomIndexedColorMap;
.super Ljava/lang/Object;
.source "CustomIndexedColorMap.java"

# interfaces
.implements Lorg/apache/poi/xssf/usermodel/IndexedColorMap;


# instance fields
.field private final colorIndex:[[B


# direct methods
.method private constructor <init>([[B)V
    .locals 0
    .param p1, "colors"    # [[B

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/CustomIndexedColorMap;->colorIndex:[[B

    .line 36
    return-void
.end method

.method public static fromColors(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColors;)Lorg/apache/poi/xssf/usermodel/CustomIndexedColorMap;
    .locals 5
    .param p0, "colors"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColors;

    .line 56
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColors;->isSetIndexedColors()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColors;->getIndexedColors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndexedColors;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndexedColors;->getRgbColorList()Ljava/util/List;

    move-result-object v0

    .line 59
    .local v0, "rgbColorList":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRgbColor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v2, 0x0

    aput v1, v3, v2

    const-class v1, B

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    .line 60
    .local v1, "customColorIndex":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 61
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRgbColor;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRgbColor;->getRgb()[B

    move-result-object v3

    aput-object v3, v1, v2

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Lorg/apache/poi/xssf/usermodel/CustomIndexedColorMap;

    invoke-direct {v2, v1}, Lorg/apache/poi/xssf/usermodel/CustomIndexedColorMap;-><init>([[B)V

    return-object v2

    .line 56
    .end local v0    # "rgbColorList":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRgbColor;>;"
    .end local v1    # "customColorIndex":[[B
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getRGB(I)[B
    .locals 2
    .param p1, "index"    # I

    .line 39
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/CustomIndexedColorMap;->colorIndex:[[B

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    aget-object v0, v0, p1

    return-object v0

    .line 39
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
